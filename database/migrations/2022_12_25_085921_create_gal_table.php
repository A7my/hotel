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
        Schema::create('gal', function (Blueprint $table) {
            $table->id();
            $table->text('description');
            $table->text('image1');
            $table->text('image2');
            $table->text('image3');
            $table->text('image4');
            $table->text('image5');
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
        Schema::dropIfExists('gal');
    }
};
