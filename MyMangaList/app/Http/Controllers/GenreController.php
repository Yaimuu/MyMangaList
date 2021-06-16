<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;
use App\GenreManga;
use Illuminate\Support\Facades\DB;

class GenreController extends Controller
{
    public function index()
    {
        $genres = Genre::all();

        foreach($genres as $genre){
            $mangas = GenreManga::where('')
        }
        return view('genre', compact('genres'));
    }
}
