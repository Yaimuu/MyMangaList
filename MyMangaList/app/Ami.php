<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ami extends CompositeKeyModelHelper
{
    protected $table = 'Ami';
    protected $primaryKey = ['Id_Utilisateur', 'Id_Utilisateur_1'];

    public $timestamps = false;
}
