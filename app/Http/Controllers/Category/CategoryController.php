<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Folder;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function createCategory(Request $request, $folderId)
    {
        $this->validate(
            $request,
            [
                'categoryName' => 'required|unique:categories',
            ]
        );
        $category = new Category();
        $category->categoryName = $request->input('categoryName');
        $category->save();
        $folder = Folder::find($folderId);
        $folder->Category()->attach($category);

        return response()->json($category);
    }

    public function getAllCategorys(Request $request)
    {
        return Category::paginate(8);
    }

    public function deleteCategory($id)
    {
        $category = Category::findOrFail($id);
        $category->subCategory()->delete();
        $category->delete();

        return response()->json(['message' => 'Deleted successfully']);
    }

    public function updateCategory(Request $request, $id)
    {
        $category = Category::findOrFail($id);
        if ($request->has('categoryName')) {
            $category->categoryName = $request->input('categoryName');
        }
        $category->save();

        return response()->json($category);
    }

    public function getCategoryDetails($id)
    {
        $category = Category::findOrFail($id);

        return response()->json($category);
    }
}
