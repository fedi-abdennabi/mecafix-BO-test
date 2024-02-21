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
        Schema::create('default_inputs', function (Blueprint $table) {
            $table->id();
            $table->string('inputName');
            $table->string('inputType');
            $table->text('inputValue')->nullable();
            $table->integer('inputOrder')->default(0);
            $table->string('label');
            $table->text('options')->nullable();
            $table->string('helper');
            $table->unsignedBigInteger('sub_category_default_id');
            $table->foreign('sub_category_default_id')
            ->references('id')
            ->on('sub_category_defaults')
            ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('default_inputs');
    }
};
