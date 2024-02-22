<?php

namespace App\Http\Middleware;
use Illuminate\Contracts\Auth\Factory as Auth;
use Closure;
use App\Models\Role;


class isClient
{
    /**
    * The authentication guard factory instance.
    *
    * @var \Illuminate\Contracts\Auth\Factory
    */
   protected $auth;

   /**
    * Create a new middleware instance.
    *
    * @param  \Illuminate\Contracts\Auth\Factory  $auth
    * @return void
    */
   public function __construct(Auth $auth)
   {
       $this->auth = $auth;
   }

   /**
    * Handle an incoming request.
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \Closure  $next
    * @param  string|null  $guard
    * @return mixed
    */
   public function handle($request, Closure $next, $guard = null)
   {
       $clientRoleName = 'client';
       $user = $this->auth->guard('api')->user();
       $isClient = $user->Role->roleName === $clientRoleName;
       if ($this->auth->guard($guard)->guest() || !$isClient ) {
           return response('Unauthorized.', 401);
       }
       return $next($request);
   }
}
