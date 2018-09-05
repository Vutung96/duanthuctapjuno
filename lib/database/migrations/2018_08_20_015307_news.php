<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class News extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('News', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tieu_de');
            $table->string('anh',255);
            $table->longText('tom_tat_tin')->nullable();
            $table->longText('chi_tiet_tin')->nullable();
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
        //
    }
}
