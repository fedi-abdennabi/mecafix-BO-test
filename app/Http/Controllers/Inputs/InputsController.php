<?php

namespace App\Http\Controllers\Inputs;

use App\Http\Controllers\Controller;
use App\Models\Input;
use Illuminate\Http\Request;

class InputsController extends Controller
{
    public function createInput(Request $request, $subCategoryId)
    {
        $input = new Input();
        $input->sub_category_id = $subCategoryId;
        $input->inputName = $request->input('inputName');
        $input->inputType = $request->input('inputType');
        $input->inputValue = null;
        $input->inputOrder = $request->input('inputOrder');
        $input->label = $request->input('label');
        $input->options = $request->input('options');
        $input->principalImage = $request->input('principalImage') ?? false;
        $input->helper = $request->input('helper');
        // $input->folderId = $folderId;
        $input->save();

        return response()->json($input);
    }

    public function getAllInputBySubCategoryId($subCategoryId)
    {
        $inputs = Input::where('sub_category_id', $subCategoryId)->get();

        return response()->json($inputs);
    }

    public function updateInput(Request $request, $inputId)
    {
        $input = Input::findOrFail($inputId);
        $input->inputName = $request->input('name', $input->name);
        $input->inputValue = $request->input('inputValue', $input->inputValue);
        $input->inputType = $request->input('inputType', $input->inputType);
        $input->inputOrder = $request->input('inputOrder', $input->inputOrder);
        $input->label = $request->input('label', $input->label);
        $input->options = $request->input('options', $input->options);
        $input->helper = $request->input('helper', $input->helper);

        $input->save();

        return response()->json(['message' => 'Updated successfully']);
    }

    public function deleteInput($inputId)
    {
        $input = Input::findOrFail($inputId);
        $input->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function getDetailsInput(Request $request, $inputId)
    {
        $inputs = Input::findOrFail($inputId);

        return response()->json($inputs);
    }

    public function displayTheFieldToClient(Request $request, $inputId)
    {
        $input = Input::findOrFail($inputId);
        $input->display = !$input->display;
        $input->save();

        return response()->json(['success' => true, 'display' => $input->display]);
    }

    public function incrementOrder(Request $request, $inputId)
    {
        $currentInput = Input::find($inputId);
        if ($currentInput) {
            $isFirstInput = Input::where('inputOrder', '>', $currentInput->inputOrder)->count() === 0;
            if ($isFirstInput) {
                return response()->json(['message' => 'This is the first input and cannot be incremented'], 400);
            }
            $nextInput = Input::where('inputOrder', '>', $currentInput->inputOrder)
                              ->orderBy('inputOrder', 'asc')
                              ->first();

            if ($nextInput) {
                $tempOrder = $currentInput->inputOrder;
                $currentInput->inputOrder = $nextInput->inputOrder;
                $nextInput->inputOrder = $tempOrder;

                $currentInput->save();
                $nextInput->save();
            }

            return response()->json(['message' => 'Order incremented successfully']);
        } else {
            return response()->json(['message' => 'Input not found'], 404);
        }
    }

    public function decrementOrder(Request $request, $inputId)
    {
        $currentInput = Input::find($inputId);

        if ($currentInput) {
            $isLastInput = Input::where('inputOrder', '<', $currentInput->inputOrder)->count() === 0;

            if ($isLastInput) {
                return response()->json(['message' => 'This is the last input and cannot be decremented'], 400);
            }

            $previousInput = Input::where('inputOrder', '<', $currentInput->inputOrder)
                              ->orderBy('inputOrder', 'desc')
                              ->first();

            if ($previousInput) {
                $tempOrder = $currentInput->inputOrder;
                $currentInput->inputOrder = $previousInput->inputOrder;
                $previousInput->inputOrder = $tempOrder;

                $currentInput->save();
                $previousInput->save();
            }

            return response()->json(['message' => 'Order decremented successfully']);
        } else {
            return response()->json(['message' => 'Input not found'], 404);
        }
    }
}
