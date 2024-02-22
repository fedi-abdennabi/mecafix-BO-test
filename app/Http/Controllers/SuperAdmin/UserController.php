<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use App\Models\DefaultAdminCategory;
use App\Models\DefaultAdminInput;
use App\Models\DefaultAdminSubCategory;
use App\Models\DefaultCategory;
use App\Models\Order;
use App\Models\Pack;
use App\Models\Role;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;


class UserController extends Controller
{
    public function createNewAccounts(Request $request)
    {
        $this->validate(
            $request,
            [
                'firstName' => 'required',
                'lastName' => 'required',
                'adminEmail' => 'required|email|unique:users,email',
                'clientEmail' => 'required|email|unique:users,email',
                'adminPassword' => 'required',
                'clientPassword' => 'required',
            ]
        );
        $pack = Pack::where('price', '0.00')->first();

        // create new admin
        $admin = new User();
        $admin->firstName = $request->input('firstName');
        $admin->lastName = $request->input('lastName');
        $admin->phoneNumber = $request->input('phoneNumber');
        $admin->email = $request->input('adminEmail');
        $admin->password = Hash::make($request->input('adminPassword'));
        $admin->langKey = $request->input('langKey');
        $role = Role::where('roleName', 'admin')->value('id');
        $admin->roleId = $role;
        $admin->packId = $pack->id;
        $admin->save();

        // create order for pack purchase
        $order = new Order();
        $order->status = 'paid';
        $order->price = $pack->price;
        $order->packId = $pack->id;
        $order->contractNb = $pack->contractNb;
        $order->optionAi = $pack->optionAi;
        $order->quotaAi = $pack->quotaAi;
        !empty($pack->period) ? $order->expiredIn = Carbon::now()->addDays($pack->period)->format('Y-m-d') : $order->expiredIn = null;
        $order->userId = $admin->id;
        $order->save();

        // create new client
        $client = new User();
        $client->firstName = $request->input('firstName');
        $client->lastName = $request->input('lastName');
        $client->phoneNumber = $request->input('phoneNumber');
        $client->email = $request->input('clientEmail');
        $client->password = Hash::make($request->input('clientPassword'));
        $client->langKey = $request->input('langKey');
        $role = Role::where('roleName', 'client')->value('id');
        $client->roleId = $role;
        $client->adminId = $admin->id;
        $client->save();

        // create default categorie/subCategorie/inputs for this new admin
        $categories = DefaultCategory::with('subCategoryDefaults.defaultInputs')->get();

        foreach ($categories as $categoryData) {
            $newCategory = new DefaultAdminCategory();
            $newCategory->categoryName = $categoryData->categoryName;
            $newCategory->user_id = $admin->id;
            $newCategory->save();
            foreach ($categoryData->subCategoryDefaults as $subCatgeory) {
                $newSubCategory = new DefaultAdminSubCategory();
                $newSubCategory->subCategoryName = $subCatgeory->subCategoryName;
                $newSubCategory->default_admin_category_id = $newCategory->id;
                $newSubCategory->save();
                foreach ($subCatgeory->defaultInputs as $defaultInput) {
                    $input = new DefaultAdminInput();
                    $input->inputName = $defaultInput->inputName;
                    $input->inputType = $defaultInput->inputType;
                    $input->inputValue = null;
                    $input->inputOrder = $defaultInput->inputOrder;
                    $input->options = $defaultInput->options;
                    $input->label = $defaultInput->label;
                    $input->helper = $defaultInput->helper;
                    $input->principalImage = $defaultInput->principalImage;
                    $input->display = $defaultInput->display;
                    $input->default_admin_sub_category_id = $newSubCategory->id;
                    $input->save();
                }
            }
        }

        return response()->json('account created');
    }

}
