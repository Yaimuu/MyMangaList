<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChapitreTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Chapitre', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Manga');
            $table->unsignedBigInteger('Id_Tome');
            $table->unsignedBigInteger('Id_Chapitre');
            $table->string('nom', 100)->nullable();
            $table->integer('numero')->nullable();
            $table->integer('nb_pages')->nullable();
            $table->primary(['Id_Manga', 'Id_Tome', 'Id_Chapitre']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Chapitre');
    }
}
