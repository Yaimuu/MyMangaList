<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Manga extends Model
{
    protected $fillable=["*"];

    protected $table = 'Manga';
    protected $primaryKey = 'Id_Manga';

    public function note()
    {
        return $this->belongsTo(Utilisateur::class, Manga::class);
    }
}
