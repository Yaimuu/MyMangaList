<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToChapitreTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Chapitre', function (Blueprint $table) {
            $table->foreign(['Id_Manga', 'Id_Tome'], 'Chapitre_ibfk_1')->references(['Id_Manga', 'Id_Tome'])->on('Tome')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Chapitre', function (Blueprint $table) {
            $table->dropForeign('Chapitre_ibfk_1');
        });
    }
}
