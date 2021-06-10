<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manga;
use Illuminate\Support\Facades\DB;

class MangaController extends Controller
{
    public function index()
    {
        $mangas = DB::table('Manga')->get();
        return view('index', compact('mangas'));

    }
}
