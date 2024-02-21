<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DefaultInput extends Model
{
    protected $table = 'default_inputs';
    protected $fillable = ['inputName', 'inputType', 'inputValue', 'inputOrder', 'principalImage', 'label', 'options', 'sub_category_default_id', 'required', 'display','helper'];
    protected $casts = [
        'options' => 'array',
    ];

    public function subCategoryDefault()
    {
        return $this->belongsTo(SubCategoryDefault::class, 'sub_category_default_id');
    }

    public function folder()
    {
        return $this->belongsTo(Folder::class);
    }
}
