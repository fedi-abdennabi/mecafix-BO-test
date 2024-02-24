<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Folder extends Model
{
    protected $fillable = ['hashtag', 'contrat', 'notes', 'vehiculeType', 'mileage', 'panne', 'images','position', 'video', 'statusValue', 'carId', 'userId', 'clientId', 'statusId'];
    protected $casts = [
        'images' => 'array',
    ];

    public function Car()
    {
        return $this->belongsTo(Car::class, 'carId');
    }

    public function CarStatus()
    {
        return $this->belongsTo(CarStatus::class, 'statusId');
    }

    public function User()
    {
        return $this->belongsTo(User::class, 'userId');
    }

    public function Category()
    {
        return $this->belongsToMany(Category::class, 'foldercategory', 'categoryId', 'folderId');
    }

    public function Clients()
    {
        return $this->belongsTo(Clients::class, 'clientId');
    }

    public function defaultCategories()
    {
        return $this->belongsToMany(DefaultCategory::class, 'default_category_folder');
    }

    public function DefaultAdminCategory()
    {
        return $this->belongsToMany(DefaultAdminCategory::class, 'default_admin_category_folder');
    }

    public function defaultInputs()
    {
        return $this->hasMany(DefaultInput::class);
    }

    public function defaultAdminInputs()
    {
        return $this->hasMany(DefaultAdminInput::class);
    }
}
