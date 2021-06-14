<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGenreMangaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('GenreManga', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Manga');
            $table->unsignedBigInteger('Id_Genre')->index('Id_Genre');
            $table->primary(['Id_Manga', 'Id_Genre']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('GenreManga');
    }
}
