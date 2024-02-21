<?php

namespace Database\Seeders;

use App\Models\CarStatus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CarStatusSeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $status = [
            ['statusName' => 'Attente validation devis client', 'hasSpecificValue'=>0],
            ['statusName' => 'Pièces commandées', 'hasSpecificValue'=>0],
            ['statusName' => 'Maintenance en cours', 'hasSpecificValue'=>0],
            ['statusName' => 'Remontage en cours', 'hasSpecificValue'=>0],
            ['statusName' => 'Statut personnalisé', 'hasSpecificValue'=>1],
            ['statusName' => 'Aucun statut', 'hasSpecificValue'=>0],
        ];
    
        foreach ($status as $statu) {
            CarStatus::create($statu);
        }
    }
    
}
