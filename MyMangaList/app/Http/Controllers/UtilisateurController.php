<?php

namespace App\Http\Controllers;

use App\Ami;
use App\Utilisateur;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UtilisateurController extends Controller
{

    public function showFriendList(Request $request)
    {
        $amis = null;
        $amiIds = null;

        if(Auth::user() != null)
        {
            $amiIds = Auth::user()->allFriends()->get();

            $amis = array();

            foreach ($amiIds as $amiId)
            {
                if($amiId->Id_Utilisateur != Auth::user()->Id_Utilisateur)
                    $amis[] = Utilisateur::find($amiId->Id_Utilisateur);
                else if($amiId->Id_Utilisateur_1 != Auth::user()->Id_Utilisateur)
                    $amis[] = Utilisateur::find($amiId->Id_Utilisateur_1);
            }
        }


//        dd($amiIds);

        return view("amis", compact("amis"));
    }

    public function addFriend(Request $request)
    {
        if($request["id"] == null)
            return redirect('/amis');

        $ami = Auth::user()
            ->allFriends()
            ->where('Ami.Id_Utilisateur_1', '=', $request["id"])
            ->get();

        if($ami->isEmpty())
        {
            $newAmi = new Ami();
            $newAmi->Id_Utilisateur = Auth::user()->Id_Utilisateur;
            $newAmi->Id_Utilisateur_1 = $request["id"];
            $newAmi->save();
        }

        return redirect('/amis');
    }

    public function showMangasFini(Request $request)
    {
        $mangasFini = Auth::user()->allNotes()->get();

        return view("mangasFini", compact("mangasFini"));
    }
}
