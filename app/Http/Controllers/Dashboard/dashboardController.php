<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class dashboardController extends Controller
{
    public function statistic(){
        $totalClient = Clients::count();
        $openedFolders = Folders::where('statusValue', 'active')->count();
        $closedFolders = $totalFolders - $openedFolders;
        $totalFolders = $opnendFolders + $closedFolders;
        $foundFaults=Folders::where('panne',true)->count();
        $infoundFaults=Folders::where('panne',false)->count();   
        $company=Clients::where('type','company')->count();
        $men=Clients::where('type','men')->count();
        $women=Clients::where('type','women')->count();
        $arrivalsOnTruck=Folders::where('arrivalType','arrivalsOnTruck')->count();
        $simpleArrivals=Folders::where('arrivalType','simpleArrivals')->count();

        return response()->json([
            'users'=>$users,
            'totalClients' =>$totalClients,
            'totalFolders' =>$totalFolders,
            'openedFolders' =>$opnendFolders,
            'closedFolders' =>$closedFolders,
            'simpleArrivals'=>$simpleArrivals,
            'arrivalsOnTruck'=>$arrivalsOnTruck,
            'distribution'=>$distribution,
            'employers'=>$employers,
            'company'=>$company,
            'men'=>$men,
            'women'=>$women
        ]);
    }
}
