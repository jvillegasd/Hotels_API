<?php

namespace API_Lab\Http\Controllers;

use Illuminate\Support\Facades\DB;
use API_Lab\info_hotel;
use Illuminate\Http\Request;

class searchController extends Controller
{
    public function index(){
        $info = info_hotel::all();
        dd($info->toJson(JSON_PRETTY_PRINT));
    }

    public function hotels(Request $request){
        $queryStr = "SELECT * FROM `info_hotels` WHERE";
        $cont = 0;
        $array = array();
        if($request->has('name')){
            $array[$cont] = " `HOTEL NAME` = "."'".$request->get('name')."'";
            $cont = $cont + 1;
        }
        if($request->has('state')){
            $array[$cont] = " STATE = "."'".$request->get('state')."'";
            $cont = $cont + 1;
        }
        if($request->has('type')){
            $array[$cont] = " TYPE = "."'".$request->get('type')."'";
            $cont = $cont + 1;
        }
        if($request->has('size')){
            $array[$cont] = " SIZE = "."'".$request->get('size')."'";
            $cont = $cont + 1;
        }
        if($cont){
            $queryStr = $queryStr.$array[0];
            for($i = 1; $i < $cont; $i++) $queryStr = $queryStr.' AND '.$array[$i];
            return DB::select($queryStr);
        }
        if($request->has('lat') && $request->has('range') && $request->has('long')){
            $rangedHotels = info_hotel::select('*')
                    ->selectRaw('( 6371 * acos( cos( radians(?) ) *
                           cos( radians( LATITUDE ) )
                           * cos( radians( LONGITUDE ) - radians(?)
                           ) + sin( radians(?) ) *
                           sin( radians( LATITUDE ) ) )
                         ) AS distance', [$request->get('lat'), $request->get('long'), $request->get('lat')])
                    ->havingRaw("distance < ?", [$request->get('range')])
                    ->get();
            return $rangedHotels;
        }
        return 'Parametros no introducidos';
    }
}