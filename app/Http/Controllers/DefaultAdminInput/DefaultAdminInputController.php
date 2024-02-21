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
        $defaultInput->inputName = $request->input('inputName', $defaultInput->inputName);
        $defaultInput->inputValue = $request->input('inputValue', $defaultInput->inputValue);
        $defaultInput->inputType = $request->input('inputType', $defaultInput->inputType);
        $defaultInput->inputOrder = $request->input('inputOrder', $defaultInput->inputOrder);
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
        if ($currentInput) {
            $isFirstInput = DefaultAdminInput::where('inputOrder', '>', $currentInput->inputOrder)->count() === 0;
            if ($isFirstInput) {
                return response()->json(['message' => 'This is the first input and cannot be incremented'], 400);
            }
            $nextInput = DefaultAdminInput::where('inputOrder', '>', $currentInput->inputOrder)
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
            return response()->json(['message' => 'DefaultInput not found'], 404);
        }
    }

    public function decrementOrder(Request $request, $inputId)
    {
        $currentInput = DefaultAdminInput::find($inputId);

        if ($currentInput) {
            $isLastInput = DefaultAdminInput::where('inputOrder', '<', $currentInput->inputOrder)->count() === 0;

            if ($isLastInput) {
                return response()->json(['message' => 'This is the last input and cannot be decremented'], 400);
            }

            $previousInput = DefaultAdminInput::where('inputOrder', '<', $currentInput->inputOrder)
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
            return response()->json(['message' => 'DefaultInput not found'], 404);
        }
    }

    public function displayTheFieldToClient(Request $request, $inputId)
    {
        $input = DefaultAdminInput::findOrFail($inputId);

        $input->display = !$input->display;
        $input->save();

        return response()->json(['success' => true, 'display' => $input->display]);
    }
}
