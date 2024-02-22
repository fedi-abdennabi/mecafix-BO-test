<?php

namespace App\Http\Controllers\SubCategory;

use App\Http\Controllers\Controller;
use App\Models\Input;
use App\Models\SubCategory;
use Illuminate\Http\Request;

class SubcategoryController extends Controller
{
    public function createSubCategory(Request $request, $categoryId)
    {
        $subCategory = new SubCategory();
        $subCategory->categoryId = $categoryId;
        $subCategory->subCategoryName = $request->input('subCategoryName');
        $subCategory->save();

        return response()->json($subCategory);
    }

    public function getAllSubCategorys(Request $request, $categoryId = null)
    {
        if ($categoryId) {
            $subCategory = SubCategory::where('category_id', $categoryId)->paginate(8);
        } else {
            $subCategory = SubCategory::all();
        }

        return $subCategory;
    }

    public function deleteSubCategory($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        $subCategory->Input()->delete();
        $subCategory->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateSubCategory(Request $request, $id)
    {
        $subCategory = SubCategory::findOrFail($id);
        if ($request->has('subCategoryName')) {
            $subCategory->subCategoryName = $request->input('subCategoryName');
        }
        if ($request->has('display')) {
            $subCategory->display = $request->input('display');
        }
        $subCategory->save();

        return response()->json($subCategory);
    }

    public function getSubCategoryDetails($id)
    {
        $subCategory = SubCategory::findOrFail($id);

        return response()->json($subCategory);
    }

    public function subCategoryDone($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        $subCategory->done = true;
        $subCategory->save();

        return response()->json(['message' => 'Updated successfully']);
    }

    public function subCategoryNotDone($id)
    {
        $subCategory = SubCategory::findOrFail($id);
        $subCategory->done = false;
        $subCategory->save();

        return response()->json(['message' => 'Updated successfully']);
    }

    public function deplicateSubCategory($id)
    {
        $baseSubCategory = SubCategory::with('Input')->where('id', $id)->first();
        $newSubCategory = new SubCategory();
        $newSubCategory->subCategoryName = $baseSubCategory->subCategoryName;
        $newSubCategory->categoryId = $baseSubCategory->categoryId;
        $newSubCategory->save();
        foreach ($baseSubCategory->Input as $oldInput) {
            $input = new Input();
            $input->inputName = $oldInput->inputName;
            $input->inputType = $oldInput->inputType;
            $input->inputValue = null;
            $input->inputOrder = $oldInput->inputOrder;
            $input->options = $oldInput->options;
            $input->label = $oldInput->label;
            $input->helper = $oldInput->helper;
            $input->principalImage = $oldInput->principalImage;
            $input->display = $oldInput->display;
            $input->sub_category_id = $newSubCategory->id;
            $input->save();
        }

        return $newSubCategory;
    }
}
