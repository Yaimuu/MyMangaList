<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCreerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Creer', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Auteur');
            $table->unsignedBigInteger('Id_Manga')->index('Id_Manga');
            $table->unsignedBigInteger('Id_Dessinateur')->index('Id_Dessinateur');
            $table->primary(['Id_Auteur', 'Id_Manga', 'Id_Dessinateur']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Creer');
    }
}
