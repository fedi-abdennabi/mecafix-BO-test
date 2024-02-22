<?php

namespace App\Http\Controllers\DefaultSubCategory;

use App\Http\Controllers\Controller;
use App\Models\SubCategoryDefault;
use App\Models\DefaultCategory;
use Illuminate\Http\Request;

class DefaultSubCategory extends Controller
{
    public function createDefaultSubCategorie(Request $request, $categoryId)
    {
        if ($categoryId){
        $defaultCategory = DefaultCategory::findOrFail($categoryId);
        $defaultSubCategorie = new SubCategoryDefault();
        $defaultSubCategorie->default_category_id = $defaultCategory->id;
        $defaultSubCategorie->subCategoryName = $request->input('subCategoryName');
        $defaultSubCategorie->save();

        return response()->json($defaultSubCategorie);
    }
    else{
        return response()->json('error');
    }
    }

    public function getAllDefaultSubCategories(Request $request, $categoryId)
    {
        $defaultSubCategories = SubCategoryDefault::where('default_category_id', $categoryId)->paginate(8);

        return $defaultSubCategories;
    }

    public function deleteDefaultSubCategorie($id)
    {
        $defaultSubCategorie = SubCategoryDefault::findOrFail($id);
        $defaultSubCategorie->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateDefaultSubCategorie(Request $request, $id)
    {
        $defaultSubCategorie = SubCategoryDefault::findOrFail($id);
        if ($request->has('subCategoryName')) {
            $defaultSubCategorie->subCategoryName = $request->input('subCategoryName');
        }
        $defaultSubCategorie->save();

        return response()->json($defaultSubCategorie);
    }

    public function getDefaultSubCategorieDetails(Request $request, $subCategorieId)
    {
        $defaultSubCategorie = SubCategoryDefault::findOrFail($subCategorieId);

        return response()->json($defaultSubCategorie);
    }
}
