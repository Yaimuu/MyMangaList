<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;
use App\GenreManga;
use App\Manga;
use Illuminate\Support\Facades\DB;

class GenreController extends Controller
{
    public function show(Genre $genre)
    {
        $mangasGenre = GenreManga::where('Id_Genre','=',$genre->Id_Genre)->get();
        $mangas = Manga::join('GenreManga', 'GenreManga.Id_Manga', '=', 'Manga.Id_Manga')
                        ->select('Manga.*')
                        ->where('Id_Genre', '=', $genre->Id_Genre)
                        ->get();
        return view('genre', compact('genre', 'mangas')); 
    }
}
