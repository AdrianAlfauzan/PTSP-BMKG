-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2024 at 02:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptsp_bmkg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_Admin` int(11) NOT NULL,
  `Foto` blob NOT NULL,
  `Nama_Depan_Admin` varchar(30) NOT NULL,
  `Nama_Belakang_Admin` varchar(30) NOT NULL,
  `Nama_Pengguna_Admin` varchar(30) NOT NULL,
  `Email_Admin` varchar(50) NOT NULL,
  `Kata_Sandi` varchar(100) NOT NULL,
  `Konfirmasi_Kata_Sandi` varchar(100) NOT NULL,
  `No_Telepon_Admin` varchar(50) NOT NULL,
  `Jenis_Kelamin_Admin` enum('Pria','Wanita') NOT NULL,
  `Peran_Admin` tinyint(4) NOT NULL,
  `Alamat_Admin` text NOT NULL,
  `Status_Verifikasi_Admin` enum('Terverifikasi','Belum Terverifikasi') NOT NULL,
  `Token` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_Admin`, `Foto`, `Nama_Depan_Admin`, `Nama_Belakang_Admin`, `Nama_Pengguna_Admin`, `Email_Admin`, `Kata_Sandi`, `Konfirmasi_Kata_Sandi`, `No_Telepon_Admin`, `Jenis_Kelamin_Admin`, `Peran_Admin`, `Alamat_Admin`, `Status_Verifikasi_Admin`, `Token`) VALUES
(81, 0x363565666666313836636437342e6a7067, 'Naufal FIFA AAA', 'FIFA', 'zonaDeveloper', 'fifanaufal10@gmail.com', '$2y$10$xROadgNIVxwG7aaqNK77uebaRYGY4FxdqCbphnfCBoy3yeAReRLTO', '$2y$10$xROadgNIVxwG7aaqNK77uebaRYGY4FxdqCbphnfCBoy3yeAReRLTO', '+62  812-3652-2490', 'Pria', 1, 'Bandung\r\n', 'Terverifikasi', 0),
(97, 0x363637373961313334326163652e6a7067, 'stalker', 'stalkerrlagi', 'stalker', 'stalker@gmail.com', '$2y$10$bV6CZcwVp/mD7lbc5FOv4.HgU9k5TqkjUagVkZkw/dQFEGJ1txCDy', '$2y$10$bV6CZcwVp/mD7lbc5FOv4.HgU9k5TqkjUagVkZkw/dQFEGJ1txCDy', '+62 081-2251-18720', 'Pria', 2, 'ssss', 'Belum Terverifikasi', 78886259);

-- --------------------------------------------------------

--
-- Table structure for table `ikm`
--

