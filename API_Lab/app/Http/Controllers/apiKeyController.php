<?php

namespace API_Lab\Http\Controllers;

use API_Lab\api_key;
use API_Lab\info_hotel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class apiKeyController extends Controller
{
    public function create(Request $request){
        if($request->has('cname') && $request->has('comp') && $request->has('email')){
            $companyData = [
                'CONTACT NAME' => $request->get('cname'),
                'EMAIL' => $request->get('email'),
                'COMPANY' => $request->get('comp'),
                'API KEY' =>str_random(11)
            ];
            $confirmQuery = api_key::where('CONTACT NAME', '=', $request->get('cname'))
                                    ->where('EMAIL', '=', $request->get('email'))
                                    ->where('COMPANY', '=', $request->get('comp'))->get();
            $response = json_decode($confirmQuery, true);
            if(!empty($response)) return 'Compañia con datos dados existente';
            $query = new api_key;
            $query->fill($companyData);
            $query->save();
            return $query;
        }
        return 'Parametros no introducidos';
    }

    public function updateHotel(Request $request){
        if($request->has('apikey')&&$request->has('id')&&$request->has('type')&&$request->has('room')&&$request->has('phone')&&$request->has('web')&&$request->has('email')){
            $confirmQuery = api_key::where('API KEY', '=', $request->get('apikey'))->get();
            $response = json_decode($confirmQuery, true);
            $confirmQuery2 = info_hotel::where('ID', '=', $request->get('id'))->get();
            $response2 = json_decode($confirmQuery2, true);
            if(empty($response2)) return 'Hotel inexistente';
            if(!empty($response)){
                $size = "";
                if($request->get('room') >= 0 && $request->get('room') <= 50) $size = "small";
                else if($request->get('room') >= 51 && $request->get('room') <= 100) $size = "medium";
                else $size = "large";
                DB::table('info_hotels')
                    ->where('ID',$request->get('id'))
                    ->update(
                        [
                            'TYPE' => $request->get('type'),
                            'ROOMS' => $request->get('room'),
                            'PHONE' => $request->get('phone'),
                            'WEBSITE' => $request->get('web'),
                            'EMAIL' => $request->get('email'),
                            'SIZE' => $size
                        ]
                    );
                return DB::select("SELECT * FROM `info_hotels` WHERE ID = ".$request->get('id'));
            }
            return 'Api key inexistente';
        }
        return 'Parametros no introducidos';
    }

    public function createHotel(Request $request){
        if($request->has('apikey')&&$request->has('name')&&$request->has('addr')&&$request->has('type')&&$request->has('room')&&$request->has('state')){
            $confirmQuery = info_hotel::where('HOTEL NAME','=',$request->get('name'))
                                        ->where('API KEY','=',$request->get('apikey'))
                                        ->where('ADDRESS','=',$request->get('addr'))
                                        ->where('TYPE',"=",$request->get('type'))
                                        ->where('ROOMS',"=",$request->get('room'))
                                        ->where('STATE',"=",$request->get('state'))->get();
            $response = json_decode($confirmQuery, true);
            $confirmQuery2 = api_key::where('API KEY', '=', $request->get('apikey'))->get();
            $response2 = json_decode($confirmQuery2, true);
            if(empty($response2)) return 'API key invalida';
            if(empty($response)){
                $size = "";
                if($request->get('room') >= 0 && $request->get('room') <= 50) $size = "small";
                else if($request->get('room') >= 51 && $request->get('room') <= 100) $size = "medium";
                else $size = "large";
                $queryStr = "INSERT INTO `info_hotels` (";
                $cont = 0;
                $column = array();
                $value = array();
                if($request->has('email')){
                    $column[$cont] = " `EMAIL` ";
                    $value[$cont] = "'".$request->get('email')."'";
                    $cont = $cont + 1;
                }
                if($request->has('name')){ //Obligatorio
                    $column[$cont] = " `HOTEL NAME` ";
                    $value[$cont] = "'".$request->get('name')."'";
                    $cont = $cont + 1;
                }
                if($request->has('state')){ //Obligatorio
                    $column[$cont] = " `STATE` ";
                    $value[$cont] = "'".$request->get('state')."'";
                    $cont = $cont + 1;
                }
                if($request->has('type')){ //Obligatorio
                    $column[$cont] = " `TYPE` ";
                    $value[$cont] = "'".$request->get('type')."'";
                    $cont = $cont + 1;
                }
                if($request->has('size') || true){
                    $column[$cont] = " `SIZE` ";
                    $value[$cont] = "'".$size."'";
                    $cont = $cont + 1;
                }
                if($request->has('addr')){ //Obligatorio
                    $column[$cont] = " `ADDRESS` ";
                    $value[$cont] = "'".$request->get('addr')."'"; 
                    $cont = $cont + 1;
                }
                if($request->has('room')){
                    $column[$cont] = " `ROOMS` ";
                    $value[$cont] = $request->get('room');
                    $cont = $cont + 1;
                }
                if($request->has('phone')){
                    $column[$cont] = " `PHONE` ";
                    $value[$cont] = "'".$request->get('phone')."'";
                    $cont = $cont + 1;
                }
                if($request->has('web')){
                    $column[$cont] = " `WEBSITE` ";
                    $value[$cont] = "'".$request->get('web')."'";
                    $cont = $cont + 1;
                }
                if($request->has('lat')){
                    $column[$cont] = " `LATITUDE` ";
                    $value[$cont] = "'".$request->get('lat')."'";
                    $cont = $cont + 1;
                }
                if($request->has('lon')){
                    $column[$cont] = " `LONGITUDE` ";
                    $value[$cont] = "'".$request->get('lon')."'";
                    $cont = $cont + 1;
                }
                if($request->has('fax')){
                    $column[$cont] = " `FAX` ";
                    $value[$cont] = "'".$request->get('fax')."'";
                    $cont = $cont + 1;
                }
                if($request->has('apikey')){ //Obligatorio
                    $column[$cont] = " `API KEY` ";
                    $value[$cont] = "'".$request->get('apikey')."'"; 
                    $cont = $cont + 1;
                }
                if($cont){
                    $queryStr = $queryStr.$column[0];
                    for($i = 1; $i < $cont; $i++) $queryStr = $queryStr.",".$column[$i];
                    $queryStr = $queryStr.") VALUES (".$value[0];
                    for($i = 1; $i < $cont; $i++) $queryStr = $queryStr.",".$value[$i];
                    $queryStr = $queryStr.")";
                    DB::insert($queryStr);
                    return DB::select("SELECT * FROM `info_hotels` ORDER BY ID DESC LIMIT 1");
                }  
            } else return 'Hotel existente'; 
        }
        return 'Parametros no introducidos';
    }

    public function deleteHotel(Request $request){
        if($request->has('apikey')&&$request->has('hid')){
            $confirmQuery = info_hotel::where('ID', '=', $request->get('hid'))->get();
            $response = json_decode($confirmQuery, true);
            if(empty($response)) return 'Id de hotel invalida';
            $confirmQuery = api_key::where('API KEY', '=', $request->get('apikey'))->get();
            $response = json_decode($confirmQuery, true);
            if(empty($response)) return 'API Key invalida';
            return info_hotel::where('ID', '=', $request->get('hid'))->delete();
        }
        return 'Parametros no introducidos';
    }
}