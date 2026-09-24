<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; 

class JurusanController extends Controller
{
    public function index()
    {
        
        $jurusan = DB::table('jurusan')->get();

        
        return view('jurusan', compact('jurusan'));
    }
}