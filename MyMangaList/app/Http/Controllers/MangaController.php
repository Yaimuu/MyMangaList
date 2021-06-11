<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manga;
use App\Tome;
use App\Auteur;
use App\Artiste;
use App\Dessinateur;
use App\Creer;
use Illuminate\Support\Facades\DB;
use stdClass;

class MangaController extends Controller
{
    public function index()
    {
        // $mangas = DB::table('Manga')->get();
        
        $mangas = Manga::all();

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
        // $tomes = Tome::where('Id_Manga',$manga->Id_Manga)->get();
        // $createurs = Creer::where('Id_Manga', $manga->Id_Manga)->get();

        // $auteur = new Auteur(); 
        // $dessinateur = new Dessinateur(); 

        // foreach ($createurs as $createur) {
        //     $auteur  = Auteur::where('Id_Auteur', $createur->Id_Auteur)->first();
            
        //     $dessinateur = Dessinateur::where('Id_Dessinateur', $createur->Id_Dessinateur)->first();
            
        // }

        // $artiste_auteur = Artiste::where('Id_Artiste', $auteur->Id_Artiste)->first();
        // $artiste_dessinateur = Artiste::where('Id_Artiste', $dessinateur->Id_Artiste)->first();
        
        return view('manga', compact('manga'));
    }
}
