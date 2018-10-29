<?php

namespace API_Lab\Http\Controllers;

use Illuminate\Support\Facades\DB;
use API_Lab\reserv_hotel;
use Illuminate\Http\Request;
use API_Lab\User;
use API_Lab\info_hotel;

class reservController extends Controller
{
    public function index(){
        $info = reserv_hotel::all();
        return $info->toJson(JSON_PRETTY_PRINT);
    }

    public function checkReserv(Request $request){
        if($request->has('state') && $request->has('start') && $request->has('end')){
            $state = $request->get('state');
            $startD = date('Y-m-d', strtotime($request->get('start')));
            $endD = date('Y-m-d', strtotime($request->get('end')));
            $query = $this->checkR($state, $startD, $endD);
            if(count($query)) return $query;
            else return 'Hoteles no disponibles';
        }
        return 'Parametros no introducidos.';
    }

    public function makeReserv(Request $request){
        if($request->has('hid')&&$request->has('uid')&&$request->has('start')&&$request->has('end')&&$request->has('no')){
            $startD = date('Y-m-d', strtotime($request->get('start')));
            $endD = date('Y-m-d', strtotime($request->get('end')));
            $upUser = User::find($request->get('uid'));
            $upHotel = info_hotel::find($request->get('hid'));
            if($upUser == NULL) return 'Id de usuario invalida.';
            if($upHotel == NULL) return 'Id de hotel invalida.';
            $state = $upHotel->STATE;
            $query = $this->checkR2($state, $startD, $endD, $request->get('hid'), $request->get('no'));
            if(count($query)){
                $reservData = [
                    'START DATE' => $startD,
                    'END DATE' => $endD,
                    'STATE' => $state,
                    'HOTEL ID' => $request->get('hid'),
                    'USER ID' => $request->get('uid')
                ];
                for($i = 0; $i < $request->get('no'); $i++) reserv_hotel::create($reservData);
                return reserv_hotel::where('HOTEL ID', '=', $request->get('hid'))
                                    ->where('USER ID', '=', $request->get('uid'))
                                    ->where('START DATE', '=', $startD)
                                    ->where('END DATE', '=', $endD)
                                    ->orderBy('id', 'desc')->take($request->get('no'))->get();
            }
            return 'Hoteles no disponibles';
        }
        return 'Parametros no introducidos.';
    }

    private function checkR($state, $startD, $endD){
        DB::delete("DELETE FROM `reservs`");
        DB::insert("INSERT INTO `reservs`
                    SELECT `HOTEL ID`, COUNT(`HOTEL ID`)
                    FROM `reserv_hotels`
                    WHERE (((`START DATE` BETWEEN "."'".$startD."'"." AND "."'".$endD."'".") OR (`END DATE` BETWEEN "."'".$startD."'"." AND "."'".$endD."'".")) OR (`START DATE` < "."'".$startD."'"." AND `END DATE` > "."'".$endD."'".")) AND `STATE` = "."'".$state."'"."
                    GROUP BY `HOTEL ID`;");
        $query = DB::select("SELECT `HOTEL NAME`, IF(`ID`=`hotel`, `ROOMS` - `total`, `ROOMS`) AS `ALLOWED ROOMS`, `ID`, `STATE`
                             FROM `info_hotels`
                             LEFT JOIN `reservs` ON `hotel` = `ID`
                             WHERE `STATE` = "."'".$state."'"." AND IF(`ID` = `hotel`, IF(`ROOMS` - `total` > 0, TRUE, FALSE), TRUE);");
        return $query;
    }

    public function checkR2($state, $startD, $endD, $id, $no){
        DB::delete("DELETE FROM `reservs`");
        DB::insert("INSERT INTO `reservs`
                    SELECT `HOTEL ID`, COUNT(`HOTEL ID`)
                    FROM `reserv_hotels`
                    WHERE `HOTEL ID` = ".$id." AND (((`START DATE` BETWEEN "."'".$startD."'"." AND "."'".$endD."'".") OR (`END DATE` BETWEEN"."'".$startD."'"." AND "."'".$endD."'".")) OR (`START DATE` < "."'".$startD."'"." AND `END DATE` > "."'".$endD."'".")) AND `STATE` = "."'".$state."'"."
                    GROUP BY `HOTEL ID`;");
        $query = DB::select("SELECT `HOTEL NAME`, IF(`ID`=`hotel`, `ROOMS` - `total`, `ROOMS`) AS `ALLOWED ROOMS`, `ID`, `STATE`
                             FROM `info_hotels`
                             LEFT JOIN `reservs` ON `hotel` = `ID`
                             WHERE `STATE` = "."'".$state."'"." AND IF(`ID` = `hotel`, IF(`ROOMS` - `total` - ".$no." >= 0, TRUE, FALSE), TRUE) AND `ID` = ".$id);
        return $query;
    }
}