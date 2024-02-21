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
        Schema::table('default_inputs', function (Blueprint $table) {
            $table->unsignedBigInteger('folder_id')->nullable(); // Assurez-vous que cela correspond au type de la clé primaire de la table folders
            $table->foreign('folder_id')->references('id')->on('folders')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('default_inputs', function (Blueprint $table) {
            $table->dropForeign(['folder_id']);
            $table->dropColumn('folder_id');
        });
    }
};
