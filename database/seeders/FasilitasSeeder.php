<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FasilitasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('fasilitas')->insert([
            [
                'nama_fasilitas' => 'Laboratorium Komputer (RPL)',
                'deskripsi' => 'Laboratorium komputer yang digunakan oleh siswa SMKN 1 Cijati untuk praktik mata pelajaran kejuruan (seperti RPL), pembelajaran TIK, serta gladi dan pelaksanaan Asesmen Nasional Berbasis Komputer (ANBK).',
                'gambar' => 'lab rpl.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Lab BDP (Bisnis Daring dan Pemasaran)',
                'deskripsi' => 'Ruang praktik pembelajaran program keahlian Pemasaran di SMKN 1 Cijati, dirancang untuk melatih keterampilan siswa dalam hal penataan produk (display), simulasi bisnis ritel, dan pemasaran digital (e-commerce).',
                'gambar' => 'lab bdp.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Lab APHP (Agribisnis Pengolahan Hasil Pertanian)',
                'deskripsi' => 'Fasilitas praktik unggulan di SMKN 1 Cijati untuk mendukung kompetensi keahlian APHP dalam mengolah komoditas hasil pertanian lokal menjadi produk bernilai ekonomis tinggi, higienis, dan siap pasar.',
                'gambar' => 'lab aphp.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Ruang Praktik Siswa (RPS)',
                'deskripsi' => 'Bengkel atau ruang praktik multifungsi di SMKN 1 Cijati yang menunjang aktivitas praktikum kejuruan siswa agar lebih kompeten, terampil, dan siap menghadapi dunia kerja maupun industri.',
                'gambar' => 'rps.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Usaha Kesehatan Sekolah (UKS)',
                'deskripsi' => 'Sarana pelayanan kesehatan di SMKN 1 Cijati yang menyediakan penanganan pertolongan pertama bagi warga sekolah yang sakit atau membutuhkan istirahat darurat selama Kegiatan Belajar Mengajar (KBM).',
                'gambar' => 'uks.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Ruang Bimbingan Konseling (BK)',
                'deskripsi' => 'Ruang layanan konsultasi bagi siswa SMKN 1 Cijati untuk mendapatkan bimbingan pribadi, sosial, akademik, serta perencanaan karier dan informasi seputar kelanjutan studi setelah lulus.',
                'gambar' => 'bk.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Musholla Sekolah',
                'deskripsi' => 'Tempat ibadah yang bersih dan nyaman di lingkungan SMKN 1 Cijati, digunakan untuk pelaksanaan shalat berjemaah, kegiatan keagamaan, serta pembentukan karakter kerohanian siswa.',
                'gambar' => 'musholla.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nama_fasilitas' => 'Perpustakaan',
                'deskripsi' => 'Pusat sumber belajar di SMKN 1 Cijati yang menyediakan berbagai koleksi buku pelajaran, buku referensi kejuruan, literasi umum, serta tempat yang nyaman bagi siswa untuk membaca dan mendalami ilmu pengetahuan.',
                'gambar' => 'perpustakaan.jpeg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}