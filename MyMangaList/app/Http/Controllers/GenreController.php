<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;

class GenreController extends Controller
{
    public function index()
    {
        $mangas = Genre::all();
        return view('genre', compact('genres'));

    }
}
