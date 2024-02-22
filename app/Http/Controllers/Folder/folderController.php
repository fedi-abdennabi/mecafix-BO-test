<?php

namespace App\Http\Controllers\Folder;

use App\Http\Controllers\Controller;
use App\Models\Car;
use App\Models\Category;
use App\Models\Clients;
use App\Models\DefaultAdminCategory;
use App\Models\Folder;
use Illuminate\Validation\Rule;
use App\Models\Input;
use App\Models\SubCategory;
use App\SmsTwilio\TwilioService;
use App\Traits\base64DecodeFile;
use App\Traits\S3UploadFile;
use Illuminate\Http\Request;

class folderController extends Controller
{
    use S3UploadFile;
    use base64DecodeFile;

    protected $twilio;

    public function __construct(TwilioService $twilio)
    {
        $this->twilio = $twilio;
    }

    public function getFolders(Request $request)
    {
        $userId = auth()->id();
        $orderBy = filled($request->input('orderBy')) ? $request->input('orderBy') : 'id';
        $order = filled($request->input('order')) ? $request->input('order') : 'DESC';
        $search = $request->input('search');

        $folderList = Folder::with('Car', 'Clients', 'Category')
            ->where('userId', $userId)
            ->where(function ($query) use ($search) {
                $query->where('hashtag', 'LIKE', '%' . $search . '%')
                    ->orWhere('contrat', 'LIKE', '%' . $search . '%')
                    ->orWhere('id', 'LIKE', '%' . $search . '%')
                    ->orWhere('arrivalType', 'LIKE', '%' . $search . '%')
                    ->orWhere('statusValue', 'LIKE', '%' . $search . '%')
                    ->orWhere('panne', 'LIKE', '%' . $search . '%')
                    ->orWhere('vehiculeType', 'LIKE', '%' . $search . '%')
                    ->orWhere('notes', 'LIKE', '%' . $search . '%')
                    ->orWhereHas('Car', function ($query) use ($search) {
                        $query->whereRaw("CONCAT(brand, ' ', model) LIKE ?", ['%' . $search . '%'])
                            ->orWhere('carType', 'LIKE', '%' . $search . '%')
                            ->orWhere('immatriculation', 'LIKE', '%' . $search . '%')
                            ->orWhere('box', 'LIKE', '%' . $search . '%')
                            ->orWhere('mileage', 'LIKE', '%' . $search . '%');
                    })
                    ->orWhereHas('Clients', function ($query) use ($search) {
                        $query->whereRaw("CONCAT(firstName, ' ', lastName) LIKE ?", ['%' . $search . '%'])
                            ->orWhere('type', 'LIKE', '%' . $search . '%')
                            ->orWhere('RegistrationNumber', 'LIKE', '%' . $search . '%')
                            ->orWhere('HeadquartersAddress', 'LIKE', '%' . $search . '%')
                            ->orWhere('activitySector', 'LIKE', '%' . $search . '%')
                            ->orWhere('city', 'LIKE', '%' . $search . '%')
                            ->orWhere('postalCode', 'LIKE', '%' . $search . '%')
                            ->orWhere('phone', 'LIKE', '%' . $search . '%')
                            ->orWhere('adress', 'LIKE', '%' . $search . '%')
                            ->orWhere('email', 'LIKE', '%' . $search . '%');
                    })
                    ->orWhereHas('Category', function ($query) use ($search) {
                        $query->where('categoryName', 'LIKE', '%' . $search . '%');
                    })
                    ->orWhereHas('Category.SubCategory', function ($query) use ($search) {
                        $query->where('subCategoryName', 'LIKE', '%' . $search . '%');
                    })
                    ->orWhereHas('Category.SubCategory.Input', function ($query) use ($search) {
                        $query->where('inputValue', 'LIKE', '%' . $search . '%')
                            ->orWhere('inputName', 'LIKE', '%' . $search . '%')
                            ->orWhere('label', 'LIKE', '%' . $search . '%');
                    });
            })
            ->orderBy($orderBy, $order)
            ->get();

        return response()->json($folderList);
    }

