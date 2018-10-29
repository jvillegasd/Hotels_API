<?php

namespace API_Lab\Http\Controllers;

use API_Lab\User;
use Illuminate\Http\Request;

class userController extends Controller
{
    public function create(Request $request){
        if($request->has('email') && $request->has('pass') && $request->has('name') && $request->has('lname') && $request->has('addr')){
            $userData = [
                'name' => $request->get('name'),
                'lname' => $request->get('lname'),
                'addr' => $request->get('addr'),
                'email' => $request->get('email'),
                'password' => bcrypt($request->get('pass'))
            ];
            $query = User::where('email', '=', $request->get('email'))->get();
            $response = json_decode($query, true);
            if(!empty($response)) return 'Email registrado';
            return User::create($userData);
        }
        return 'Parametros no introducidos';
    }

    public function update(Request $request){
        if($request->has('id') && $request->has('pass') && $request->has('addr')){
            $upUser = User::find($request->get('id'));
            if($upUser != NULL){
                $upUser->password = bcrypt($request->get('pass'));
                $upUser->addr = $request->get('addr');
                $upUser->save();
                return '1';
            }
            return '0. Razon: Id de usuario invalida';
        }
        return 'Parametros no introducidos';
    }
}