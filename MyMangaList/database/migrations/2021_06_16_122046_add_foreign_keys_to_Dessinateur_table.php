<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToDessinateurTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Dessinateur', function (Blueprint $table) {
            $table->foreign('Id_Artiste', 'Dessinateur_ibfk_1')->references('Id_Artiste')->on('Artiste')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Dessinateur', function (Blueprint $table) {
            $table->dropForeign('Dessinateur_ibfk_1');
        });
    }
}
