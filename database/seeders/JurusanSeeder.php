<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JurusanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('jurusan')->insert([
            [
                'nama_jurusan' => 'Rekayasa Perangkat Lunak',
                'singkatan'    => 'RPL',
                'deskripsi'   => (),
                'gambar'   => 'logo.rpl.jpeg',
            ],
             [
                'nama_jurusan' => 'Bisnis Daring & Pemasaran',
                'singkatan'    => 'BDP',
                'deskripsi'   => now(),
                'gambar'   => 'logo.bdp.jpeg',
            ],
             [
                'nama_jurusan' => 'Agribisnis Pengolahan Hasil Pertanian',
                'singkatan'    => 'APHP',
                'deskripsi'   => now(),
                'gambar'   => 'logo.aphp.jpeg',
            ],
             [
                'nama_jurusan' => 'Teknik Kendaraan Ringan',
                'singkatan'    => 'TKR',
                'deskripsi'   => now(),
                'gambar'   => 'logo.tkr.jpeg',
            ],
           
        ]);
    }
}
