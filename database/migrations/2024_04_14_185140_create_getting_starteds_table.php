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
        Schema::create('getting_starteds', function (Blueprint $table) {
            $table->id();
            $table->foreignId('programming_language_id')->constrained()->onDelete('cascade');
            $table->string('name')->default('Getting Started');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('getting_starteds');
    }
};
