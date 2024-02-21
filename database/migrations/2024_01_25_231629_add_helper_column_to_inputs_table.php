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
        Schema::table('inputs', function (Blueprint $table) {
            $table->string('helper')->nullable(); // Ajoute une colonne 'helper' de type string qui peut être null
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::table('inputs', function (Blueprint $table) {
            $table->dropColumn('helper');
        });
    }
};
