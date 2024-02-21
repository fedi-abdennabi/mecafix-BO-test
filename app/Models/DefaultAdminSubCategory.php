<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DefaultAdminSubCategory extends Model
{
    protected $table = 'default_admin_sub_categories';

    protected $fillable = ['subCategoryName', 'default_admin_category_id'];

    public function category()
    {
        return $this->belongsTo(DefaultAdminCategory::class, 'default_admin_category_id');
    }

    public function defaultInputs()
    {
        return $this->hasMany(DefaultAdminInput::class);
    }
}
