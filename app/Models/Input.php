<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Input extends Model
{
    protected $fillable = ['inputName', 'inputType', 'inputValue', 'inputOrder', 'label', 'options', 'principalImage', 'helper', 'sub_category_id', 'display', 'folder_Id'];
    protected $casts = [
        'options' => 'array',
    ];

    public function folder()
    {
        return $this->belongsTo(Folder::class);
    }

    public function SubCategory()
    {
        return $this->belongsTo(SubCategory::class, 'sub_category_id');
    }
}
