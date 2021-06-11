<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manga extends Model
{
    protected $fillable=["*"];

    protected $table = 'Manga'; 
    protected $primaryKey = 'Id_Manga';

}
