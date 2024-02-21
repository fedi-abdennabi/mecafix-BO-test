<?php

namespace App\Models;

use GuzzleHttp\Client;
use Illuminate\Auth\Authenticatable;
// use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Database\Eloquent\Model;
use Laravel\Lumen\Auth\Authorizable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Model implements AuthenticatableContract, AuthorizableContract, JWTSubject
{
    use Authenticatable;
    use Authorizable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name', 'email',
    ];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var string[]
     */
    protected $hidden = [
        'password',
    ];

    // Rest omitted for brevity

    /**
     * Get the identifier that will be stored in the subject claim of the JWT.
     */
    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    /**
     * Return a key value array, containing any custom claims to be added to the JWT.
     *
     * @return array
     */
    public function getJWTCustomClaims()
    {
        return [];
    }

    public function company()
    {
        return $this->belongsTo(Company::class, 'companyId');
    }

    // public function template(){
    //     return $this->hasMany(Template::class);
    // }

    public function managers()
    {
        return $this->hasMany(User::class, 'employerId');
    }

    public function employer()
    {
        return $this->belongsTo(User::class, 'employerId');
    }

    public function pack()
    {
        return $this->belongsTo(Pack::class, 'packId');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'userId');
    }

    public function Role()
    {
        return $this->belongsTo(Role::class, 'roleId');
    }

    public function Folder()
    {
        return $this->hasMany(Folder::class);
    }

    public function Client()
    {
        return $this->hasMany(Client::class);
    }
    // public function Category(){
    //     return $this->hasMany(Category::class);
    // }
}
