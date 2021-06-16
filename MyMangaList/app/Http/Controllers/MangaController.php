<?php

namespace App\Http\Controllers;

use App\MangaLectureFini;
use Illuminate\Http\Request;
use App\Manga;
use App\Tome;
use App\Auteur;
use App\Artiste;
use App\Dessinateur;
use App\Creer;
use Illuminate\Support\Facades\DB;
use stdClass;
use Illuminate\Support\Facades\Auth;

class MangaController extends Controller
{
    public function index()
    {

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
        $tomes = Tome::where('Id_Manga',$manga->Id_Manga)->get();
        $createurs = Creer::where('Id_Manga', $manga->Id_Manga)->get();

        $auteur = new Auteur();
        $dessinateur = new Dessinateur();

        foreach ($createurs as $createur) {
            $auteur  = Auteur::where('Id_Auteur', $createur->Id_Auteur)->first();

            $dessinateur = Dessinateur::where('Id_Dessinateur', $createur->Id_Dessinateur)->first();

        }

        $artiste_auteur = Artiste::where('Id_Artiste', $auteur->Id_Artiste)->first();
        $artiste_dessinateur = Artiste::where('Id_Artiste', $dessinateur->Id_Artiste)->first();

        $grade = null;
        if(Auth::user() != null)
            $grade = Auth::user()->allNotes()->where('Id_Manga', '=', $manga->Id_Manga)->get()->first();

        return view('manga', compact('manga', 'tomes', 'createurs', 'artiste_auteur', 'artiste_dessinateur', 'grade'));
    }

    public function rate(Request $request)
    {
        $mangaFini = Auth::user()->allNotes()->where('Id_Manga', '=', $request["idManga"])->get();

        $manga = Manga::find($request["idManga"]);

        if($mangaFini->isEmpty())
        {
            $mangaNote = new MangaLectureFini();
            $mangaNote->Id_Utilisateur = Auth::user()->Id_Utilisateur;
            $mangaNote->Id_Manga = $request["idManga"];
            $mangaNote->note = $request["grade"];
            $mangaNote->save();
        }
        else
        {
            Auth::user()
                ->allNotes()
                ->where('Id_Manga', '=', $request["idManga"])
                ->update(['note' => $request["grade"]]);
        }

        return redirect('/mangas/'.$request["idManga"]);
    }
}
