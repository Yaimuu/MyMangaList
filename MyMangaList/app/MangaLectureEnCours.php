<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MangaLectureEnCours extends Model
{
    protected $table = 'MangaLectureEnCours';
    protected $primaryKey = ["Id_Utilisateur", 'Id_Manga'];

}
