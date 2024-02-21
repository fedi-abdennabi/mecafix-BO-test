<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class() extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sub_category_defaults', function (Blueprint $table) {
            $table->id();
            $table->string('subCategoryName');
            $table->unsignedBigInteger('default_category_id'); // Clé étrangère pour la relation
            $table->foreign('default_category_id')->references('id')->on('default_categories')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_category_defaults');
    }
};
