<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Editer extends CompositeKeyModelHelper
{

    protected $table = 'Editer';
    protected $primaryKey = ["Id_Manga", 'Id_Editeur'];
}
