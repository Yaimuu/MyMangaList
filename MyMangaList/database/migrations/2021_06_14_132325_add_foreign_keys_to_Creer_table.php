<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToCreerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Creer', function (Blueprint $table) {
            $table->foreign('Id_Auteur', 'Creer_ibfk_1')->references('Id_Auteur')->on('Auteur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Manga', 'Creer_ibfk_2')->references('Id_Manga')->on('Manga')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Dessinateur', 'Creer_ibfk_3')->references('Id_Dessinateur')->on('Dessinateur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Creer', function (Blueprint $table) {
            $table->dropForeign('Creer_ibfk_1');
            $table->dropForeign('Creer_ibfk_2');
            $table->dropForeign('Creer_ibfk_3');
        });
    }
}
