<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('default_category_folder', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('default_category_id');
            $table->unsignedBigInteger('folder_id');
            $table->timestamps();

            $table->foreign('default_category_id')->references('id')->on('default_categories')->onDelete('cascade');
            $table->foreign('folder_id')->references('id')->on('folders')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('default_category_folder');
    }
};
