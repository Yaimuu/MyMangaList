<?php

namespace App;

use CompositeKeyModelHelper\CompositeKeyModelHelper;
use Illuminate\Database\Eloquent\Model;

class MangaLectureEnCours extends Model
{
    // use CompositeKeyModelHelper;

    protected $table = 'MangaLectureEnCours';
    protected $primaryKey = ["Id_Utilisateur", 'Id_Manga'];

}
