<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToGenreMangaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('GenreManga', function (Blueprint $table) {
            $table->foreign('Id_Manga', 'GenreManga_ibfk_1')->references('Id_Manga')->on('Manga')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Genre', 'GenreManga_ibfk_2')->references('Id_Genre')->on('Genre')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('GenreManga', function (Blueprint $table) {
            $table->dropForeign('GenreManga_ibfk_1');
            $table->dropForeign('GenreManga_ibfk_2');
        });
    }
}
