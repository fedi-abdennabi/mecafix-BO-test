<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class usersController extends Controller
{
    public function accountActivation(Request $request, $id)
    {
        $user = User::find($id);
        $user->activated = true;
        $user->save();

        return response()->json($user);
    }

    public function accountDesactivation(Request $request, $id)
    {
        $user = User::find($id);
        $user->activated = false;
        $user->save();

        return response()->json($user);
    }

    public function removeAccount(Request $request, $id)
    {
        $user = User::find($id);
        $user->orders()->delete();
        $user->delete();

        return response()->json('success');
    }

    public function usersList(Request $request)
    {
        $adminId = Role::where('roleName', 'admin')->pluck('id')->first();
        $users = User::where('roleId', $adminId)->orderBy('id', 'DESC')->paginate(25);

        return response()->json($users);
    }

    public function userUpdate(Request $request, $id)
    {
        $this->validate(
            $request,
            [
                'firstName' => 'required',
                'lastName' => 'required',
                'email' => 'required|email|unique:users,email,'.$id,
            ]
        );
        $admin = User::find($id);
        $admin->firstName = $request->input('firstName');
        $admin->lastName = $request->input('lastName');
        $admin->email = $request->input('email');
        $admin->phoneNumber = $request->input('phoneNumber');
        $admin->save();

        return response()->json($admin);
    }

    public function detailsAccount(Request $request, $id)
    {
        $admin = User::where('id', $id)->first();
        if (!$admin) {
            return response()->json(['message' => 'User not found'], 404);
        }

        return response()->json($admin, 200);
    }
}
