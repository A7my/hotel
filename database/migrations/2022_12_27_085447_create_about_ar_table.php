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
        Schema::create('about_ar', function (Blueprint $table) {
            $table->id();
            $table->string('nameOfHotel');
            $table->mediumText('bio');
            $table->mediumText('description_1');
            $table->mediumText('Excellence_description');
            $table->mediumText('Service_description');
            $table->mediumText('Teamwork_description');
            $table->mediumText('success_description');
            $table->string('image');
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
        Schema::dropIfExists('about_ar');
    }
};
