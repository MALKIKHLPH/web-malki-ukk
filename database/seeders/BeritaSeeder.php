<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class BeritaSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('berita')->insert([
            [
                'judul'      => 'Kegiatan Pelantikan Bantara SMK Negeri 1 Cijati',
                'slug'       => Str::slug('Kegiatan Pelantikan Bantara SMK Negeri 1 Cijati'),
                'gambar'     => 'bantara.jpg',
                'ringkasan'  => 'Kegiatan berjalan lancar dan penuh semangat dari seluruh siswa.',
                'isi'        => 'SMK Negeri 1 Cijati mengadakan kegiatan pelantikan Bantara yang diikuti oleh seluruh siswa kelas X. Kegiatan ini bertujuan membentuk karakter kepemimpinan siswa.',
                'penulis'    => 'Humaseko',
                'status'     => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'judul'      => 'Penerimaan Peserta Didik Baru Tahun Ajaran 2026/2027',
                'slug'       => Str::slug('Penerimaan Peserta Didik Baru Tahun Ajaran 2026 2027'),
                'gambar'     => 'ppdb.jpg',
                'ringkasan'  => 'Pendaftaran PPDB SMKN 1 Cijati telah resmi dibuka.',
                'isi'        => 'Pendaftaran murid baru dibuka untuk berbagai jurusan keahlian. Calon siswa dapat mendaftar langsung secara online maupun offline di sekretariat pendaftaran.',
                'penulis'    => 'Panitia PPDB',
                'status'     => 'published',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
