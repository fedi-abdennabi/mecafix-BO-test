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
        Schema::create('folders', function (Blueprint $table) {
            $table->id();
            $table->string('hashtag')->nullable();
            $table->string('contrat')->nullable();
            $table->string('notes')->nullable();
            $table->string('vehiculeType')->nullable();
            $table->integer('mileage')->nullable();
            $table->boolean('panne')->default(true);
            $table->string('notesVocal')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('folders');
    }
};
