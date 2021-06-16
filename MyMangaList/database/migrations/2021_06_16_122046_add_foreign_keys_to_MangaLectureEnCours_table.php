<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToMangaLectureEnCoursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('MangaLectureEnCours', function (Blueprint $table) {
            $table->foreign('Id_Utilisateur', 'MangaLectureEnCours_ibfk_1')->references('Id_Utilisateur')->on('Utilisateur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Manga', 'MangaLectureEnCours_ibfk_2')->references('Id_Manga')->on('Manga')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('MangaLectureEnCours', function (Blueprint $table) {
            $table->dropForeign('MangaLectureEnCours_ibfk_1');
            $table->dropForeign('MangaLectureEnCours_ibfk_2');
        });
    }
}
