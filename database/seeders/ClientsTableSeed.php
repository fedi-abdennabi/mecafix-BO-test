<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;

class ClientsTableSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
        public function run()
    {
        $roles =[[
            'roleName' => "superAdmin",
        ],
        [
            'roleName' => "admin",
        ],
        [
            'roleName' => "client",
        ]];
        foreach ($roles as $role) {

            Role::create($role);
        }
    }
    }
