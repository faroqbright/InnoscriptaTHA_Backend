<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;
    protected $fillable = [
        'source_id',
        'author_id',
        'title',
        'country',
        'description',
        'content',
        'url',
        'url_image',
        'published_at',
        'source_platform',
        'category',
    ];

    public function source()
    {
        return $this->belongsTo(Source::class);
    }

    public function author()
    {
        return $this->belongsTo(Author::class);
    }
}
