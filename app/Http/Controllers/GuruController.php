<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // Jika pakai DB Query Builder

class GuruController extends Controller
{
    public function index()
    {
        // Mengambil semua data dari tabel fasilitas
        $gurus = DB::table('guru')->get();

        // Mengirim data ke view 'fasilitas'
        return view('guru', compact('gurus'));
    }
}