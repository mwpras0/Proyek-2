-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2020 pada 13.47
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sifiks`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_treatment` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `action_details`
--

CREATE TABLE `action_details` (
  `action_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user-default.jpg',
  `gender` enum('Laki - laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `profile_picture`, `gender`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Udin', 'user-default.jpg', NULL, 'udin@gmail.com', NULL, '$2y$10$X9oPqYhEQOvVLTWrh14tBe0Cgwwf.ZFFQG18rviuV97oucrdzEeuK', NULL, '2020-10-27 17:33:35', '2020-10-27 17:33:35'),
(2, 'Admin', 'user-default.jpg', NULL, 'admin@admin.com', NULL, '$2y$10$vvmrJ3Hpaf5vkTie2MAn0OAbYlhFBHAVsU9xdK8KZ/2aufjHMr5k2', NULL, '2020-10-27 17:37:33', '2020-10-27 17:37:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` enum('penyakit','obat','hidup-sehat','keluarga','kesehatan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `category`, `admin_id`, `doctor_id`, `title`, `content`, `cover_image`, `created_at`, `updated_at`) VALUES
(1, 'penyakit', 2, NULL, 'Mengenal Covid-19', '<p>COVID-19 adalah penyakit menular yang disebabkan oleh jenis virus corona yang baru ditemukan. Virus ini adalah virus baru dan penyakit yang tidak dikenal sebelum terjadinya wabah di Wuhan, Cina, pada bulan Desember 2019.</p>\r\n\r\n<p><strong>Sejarah Penemuan</strong></p>\r\n\r\n<p>Pada tanggal 31 Desember 2019,&nbsp;<em>World Health Organization</em>&nbsp;(WHO) mendapatkan informasi mengenai kasus pneumonia yang terjadi di kota Wuhan, Provinsi Hubei, Cina.</p>\r\n\r\n<p>Tanggal 7 Januari 2020, otoritas Cina mengkonfirmasi telah mengidentifikasi virus baru, yaitu virus Corona, yang merupakan famili virus flu, seperti virus SARS dan MERS, yang mana dilaporkan lebih dari 2.000 kasus infeksi virus tersebut terjadi di Cina, termasuk di luar Provinsi Hubei.</p>\r\n\r\n<p>Virus Corona (CoV) merupakan famili virus yang menyebabkan penyakit mulai dari flu biasa hingga penyakit yang lebih berat sepert<em>i Middle East Respiratory Syndrome</em>&nbsp;(MERS-SoV) dan<em>&nbsp;Severe Acute Respiratory Syndrome</em>&nbsp;(SARS-CoV). Pada 11 Februari 2020, WHO mengumumkan nama virus Corona jenis baru tersebut adalah&nbsp;<strong><em>Corona&nbsp;Virus Disease 2019</em>&nbsp;(disingkat menjadi COVID-19)</strong>.</p>\r\n\r\n<p><strong>Masa Inkubasi</strong></p>\r\n\r\n<p>Masa inkubasi dapat bervariasi antar pasien, yaitu&nbsp;<strong>2-14 hari setelah terpapar virus&nbsp;</strong>berdasarkan periode inkubasi yang ditunjukkan sebelumnya pada virus MERS.&nbsp;Masa inkubasi 24 hari telah diamati dalam penelitian terbaru. WHO mengatakan periode inkubasi yang panjang dapat mencerminkan paparan ganda&nbsp;<em>Coronavirus</em>.</p>\r\n\r\n<p>Menurut laporan terbaru, ada kemungkinan orang yang terinfeksi Covid-19 dapat menular sebelum menunjukkan gejala yang signifikan.</p>\r\n\r\n<p><strong>Penularan</strong></p>\r\n\r\n<p>Penularan dari orang ke orang diperkirakan terjadi&nbsp;melalui droplet ketika orang yang terinfeksi batuk atau bersin, mirip dengan bagaimana influenza dan patogen pernapasan lainnya yang dapat terhirup ke dalam paru-paru.</p>\r\n\r\n<p>Penularan Covid-19 dapat juga terjadi dengan menyentuh permukaan atau objek yang memiliki virus di atasnya dan kemudian orang tersebut menyentuh mulut, hidung, atau mungkin mata mereka sendiri.</p>\r\n\r\n<p><strong>Apakah Sudah Ada Vaksin atau Obat untuk Covid-19?</strong></p>\r\n\r\n<p>Belum ada vaksin atau pengobatan spesifik untuk virus Covid-19 hingga saat ini. Namun, gejala yang disebabkan oleh virus ini dapat diobati. Oleh karena itu pengobatan harus didasarkan pada kondisi klinis pasien dan perawatan suportif dapat sangat efektif.</p>\r\n\r\n<p><strong>Adakah Antibiotik untuk Mencegah dan Mengobati Covid-19?</strong></p>\r\n\r\n<p>Antibiotik tidak bekerja melawan virus. Antibiotik digunakan hanya untuk melawan bakteri. Antibiotik tidak boleh digunakan sebagai sarana pencegahan atau pengobatan infeksi virus. Namun, antibiotik akan diberikan karena infeksi sekunder bakteri mungkin terjadi saat pasien tersebut dirawat di rumah sakit.</p>\r\n\r\n<p><strong>Pencegahan Penularan Covid-19</strong></p>\r\n\r\n<p>1. Cuci tangan selama 20 detik dengan sabun dan air mengalir sesuai dengan standar WHO</p>\r\n\r\n<p>2. Hindari kerumunan/keramaian</p>\r\n\r\n<p>3. Jaga posisi jarak dengan orang lain</p>\r\n\r\n<p>4. Hindari melakukan kontak langsung dengan orang yang sakit</p>\r\n\r\n<p>5. Konsumsi secara rutin vitamin yang dapat meningkatkan kekebalan tubuh saat sehat dan mempercepat penyembuhan saat sedang sakit</p>\r\n\r\n<p>6. Gunakan masker saat keluar rumah</p>\r\n\r\n<p>7. Membersihkan dan mendisinfeksi&nbsp;secara berkala barang-barang yang sering disentuh&nbsp;</p>\r\n\r\n<p>Sumber:</p>\r\n\r\n<ol>\r\n	<li><em>Worldometers. Coronavirus. Diperoleh 2 Mei 2020 dari https://www.worldometers.info/coronavirus</em></li>\r\n	<li><em>CDC. Coronavirus. Diperoleh 2 Mei 2020 dari&nbsp;https://www.cdc.gov/coronavirus/2019-ncov/prepare/prevention</em></li>\r\n</ol>', '', '2020-11-02 13:26:54', '2020-11-02 13:29:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'KOTA BANDA ACEH', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(2, 'KOTA SABANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(3, 'KOTA LANGSA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(4, 'KOTA LHOKSEUMAWE', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(5, 'KOTA SUBULUSSALAM', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(6, 'KOTA SIBOLGA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(7, 'KOTA TANJUNG BALAI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(8, 'KOTA PEMATANG SIANTAR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(9, 'KOTA TEBING TINGGI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(10, 'KOTA MEDAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(11, 'KOTA BINJAI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(12, 'KOTA PADANGSIDIMPUAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(13, 'KOTA GUNUNGSITOLI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(14, 'KOTA PADANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(15, 'KOTA SOLOK', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(16, 'KOTA SAWAH LUNTO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(17, 'KOTA PADANG PANJANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(18, 'KOTA BUKITTINGGI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(19, 'KOTA PAYAKUMBUH', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(20, 'KOTA PARIAMAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(21, 'KOTA PEKANBARU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(22, 'KOTA DUMAI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(23, 'KOTA JAMBI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(24, 'KOTA SUNGAI PENUH', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(25, 'KOTA PALEMBANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(26, 'KOTA PRABUMULIH', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(27, 'KOTA PAGAR ALAM', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(28, 'KOTA LUBUKLINGGAU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(29, 'KOTA BENGKULU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(30, 'KOTA BANDAR LAMPUNG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(31, 'KOTA METRO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(32, 'KOTA PANGKAL PINANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(33, 'KOTA BATAM', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(34, 'KOTA TANJUNG PINANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(35, 'KOTA JAKARTA SELATAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(36, 'KOTA JAKARTA TIMUR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(37, 'KOTA JAKARTA PUSAT', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(38, 'KOTA JAKARTA BARAT', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(39, 'KOTA JAKARTA UTARA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(40, 'KOTA BOGOR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(41, 'KOTA SUKABUMI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(42, 'KOTA BANDUNG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(43, 'KOTA CIREBON', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(44, 'KOTA BEKASI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(45, 'KOTA DEPOK', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(46, 'KOTA CIMAHI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(47, 'KOTA TASIKMALAYA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(48, 'KOTA BANJAR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(49, 'KOTA MAGELANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(50, 'KOTA SURAKARTA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(51, 'KOTA SALATIGA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(52, 'KOTA SEMARANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(53, 'KOTA PEKALONGAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(54, 'KOTA TEGAL', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(55, 'KOTA YOGYAKARTA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(56, 'KOTA KEDIRI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(57, 'KOTA BLITAR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(58, 'KOTA MALANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(59, 'KOTA PROBOLINGGO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(60, 'KOTA PASURUAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(61, 'KOTA MOJOKERTO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(62, 'KOTA MADIUN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(63, 'KOTA SURABAYA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(64, 'KOTA BATU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(65, 'KOTA TANGERANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(66, 'KOTA CILEGON', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(67, 'KOTA SERANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(68, 'KOTA TANGERANG SELATAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(69, 'KOTA DENPASAR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(70, 'KOTA MATARAM', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(71, 'KOTA BIMA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(72, 'KOTA KUPANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(73, 'KOTA PONTIANAK', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(74, 'KOTA SINGKAWANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(75, 'KOTA PALANGKA RAYA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(76, 'KOTA BANJARMASIN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(77, 'KOTA BANJAR BARU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(78, 'KOTA BALIKPAPAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(79, 'KOTA SAMARINDA', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(80, 'KOTA BONTANG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(81, 'KOTA TARAKAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(82, 'KOTA MANADO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(83, 'KOTA BITUNG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(84, 'KOTA TOMOHON', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(85, 'KOTA KOTAMOBAGU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(86, 'KOTA PALU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(87, 'KOTA MAKASSAR', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(88, 'KOTA PAREPARE', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(89, 'KOTA PALOPO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(90, 'KOTA KENDARI', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(91, 'KOTA BAUBAU', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(92, 'KOTA GORONTALO', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(93, 'KOTA AMBON', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(94, 'KOTA TUAL', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(95, 'KOTA TERNATE', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(96, 'KOTA TIDORE KEPULAUAN', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(97, 'KOTA SORONG', '2020-10-27 17:45:27', '2020-10-27 17:45:27'),
(98, 'KOTA JAYAPURA', '2020-10-27 17:45:27', '2020-10-27 17:45:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `specialization_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Laki - laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `doctors`
--

INSERT INTO `doctors` (`id`, `city_id`, `specialization_id`, `name`, `license`, `biography`, `profile_picture`, `gender`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 23, 'Kencana', '050480798', NULL, NULL, NULL, 'kencana@gmail.com', NULL, '$2y$10$gEdWZSelt7ifstNabt2rjuDS.gJQo/g2mvgV8pquja28rCXeBp8Fq', NULL, '2020-11-02 11:53:22', '2020-11-02 11:53:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctor_details`
--

CREATE TABLE `doctor_details` (
  `doctor_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctor_specializations`
--

CREATE TABLE `doctor_specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `doctor_specializations`
--

INSERT INTO `doctor_specializations` (`id`, `degree`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Sp.A', 'Spesialis Anak', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(2, 'Sp.An', 'Spesialis Anestesiologi dan Terapi Intensif', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(3, 'Sp.And', 'Spesialis Andrologi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(4, 'Sp.Ak', 'Spesialis Akupuntur', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(5, 'Sp.B', 'Spesialis Bedah', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(6, 'Sp.BA', 'Spesialis Bedah Anak', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(7, 'Sp.BM', 'Spesialis Bedah Mulut dan Maksilofasial', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(8, 'Sp.BP-RE', 'Spesialis Bedah Plastik Rekonstruksi dan Estetik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(9, 'Sp.BS', 'Spesialis Bedah Saraf', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(10, 'Sp.BTKV', 'Spesialis Bedah Toraks dan Kardiovaskular', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(11, 'Sp.F', 'Spesialis Forensik dan Medikolegal', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(12, 'Sp.FK', 'Spesialis Farmakologi Klinik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(13, 'Sp.GK', 'Spesialis Gizi Klinik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(14, 'Sp.JP', 'Spesialis Jantung dan Pembuluh Darah', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(15, 'Sp.KFR', 'Spesialis Kedokteran Fisik dan Rehabilitasi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(16, 'Sp.KG', 'Spesialis Konservasi Gigi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(17, 'Sp.KGA', 'Spesialis Kedokteran Gigi Anak', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(18, 'Sp.KJ', 'Spesialis Kedokteran Jiwa atau Psikiatri', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(19, 'Sp.KP', 'Spesialis Kedokteran Penerbangan', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(20, 'Sp.KK', 'Spesialis Penyakit Kulit dan Kelamin', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(21, 'Sp.EM', 'Spesialis Emergency Medic', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(22, 'Sp.KN', 'Spesialis Kedokteran Nuklir', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(23, 'Sp.KO', 'Spesialis Kedokteran Olahraga', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(24, 'Sp.LP', 'Spesialis Layanan Primer', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(25, 'Sp.M', 'Spesialis Mata', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(26, 'Sp.MK', 'Spesialis Mikrobiologi Klinik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(27, 'Sp.OG', 'Spesialis Obstetri & Ginekologi (Kebidanan dan Kandungan)', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(28, 'Sp.Ok', 'Spesialis Kedokteran Okupasi (Kerja)', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(29, 'Sp.Onk.Rad', 'Spesialis Onkologi Radiasi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(30, 'Sp.Ort', 'Spesialis Ortodonsia', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(31, 'Sp.OT', 'Spesialis Bedah Orthopaedi dan Traumatologi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(32, 'Sp.P', 'Spesialis Pulmonologi dan Kedokteran Respirasi (Paru)', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(33, 'Sp.ParK', 'Spesialis Parasitologi Klinik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(34, 'Sp.Perio', 'Spesialis Periodonsia', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(35, 'Sp.PA', 'Spesialis Patologi Anatomi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(36, 'Sp.PD', 'Spesialis Penyakit Dalam', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(37, 'Sp.PK', 'Spesialis Patologi Klinik', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(38, 'Sp.PM', 'Spesialis Penyakit Mulut (Dokter Gigi)', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(39, 'Sp.Pros', 'Spesialis Prostodonsia', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(40, 'Sp.Rad', 'Spesialis Radiologi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(41, 'Sp.RKG', 'Spesialis Radiologi Kedokteran Gigi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(42, 'Sp.S', 'Spesialis Saraf', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(43, 'Sp.THT-KL', 'Spesialis Telinga Hidung Tenggorok-Bedah Kepala Leher', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(44, 'Sp.U', 'Spesialis Urologi', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37'),
(45, 'Sp.Ger', 'Spesialis Geriatri', NULL, '2020-10-27 17:46:37', '2020-10-27 17:46:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` enum('thread','article') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` enum('t-create','t-answer','a-create','a-update') COLLATE utf8mb4_unicode_ci NOT NULL,
  `thread_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `action`, `target`, `prefix`, `thread_id`, `article_id`, `admin_id`, `doctor_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'membuat artikel baru.', 'article', 'a-create', NULL, 1, 2, NULL, NULL, '2020-11-02 13:26:55', '2020-11-02 13:26:55'),
(2, 'membuat perubahan pada artikelnya.', 'article', 'a-update', NULL, 1, 2, NULL, NULL, '2020-11-02 13:29:02', '2020-11-02 13:29:02'),
(3, 'membuat perubahan pada artikelnya.', 'article', 'a-update', NULL, 1, 2, NULL, NULL, '2020-11-02 13:30:01', '2020-11-02 13:30:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medicine`
--

CREATE TABLE `medicine` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Pil','Kapsul','Cair','Sirup','Lain-lain') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(20) NOT NULL,
  `stock` int(20) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `medicine_picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `type`, `price`, `stock`, `description`, `medicine_picture`, `created_at`, `updated_at`) VALUES
(1, 'Tolak Angin', 'Cair', 1500, 100, '<p>Tolak Angin merupakan Obat Herbal Terstandar (OHT) yang diproduksi di pabrik yang terstandar GMP (Good Manufacturing Product), ISO (International Organization of Standardization), dan HACCP (Hazard Analysis Critical Control Point).</p>\r\n\r\n<p>Tolak Angin telah melalui uji toksisitas subkronik dan uji khasiat yang terbukti memelihara/menjaga daya tahan tubuh dengan mengkonsumsi 2 sachet setiap hari selama 7 hari atau lebih.</p>\r\n\r\n<p><strong>KHASIAT DAN MANFAAT</strong></p>\r\n<p>Untuk masuk angin dengan gejala kembung, mual, sakit perut, pusing, meriang, dan tenggorokan kering. Baik diminum saat perjalan jauh, kecapaian dan kurang tidur. Untuk memelihara/menjaga daya tahan tubuh.</p>\r\n\r\n<p><strong>KOMPOSISI</strong></p>\r\n<p>Ekstrak:</p>\r\n<ul>\r\n<li>Foeniculi Fructus (Buah Adas)</li>\r\n<li>Isorae Fructus (Kayu Ules)</li>\r\n<li>Caryophylli Folium (Daun Cengkeh)</li>\r\n<li>Zingiberis Rhizoma (Jahe)</li>\r\n<li>Daun Mint</li>\r\n<li>Madu</li>\r\n</ul>\r\n\r\n<p><strong>ATURAN MINUM</strong></p>\r\n<ul>\r\n<li>Untuk daya tahan tubuh, minum 2 sachet setiap hari, selama 7 hari atau lebih.</li>\r\n<li>Jika masuk angin/diare minum 3-4 sachet perhari.</li>\r\n<li>Sebelum melakukan perjalanan, minum 1 sachet, atau 1-3 sachet pada waktu mabuk perjalanan.</li>\r\n<li>Saat kecapaian dan kurang tidur minum 1 sachet.</li>\r\n</ul>\r\n\r\n<p><strong>KEMASAN</strong></p>\r\n<p>1 sachet berisi 15 ml</p>\r\n\r\n<p><strong>PERHATIAN</strong></p>\r\n<p>Baca petunjuk penggunaan</p>\r\n<p>Jika keluhan berlanjut hubungi dokter</p>\r\n<p>Tidak direkomendasikan untuk wanita hamil</p>\r\n\r\n<p><strong>KEAMANAN PRODUK</strong></p>\r\n<p>Tolak Angin lolos uji toksisitas subkronis (Berdasarkan penelitian yang dilakukan oleh Phebe Hendra dan Fenty dari Laboratorium Hayati Imono, Fakultas Farmasi Universitas Sanata Dharma bekerjasama dengan PT Industri Jamu Dan Farmasi Sido Muncul, Tbk tahun 2002)</p>\r\n<p>Tolak Angin terbukti meningkatkan persentase peripheral T lymphocytes yang berperan dalam menjaga sistem imun selama pemakaian 7 hari. (Berdasarkan penelitian yang dilakukan oleh Edi Dharmana, Neni Susilaningsih, Noorwijayahadi dari Fakultas Kedokteran Universitas Diponegoro bekerja sama dengan PT Industri Jamu Dan Farmasi Sido Muncul Tbk, tahun 2007)</p>\r\n<p>Tolak Angin aman dan memenuhi spesifikasi untuk uji aflatoksin, cemaran logam, dan cemaran mikroba dari Laboratorium PT Industri Jamu Dan Farmasi Sido Muncul Tbk yang tersertifikasi KAN dan ISO 17025.</p>\r\n<p>Tolak Angin sudah tersertifikasi HALAL</p>\r\n\r\n<p><strong>PERUBAHAN POLA MAKAN/ GAYA HIDUP</strong></p>\r\n<ol>\r\n<li>Istirahat cukup</li>\r\n<li>Olahraga</li>\r\n<li>Makan makanan bergizi cukup</li>\r\n<li>Hindari stress</li>\r\n</ol>', NULL, '2020-11-03 01:40:24', '2020-11-03 01:40:24'),
(2, 'Diapet isi 4 kapsul', 'Kapsul', 2000, 50, '<p>DIAPET merupakan obat dengan kandungan ekstrak coix lacryma-jobi semen, ekstrak ssidium guajava leaf extr, ekstrak phellodendron radix, ekstrak curcumae, ekstrak coptidis rhizoma dalam bentuk kapsul. Obat ini dapat digunakan untuk membantu mengurangi frekuensi buang air besar.</p>\r\n\r\n<p><strong>Indikasi Umum</strong></p>\r\n<p>Membantu mengurangi frekuensi buang air besar.</p>\r\n\r\n<p><strong>Komposisi</strong></p>\r\n<ul>\r\n<li>Psidii Guajava Folium 240 mg</li> \r\n<li>Curucumae Domestica Rhizoma 204 mg</li> \r\n<li>Terminalia Cherbulae 64 mg</li> \r\n<li>Punicae Granati Pericarpium 72 mg</li>\r\n</ul>\r\n\r\n<p><strong>Dosis</strong></p>\r\n<p>Dewasa dan Anak : 2 kapsul 2 kali per hari. Untuk Diare akut : 2 kapsul 2 kali per hari dengan interval 1 jam.</p>\r\n\r\n<p><strong>Aturan Pakai</strong></p>\r\n<p>Dikonsumsi sesudah makan</p>\r\n\r\n<p><strong>Kontra Indikasi</strong></p>\r\n<p>hipersensitif</p>\r\n\r\n<p><strong>Perhatian</strong></p>\r\n<p>Tidak dianjurkan untuk anak usia < 5 tahun. Penderita sebaiknya mengkonsumsi larutan cairan elektrolit tubuh. Bila dalam 3 hari tidak kunjung sembuh, sebaiknya dikonsultasikan ke dokter.</p>\r\n\r\n<p><strong>Manufaktur</strong></p>\r\n<p>Soho Industri Pharmasi</p>', NULL, '2020-11-03 01:46:12', '2020-11-03 01:46:12'),
(3, 'Neozep Forte isi 4', 'Pil', 2500, 50, '<p>Neozep Forte adalah sediaan obat yang mengandung Paracetamol, Phenylpropanolamine HCl, salicylamide, dan chlorpheniramine maleate. Neozep Forte digunakan sebagai Analgesik atau obat yang meringankan rasa nyeri, antipiretik atau dapat menurunkan demam, meringkan hidung tersumbat dan antihistamin.</p>\r\n\r\n<p><strong>Keterangan Neozep Forte</strong></p>\r\n<ul>\r\n<li>Golongan: Obat Bebas Terbatas</li>\r\n<li>Kelas Terapi: Obat Batuk dan Pilek.</li>\r\n<li>Kandungan: Paracetamol 250 mg, phenylpropanolamine HCl 15 mg, salicylamide 150 mg, chlorpheniramine maleate 2 mg.</li>\r\n<li>Bentuk: Tablet</li>\r\n<li>Satuan Penjualan: Strip.</li>\r\n<li>Kemasan: Strip @10 Tablet.</li>\r\n<li>Farmasi: Medifarma Lab Inc PT</li>\r\n</ul>\r\n\r\n<p><strong>Kegunaan Neozep Forte</strong></p>\r\n<p>Neozep Forte digunakan untuk meringankan gejala flu seperti demam,sakit kepala, hidung tersumbat dan bersin-bersin.</p>\r\n\r\n<p><strong>Dosis dan Cara Penggunaan Neozep Forte</strong></p>\r\n<p>Penggunaan Neozep Forte untuk 3-4 tablet sekali sehari.</p>\r\n\r\n<p><strong>Efek Samping Neozep Forte</strong></p>\r\n<p>Efek yang mungkin terjadi selama penggunaan Neozep Forte, seperti mengantuk, gangguan pencernaan, detak jantung menjadi cepat, mulut kering, dan iritasi lambung.</p>\r\n<p><em>Kontraindikasi</em>:\r\n<br/>Hindari penggunaan Neozep Forte pada pasien yang memiliki indikasi:</p>\r\n<ul>\r\n<li>Penyakit jantung</li>\r\n<li>Diabetes mellitus</li>\r\n<li>Hipertensi akut.</li>\r\n<li>Gangguan fungsi hati akut.</li>\r\n</ul>\r\n<p><em>Interaksi Obat:</em>\r\n<br/>Hindari penggunaan bersama dengan obat indometasin dan bromokriptin dapat meningkatkan tekanan darah.</p>\r\n<p><em>Kategori Kehamilan:</em>\r\n<br/>Badan Pengawas Obat dan Makanan Amerika Serikat (FDA) mengkategorikan Neozep Forte ke dalam Kategori C:\r\n<br/>Studi pada hewan telah menunjukkan efek buruk pada janin (teratogenik atau embriosidal atau lainnya) dan tidak ada studi terkontrol pada wanita atau studi pada wanita dan hewan tidak tersedia. Obat diberikan hanya jika manfaat yang yang diperoleh lebih besar dari potensi risiko pada janin.<br /><br /></p>', NULL, '2020-11-03 01:46:12', '2020-11-03 01:46:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_08_154055_create_admins_table', 1),
(4, '2019_03_08_155305_create_doctors_table', 1),
(5, '2019_03_08_162120_create_articles_table', 1),
(6, '2019_03_08_163348_create_doctor_specializations_table', 1),
(7, '2019_03_08_164701_create_hospitals_table', 1),
(8, '2019_03_08_171856_create_doctor_details_table', 1),
(9, '2019_03_08_182739_create_rooms_table', 1),
(10, '2019_03_08_182804_create_actions_table', 1),
(11, '2019_03_08_182827_create_action_details_table', 1),
(12, '2019_03_08_182921_create_room_details_table', 1),
(13, '2019_03_08_183430_create_threads_table', 1),
(14, '2019_03_08_184403_create_cities_table', 1),
(15, '2019_03_21_034734_add_profile_picture_to_admins', 1),
(16, '2019_03_21_235955_add_id_topic_to_threads', 1),
(17, '2019_03_22_000524_create_thread_topics_table', 1),
(18, '2019_03_25_104509_add_gender_to_admins', 1),
(19, '2019_03_26_042719_add_status_to_users', 1),
(20, '2019_03_26_155604_change_detail_on_doctor_specialization_to_text', 1),
(21, '2019_03_28_095345_change_price_per_night_to_integer_on_rooms', 1),
(22, '2019_04_26_012329_create_logs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Laki - laki','Perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `thread_topics`
--

CREATE TABLE `thread_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user-default.jpg',
  `gender` enum('Laki - laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `biography`, `profile_picture`, `gender`, `email`, `email_verified_at`, `password`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Udin', NULL, 'user-default.jpg', NULL, 'udin@gmail.com', NULL, '$2y$10$ZUo1KZAxgYQgMQRY0KrBNOVd8WqnK3uUauKvpFwtR71ppVLOCmA9a', NULL, NULL, 1, NULL, '2020-10-26 14:30:54', '2020-10-26 14:30:54'),
(2, 'User', NULL, 'user-default.jpg', NULL, 'user@user.com', NULL, '$2y$10$dPuSgyz2noiV4x0tpipB5erDWWD8R.S808p0XjoXLP77VyTHXWQLW', NULL, NULL, 1, NULL, '2020-11-02 13:17:51', '2020-11-02 13:17:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indeks untuk tabel `doctor_specializations`
--
ALTER TABLE `doctor_specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `thread_topics`
--
ALTER TABLE `thread_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `doctor_specializations`
--
ALTER TABLE `doctor_specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `thread_topics`
--
ALTER TABLE `thread_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
