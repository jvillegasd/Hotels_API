<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('search', 'searchController@index');
Route::get('search/hotels', 'searchController@hotels'); //Punto 1 y 2

Route::get('reservation', 'reservController@index');
Route::get('reservation/check', 'reservController@checkReserv'); //Punto 3

Route::post('users/create', 'userController@create'); //Punto 4
 
Route::put('users/update', 'userController@update'); //Punto 5

Route::post('reservation/make', 'reservController@makeReserv'); //Punto 6

Route::post('api_key/create', 'apiKeyController@create'); //Punto 7

Route::post('api_key/hotelCreate', 'apiKeyController@createHotel'); //Punto 8

Route::put('api_key/hotelUpdate', 'apiKeyController@updateHotel'); //Punto 9

Route::delete('api_key/hotelDelete', 'apiKeyController@deleteHotel'); //Punto 10

/*
    Documentacion de la API
*/
Route::get('doc', function(){
    return view('doc');
});