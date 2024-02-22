<?php

namespace App\Http\Controllers\DefaultAdminInput;

use App\Http\Controllers\Controller;
use App\Models\DefaultAdminInput;
use Illuminate\Http\Request;

class DefaultAdminInputController extends Controller
{
    public function createDefaultInput(Request $request, $subCategoryId)
    {
        $defaultInput = new DefaultAdminInput();
        $defaultInput->default_admin_sub_category_id = $subCategoryId;
        $defaultInput->inputName = $request->input('inputName');
        $defaultInput->inputType = $request->input('inputType');
        $defaultInput->inputValue = null;
        $highestOrder = DefaultAdminInput::where('default_admin_sub_category_id', $subCategoryId)->max('inputOrder');
        $defaultInput->inputOrder = $highestOrder + 1;
        $defaultInput->label = $request->input('label');
        $defaultInput->display = $request->input('display') ?? true;
        $defaultInput->principalImage = $request->input('principalImage') ?? false;
        $defaultInput->options = $request->input('options');
        $defaultInput->helper = $request->input('helper') ?? '';
        $defaultInput->folder_id = null;
        if ($defaultInput->principalImage) {
            $defaultInput->inputOrder = 0;
        } else {
            $highestOrder = DefaultAdminInput::where('default_admin_sub_category_id', $subCategoryId)->max('inputOrder');
            $defaultInput->inputOrder = $request->input('inputOrder', $highestOrder + 1);
        }
        $defaultInput->save();

        return response()->json($defaultInput);
    }

    public function getAllInputBySubCategoryId($subCategoryId)
    {
        $defaultInputs = DefaultAdminInput::where('default_admin_sub_category_id', $subCategoryId)
            ->orderBy('InputOrder', 'asc')
            ->get();

        return response()->json($defaultInputs);
    }

    public function updateInput(Request $request, $inputId)
    {
        $defaultInput = DefaultAdminInput::findOrFail($inputId);
        $defaultInput->inputName = $request->input('name', $defaultInput->inputName);
        $defaultInput->inputValue = $request->input('inputValue', $defaultInput->inputValue);
        $defaultInput->inputType = $request->input('inputType', $defaultInput->inputType);
        $oldStatePrincipalImage = $defaultInput->principalImage;
        $newStatePrincipalImage = $request->input('principalImage', $oldStatePrincipalImage);
        $stateChangedToFalse = $oldStatePrincipalImage == true && $newStatePrincipalImage == false;
        $defaultInput->principalImage = $newStatePrincipalImage;
        if ($stateChangedToFalse) {
            $highestOrder = DefaultAdminInput::where('default_admin_sub_category_id', $defaultInput->default_admin_sub_category_id)->max('inputOrder');
            $defaultInput->inputOrder = $highestOrder + 1;
        } else {
            $defaultInput->inputOrder = $request->input('inputOrder', $defaultInput->inputOrder);
        }
        $defaultInput->label = $request->input('label', $defaultInput->label);
        $defaultInput->display = $request->input('display', $defaultInput->display);
        $defaultInput->options = $request->input('options', $defaultInput->options);
        $defaultInput->helper = $request->input('helper', $defaultInput->helper);

        $defaultInput->save();

        return response()->json($defaultInput);
    }

    public function deleteInput($inputId)
    {
        $defaultInput = DefaultAdminInput::findOrFail($inputId);
        $defaultInput->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function getDetailsInput(Request $request, $inputId)
    {
        $defaultInput = DefaultAdminInput::findOrFail($inputId);

        return response()->json($defaultInput);
    }

    public function incrementOrder(Request $request, $inputId)
    {
        $currentInput = DefaultAdminInput::find($inputId);
        $inputList = DefaultAdminInput::where('default_admin_sub_category_id', '=', $currentInput->default_admin_sub_category_id)->get();
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
        $currentInput = DefaultAdminInput::find($inputId);

        $inputList = DefaultAdminInput::where('default_admin_sub_category_id', '=', $currentInput->default_admin_sub_category_id)->get();
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

    public function displayTheFieldToClient(Request $request, $inputId)
    {
        $input = DefaultAdminInput::findOrFail($inputId);

        $input->display = !$input->display;
        $input->save();

        return response()->json(['success' => true, 'display' => $input->display]);
    }
}
