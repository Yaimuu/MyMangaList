<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToAuteurTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Auteur', function (Blueprint $table) {
            $table->foreign('Id_Artiste', 'Auteur_ibfk_1')->references('Id_Artiste')->on('Artiste')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Auteur', function (Blueprint $table) {
            $table->dropForeign('Auteur_ibfk_1');
        });
    }
}
