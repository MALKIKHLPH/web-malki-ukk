<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // Jika pakai DB Query Builder

class FasilitasController extends Controller
{
    public function index()
    {
        // Mengambil semua data dari tabel fasilitas
        $fasilitas = DB::table('fasilitas')->get();

        // Mengirim data ke view 'fasilitas'
        return view('fasilitas', compact('fasilitas'));
    }
}