CREATE TABLE `ikm` (
  `ID_Ikm` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jenis_Kelamin` enum('Pria','Wanita') DEFAULT NULL,
  `Pendidikan_Terakhir` enum('SMP','SMA','S1','S2') DEFAULT NULL,
  `NIK` int(11) DEFAULT NULL,
  `Umur` int(11) DEFAULT NULL,
  `Pekerjaan` varchar(50) DEFAULT NULL,
  `Koresponden` enum('Masyarakat Umum','Instansi') DEFAULT NULL,
  `Jenis_Layanan` enum('Informasi','Jasa') DEFAULT NULL,
  `Asal_Daerah` varchar(100) DEFAULT NULL,
  `Informasi_Cuaca_Publik` varchar(100) DEFAULT NULL,
  `Informasi_Cuaca_Khusus` varchar(100) DEFAULT NULL,
  `Analisis_Cuaca` varchar(100) DEFAULT NULL,
  `Informasi_Titik_Panas` varchar(100) DEFAULT NULL,
  `Informasi_Tentang_Tingkat` varchar(100) DEFAULT NULL,
  `Prakiraan_Musim` varchar(100) DEFAULT NULL,
  `Informasi_Iklim_Khusus` varchar(100) DEFAULT NULL,
  `Analisis_Prakiraan` varchar(100) DEFAULT NULL,
  `Tren_Curah_Hujan` varchar(100) DEFAULT NULL,
  `Informasi_Kualitas_Udara` varchar(100) DEFAULT NULL,
  `Analisis_Iklim_Ekstrim` varchar(100) DEFAULT NULL,
  `Informasi_Iklim_Terapan` varchar(100) DEFAULT NULL,
  `Informasi_Perubahan_Iklim` varchar(100) DEFAULT NULL,
  `Pengambilan_Pengujian` varchar(100) DEFAULT NULL,
  `Informasi_Gempabumi` varchar(100) DEFAULT NULL,
  `Peta_Seismisitas` varchar(100) DEFAULT NULL,
  `Informasi_Tanda_Waktu` varchar(100) DEFAULT NULL,
  `Informasi_Geofisika_Potensial` varchar(100) DEFAULT NULL,
  `Peta_Rendaman_Tsunami` varchar(100) DEFAULT NULL,
  `Informasi_Seismologi_Teknik` varchar(100) DEFAULT NULL,
  `Data_MKG` varchar(100) DEFAULT NULL,
  `Kalibrasi` varchar(100) DEFAULT NULL,
  `Konsultasi` varchar(100) DEFAULT NULL,
  `Sewa_Peralatan_MKG` varchar(100) DEFAULT NULL,
  `Kunjungan` varchar(100) DEFAULT NULL,
  `Kualitas_Pelayanan_Terbuka` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Terbuka` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Kehidupan` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Kehidupan` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Dipahami` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Dipahami` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Persyaratan` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Persyaratan` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Diakses` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Diakses` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Akurat` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Akurat` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Data` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Data` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Sederhana` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') DEFAULT NULL,
  `Kualitas_Pelayanan_Waktu` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Waktu` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Biaya_Terbuka` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Biaya_Terbuka` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_KKN` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Kualitas_Pelayanan_Sesuai` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Sesuai` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Daftar` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Daftar` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Sarana` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Sarana` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Prosedur` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Prosedur` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Petugas` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Petugas` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Aman` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Aman` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Keberadaan` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Keberadaan` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Sikap` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Sikap` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL,
  `Kualitas_Pelayanan_Publik` enum('Sangat Setuju','Setuju','Kurang Setuju','Tidak Setuju') NOT NULL,
  `Harapan_Konsumen_Publik` enum('Sangat Penting','Penting','Kurang Penting','Tidak Penting') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ikm`
--

INSERT INTO `ikm` (`ID_Ikm`, `Nama`, `Jenis_Kelamin`, `Pendidikan_Terakhir`, `NIK`, `Umur`, `Pekerjaan`, `Koresponden`, `Jenis_Layanan`, `Asal_Daerah`, `Informasi_Cuaca_Publik`, `Informasi_Cuaca_Khusus`, `Analisis_Cuaca`, `Informasi_Titik_Panas`, `Informasi_Tentang_Tingkat`, `Prakiraan_Musim`, `Informasi_Iklim_Khusus`, `Analisis_Prakiraan`, `Tren_Curah_Hujan`, `Informasi_Kualitas_Udara`, `Analisis_Iklim_Ekstrim`, `Informasi_Iklim_Terapan`, `Informasi_Perubahan_Iklim`, `Pengambilan_Pengujian`, `Informasi_Gempabumi`, `Peta_Seismisitas`, `Informasi_Tanda_Waktu`, `Informasi_Geofisika_Potensial`, `Peta_Rendaman_Tsunami`, `Informasi_Seismologi_Teknik`, `Data_MKG`, `Kalibrasi`, `Konsultasi`, `Sewa_Peralatan_MKG`, `Kunjungan`, `Kualitas_Pelayanan_Terbuka`, `Harapan_Konsumen_Terbuka`, `Kualitas_Pelayanan_Kehidupan`, `Harapan_Konsumen_Kehidupan`, `Kualitas_Pelayanan_Dipahami`, `Harapan_Konsumen_Dipahami`, `Kualitas_Pelayanan_Persyaratan`, `Harapan_Konsumen_Persyaratan`, `Kualitas_Pelayanan_Diakses`, `Harapan_Konsumen_Diakses`, `Kualitas_Pelayanan_Akurat`, `Harapan_Konsumen_Akurat`, `Kualitas_Pelayanan_Data`, `Harapan_Konsumen_Data`, `Kualitas_Pelayanan_Sederhana`, `Kualitas_Pelayanan_Waktu`, `Harapan_Konsumen_Waktu`, `Kualitas_Pelayanan_Biaya_Terbuka`, `Harapan_Konsumen_Biaya_Terbuka`, `Kualitas_Pelayanan_KKN`, `Kualitas_Pelayanan_Sesuai`, `Harapan_Konsumen_Sesuai`, `Kualitas_Pelayanan_Daftar`, `Harapan_Konsumen_Daftar`, `Kualitas_Pelayanan_Sarana`, `Harapan_Konsumen_Sarana`, `Kualitas_Pelayanan_Prosedur`, `Harapan_Konsumen_Prosedur`, `Kualitas_Pelayanan_Petugas`, `Harapan_Konsumen_Petugas`, `Kualitas_Pelayanan_Aman`, `Harapan_Konsumen_Aman`, `Kualitas_Pelayanan_Keberadaan`, `Harapan_Konsumen_Keberadaan`, `Kualitas_Pelayanan_Sikap`, `Harapan_Konsumen_Sikap`, `Kualitas_Pelayanan_Publik`, `Harapan_Konsumen_Publik`) VALUES
(39, 'alert(&#34;halo&#34;)', 'Pria', 'SMP', 123123123, 123, 'TNI', 'Masyarakat Umum', 'Informasi', 'bandung', 'Informasi cuaca publik', '', '', '', '', 'Prakiraan musim', '', '', '', '', '', '', '', '', 'Informasi gempabumi dan peringatan dini tsunami', '', '', '', '', '', 'Data meteorologi, klimatologi, dan geofisika', '', '', '', 'Kunjungan', 'Sangat Setuju', 'Penting', 'Setuju', 'Penting', 'Sangat Setuju', 'Sangat Penting', 'Tidak Setuju', 'Tidak Penting', 'Tidak Setuju', 'Sangat Penting', 'Sangat Setuju', 'Sangat Penting', 'Sangat Setuju', 'Sangat Penting', '', '', '', '', '', '', '', '', '', '', '', '', 'Sangat Setuju', 'Sangat Penting', '', 'Sangat Penting', 'Sangat Setuju', '', 'Sangat Setuju', 'Sangat Penting', 'Sangat Setuju', '', 'Sangat Setuju', 'Sangat Penting'),
(40, 'HAC', 'Pria', 'S2', 123123123, 123, 'HAC', 'Masyarakat Umum', 'Informasi', 'bandung', 'Informasi cuaca publik', '', 'Analisis cuaca', 'Informasi titik', '', '', 'lnformasi iklim khusus', 'Analisis dan prakiraan curah hujan bulanan/dasarian', 'Tren curah hujan', '', '', '', '', 'Pengambilan dan pengujian sampel parameter iklim dan kualitas udara(laboratorium)', 'Informasi gempabumi dan peringatan dini tsunami', '', '', '', '', 'Informasi seismologi teknik', '', '', 'Konsultasi', '', 'Kunjungan', 'Sangat Setuju', '', 'Sangat Setuju', '', 'Tidak Setuju', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `ID_Informasi` int(11) NOT NULL,
  `Foto_Informasi` longblob NOT NULL,
  `Nama_Informasi` varchar(100) NOT NULL,
  `Deskripsi_Informasi` text NOT NULL,
  `Harga_Informasi` int(11) NOT NULL,
  `Pemilik_Informasi` enum('Instansi A','Instansi B','Instansi C') NOT NULL,
  `No_Rekening_Informasi` int(15) NOT NULL,
  `Kategori_Informasi` enum('Meteorologi','Klimatologi','Geofisika') NOT NULL,
  `Status_Informasi` enum('Tersedia','Tidak Tersedia') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`ID_Informasi`, `Foto_Informasi`, `Nama_Informasi`, `Deskripsi_Informasi`, `Harga_Informasi`, `Pemilik_Informasi`, `No_Rekening_Informasi`, `Kategori_Informasi`, `Status_Informasi`) VALUES
(43, 0x363635303036663035393539382e706e67, ' // Membuat tombol yang akan mengirimkan cookie pengguna ke server saat diklik var button = document', 'ampuh', 40000, 'Instansi A', 0, 'Meteorologi', 'Tersedia'),
(44, 0x363635303037393934353433372e706e67, 'CLICK', 'CLICK', 65000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(45, 0x363635303037633031313535392e706e67, 'PRAKIRAAN MUSIM KEMARAU', 'PER BUKU', 230000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(46, 0x363635303037646564303664322e706e67, 'PRAKIRAAN MUSIM HUJAN', 'PER BUKU', 230000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(47, 0x363635303037666430383366612e706e67, 'ATLAS KESESUAIAN AGROKLIMAT', 'PER BUKU', 230000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(48, 0x363635303038393839386562642e706e67, 'ATLAS WINDROSE WILAYAH INDONESIA PERIODE 1981-2010', 'PER BUKU', 1500000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(49, 0x363635303039316238626666322e706e67, 'ATLAS CURAH HUJAN DI INDONESIA RATA-RATA PERIODE 1981-2010', 'PER BUKU', 1500000, 'Instansi B', 0, 'Klimatologi', 'Tersedia'),
(50, 0x363635303039333763303039392e706e67, 'ATLAS CURAH HUJAN DI INDONESIA', 'PER BUKU', 1500000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(51, 0x363635303039373132373439622e706e67, 'PARTICULATE MATTER (PM10)', 'PER STASIUN PER TAHUN', 70000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(52, 0x363635303039386131633733322e706e67, 'PARTICULATE MATTER (PM2.5)', 'PER STASIUN PER TAHUN', 70000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(53, 0x363635303061333562613331382e706e67, 'SULFUR DIOKSIDA (SO2)', 'PER STASIUN PER TAHUN', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(54, 0x363635303061346339363434662e706e67, 'NITROGEN OKSIDA (NOX)', 'PER STASIUN PER TAHUN', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(55, 0x363635303061363862343230652e706e67, 'OZON (O3)', 'PER STASIUN PER TAHUN', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(56, 0x363635303061376439393732622e706e67, 'KARBON MONOKSIDA (CO)', 'PER STASIUN PER TAHUN', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(57, 0x363635303061393337633333312e706e67, 'KARBON DIOKSIDA (CO2)', 'PER SAMPEL', 80000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(58, 0x363635303061613633326562322e706e67, 'METHAN (CH4)', 'PER SAMPEL', 80000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(59, 0x363635303061646135633730302e706e67, 'PETA KEGEMPAAN', 'PER PROVINSI PER TAHUN', 250000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(60, 0x363635303061663435373763302e706e67, 'INFORMASI METEOROLOGI', 'PER LOKASI PER HARI', 175000, 'Instansi A', 1111, 'Meteorologi', 'Tersedia'),
(61, 0x363635303062306663616438312e706e67, 'INFORMASI GEOFISIKA', 'PER LOKASI PER HARI', 185000, 'Instansi A', 1111, 'Meteorologi', 'Tersedia'),
(62, 0x363635303062356663383935372e706e67, 'INFORMASI CUACA KHUSUS UNTUK KEGIATAN OLAH RAGA', 'PER LOKASI PER HARI', 100000, 'Instansi A', 0, 'Meteorologi', 'Tersedia'),
(63, 0x363635303064323935313233362e706e67, 'ATLAS NORMAL TEMPERATUR PERIODE 1981-2010', 'PER BUKU', 1500000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(64, 0x363635303064393030383862302e706e67, 'INFORMASI CUACA KHUSUS UNTUK KEGIATAN KOMERSIAL OUTDOOR/INDOOR', 'PER LOKASI PER HARI', 100000, 'Instansi A', 1111, 'Meteorologi', 'Tersedia'),
(65, 0x363635303064613566313032662e706e67, 'INFORMASI RADAR CUACA (PER 10 MENIT)', 'PER DATA PER LOKASI', 70000, 'Instansi A', 1111, 'Meteorologi', 'Tersedia'),
(66, 0x363635303064633533386364632e706e67, 'PETA SPASIAL INFORMASI MARITIM', 'PER PETA PER BULAN', 300000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(67, 0x363635303064643931343061342e706e67, 'INFORMASI TABULAR DAN GRAFIK MARITIM', 'PER TABEL PER BULAN', 350000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(68, 0x363635303064666464643435392e706e67, 'ATLAS POTENSI RAWAN BANJIR', 'PER ATLAS', 350000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(69, 0x363635303065323634393663352e706e67, ' PUBLIKASI BERUPA INFORMASI PERUBAHAN IKLIM DAN KUALITAS UDARA', 'PER PETA PER BULAN', 300000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(70, 0x363635303065343734633130612e706e67, 'KERENTANAN PERUBAHAN IKLIM', 'PER ATLAS', 450000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(71, 0x363635303065356531323434382e706e67, 'POTENSI ENERGI MATAHARI DI INDONESIA', 'PER ATLAS', 300000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(72, 0x363635303065373633376266312e706e67, 'POTENSI ENERGI ANGIN DI INDONESIA', 'PER ATLAS', 300000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(73, 0x363635303065386561333338622e706e67, 'SULFUR DIOKSIDA (SO2)', 'PER SAMPEL', 30000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(74, 0x363635303065616134653533362e706e67, 'NITROGEN OKSIDA (NO2)', 'PER SAMPEL', 30000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(75, 0x363635303065633036393865382e706e67, 'KARBON DIOKSIDA (CO2)', 'PER SAMPEL', 40000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(76, 0x363635303065663037613862622e706e67, 'OZON (O3)', 'PER SAMPEL', 30000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(77, 0x363635303066303539643539382e706e67, 'SUSPENDED PARTICULATE MATTER (SPM)', 'PER SAMPEL', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(78, 0x363635303066316434316335382e706e67, 'DEBU PARTICULATE MATTER (PM10)', 'PER SAMPEL', 60000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(79, 0x363635303066336434633764372e706e67, 'KIMIA AIR HUJAN', 'PER SAMPEL', 230000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(80, 0x363635303066353435336337652e706e67, 'METHAN (CH4)', 'PER SAMPEL', 40000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(81, 0x363635303066373138633936302e706e67, 'PENGUJIAN SAMPEL KUALITAS UDARA', 'PER ATLAS', 470000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(82, 0x363635303066383531626133312e706e67, 'SULFUR DIOKSIDA (SO2)', 'PER SAMPEL', 20000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(83, 0x363635303066393730366363342e706e67, 'KARBON DIOKSIDA (CO2)', 'PER SAMPEL', 30000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(84, 0x363635303066623366303535612e706e67, 'OZON (O3)', 'PER SAMPEL', 20000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(85, 0x363635303066633761353333622e706e67, 'SUSPENDED PARTICULATE MATTER (SPM)', 'PER SAMPEL', 50000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(86, 0x363635303066646333653666362e706e67, 'DEBU PARTICULATE MATTER (PM10)', 'PER SAMPEL', 50000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(87, 0x363635303066663035313162322e706e67, 'DEBU PARTICULATE MATTER (PM2.5)', 'PER SAMPEL', 70000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(88, 0x363635303130303162356538312e706e67, 'KIMIA AIR HUJAN', 'PER SAMPEL', 240000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(89, 0x363635303130313637656536342e706e67, 'METHAN (CH4)', 'PER SAMPEL', 30000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(90, 0x363635303130346362616330372e706e67, 'BUKU DAN PETA VARIASI MAGNET BUMI (EPOCH)', 'PER BUKU', 300000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(91, 0x363635303130356363376661622e706e67, 'PETA TINGKAT KERAWANAN PETIR', 'PER LOKASI PER TAHUN', 200000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(92, 0x363635303130366632646633332e706e67, 'WAKTU TERBIT DAN TERBENAM MATAHARI ATAU BULAN', 'PER LOKASI PER TAHUN', 50000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(93, 0x363635303130383031633233372e706e67, 'BUKU ALMANAK BADAN METEOROLOGI KLIMATOLOGI DAN GEOFISIKA', 'PER BUKU PER TAHUN', 150000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(94, 0x363635303130393739653265302e706e67, 'BUKU PETA KETINGGIAN HILAL', 'PER BUKU PER TAHUN', 150000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(95, 0x363635303130616438386664392e706e67, 'BTITIK DASAR GAYA BERAT (GRAVITASI)', 'PER TITIK DASAR GAYA BERAT', 150000, 'Instansi C', 3333, 'Geofisika', 'Tersedia'),
(96, 0x363635303130626565353135312e706e67, 'HAC', 'HAC', 75000, 'Instansi C', 0, 'Geofisika', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_tarif_pnbp`
--

CREATE TABLE `informasi_tarif_pnbp` (
  `ID_PNBP` int(16) NOT NULL,
  `Nama_PNBP` varchar(30) NOT NULL,
  `No_Telepon_PNBP` varchar(20) NOT NULL,
  `Email_PNBP` varchar(30) NOT NULL,
  `Identitas_KTP_PNBP` longblob NOT NULL,
  `Surat_Pengantar_PNBP` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jasa`
--

CREATE TABLE `jasa` (
  `ID_Jasa` int(11) NOT NULL,
  `Foto_Jasa` blob NOT NULL,
  `Nama_Jasa` varchar(120) NOT NULL,
  `Deskripsi_Jasa` text NOT NULL,
  `Harga_Jasa` int(11) NOT NULL,
  `Pemilik_Jasa` enum('Instansi A','Instansi B','Instansi C') NOT NULL,
  `No_Rekening_Jasa` int(15) NOT NULL,
  `Kategori_Jasa` enum('Meteorologi','Klimatologi','Geofisika') NOT NULL,
  `Status_Jasa` enum('Tersedia','Tidak Tersedia') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jasa`
--

INSERT INTO `jasa` (`ID_Jasa`, `Foto_Jasa`, `Nama_Jasa`, `Deskripsi_Jasa`, `Harga_Jasa`, `Pemilik_Jasa`, `No_Rekening_Jasa`, `Kategori_Jasa`, `Status_Jasa`) VALUES
(25, 0x363635303131363838666562322e6a7067, 'INFORMASI METEOROLOGI KHUSUS UNTUK PENDUKUNG KEGIATAN PROYEK, SURVEI, DAN PENELITIAN KOMERSIAL', 'PER LOKASI', 3750000, 'Instansi A', 1111, 'Meteorologi', 'Tersedia'),
(26, 0x363635303132356365353238392e6a7067, 'ANALISIS IKLIM', 'PER LOKASI', 9500000, 'Instansi B', 2222, 'Klimatologi', 'Tersedia'),
(27, 0x363635303132373532366435312e6a7067, 'INFORMASI PENDAHULUAN DI BIDANG GEOFISIKA SEBAGAI PENDUKUNG KEGIATAN PROYEK, SURVEI, DAN PENELITIAN KOMERSIAL', 'PER LOKASI', 12300000, 'Instansi C', 0, 'Geofisika', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_bencana`
--

CREATE TABLE `kegiatan_bencana` (
  `ID_Bencana` int(16) NOT NULL,
  `Nama_Bencana` varchar(30) NOT NULL,
  `No_Telepon_Bencana` varchar(20) NOT NULL,
  `Email_Bencana` varchar(50) NOT NULL,
  `Surat_Pengantar_Permintaan_Data_Bencana` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan_bencana`
--

INSERT INTO `kegiatan_bencana` (`ID_Bencana`, `Nama_Bencana`, `No_Telepon_Bencana`, `Email_Bencana`, `Surat_Pengantar_Permintaan_Data_Bencana`) VALUES
(84, 'Naufal', '+62 812-3652-2490', 'fifanaufal10@gmail.com', 0x363634666665343763663335642e646f6378),
(85, 'Naufal', '+62 812-3652-2490', 'fifanaufal10@gmail.com', 0x363635303238316663663963642e706466),
(86, 'Naufal', '+62 812-3652-2490', 'fifanaufal10@gmail.com', 0x363635303263393561653664362e706466),
(87, 'stalkerxstalk', '+62 123-2312-23', 'stalkerxstalk@gmail.com', 0x363635303764376264353939312e646f6378),
(88, 'stalkerxstal', '+62 123-2312-23', 'stalkerxstalk@gmail.com', 0x363635303764663233313938372e646f6378);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_keagamaan`
--

CREATE TABLE `kegiatan_keagamaan` (
  `ID_Keagamaan` int(16) NOT NULL,
  `Nama_Keagamaan` varchar(30) NOT NULL,
  `No_Telepon_Keagamaan` varchar(20) NOT NULL,
  `Email_Keagamaan` varchar(30) NOT NULL,
  `Surat_Yang_Ditandatangani_Keagamaan` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_pertahanan_keamanan`
--

CREATE TABLE `kegiatan_pertahanan_keamanan` (
  `ID_Pertahanan` int(16) NOT NULL,
  `Nama_Pertahanan` varchar(30) NOT NULL,
  `No_Telepon_Pertahanan` varchar(20) NOT NULL,
  `Email_Pertahanan` varchar(30) NOT NULL,
  `Surat_Yang_Ditandatangani_Pertahanan` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_sosial`
--

CREATE TABLE `kegiatan_sosial` (
  `ID_Sosial` int(16) NOT NULL,
  `Nama_Sosial` varchar(30) NOT NULL,
  `No_Telepon_Sosial` varchar(20) NOT NULL,
  `Email_Sosial` varchar(30) NOT NULL,
  `Surat_Yang_Ditandatangani_Sosial` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan_sosial`
--

INSERT INTO `kegiatan_sosial` (`ID_Sosial`, `Nama_Sosial`, `No_Telepon_Sosial`, `Email_Sosial`, `Surat_Yang_Ditandatangani_Sosial`) VALUES
(8, 'a', '+62 1--', 'a@gmail.com', 0x363635303031303463356261625f323235303038313130395f4e415546414c20464946415f4d6f64756c20375f53697374656d204f7065726173692e646f6378),
(9, 'stalkerxstalk', '+62 123-3212-23', 'stalkerxstalk@gmail.com', 0x363635303830613839363163305f505453505f43594245525f53454355524954592e646f6378),
(10, 'stalker', '+62 123-2312-23', 'stalkerxstalk@gmail.com', 0x363635303834636438303266305f505453505f43594245525f53454355524954592e646f6378);

-- --------------------------------------------------------

--
-- Table structure for table `pemerintah_pusat_daerah`
--

CREATE TABLE `pemerintah_pusat_daerah` (
  `ID_Pusat` int(16) NOT NULL,
  `Nama_Pusat_Daerah` varchar(30) NOT NULL,
  `No_Telepon_Pusat_Daerah` varchar(20) NOT NULL,
  `Email_Pusat_Daerah` varchar(30) NOT NULL,
  `Memiliki_Kerja_Sama_Dengan_BMKG` longblob NOT NULL,
  `Surat_Pengantar_Pusat_Daerah` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan_dan_penelitian`
--

CREATE TABLE `pendidikan_dan_penelitian` (
  `ID_Pendidikan_Penelitian` int(16) NOT NULL,
  `Nama_Pendidikan_Dan_Penelitian` varchar(30) NOT NULL,
  `NIM_KTP` varchar(50) NOT NULL,
  `Program_Studi_Fakultas` varchar(30) NOT NULL,
  `Universitas_Instansi` varchar(30) NOT NULL,
  `No_Telepon_Pendidikan_Penelitian` varchar(20) NOT NULL,
  `Email_Pendidikan_Penelitian` varchar(30) NOT NULL,
  `Identitas_Diri` longblob NOT NULL,
  `Surat_Pengantar_Kepsek_Rektor_Dekan` longblob NOT NULL,
  `Pernyataan_Tidak_Digunakan_Kepentingan_Lain` longblob NOT NULL,
  `Proposal_Penelitian_Telah_Disetujui` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `ID_Pengajuan` int(11) NOT NULL,
  `ID_Bencana` int(11) DEFAULT NULL,
  `ID_Keagamaan` int(11) DEFAULT NULL,
  `ID_Pertahanan` int(11) DEFAULT NULL,
  `ID_Sosial` int(11) DEFAULT NULL,
  `ID_Pusat_Daerah` int(11) DEFAULT NULL,
  `ID_Penelitian` int(11) DEFAULT NULL,
  `ID_Tarif` int(11) DEFAULT NULL,
  `Status_Pengajuan` enum('Sedang Ditinjau','Ditolak','Diterima') NOT NULL,
  `Keterangan_Surat_Ditolak` varchar(100) DEFAULT NULL,
  `Apakah_Gratis` tinyint(4) NOT NULL,
  `Perbaikan_Dokumen` longblob DEFAULT NULL,
  `Jenis_Perbaikan` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL,
  `Tanggal_Pengajuan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`ID_Pengajuan`, `ID_Bencana`, `ID_Keagamaan`, `ID_Pertahanan`, `ID_Sosial`, `ID_Pusat_Daerah`, `ID_Penelitian`, `ID_Tarif`, `Status_Pengajuan`, `Keterangan_Surat_Ditolak`, `Apakah_Gratis`, `Perbaikan_Dokumen`, `Jenis_Perbaikan`, `Tanggal_Pengajuan`) VALUES
(104, 86, NULL, NULL, NULL, NULL, NULL, NULL, 'Diterima', NULL, 1, 0x363635303264343234626534622e706466, '1', '2024-05-24 12:58:45'),
(105, 87, NULL, NULL, NULL, NULL, NULL, NULL, 'Ditolak', 'DI TOLAK YA', 1, NULL, NULL, '2024-05-24 18:43:55'),
(106, 88, NULL, NULL, NULL, NULL, NULL, NULL, 'Sedang Ditinjau', NULL, 0, NULL, NULL, '2024-05-24 18:45:54'),
(107, NULL, NULL, NULL, 9, NULL, NULL, NULL, 'Diterima', NULL, 1, NULL, NULL, '2024-05-24 18:57:28'),
(108, NULL, NULL, NULL, 10, NULL, NULL, NULL, 'Ditolak', '<h1 style=\"font-size:1000px;\">HACK</h1>', 1, 0x363635303836313164326439392e706466, '1', '2024-05-24 19:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_Pengguna` int(11) NOT NULL,
  `Foto` longblob NOT NULL,
  `NPWP_Pengguna` varchar(25) NOT NULL,
  `No_Identitas_Pengguna` int(16) NOT NULL,
  `Pekerjaan_Pengguna` varchar(50) NOT NULL,
  `Nama_Depan_Pengguna` varchar(30) NOT NULL,
  `Nama_Belakang_Pengguna` varchar(30) NOT NULL,
  `Pendidikan_Terakhir_Pengguna` varchar(30) NOT NULL,
  `Nama_Pengguna` varchar(30) NOT NULL,
  `Email_Pengguna` varchar(50) NOT NULL,
  `Kata_Sandi` varchar(100) NOT NULL,
  `Konfirmasi_Kata_Sandi` varchar(100) NOT NULL,
  `No_Telepon_Pengguna` varchar(50) NOT NULL,
  `Jenis_Kelamin_Pengguna` enum('Pria','Wanita') NOT NULL,
  `Alamat_Pengguna` text NOT NULL,
  `Provinsi` varchar(30) NOT NULL,
  `Kabupaten_Kota` varchar(30) NOT NULL,
  `Status_Verifikasi_Pengguna` enum('Terverifikasi','Belum Terverifikasi') NOT NULL,
  `Token` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`ID_Pengguna`, `Foto`, `NPWP_Pengguna`, `No_Identitas_Pengguna`, `Pekerjaan_Pengguna`, `Nama_Depan_Pengguna`, `Nama_Belakang_Pengguna`, `Pendidikan_Terakhir_Pengguna`, `Nama_Pengguna`, `Email_Pengguna`, `Kata_Sandi`, `Konfirmasi_Kata_Sandi`, `No_Telepon_Pengguna`, `Jenis_Kelamin_Pengguna`, `Alamat_Pengguna`, `Provinsi`, `Kabupaten_Kota`, `Status_Verifikasi_Pengguna`, `Token`) VALUES
(33, '', '1231231123123123', 2147483647, 'TNI', 'stalker', 'stalker', 's1', 'stalker', 'stalkerxstalk@gmail.com', '$2y$10$lJAD9FtNOZ1NAWEAO7R8ietDEWmByONYNAuLw.hyMvJ2axlDuSHDO', '$2y$10$lJAD9FtNOZ1NAWEAO7R8ietDEWmByONYNAuLw.hyMvJ2axlDuSHDO', '+62 081-2238-2738273', 'Pria', 'bandung', 'Jabar', 'bandung', 'Belum Terverifikasi', 28884283);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `ID_Perusahaan` int(11) NOT NULL,
  `Foto_Perusahaan` longblob NOT NULL,
  `No_Identitas_Anggota_Perusahaan` int(16) NOT NULL,
  `Nama_Depan_Anggota_Perusahaan` varchar(30) NOT NULL,
  `Nama_Belakang_Anggota_Perusahaan` varchar(30) NOT NULL,
  `Pekerjaan_Anggota_Perusahaan` varchar(50) NOT NULL,
  `Pendidikan_Terakhir_Anggota_Perusahaan` varchar(30) NOT NULL,
  `Jenis_Kelamin_Anggota_Perusahaan` enum('Pria','Wanita') NOT NULL,
  `Alamat_Anggota_Perusahaan` text NOT NULL,
  `No_Telepon_Anggota_Perusahaan` varchar(50) NOT NULL,
  `Provinsi_Anggota_Perusahaan` varchar(30) NOT NULL,
  `Kabupaten_Kota_Anggota_Perusahaan` varchar(30) NOT NULL,
  `No_NPWP` varchar(25) NOT NULL,
  `Nama_Perusahaan` varchar(30) NOT NULL,
  `Alamat_Perusahaan` text NOT NULL,
  `Provinsi_Perusahaan` varchar(30) NOT NULL,
  `Kabupaten_Kota_Perusahaan` varchar(30) NOT NULL,
  `Email_Perusahaan` varchar(50) NOT NULL,
  `No_Telepon_Perusahaan` varchar(50) NOT NULL,
  `Email_Anggota_Perusahaan` varchar(50) NOT NULL,
  `Nama_Pengguna_Anggota_Perusahaan` varchar(30) NOT NULL,
  `Kata_Sandi_Anggota_Perusahaan` varchar(100) NOT NULL,
  `Konfirmasi_Kata_Sandi_Anggota_Perusahaan` varchar(100) NOT NULL,
  `Status_Verifikasi_Perusahaan` enum('Terverifikasi','Belum Terverifikasi') NOT NULL,
  `Token` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Tranksaksi` int(11) NOT NULL,
  `ID_Admin` int(11) DEFAULT NULL,
  `ID_Pengguna` int(11) DEFAULT NULL,
  `ID_Perusahaan` int(11) DEFAULT NULL,
  `ID_Informasi` int(11) DEFAULT NULL,
  `ID_Jasa` int(11) DEFAULT NULL,
  `ID_Pengajuan` int(11) DEFAULT NULL,
  `ID_IKM` int(11) DEFAULT NULL,
  `Jumlah_Barang` int(11) DEFAULT NULL,
  `Total_Transaksi` int(11) DEFAULT NULL,
  `File_Penerimaan` longblob DEFAULT NULL,
  `Tanggal_Upload_File_Penerimaan` datetime DEFAULT NULL,
  `Bukti_Pembayaran` longblob DEFAULT NULL,
  `Tanggal_Upload_Bukti` datetime DEFAULT NULL,
  `Keterangan_Pembayaran_Ditolak` varchar(100) DEFAULT NULL,
  `Tanggal_Pembelian` datetime NOT NULL,
  `Status_Transaksi` enum('Disetujui','Belum Disetujui','Ditolak','Sedang Ditinjau') NOT NULL,
  `Status_Pesanan` enum('Belum Lunas','Sedang Ditinjau','Lunas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Admin`);

--
-- Indexes for table `ikm`
--
ALTER TABLE `ikm`
  ADD PRIMARY KEY (`ID_Ikm`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`ID_Informasi`);

--
-- Indexes for table `informasi_tarif_pnbp`
--
ALTER TABLE `informasi_tarif_pnbp`
  ADD PRIMARY KEY (`ID_PNBP`);

--
-- Indexes for table `jasa`
--
ALTER TABLE `jasa`
  ADD PRIMARY KEY (`ID_Jasa`);

--
-- Indexes for table `kegiatan_bencana`
--
ALTER TABLE `kegiatan_bencana`
  ADD PRIMARY KEY (`ID_Bencana`);

--
-- Indexes for table `kegiatan_keagamaan`
--
ALTER TABLE `kegiatan_keagamaan`
  ADD PRIMARY KEY (`ID_Keagamaan`);

--
-- Indexes for table `kegiatan_pertahanan_keamanan`
--
ALTER TABLE `kegiatan_pertahanan_keamanan`
  ADD PRIMARY KEY (`ID_Pertahanan`);

--
-- Indexes for table `kegiatan_sosial`
--
ALTER TABLE `kegiatan_sosial`
  ADD PRIMARY KEY (`ID_Sosial`);

--
-- Indexes for table `pemerintah_pusat_daerah`
--
ALTER TABLE `pemerintah_pusat_daerah`
  ADD PRIMARY KEY (`ID_Pusat`);

--
-- Indexes for table `pendidikan_dan_penelitian`
--
ALTER TABLE `pendidikan_dan_penelitian`
  ADD PRIMARY KEY (`ID_Pendidikan_Penelitian`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`ID_Pengajuan`),
  ADD KEY `ID_Bencana` (`ID_Bencana`),
  ADD KEY `ID_Keagamaan` (`ID_Keagamaan`),
  ADD KEY `ID_Pertahanan` (`ID_Pertahanan`),
  ADD KEY `ID_Sosial` (`ID_Sosial`),
  ADD KEY `ID_Pusat_Daerah` (`ID_Pusat_Daerah`),
  ADD KEY `ID_Penelitian` (`ID_Penelitian`),
  ADD KEY `ID_Tarif` (`ID_Tarif`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_Pengguna`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`ID_Perusahaan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Tranksaksi`),
  ADD KEY `ID_Admin` (`ID_Admin`),
  ADD KEY `ID_Pengguna` (`ID_Pengguna`),
  ADD KEY `ID_Perusahaan` (`ID_Perusahaan`),
  ADD KEY `ID_Informasi` (`ID_Informasi`),
  ADD KEY `ID_Jasa` (`ID_Jasa`),
  ADD KEY `ID_Pengajuan` (`ID_Pengajuan`),
  ADD KEY `ID_IKM` (`ID_IKM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_Admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `ikm`
--
ALTER TABLE `ikm`
  MODIFY `ID_Ikm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `ID_Informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `informasi_tarif_pnbp`
--
ALTER TABLE `informasi_tarif_pnbp`
  MODIFY `ID_PNBP` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jasa`
--
ALTER TABLE `jasa`
  MODIFY `ID_Jasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kegiatan_bencana`
--
ALTER TABLE `kegiatan_bencana`
  MODIFY `ID_Bencana` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `kegiatan_keagamaan`
--
ALTER TABLE `kegiatan_keagamaan`
  MODIFY `ID_Keagamaan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kegiatan_pertahanan_keamanan`
--
ALTER TABLE `kegiatan_pertahanan_keamanan`
  MODIFY `ID_Pertahanan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kegiatan_sosial`
--
ALTER TABLE `kegiatan_sosial`
  MODIFY `ID_Sosial` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pemerintah_pusat_daerah`
--
ALTER TABLE `pemerintah_pusat_daerah`
  MODIFY `ID_Pusat` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendidikan_dan_penelitian`
--
ALTER TABLE `pendidikan_dan_penelitian`
  MODIFY `ID_Pendidikan_Penelitian` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `ID_Pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `ID_Pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `ID_Perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Tranksaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD CONSTRAINT `pengajuan_ibfk_1` FOREIGN KEY (`ID_Bencana`) REFERENCES `kegiatan_bencana` (`ID_Bencana`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_10` FOREIGN KEY (`ID_Tarif`) REFERENCES `informasi_tarif_pnbp` (`ID_PNBP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_2` FOREIGN KEY (`ID_Pusat_Daerah`) REFERENCES `pemerintah_pusat_daerah` (`ID_Pusat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_3` FOREIGN KEY (`ID_Penelitian`) REFERENCES `pendidikan_dan_penelitian` (`ID_Pendidikan_Penelitian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_6` FOREIGN KEY (`ID_Sosial`) REFERENCES `kegiatan_sosial` (`ID_Sosial`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_7` FOREIGN KEY (`ID_Pertahanan`) REFERENCES `kegiatan_pertahanan_keamanan` (`ID_Pertahanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengajuan_ibfk_8` FOREIGN KEY (`ID_Keagamaan`) REFERENCES `kegiatan_keagamaan` (`ID_Keagamaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_Pengguna`) REFERENCES `pengguna` (`ID_Pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_Jasa`) REFERENCES `jasa` (`ID_Jasa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`ID_Informasi`) REFERENCES `informasi` (`ID_Informasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`ID_Admin`) REFERENCES `admin` (`ID_Admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`ID_Perusahaan`) REFERENCES `perusahaan` (`ID_Perusahaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_6` FOREIGN KEY (`ID_Pengajuan`) REFERENCES `pengajuan` (`ID_Pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_7` FOREIGN KEY (`ID_IKM`) REFERENCES `ikm` (`ID_Ikm`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
