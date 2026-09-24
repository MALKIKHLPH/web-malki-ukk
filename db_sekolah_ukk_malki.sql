-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 12, 2026 at 03:58 AM
-- Server version: 8.4.3
-- PHP Version: 8.5.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah_ukk_malki`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint UNSIGNED NOT NULL,
  `artikel_kategori_id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel_kategori`
--

CREATE TABLE `artikel_kategori` (
  `id` bigint UNSIGNED NOT NULL,
  `artikel_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berandas`
--

CREATE TABLE `berandas` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ringkasan` text COLLATE utf8mb4_unicode_ci,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ekskul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembina` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guru_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `nama_ekskul`, `pembina`, `deskripsi`, `logo`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'PRAMUKA', 'MOCH NAJIB', 'WADAH PEMBINAAN KARAKTER, KEDISIPLINAN, KEPEMIMPINAN, DAN KETERAMPILAN SURVIVAL DI ALAM OPEN AIR DENGAN DASA DARMA SEBAGAI PEDOMAN.', NULL, 46, '2026-09-09 21:14:55', '2026-09-09 21:14:55'),
(2, 'PASKIBRA', 'ENDE ISKANDAR, S.TP.', 'ORGANISASI PELATIH KEDISIPLINAN DAN KETANGKASAN BARIS-BERBARIS SERTA PETUGAS PENGIBAR BENDERA PADA UPACARA RESMI.', NULL, 37, '2026-09-09 21:14:55', '2026-09-09 21:14:55'),
(3, 'PMR', 'MEGA NURUNNISA, S.PD.', 'WADAH KEMANUSIAAN REMAJA YANG FOKUS PADA PERTOLONGAN PERTAMA, KESEHATAN LINGKUNGAN, DAN KEPEDULIAN SOSIAL.', NULL, 6, '2026-09-09 21:14:55', '2026-09-09 21:14:55'),
(4, 'MARCHINGBAND', 'NURAH ALWAINI, A.MA.PUST.', 'EKSTRAKURIKULER SENI MUSIK DAN BARIS-BERBARIS YANG MENGGABUNGKAN HARMONI INSTRUMEN TIUP, PERKUSI, DAN KOREOGRAFI VISUAL.', NULL, 27, '2026-09-09 21:14:56', '2026-09-09 21:14:56'),
(5, 'FUTSAL', 'JAYA NUR SETIAWANDI, S.PD.', 'OLAH RAGA SEPAK BOLA RUANGAN BERTIM LIMA LAWAN LIMA YANG MENGANDALKAN KECEPATAN, TEKNIK INDIVIDU, DAN KERJA SAMA KETAT.', NULL, 18, '2026-09-09 21:14:56', '2026-09-09 21:14:56'),
(6, 'VOLY', 'DEDI SUKARDI, S.PD.', 'OLAH RAGA TIM BOLA BESAR YANG MENGUTAMAKAN KERJA SAMA, REFLEKS, KETANGKASAN MENGUMPAN, DAN PUKULAN SMASH LEWAT JARING', NULL, 15, '2026-09-09 21:14:56', '2026-09-09 21:14:56'),
(7, 'KARAWITAN', 'MOCH.YOGA AGUNG M., S.PD., M.PD.', 'SENI MUSIK TRADISIONAL JAWA ATAU SUNDA YANG MENGGUNAKAN GAMELAN UNTUK MELATIH KETELATENAN DAN PELESTARIAN BUDAYA.', NULL, 5, '2026-09-09 21:14:56', '2026-09-09 21:14:56'),
(8, 'ROHIS', 'ASEP MUHLIS SULAEMAN, S.PD.I.', 'ORGANISASI KEROHANIAN ISLAM SEKOLAH YANG BERFOKUS PADA PENGEMBANGAN AKHLAK, PENDIDIKAN AGAMA, DAN KEGIATAN SOSIAL KEAGAMAAN.', NULL, 31, '2026-09-09 21:14:57', '2026-09-09 21:14:57'),
(9, 'CINEMAK', 'RAHMAT SETIAWAN, S.T.', 'EKSTRAKURIKULER KREATIF YANG MEMPELAJARI TEKNIK PEMBUATAN FILM, PENGAMBILAN GAMBAR, PENULISAN SKENARIO, DAN EDITING VIDEO.', NULL, 36, '2026-09-09 21:14:57', '2026-09-09 21:14:57'),
(10, 'BAHASA JEPANG', 'SARIPUL BASAR', 'KLUB PEMBELAJARAN BAHASA DAN KEBUDAYAAN JEPANG, MULAI DARI HURUF KANJI/HIRAGANA HINGGA POP CULTURE SEPERTI ANIME DAN MANGA.', NULL, 29, '2026-09-09 21:14:57', '2026-09-09 21:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_guru` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama_guru`, `jabatan`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'A Rahmat Dimyati,S.Pd.M.Pd.', 'KEPALA SMKN 1 CIJATI', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(2, 'NOVI YANTI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(3, 'NURAENI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(4, 'SITI RAHMAWATI,S.PD.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(5, 'MOCH.YOGA AGUNG M., S.PD., M.PD.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(6, 'MEGA NURUNNISA, S.PD.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(7, 'DIDI MEI SOMATRI, S.KOM.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(8, 'BUDIANA HERMAWAN, S.TP.', 'GURU', NULL, '2026-09-08 04:32:42', '2026-09-08 04:32:42'),
(9, 'EDEH KURNIASIH, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(10, 'ROMI DARMAYADI, S.PD.S.T.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(11, 'ELI MARYAMAH, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(12, 'NANANG SURYANA, SE.,M.M', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(13, 'INDRA PRIATNA, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(14, 'INDRA MURGIANTO, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(15, 'DEDI SUKARDI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(16, 'ELA HARYATI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(17, 'HABIB SUHANDAR, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(18, 'JAYA NUR SETIAWANDI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(19, 'SETIAWAN, S.E', 'GURU', NULL, '2026-09-08 04:32:43', '2026-09-08 04:32:43'),
(20, 'DINI ANDRIANI, S.E.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(21, 'EMI RESMIYATI', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(22, 'RINA SUSANA, S.PD.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(23, 'NURDIANSAH, S.IP.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(24, 'SIMA KRISTINA, S.KOM.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(25, 'SAKTI ALAMSYAH, SE.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(26, 'AYI SURYATI, A.MA.PUST.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(27, 'NURAH ALWAINI, A.MA.PUST.', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(28, 'RAMDAN BASTAMAN', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(29, 'SARIPUL BASAR', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(30, 'ASEP PURNAMA', 'GURU', NULL, '2026-09-08 04:32:44', '2026-09-08 04:32:44'),
(31, 'ASEP MUHLIS SULAEMAN, S.PD.I.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(32, 'YAYUP HINDRIYANI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(33, 'WAHYUDIN, S.TR. KOM.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(34, 'KAMALIA, S.E.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(35, 'ANDRI MUHOIR, S.T.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(36, 'RAHMAT SETIAWAN, S.T.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(37, 'ENDE ISKANDAR, S.TP.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(38, 'JAJANG RIDWAN, S.T.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(39, 'YANI CAHYANI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:45', '2026-09-08 04:32:45'),
(40, 'MIA RUSMIATI, S.PD.', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(41, 'SILVI DANU RESPITA,S.T.', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(42, 'AI NURHASANAH, S.PD.', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(43, 'ISNAN WIRANURSYEHA, S.PD.', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(44, 'BANI FUDOLY, S.ST.', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(45, 'SANTI MUSTIKA', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(46, 'MOCH NAJIB', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(47, 'AHMAD SUHENDRA', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(48, 'D JAMALUDIN', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(49, 'APENDI', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(50, 'TATANG RUSTANDI', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(51, 'MULDIANSAH', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46'),
(52, 'YOGI SAPUTRA', 'GURU', NULL, '2026-09-08 04:32:46', '2026-09-08 04:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `singkatan`, `deskripsi`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'RPL', '2026-09-12 03:36:20', 'logo.rpl.jpeg', NULL, NULL),
(2, 'Bisnis Daring & Pemasaran', 'BDP', '2026-09-12 03:36:20', 'logo.bdp.jpeg', NULL, NULL),
(3, 'Agribisnis Pengolahan Hasil Pertanian', 'APHP', '2026-09-12 03:36:20', 'logo.aphp.jpeg', NULL, NULL),
(4, 'Teknik Kendaraan Ringan', 'TKR', '2026-09-12 03:36:20', 'logo.tkr.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_01_033444_create_guru_table', 1),
(5, '2026_09_01_033522_create_ekstrakurikuler_table', 1),
(6, '2026_09_01_033713_create_jurusan_table', 1),
(7, '2026_09_01_033728_create_fasilitas_table', 1),
(8, '2026_09_01_033750_create_artikel_kategori_table', 1),
(9, '2026_09_01_033808_create_artikel_table', 1),
(10, '2026_09_01_033820_create_kontak_table', 1),
(11, '2026_09_10_081810_create_profiles_table', 2),
(12, '2026_09_12_025705_create_beritas_table', 3),
(13, '2026_09_12_025725_create_galeris_table', 3),
(14, '2026_09_12_032624_create_berandas_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `visi` text COLLATE utf8mb4_unicode_ci,
  `misi` text COLLATE utf8mb4_unicode_ci,
  `tujuan` text COLLATE utf8mb4_unicode_ci,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `nama_sekolah`, `deskripsi`, `visi`, `misi`, `tujuan`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'SMKN 1 Cijati', 'SMK Negeri 1 Cijati merupakan sekolah menengah kejuruan yang berkomitmen memberikan pendidikan berkualitas dan membekali peserta didik dengan pengetahuan serta keterampilan.', 'Terwujuddnya lulusan KEREN dan BERSINERGI melalui pembelajaran mendalam, penguatan karakter Pancawaluya, serta kolaborasi aktif dengan dunia kerja dan industri.', '1.	Menyelenggarakan pembelajaran mendalam yang berpusat pada peserta didik untuk mengembangkan kompetensi secara optimal. \n2.	Menumbuhkan karakter religius, energik, dan nasionalis dalam kehidupan sehari-hari melalui penguatan nilai-nilai Pancawaluya. \n3.	Mengembangkan lulusan yang kompeten dan berdaya saing sesuai dengan kebutuhan dunia kerja dan perkembangan zaman. \n4.	Menanamkan jiwa kewirausahaan (entrepreneurship) melalui kegiatan pembelajaran dan praktik nyata. \n5.	Menumbuhkan integritas, etos kerja, dan tanggung jawab melalui pembiasaan, keteladanan, dan budaya sekolah yang positif. \n6.	Menguatkan kolaborasi dan kemitraan aktif dengan dunia kerja dan industri untuk meningkatkan relevansi dan kualitas lulusan.', 'Sekolah ini bertujuan untuk mendidik dan mempersiapkan siswa menjadi tenaga kerja menengah yang terampil, mandiri, dan siap kerja di bidangnya, serta berkarakter sesuai dengan kebutuhan dunia usaha dan industri.', 'kepala sekolah.jpeg', '2026-09-11 19:48:56', '2026-09-11 19:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3GUUpQdjBN1T5wOcEem8IzDoh9rI0hWPKdB7HfM1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJNRTd3NEpkQkdnd0FIWFI4SEVMaFlyalI3dmZ4aWdOeThEY1o4OXdZIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9wcm9maWwiLCJyb3V0ZSI6bnVsbH0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1789028114);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2026-09-08 04:28:18', '$2y$12$7GqMoLXif2m4wkq9KG7q/.xLz1QjKXgstjQjq7WcrWpyHHy.alJ6G', 'I0cynZDIbC', '2026-09-08 04:28:19', '2026-09-08 04:28:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_artikel_kategori_id_foreign` (`artikel_kategori_id`);

--
-- Indexes for table `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berandas`
--
ALTER TABLE `berandas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `berita_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ekstrakurikuler_guru_id_foreign` (`guru_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berandas`
--
ALTER TABLE `berandas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_artikel_kategori_id_foreign` FOREIGN KEY (`artikel_kategori_id`) REFERENCES `artikel_kategori` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD CONSTRAINT `ekstrakurikuler_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
