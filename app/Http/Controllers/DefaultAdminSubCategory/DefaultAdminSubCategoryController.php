<?php

namespace App\Http\Controllers\DefaultAdminSubCategory;

use App\Http\Controllers\Controller;
use App\Models\DefaultAdminSubCategory;
use Illuminate\Http\Request;

class DefaultAdminSubCategoryController extends Controller
{
    public function createDefaultSubCategorie(Request $request, $categoryId)
    {
        $defaultSubCategorie = new DefaultAdminSubCategory();
        $defaultSubCategorie->default_admin_category_id = $categoryId;
        $defaultSubCategorie->subCategoryName = $request->input('subCategoryName');
        $defaultSubCategorie->save();

        return response()->json($defaultSubCategorie);
    }

    public function getAllDefaultSubCategories(Request $request, $categoryId)
    {
        $defaultSubCategories = DefaultAdminSubCategory::where('default_admin_category_id', $categoryId)->paginate(8);

        return $defaultSubCategories;
    }

    public function deleteDefaultSubCategorie($id)
    {
        $defaultSubCategorie = DefaultAdminSubCategory::findOrFail($id);
        $defaultSubCategorie->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateDefaultSubCategorie(Request $request, $id)
    {
        $defaultSubCategorie = DefaultAdminSubCategory::findOrFail($id);
        if ($request->has('subCategoryName')) {
            $defaultSubCategorie->subCategoryName = $request->input('subCategoryName');
        }
        $defaultSubCategorie->save();

        return response()->json($defaultSubCategorie);
    }

    public function getDefaultSubCategorieDetails(Request $request, $id)
    {
        $defaultSubCategorie = DefaultAdminSubCategory::findOrFail($id);

        return response()->json($defaultSubCategorie);
    }
}
