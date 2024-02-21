<?php

namespace App\Http\Controllers\Folder;

use App\Http\Controllers\Controller;
use App\Models\Car;
use App\Models\Category;
use App\Models\Clients;
use App\Models\DefaultAdminCategory;
use App\Models\Folder;
use App\Models\Input;
use App\Models\SubCategory;
use App\Traits\base64DecodeFile;
use App\Traits\S3UploadFile;
use Illuminate\Http\Request;

class folderController extends Controller
{
    use S3UploadFile;
    use base64DecodeFile;

    public function getFolders(Request $request)
    {
        $userId = auth()->id();
        $orderBy = filled($request->input('orderBy')) ? $request->input('orderBy') : 'id';
        $order = filled($request->input('order')) ? $request->input('order') : 'DESC';
        $search = $request->input('search');

        $folderList = Folder::with('Car', 'Clients')
            ->where('userId', $userId)
            ->where(function ($query) use ($search) {
                $query->where('hashtag', 'like', "%{$search}%")
                    ->orWhere('contrat', 'like', "%{$search}%")
                    ->orWhere('arrivalType', 'like', "%{$search}%")
                    ->orWhere('panne', 'like', "%{$search}%")
                    ->orWhere('vehiculeType', 'like', "%{$search}%")
                    ->orWhere('notes', 'like', "%{$search}%")
                    ->orWhere('mileage', 'like', "%{$search}%")
                    ->orWhereHas('Car', function ($query) use ($search) {
                        $query->where('carType', 'like', "%{$search}%")
                            ->orWhere('immatriculation', 'like', "%{$search}%")
                            ->orWhere('brand', 'like', "%{$search}%")
                            ->orWhere('model', 'like', "%{$search}%")
                            ->orWhere('box', 'like', "%{$search}%")
                            ->orWhere('mileage', 'like', "%{$search}%");
                    })
                    ->orWhereHas('Clients', function ($query) use ($search) {
                        $query->whereRaw("concat(firstName,' ',lastName) like '%" . $search . "%' ")
                            ->orWhere('type', 'like', "%{$search}%")
                            ->orWhere('RegistrationNumber', 'like', "%{$search}%")
                            ->orWhere('HeadquartersAddress', 'like', "%{$search}%")
                            ->orWhere('activitySector', 'like', "%{$search}%")
                            ->orWhere('city', 'like', "%{$search}%")
                            ->orWhere('postalCode', 'like', "%{$search}%")
                            ->orWhere('phone', 'like', "%{$search}%")
                            ->orWhere('adress', 'like', "%{$search}%")
                            ->orWhere('email', 'like', "%{$search}%");
                    });
            })
            ->orderby($orderBy, $order)
            ->get();

        return response()->json($folderList);
    }

    public function createNewFolder(Request $request)
    {
        $this->validate(
            $request,
            [
                'registration' => 'required',
                'video' => 'mimes:mp4,avi',
                'firstName' => 'required',
                'lastName' => 'required',
                'email' => 'required|unique:clients',
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

        $client->car()->attach($car->id);

        // create new folder
        $folder = new Folder();
        $folder->carId = $car->id;
        $folder->clientId = $client->id;
        $folder->userId = auth()->id();
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
        $car = $client->Car()->get();
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
        $folder->save();

        return response()->json('folder added successfully');
    }
}
