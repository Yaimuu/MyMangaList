<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMangaLectureFiniTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('MangaLectureFini', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Utilisateur');
            $table->unsignedBigInteger('Id_Manga')->index('Id_Manga');
            $table->float('note')->nullable();
            $table->primary(['Id_Utilisateur', 'Id_Manga']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('MangaLectureFini');
    }
}