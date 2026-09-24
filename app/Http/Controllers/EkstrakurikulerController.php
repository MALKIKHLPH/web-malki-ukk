<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; // Jika pakai DB Query Builder

class EkstrakurikulerController extends Controller
{
    public function index()
    {
        // Mengambil semua data dari tabel fasilitas
        $ekstrakurikuler = DB::table('ekstrakurikuler')->get();

        // Mengirim data ke view 'fasilitas'
        return view('ekstrakurikuler', compact('ekstrakurikuler'));
    }
}
