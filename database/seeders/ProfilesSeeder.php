<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Profiles;

class ProfilesSeeder extends Seeder
{
    public function run(): void
    {
        Profiles::create([
            'nama_sekolah' => 'SMKN 1 Cijati',
            'deskripsi' => 'SMK Negeri 1 Cijati merupakan sekolah menengah kejuruan yang berkomitmen memberikan pendidikan berkualitas dan membekali peserta didik dengan pengetahuan serta keterampilan.',
            'visi' => 'Terwujuddnya lulusan KEREN dan BERSINERGI melalui pembelajaran mendalam, penguatan karakter Pancawaluya, serta kolaborasi aktif dengan dunia kerja dan industri.',
            'misi' => '1.	Menyelenggarakan pembelajaran mendalam yang berpusat pada peserta didik untuk mengembangkan kompetensi secara optimal. 
2.	Menumbuhkan karakter religius, energik, dan nasionalis dalam kehidupan sehari-hari melalui penguatan nilai-nilai Pancawaluya. 
3.	Mengembangkan lulusan yang kompeten dan berdaya saing sesuai dengan kebutuhan dunia kerja dan perkembangan zaman. 
4.	Menanamkan jiwa kewirausahaan (entrepreneurship) melalui kegiatan pembelajaran dan praktik nyata. 
5.	Menumbuhkan integritas, etos kerja, dan tanggung jawab melalui pembiasaan, keteladanan, dan budaya sekolah yang positif. 
6.	Menguatkan kolaborasi dan kemitraan aktif dengan dunia kerja dan industri untuk meningkatkan relevansi dan kualitas lulusan.',
            'tujuan' => 'Sekolah ini bertujuan untuk mendidik dan mempersiapkan siswa menjadi tenaga kerja menengah yang terampil, mandiri, dan siap kerja di bidangnya, serta berkarakter sesuai dengan kebutuhan dunia usaha dan industri.',
        ]);
    }
}
