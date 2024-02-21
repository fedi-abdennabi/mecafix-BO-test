<?php

namespace App\Http\Middleware;
use Illuminate\Contracts\Auth\Factory as Auth;
use Closure;
use App\Models\Role;

class isAdmin
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
        $adminRoleName = 'admin';
        $user = $this->auth->guard('api')->user();
        $isAdmin = $user->Role->roleName === $adminRoleName;
        if ($this->auth->guard($guard)->guest() || !$isAdmin ) {
            return response('Unauthorized.', 401);
        }
        return $next($request);
    }
}