    public function createNewFolder(Request $request)
    {
        $user_id = auth()->user()->id;
        $this->validate(
            $request,
            [
                'registration' => 'required',
                'video' => 'mimes:mp4,avi',
                'firstName' => 'required',
                'lastName' => 'required',
                'email' => [
                    'required',
                    Rule::unique('clients')->where(function ($query) use ($user_id) {
                        return $query->where('admin_id', $user_id);
                    })
                ],
                'phoneNumber' => 'required',
                'adresse' => 'required',
                'city' => 'required',
                'postalCode' => 'required',
            ]
        );

        $client = new Clients();
        $client->type = $request->input('type');
        $client->firstName = $request->input('firstName');
        $client->lastName = $request->input('lastName');
        $client->email = $request->input('email');
        $client->phone = $request->input('phoneNumber');
        $client->adress = $request->input('adresse');
        $client->city = $request->input('city');
        $client->postalCode = $request->input('postalCode');
        $client->admin_id = auth()->id();

        $client->save();

        // create new car
        $car = new Car();
        $car->carType = $request->input('carType');
        $car->immatriculation = $request->input('registration');
        $car->brand = $request->input('brand');
        $car->model = $request->input('model');
        $car->box = $request->input('box');
        $car->mileage = $request->input('mileage');

        // upload image
        if ($request->filled('picture') or $request->hasFile('picture')) {
            $carImage = $request->file('picture');
            if (str_contains($request->input('picture'), 'data:')) {
                $car->image = $this->base64DecodeFile($request->input('picture'), 'car', 'cars', null);
            } else {
                $image = file_get_contents($carImage);
                $carName = $request->file('picture')->getClientOriginalName();
                $car->image = $this->uploadFileToS3($image, $carName, 'cars');
            }
        }

        // upload video
        if ($request->filled('video')) {
            $carVideo = $request->file('video');
            if (str_contains($carVideo, 'data:')) {
                $car->video = $this->base64DecodeFile($carVideo, 'car', 'cars', null);
            } else {
                $video = file_get_contents($carVideo);
                $carName = $request->file('video')->getClientOriginalName();
                $car->video = $this->uploadFileToS3($video, $carName, 'cars');
            }
        }
        $car->save();

        $car->Client()->attach($client->id);

        // create new folder
        $folder = new Folder();
        $folder->carId = $car->id;
        $folder->clientId = $client->id;
        $user = auth()->user();
        $roleName = $user->Role->roleName;

        if ($roleName == 'admin') {
            $folder->userId = $user->id;
        } elseif ($roleName == 'client') {
            $folder->userId = $user->adminId;
        }

        $folder->save();

        $categories = DefaultAdminCategory::with('subCategoryDefaults.defaultInputs')->get();

        foreach ($categories as $categoryData) {
            $newCategory = new Category();
            $newCategory->categoryName = $categoryData->categoryName;
            $newCategory->folderId = $folder->id;
            $newCategory->save();
            $folder->Category()->attach($newCategory->id);
            foreach ($categoryData->subCategoryDefaults as $subCatgeory) {
                $newSubCategory = new SubCategory();
                $newSubCategory->subCategoryName = $subCatgeory->subCategoryName;
                $newSubCategory->categoryId = $newCategory->id;
                $newSubCategory->save();
                foreach ($subCatgeory->defaultInputs as $defaultInput) {
                    $input = new Input();
                    $input->inputName = $defaultInput->inputName;
                    $input->inputType = $defaultInput->inputType;
                    $input->inputValue = null;
                    $input->inputOrder = $defaultInput->inputOrder;
                    $input->options = $defaultInput->options;
                    $input->label = $defaultInput->label;
                    $input->helper = $defaultInput->helper;
                    $input->principalImage = $defaultInput->principalImage;
                    $input->display = $defaultInput->display;
                    $input->sub_category_id = $newSubCategory->id;
                    $input->save();
                }
            }
        }

        return response()->json('folder added successfully');
    }

    public function getFolderDetails(Request $request, $id)
    {
        $folder = Folder::with('Car', 'Clients', 'Category.SubCategory')->where('id', $id)->first();

        return response()->json($folder);
    }

    public function updateFolder(Request $request, $id)
    {
        $folder = Folder::find($id);
        $folder->notes = $request->input('notes');
        $folder->mileage = $request->input('mileage');
        $folder->arrivalType = $request->input('arrivalType');
        $folder->created_at = $request->input('date');

        $folder->save();
        if ($folder->car) {
            $folder->car->mileage = $request->input('mileage');
            if ($request->filled('picture') or $request->hasFile('picture')) {
                $carImage = $request->file('picture');
                if (str_contains($request->input('picture'), 'data:')) {
                    $folder->car->image = $this->base64DecodeFile($request->input('picture'), 'car', 'cars', null);
                } else {
                    $image = file_get_contents($carImage);
                    $carName = $request->file('picture')->getClientOriginalName();
                    $folder->car->image = $this->uploadFileToS3($image, $carName, 'cars');
                }
            }
            $folder->car->save();
        }

        return response()->json(['message' => 'folder updated successfully', 'data' => $folder]);
    }

    public function addFolder(Request $request, $clientId)
    {
        $client = Clients::find($clientId);
        if (!$client) {
            return response()->json('Client not found', 404);
        }
        $car = $client->Car()->first();
        if (!$car) {
            return response()->json('Car not found for the client', 404);
        }

        $folder = new Folder();
        $folder->clientId = $clientId;
        $folder->carId = $car->id;
        $folder->mileage = $request->input('mileage');
        $folder->panne = $request->input('panne');
        $folder->created_at = $request->input('created_at');
        $folder->notes = $request->input('notes');

        $imageUrls = [];
        $images = $request->input('images', []);

        foreach ($images as $base64Image) {
            if (str_contains($base64Image, 'data:')) {
                $urlImage = $this->base64DecodeFile($base64Image, 'folder', 'folders', null);
                array_push($imageUrls, $urlImage);
            }
        }

        $folder->images = json_encode($imageUrls);
        $folder->save();

        return response()->json('Folder added successfully');
    }
    public function updateStatusFolder(Request $request, $id)
    {
        try {
            $folder = Folder::find($id);
            if (!$folder) {
                return response()->json(['message' => 'Folder not found'], 404);
            }
            $newStatusValue = $request->input('statusValue');
            $folder->statusValue = $newStatusValue;
            $folder->statusId = $folder->id;
            $folder->save();
            $to = '+21622471859';
            $message = "Hello, your car's status has been updated to: {$newStatusValue}";
            $this->twilio->sendMessage($to, $message);

            return response()->json(['message' => 'Folder updated successfully', 'data' => $folder]);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error updating folder', 'error' => $e->getMessage()], 500);
        }
    }
}
