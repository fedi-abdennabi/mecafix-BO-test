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
        Schema::create('default_admin_sub_categories', function (Blueprint $table) {
            $table->id();
            $table->string('subCategoryName');
            $table->unsignedBigInteger('default_admin_category_id');
            $table->foreign('default_admin_category_id')
            ->references('id')
            ->on('default_admin_categories')
            ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('default_admin_sub_categories');
    }
};
