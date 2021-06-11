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
        return view('mangas', compact('mangas'));

    }

    public function manga(Request $request, $id)
    {
        $manga = DB::table('Manga')
            ->select("*")
            ->where("Id_manga",'=',$id)
        ->get()[0];
        return view('manga', compact('manga'));
    }

    public function show(Manga $manga)
    {
        $manga = DB::table('Manga')
            ->select("*")
            ->where("Id_manga",'=',$manga->Id_Manga)
        ->get()[0];
        return view('manga', compact('manga'));
        // $tomes = DB::table('Tome')->where('Id_Manga',$manga->Id_Manga)->get();
        // $createurs = DB::table('Creer')->where('Id_Manga', $manga->Id_Manga)->get();


        // foreach ($createurs as $createur) {
        //     $auteur = DB::table('Auteur')->where('Id_Auteur', $createur->Id_Auteur)->first();
        //     $artiste_auteur = DB::table('Artiste')->where('Id_Artiste', $auteur->Id_Artiste)->first();

        //     $dessinateur = DB::table('Dessinateur')->where('Id_Dessinateur', $createur->Id_Dessinateur)->first();
        //     $artiste_dessinateur = DB::table('Artiste')->where('Id_Artiste', $createur->Id_Artiste)->first();
        // }
        return view('manga', compact('manga'));
    }
}
