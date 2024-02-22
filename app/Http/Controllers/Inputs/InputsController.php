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
        $input->label = $request->input('label');
        $input->options = $request->input('options');
        $input->principalImage = $request->input('principalImage') ?? false;
        $input->helper = $request->input('helper');
        if ($input->principalImage) {
            $input->inputOrder = 0;
        } else {
            $highestOrder = input::where('sub_category_id', $subCategoryId)->max('inputOrder');
            $input->inputOrder = $request->input('inputOrder', $highestOrder + 1);
        }
        $input->save();

        return response()->json($input);
    }

    public function getAllInputBySubCategoryId($subCategoryId)
    {
        $inputs = Input::where('sub_category_id', $subCategoryId)
            ->orderBy('InputOrder', 'asc')
            ->get();

        return response()->json($inputs);
    }

    public function updateInput(Request $request, $inputId)
    {
        $input = Input::findOrFail($inputId);
        $input->inputName = $request->input('name', $input->inputName);
        $input->inputValue = $request->input('inputValue', $input->inputValue);
        $input->inputType = $request->input('inputType', $input->inputType);
        $oldStatePrincipalImage = $input->principalImage;
        $newStatePrincipalImage = $request->input('principalImage', $oldStatePrincipalImage);
        $stateChangedToFalse = $oldStatePrincipalImage == true && $newStatePrincipalImage == false;
        $input->principalImage = $newStatePrincipalImage;
        if ($stateChangedToFalse) {
            $highestOrder = Input::where('sub_category_id', $input->sub_category_id)->max('inputOrder');
            $input->inputOrder = $highestOrder + 1;
        } else {
            $input->inputOrder = $request->input('inputOrder', $input->inputOrder);
        }
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
        $inputList = Input::where('sub_category_id', '=', $currentInput->sub_category_id)->get();
        if ($currentInput) {
            $isFirstInput = $inputList->where('inputOrder', '>', $currentInput->inputOrder)->count() === 0;
            if ($isFirstInput) {
                return response()->json(['error' => 'This is the first input and cannot be decremented'], 400);
            }

            $nextInput = $inputList->where('inputOrder', '>', $currentInput->inputOrder)
                ->sortBy('inputOrder')
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
            return response()->json(['message' => 'DefaultInput not found'], 404);
        }
    }

    public function decrementOrder(Request $request, $inputId)
    {
        $currentInput = Input::find($inputId);

        $inputList = Input::where('sub_category_id', '=', $currentInput->sub_category_id)->get();
        $isLastInput = $inputList->where('inputOrder', '<', $currentInput->inputOrder)->count() === 0;

        if ($isLastInput) {
            return response()->json(['error' => 'This is the last input and cannot be incremented'], 400);
        }

        $previousInput = $inputList->where('inputOrder', '<', $currentInput->inputOrder)
            ->sortByDesc('inputOrder')
            ->first();

        if ($previousInput) {
            $tempOrder = $currentInput->inputOrder;
            $currentInput->inputOrder = $previousInput->inputOrder;
            $previousInput->inputOrder = $tempOrder;

            $currentInput->save();
            $previousInput->save();

            return response()->json(['message' => 'Order decremented successfully']);
        }

        // Ajoutez une réponse pour le cas où aucun input précédent n'est trouvé
        return response()->json(['message' => 'Previous input not found'], 404);
    }
}
