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
        Schema::create('gal_ar', function (Blueprint $table) {
            $table->id();
            $table->mediumText('description');
            $table->mediumText('image1');
            $table->mediumText('image2');
            $table->mediumText('image3');
            $table->mediumText('image4');
            $table->mediumText('image5');
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
        Schema::dropIfExists('gal_ar');
    }
};
