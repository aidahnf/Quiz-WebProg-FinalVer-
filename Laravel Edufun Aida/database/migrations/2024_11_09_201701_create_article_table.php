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

// Tabel article
Schema::create('article', function (Blueprint $table) {
    $table->id();
    $table->string('title');
    $table->foreignId('category_id')->constrained('category')->onDelete('cascade'); // Referensi ke tabel category
    $table->foreignId('writer_id')->constrained('writer')->onDelete('cascade'); // Referensi ke tabel writer
    $table->text('content');
    $table->date('post_date');
    $table->integer('views')->default(0);
    $table->string('article_image');
    $table->timestamps();
});

    }

    public function down(): void
    {
        Schema::dropIfExists('article');
    }
};
