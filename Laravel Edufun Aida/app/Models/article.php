<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class article extends Model
{
    use HasFactory;

    protected $table='article';
    protected $guarded=[];

    public function writer()
    {
        return $this->belongsTo(writer::class);
    }
    public function category()
    {
        return $this->belongsTo(category::class);
    }
}
