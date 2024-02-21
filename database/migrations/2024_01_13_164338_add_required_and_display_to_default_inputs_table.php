<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class() extends Migration {
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('default_inputs', function (Blueprint $table) {
            $table->boolean('required')->default(false); // Ajoute un champ booléen 'required'
            $table->boolean('display')->default(true);  // Ajoute un champ booléen 'display'
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('default_inputs', function (Blueprint $table) {
        });
    }
};
