<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manga;

class MangaController extends Controller
{
    public function index()
    {
        $mangas = Manga::all();
        return view('manga', compact('mangas'));

    }
}
