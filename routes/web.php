<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfilesController;
use App\Http\Controllers\FasilitasController;
use App\Http\Controllers\GuruController;
use App\Http\Controllers\JurusanController;
use App\Http\Controllers\EkstrakurikulerController;
use App\Http\Controllers\KontakController;


Route::get('/', function () {
    return view('beranda');
});


Route::get('/profil', [ProfilesController::class, 'index']);
route::get('/fasilitas', [FasilitasController::class, 'index']);
route::get('/guru', [GuruController::class, 'index']);
route::get('/jurusan', [JurusanController::class, 'index']);
Route::get('/ekstrakurikuler', [EkstrakurikulerController::class, 'index']);
Route::get('/kontak', [KontakController::class, 'index']);
