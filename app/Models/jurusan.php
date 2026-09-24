<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class jurusan extends Model
{
    protected $fillable = [
        'nama_jurusan',
        'singkatan',
        'deskripsi',
        'gambar',
    ];
}
