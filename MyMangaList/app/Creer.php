<?php

namespace App;

use App\CompositeKeyModelHelper;
use Illuminate\Database\Eloquent\Model;

class Creer extends CompositeKeyModelHelper
{
    protected $table = 'Creer';
    protected $primaryKey = ["Id_Auteur", 'Id_Manga', 'Id_Dessinateur'];
}
