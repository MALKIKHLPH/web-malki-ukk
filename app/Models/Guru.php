<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Guru extends Model
{
    use HasFactory;
    protected $table = 'guru';
    protected $fillable = [
        'nama_guru',
        'jabatan',
        'foto',
    ];

    public function ekstrakurikulers()
    {
        return $this->hasMany (Ekstrakurikuler::class);
    }
}
