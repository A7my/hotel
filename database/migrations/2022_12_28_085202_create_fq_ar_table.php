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
        Schema::create('fq_ar', function (Blueprint $table) {
            $table->id();
            $table->text('description');
            $table->mediumText('q1');
            $table->mediumText('q2');
            $table->mediumText('q3');
            $table->mediumText('q4');
            $table->mediumText('q5');
            $table->mediumText('a1');
            $table->mediumText('a2');
            $table->mediumText('a3');
            $table->mediumText('a4');
            $table->mediumText('a5');
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
        Schema::dropIfExists('fq_ar');
    }
};
