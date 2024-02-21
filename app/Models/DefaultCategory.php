<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DefaultCategory extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function subCategoryDefaults()
    {
        return $this->hasMany(SubCategoryDefault::class);
    }
    public function folders()
    {
        return $this->belongsToMany(Folder::class, 'default_category_folder');
    }
}
