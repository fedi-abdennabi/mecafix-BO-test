<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DefaultAdminCategory extends Model
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function subCategoryDefaults()
    {
        return $this->hasMany(DefaultAdminSubCategory::class);
    }

    public function folders()
    {
        return $this->belongsToMany(Folder::class, 'default_admin_category_folder');
    }
}
