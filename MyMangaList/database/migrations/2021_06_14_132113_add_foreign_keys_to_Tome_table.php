<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToTomeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Tome', function (Blueprint $table) {
            $table->foreign('Id_Manga', 'Tome_ibfk_1')->references('Id_Manga')->on('Manga')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Tome', function (Blueprint $table) {
            $table->dropForeign('Tome_ibfk_1');
        });
    }
}
