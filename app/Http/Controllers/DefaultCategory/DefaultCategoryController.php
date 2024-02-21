<?php

namespace App\Http\Controllers\DefaultCategory;

use App\Http\Controllers\Controller;
use App\Models\DefaultCategory;
use Illuminate\Http\Request;

class DefaultCategoryController extends Controller
{
    public function createDefaultCategorie(Request $request)
    {
        $superAdminId = auth()->id();
        $defaultCategorie = new DefaultCategory();
        $defaultCategorie->user_id = $superAdminId;
        $defaultCategorie->categoryName = $request->input('categoryName');
        $defaultCategorie->save();

        return response()->json($defaultCategorie);
    }

    public function getAllDefaultCategories(Request $request)
    {
        return Defaultcategory::paginate(8);
    }

    public function deleteDefaultCategorie($id)
    {
        $Defaultcategory = Defaultcategory::findOrFail($id);
        $Defaultcategory->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateDefaultCategorie(Request $request, $id)
    {
        $defaultCategorie = DefaultCategory::findOrFail($id);
        if ($request->has('categoryName')) {
            $defaultCategorie->categoryName = $request->input('categoryName');
        }
        $defaultCategorie->save();

        return response()->json($defaultCategorie);
    }

    public function getCategorieDetails($id)
    {
        $defaultCategorie = DefaultCategory::findOrFail($id);

        return response()->json($defaultCategorie);
    }
}
