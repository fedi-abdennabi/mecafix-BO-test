<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Clients extends Model
{
    public function Car(){
        return $this->belongsToMany(Car::class, 'clientcar','clientId','carId');
    }

    public function Folder(){
        return $this->hasMany(Folder::class, 'clientId');
    }

    public function User(){
        return $this->belongsTo(User::class, 'admin_id');
    }
}
