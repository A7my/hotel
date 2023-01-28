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
        Schema::create('serive_ar', function (Blueprint $table) {
            $table->id();
            $table->mediumText('bio');
            $table->mediumText('restaurants_description');
            $table->mediumText('RoomService_description');
            $table->mediumText('parking_description');
            $table->mediumText('BusinessCenter_description');
            $table->mediumText('FreeShuttleService_description');
            $table->mediumText('InternetAcess_description');
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
        Schema::dropIfExists('serive_ar');
    }
};
