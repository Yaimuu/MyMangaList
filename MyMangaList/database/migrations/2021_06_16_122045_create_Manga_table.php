<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMangaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Manga', function (Blueprint $table) {
            $table->bigIncrements('Id_Manga');
            $table->string('titre', 300)->nullable();
            $table->tinyInteger('fini')->nullable();
            $table->string('image', 300)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Manga');
    }
}
