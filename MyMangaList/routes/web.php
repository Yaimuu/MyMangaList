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

Route::resource('mangas', MangaController::class);
Route::patch('mangas', [MangaController::class, 'index'])->name('mangas');
Route::resource('genres', GenreController::class);

Route::get('rate', 'MangaController@rate')->name('rate');

//Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
//Route::post('login', 'Auth\LoginController@authenticate');
//Route::get('logout', 'Auth\LoginController@logout')->name('logout');
//
//Route::get('register', 'Auth\RegisterController@showRegistrationForm')->name('register');
//Route::post('register', 'Auth\RegisterController@register');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::post('addFriend', 'UtilisateurController@addFriend')->name('addFriend');

