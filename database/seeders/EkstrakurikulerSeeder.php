<?php

namespace Database\Seeders;

use App\Models\Ekstrakurikuler;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EkstrakurikulerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Ekstrakurikuler::create([
            'nama_ekskul' => 'PRAMUKA',
            'pembina' => 'MOCH NAJIB',
            'deskripsi' => 'WADAH PEMBINAAN KARAKTER, KEDISIPLINAN, KEPEMIMPINAN, DAN KETERAMPILAN SURVIVAL DI ALAM OPEN AIR DENGAN DASA DARMA SEBAGAI PEDOMAN.',
            'logo' => 'pramuka.jpeg',
            'guru_id' => '47'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'PASKIBRA',
            'pembina' => 'ENDE ISKANDAR, S.TP.',
            'deskripsi' => 'ORGANISASI PELATIH KEDISIPLINAN DAN KETANGKASAN BARIS-BERBARIS SERTA PETUGAS PENGIBAR BENDERA PADA UPACARA RESMI.',
            'logo' => 'paskibra.jpeg',
            'guru_id' => '38'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'PMR',
            'pembina' => 'MEGA NURUNNISA, S.PD.',
            'deskripsi' => 'WADAH KEMANUSIAAN REMAJA YANG FOKUS PADA PERTOLONGAN PERTAMA, KESEHATAN LINGKUNGAN, DAN KEPEDULIAN SOSIAL.',
            'logo' => 'pmr.jpeg',
              'guru_id' => '6'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'MARCHINGBAND',
            'pembina' => 'NURAH ALWAINI, A.MA.PUST.',
            'deskripsi' => 'EKSTRAKURIKULER SENI MUSIK DAN BARIS-BERBARIS YANG MENGGABUNGKAN HARMONI INSTRUMEN TIUP, PERKUSI, DAN KOREOGRAFI VISUAL.',
            'logo' => 'maschingband.jpeg',
              'guru_id' => '27'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'FUTSAL',
            'pembina' => 'JAYA NUR SETIAWANDI, S.PD.',
            'deskripsi' => 'OLAH RAGA SEPAK BOLA RUANGAN BERTIM LIMA LAWAN LIMA YANG MENGANDALKAN KECEPATAN, TEKNIK INDIVIDU, DAN KERJA SAMA KETAT.',
            'logo' => 'futsal.jpeg',
              'guru_id' => '18'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'VOLI',
            'pembina' => 'DEDI SUKARDI, S.PD.',
            'deskripsi' => 'OLAH RAGA TIM BOLA BESAR YANG MENGUTAMAKAN KERJA SAMA, REFLEKS, KETANGKASAN MENGUMPAN, DAN PUKULAN SMASH LEWAT JARING',
            'logo' => 'voli.jpeg',
              'guru_id' => '15'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'KARAWITAN',
            'pembina' => 'MOCH.YOGA AGUNG M., S.PD., M.PD.',
            'deskripsi' => 'SENI MUSIK TRADISIONAL JAWA ATAU SUNDA YANG MENGGUNAKAN GAMELAN UNTUK MELATIH KETELATENAN DAN PELESTARIAN BUDAYA.',
            'logo' => 'karawitan.jpeg',
              'guru_id' => '5'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'ROHIS',
            'pembina' => 'ASEP MUHLIS SULAEMAN, S.PD.I.',
            'deskripsi' => 'ORGANISASI KEROHANIAN ISLAM SEKOLAH YANG BERFOKUS PADA PENGEMBANGAN AKHLAK, PENDIDIKAN AGAMA, DAN KEGIATAN SOSIAL KEAGAMAAN.',
            'logo' => 'rohis.jpeg',
              'guru_id' => '32'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'CINEMAK',
            'pembina' => 'RAHMAT SETIAWAN, S.T.',
            'deskripsi' => 'EKSTRAKURIKULER KREATIF YANG MEMPELAJARI TEKNIK PEMBUATAN FILM, PENGAMBILAN GAMBAR, PENULISAN SKENARIO, DAN EDITING VIDEO.',
            'logo' => 'cinemak.jpeg',
              'guru_id' => '37'
        ]);

         Ekstrakurikuler::create([
            'nama_ekskul' => 'BAHASA JEPANG',
            'pembina' => 'SARIPUL BASAR',
            'deskripsi' => 'KLUB PEMBELAJARAN BAHASA DAN KEBUDAYAAN JEPANG, MULAI DARI HURUF KANJI/HIRAGANA HINGGA POP CULTURE SEPERTI ANIME DAN MANGA.',
            'logo' => 'bahasa jepang.jpeg',
              'guru_id' => '30'
        ]);
    }

}
