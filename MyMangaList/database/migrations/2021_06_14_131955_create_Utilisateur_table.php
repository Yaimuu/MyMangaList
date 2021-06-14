<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUtilisateurTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Utilisateur', function (Blueprint $table) {
            $table->bigIncrements('Id_Utilisateur');
            $table->string('pseudo', 50)->nullable();
            $table->string('mail', 50)->nullable();
            $table->string('password', 50)->nullable();
            $table->string('imageProfile', 300)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Utilisateur');
    }
}
