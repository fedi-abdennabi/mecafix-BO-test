<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategoryDefault extends Model
{
    protected $table = 'sub_category_defaults';

    protected $fillable = ['subCategoryName', 'default_category_id'];

    public function defaultCategory()
    {
        return $this->belongsTo(DefaultCategory::class, 'default_category_id');
    }

    public function defaultInputs()
    {
        return $this->hasMany(DefaultInput::class, 'sub_category_default_id');
    }
}
