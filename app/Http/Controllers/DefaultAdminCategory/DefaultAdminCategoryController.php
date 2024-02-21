<?php

namespace App\Http\Controllers\DefaultAdminCategory;

use App\Http\Controllers\Controller;
use App\Models\DefaultAdminCategory;
use Illuminate\Http\Request;

class DefaultAdminCategoryController extends Controller
{
    public function createDefaultCategorie(Request $request)
    {
        $adminId = auth()->id();
        $defaultCategorie = new DefaultAdminCategory();
        $defaultCategorie->user_id = $adminId;
        $defaultCategorie->categoryName = $request->input('categoryName');
        $defaultCategorie->save();

        return response()->json($defaultCategorie);
    }

    public function getAllDefaultCategories(Request $request)
    {
        return DefaultAdminCategory::paginate(8);
    }

    public function deleteDefaultCategorie($id)
    {
        $Defaultcategory = DefaultAdminCategory::findOrFail($id);
        $Defaultcategory->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateDefaultCategorie(Request $request, $id)
    {
        $defaultCategorie = DefaultAdminCategory::findOrFail($id);
        if ($request->has('categoryName')) {
            $defaultCategorie->categoryName = $request->input('categoryName');
        }
        $defaultCategorie->save();

        return response()->json($defaultCategorie);
    }

    public function getDefaultCategorieDetails($id)
    {
        $defaultCategorie = DefaultAdminCategory::findOrFail($id);

        return response()->json($defaultCategorie);
    }
}
