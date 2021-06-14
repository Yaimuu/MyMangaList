<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTomeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Tome', function (Blueprint $table) {
            $table->unsignedBigInteger('Id_Manga', false);
            $table->unsignedBigInteger('Id_Tome');
            $table->string('nom', 50)->nullable();
            $table->integer('numero')->nullable();
            $table->date('dateParution')->nullable();
            $table->string('image', 300)->nullable();
            $table->primary(['Id_Manga', 'Id_Tome']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Tome');
    }
}
