<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MangaLectureFini extends CompositeKeyModelHelper
{

    protected $table = 'MangaLectureFini';
    protected $primaryKey = ["Id_Utilisateur", 'Id_Manga'];

    public $timestamps = false;

    public function note()
    {
        return $this->belongsTo(Utilisateur::class, Manga::class);
    }
}
