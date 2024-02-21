<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CarStatus extends Model
{   
    protected $table = 'carstatus';
    public function Folder(){
        return $this->hasMany(Folder::class);
    }
}
