<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToAmiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Ami', function (Blueprint $table) {
            $table->foreign('Id_Utilisateur', 'Ami_ibfk_1')->references('Id_Utilisateur')->on('Utilisateur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Utilisateur_1', 'Ami_ibfk_2')->references('Id_Utilisateur')->on('Utilisateur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Ami', function (Blueprint $table) {
            $table->dropForeign('Ami_ibfk_1');
            $table->dropForeign('Ami_ibfk_2');
        });
    }
}
