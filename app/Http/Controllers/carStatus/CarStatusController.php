<?php

namespace App\Http\Controllers\carStatus;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CarStatus;

class CarStatusController extends Controller
{
    public function getAllStatus(Request $request)
    {
        $carstatus = CarStatus::all();

        return response()->json($carstatus);
    }
}
