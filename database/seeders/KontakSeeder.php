<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KontakSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('kontak')->insert([
            [
                'nama' => 'SMKN 1 Cijati',
                'email' => 'info@smkn1cijati.sch.id',
                'no_hp' => '081234567890',
                'pesan' => 'Alamat: Jl. Raya Cijati No. 1, Cianjur, Jawa Barat. Jam Operasional: Senin - Jumat (07.00 - 15.30 WIB)',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
