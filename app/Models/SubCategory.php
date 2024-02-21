<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    protected $table = 'subcategories';
    public function Category(){
        return $this->belongsTo(Category::class, 'categoryId');
    }

    public function Input(){
        return $this->hasMany(Input::class);
    }
}
