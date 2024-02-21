<?php

namespace App\Http\Controllers\Car;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Car;
use App\Models\Clients;
use App\Traits\base64DecodeFile;
use App\Traits\S3UploadFile;

class CarController extends Controller
{
    use S3UploadFile;
    use base64DecodeFile;

    //get all cars functions
    public function getAllCars(Request $request)
    {
        $orderBy = filled($request->input('orderBy')) ? $request->input('orderBy') : 'id';
        $order = filled($request->input('order')) ? $request->input('order') : 'DESC';
        $search = $request->input('search', '');
        $query = Car::where(function ($query) use ($search) {
            $query->where('immatriculation', 'LIKE', "%{$search}%");
        });
        $cars = $query->orderBy($orderBy, $order)->get();
        return response()->json($cars, 200);
    }

    //create new car function
    public function addCar(Request $request)
    {
        // Create a new car
        $car = new Car();
        $car->carType = $request->input('carType');
        $car->immatriculation = $request->input('registration');
        $car->brand = $request->input('brand');
        $car->model = $request->input('model');
        $car->box = $request->input('box');
        $car->mileage = $request->input('mileage');
        $car->save();

        $clientId = $request->input('clientId');
        $client = Clients::find($clientId);
        if (!$client) {
            return response()->json(['error' => 'Client not found'], 404);
        }
        $client->Car()->attach($car->id);
        return response()->json(['success' => 'Car added successfully']);
    }


    // update car function
    public function updateCar(Request $request, $id)
    {
        $car = Car::find($id);
        $car->carType = $request->input('carType');
        $car->immatriculation = $request->input('immatriculation');
        $car->brand = $request->input('brand');
        $car->model = $request->input('model');
        $car->box = $request->input('box');
        $car->mileage = $request->input('mileage');

        // if ($request->filled('picture') or $request->hasFile('picture')) {
        //     $carImage = $request->file('picture');
        //     if (!empty($car->image)) {
        //         $this->deleteFileFromS3($car->image);
        //     }
        //     if (str_contains($request->input('picture'), 'data:')) {
        //         $car->image = $this->base64DecodeFile($request->input('picture'), 'car', 'cars', null);
        //     } else {
        //         $image = file_get_contents($carImage);
        //         $carName = $request->file('picture')->getClientOriginalName();
        //         $car->image = $this->uploadFileToS3($image, $carName, 'cars');
        //     }
        // }

        // if ($request->filled('video')) {
        //     $carVideo = $request->file('video');
        //     if (!empty($car->video)) {
        //         $this->deleteFileFromS3($car->video);
        //     }
        //     if (str_contains($carVideo, 'data:')) {
        //         $car->video = $this->base64DecodeFile($carVideo, 'car', 'cars', null);
        //     } else {
        //         $video = file_get_contents($carVideo);
        //         $carName = $request->file('video')->getClientOriginalName();
        //         $car->video = $this->uploadFileToS3($video, $carName, 'cars');
        //     }
        // }
        $car->save();
        return $car;
    }

    //delete car function
    public function destroy($id)
    {
        $Car = Car::findOrFail($id);
        if ($Car->Folders()->exists()) {
            foreach ($Car->Folders as $folder) {
                $folder->delete();
            }
        }
        $Car->delete();

        return response()->json(['message' => 'Car Deleted successfully']);
    }
}
