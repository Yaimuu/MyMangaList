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

/**
 * Mangas
 */
Route::resource('mangas', MangaController::class);
Route::patch('mangas', [MangaController::class, 'index'])->name('mangas');
Route::resource('genres', GenreController::class);
Route::patch('genres', [GenreController::class, 'index'])->name('genres');

Route::get('rate', 'MangaController@rate')->name('rate');
Route::get('fini', 'MangaController@fini')->name('fini');

/**
 * Utilisateurs
 */
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/amis', 'UtilisateurController@showFriendList')->name('amis');
Route::post('addFriend', 'UtilisateurController@addFriend')->name('addFriend');

Route::get('/mangas-fini', 'UtilisateurController@showMangasFini')->name('mangas-fini');
