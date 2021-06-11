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
Route::get('manga/{id}', MangaController::class.'@manga');
Route::get('manga/{id}', MangaController::class.'@manga')->name('manga');
Route::resource('genres', GenreController::class);
