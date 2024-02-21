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
        Schema::create('default_admin_inputs', function (Blueprint $table) {
            $table->id();
            $table->string('inputName');
            $table->string('inputType');
            $table->text('inputValue')->nullable();
            $table->integer('inputOrder')->default(0);
            $table->string('label');
            $table->text('options')->nullable();
            $table->string('helper')->nullable();
            $table->unsignedBigInteger('default_admin_sub_category_id');
            $table->foreign('default_admin_sub_category_id')
            ->references('id')
            ->on('default_admin_sub_categories')
            ->onDelete('cascade');
            $table->unsignedBigInteger('folder_id')->nullable();
            $table->foreign('folder_id')->references('id')->on('folders')->onDelete('cascade');
            $table->boolean('required')->default(false);
            $table->boolean('display')->default(true);
            $table->boolean('principalImage')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('default_admin_inputs');
    }
};
