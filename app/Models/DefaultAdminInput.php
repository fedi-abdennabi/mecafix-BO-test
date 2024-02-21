<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DefaultAdminInput extends Model
{
    protected $table = 'default_admin_inputs';
    protected $fillable = ['inputName', 'inputType', 'inputValue', 'inputOrder', 'principalImage', 'label', 'options', 'default_admin_sub_category_id', 'required', 'display', 'helper'];
    protected $casts = [
        'options' => 'array',
    ];

    public function defaultAdminSubCategory()
    {
        return $this->belongsTo(DefaultAdminSubCategory::class, 'default_admin_sub_category_id');
    }

    public function folder()
    {
        return $this->belongsTo(Folder::class);
    }
}
