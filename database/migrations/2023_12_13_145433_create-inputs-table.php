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
        Schema::create('inputs', function (Blueprint $table) {
            $table->id();
            $table->string('inputName')->nullable();
            $table->string('inputType')->nullable();
            $table->string('inputValue')->nullable();
            $table->integer('inputOrder')->nullable();
            $table->unsignedBigInteger('subCategoryId');
            $table->foreign('subCategoryId')->references('id')->on('subCategories');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inputs');
    }
};
