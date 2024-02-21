<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function SubCategory()
    {
        return $this->hasMany(SubCategory::class, 'categoryId');
    }

    public function Folder()
    {
        return $this->belongsToMany(Folder::class, 'foldercategory', 'categoryId', 'folderId');
    }
}
