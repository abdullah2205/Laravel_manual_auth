<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/register', 'AuthController@getRegister')->middleware('guest')->name('register'); //middleware disek trus nama yo kenek
Route::post('/register', 'AuthController@postRegister')->middleware('guest');
Route::get('/login', 'AuthController@getLogin')->middleware('guest')->name('login'); //penamaan untuk fungsi postLogin
Route::post('/login', 'AuthController@postLogin')->middleware('guest');
Route::get('/home', function() 
{
    return view('home');
    //return auth()->user();
})->middleware('auth')->name('home');
Route::get('/logout', 'AuthController@logout')->middleware('auth')->name('logout');