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
        Schema::create('Clients', function (Blueprint $table) {
            $table->id();
            $table->string('type')->nullable();
            $table->string('firstName')->nullable();
            $table->string('lastName')->nullable();
            $table->string('email')->nullable();
            $table->string('adress')->nullable();
            $table->string('phone')->nullable();
            $table->string('postalCode')->nullable();
            $table->string('city')->nullable();
            $table->string('activitySector')->nullable();
            $table->string('HeadquartersAddress')->nullable();
            $table->string('RegistrationNumber')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Clients');
    }
};
