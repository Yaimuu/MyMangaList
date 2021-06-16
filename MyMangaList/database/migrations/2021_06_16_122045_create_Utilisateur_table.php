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
            $table->string('name', 50)->nullable();
            $table->string('email', 50)->nullable();
            $table->string('password', 100)->nullable();
            $table->string('imageProfile', 300)->nullable();
            $table->rememberToken();
            $table->timestamp('email_verified_at')->useCurrent();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
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
