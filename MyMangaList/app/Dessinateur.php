<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dessinateur extends CompositeKeyModelHelper
{
    protected $table = 'Dessinateur';

    protected $primaryKey = ["Id_Dessinateur", 'Id_Artiste'];
}
