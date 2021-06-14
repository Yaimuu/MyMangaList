<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToEditerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Editer', function (Blueprint $table) {
            $table->foreign('Id_Manga', 'Editer_ibfk_1')->references('Id_Manga')->on('Manga')->onUpdate('RESTRICT')->onDelete('RESTRICT');
            $table->foreign('Id_Editeur', 'Editer_ibfk_2')->references('Id_Editeur')->on('Editeur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Editer', function (Blueprint $table) {
            $table->dropForeign('Editer_ibfk_1');
            $table->dropForeign('Editer_ibfk_2');
        });
    }
}
