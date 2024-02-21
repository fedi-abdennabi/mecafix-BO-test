<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    public function Folders(){
        return $this->hasMany(Folder::class,'carId');
    }

    public function Client(){
        return $this->belongsToMany(Clients::class, 'clientcar',"carId","clientId");
    }

}
