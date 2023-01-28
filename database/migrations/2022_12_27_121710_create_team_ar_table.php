<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('team_ar', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('job');
            $table->mediumText('Facebook_url');
            $table->mediumText('Twitter_url');
            $table->mediumText('LinkedIn_url');
            $table->mediumText('Insta_url');
            $table->mediumText('image');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('team_ar');
    }
};
