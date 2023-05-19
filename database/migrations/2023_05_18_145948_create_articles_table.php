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
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('source_id')->unsigned()->nullable();
            $table->bigInteger('author_id')->unsigned()->nullable();
            $table->string("country")->nullable();
            $table->longText('title');
            $table->longText('description')->nullable();
            $table->longText('content')->nullable();
            $table->longText('url')->nullable();
            $table->longText('url_image')->nullable();
            $table->string('category')->nullable();
            $table->string('published_at')->nullable();
            $table->text("source_platform");
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('articles');
    }
};
