-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2024 pada 18.11
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smasys`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_organisasi`
--

CREATE TABLE `anggota_organisasi` (
  `id` int(11) NOT NULL,
  `id_organisasi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota_organisasi`
--

INSERT INTO `anggota_organisasi` (`id`, `id_organisasi`, `id_siswa`) VALUES
(7, 1, 1),
(8, 1, 2),
(9, 1, 4),
(10, 1, 7),
(11, 1, 9),
(12, 2, 11),
(13, 2, 12),
(14, 2, 16),
(15, 2, 8),
(16, 2, 2),
(17, 2, 18),
(18, 2, 17),
(19, 4, 16),
(20, 4, 5),
(21, 4, 13),
(22, 4, 14),
(23, 4, 15),
(24, 4, 1),
(25, 4, 8),
(26, 4, 7),
(27, 1, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pelajaran`
--

CREATE TABLE `detail_pelajaran` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pelajaran`
--

INSERT INTO `detail_pelajaran` (`id`, `id_kelas`, `id_pelajaran`) VALUES
(17, 1, 1),
(18, 1, 2),
(19, 1, 3),
(20, 1, 4),
(21, 1, 5),
(22, 1, 6),
(23, 1, 7),
(24, 1, 8),
(25, 1, 9),
(26, 2, 1),
(27, 2, 2),
(28, 2, 3),
(29, 2, 4),
(30, 2, 6),
(31, 2, 7),
(33, 2, 8),
(34, 2, 9),
(35, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kelas`
--

CREATE TABLE `jadwal_kelas` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `hari` int(11) NOT NULL,
  `jam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_kelas`
--

INSERT INTO `jadwal_kelas` (`id`, `id_kelas`, `id_pelajaran`, `hari`, `jam`) VALUES
(20, 1, 2, 1, 1),
(22, 1, 2, 1, 2),
(23, 1, 6, 1, 4),
(24, 1, 6, 1, 5),
(26, 1, 2, 1, 8),
(27, 1, 3, 2, 1),
(28, 1, 3, 2, 2),
(29, 1, 4, 2, 4),
(30, 1, 4, 2, 5),
(31, 1, 9, 2, 8),
(32, 1, 8, 3, 1),
(33, 1, 8, 3, 2),
(35, 1, 9, 1, 1),
(40, 1, 9, 3, 8),
(41, 1, 9, 2, 7),
(42, 1, 6, 4, 1),
(43, 1, 6, 4, 2),
(44, 1, 3, 4, 4),
(45, 1, 3, 4, 5),
(46, 1, 9, 4, 7),
(47, 1, 9, 4, 8),
(48, 1, 5, 5, 1),
(49, 1, 5, 5, 2),
(51, 2, 7, 1, 1),
(53, 2, 7, 1, 2),
(56, 20, 2, 2, 1),
(58, 20, 8, 2, 2),
(59, 20, 7, 2, 5),
(62, 20, 2, 1, 4),
(63, 20, 9, 3, 4),
(64, 20, 10, 4, 1),
(65, 20, 10, 4, 2),
(66, 20, 3, 4, 4),
(67, 20, 3, 4, 5),
(69, 20, 5, 5, 1),
(70, 20, 5, 5, 2),
(71, 20, 2, 5, 4),
(72, 20, 7, 3, 1),
(73, 20, 7, 3, 2),
(74, 19, 4, 3, 4),
(75, 19, 4, 3, 5),
(76, 1, 6, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`) VALUES
(1, 'IPA'),
(2, 'IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ketua_kelas` varchar(100) NOT NULL,
  `wali_kelas` varchar(100) NOT NULL,
  `tingkat` int(11) NOT NULL,
  `tahun_ajar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `id_jurusan`, `nama`, `ketua_kelas`, `wali_kelas`, `tingkat`, `tahun_ajar`) VALUES
(1, 1, 'X IPA 1', 'Andika', 'Pak Taufik', 10, '2023'),
(2, 1, 'X IPA 2', 'Yuli', 'Wartiah', 10, '2023'),
(3, 2, 'X IPS 1', 'Arum ', 'Fitri N ', 10, '2023'),
(4, 1, 'X IPS 2', 'Angga', 'Wiwik', 10, '2023'),
(5, 1, 'XI IPA 1', 'Reza Ahmad', 'Nurcholifah', 11, '2022'),
(6, 1, 'XI IPA 2', 'Hardinta Abdul', 'Amin', 11, '2022'),
(7, 2, 'XI IPS 1', 'Billy A', 'Daniel R', 11, '2022'),
(8, 2, 'XI IPS 2', 'Bianda ', 'Toni', 11, '2022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id`, `id_siswa`, `id_pelajaran`, `nilai`) VALUES
(13, 14, 5, 81),
(14, 14, 1, 89),
(15, 14, 2, 78),
(16, 14, 4, 85),
(17, 14, 3, 90),
(18, 14, 6, 90),
(19, 14, 7, 87),
(20, 14, 8, 93),
(21, 14, 9, 76),
(22, 15, 1, 89),
(23, 15, 2, 66),
(24, 15, 3, 78),
(25, 15, 4, 83),
(26, 15, 6, 92),
(27, 15, 7, 89),
(28, 15, 8, 92),
(29, 15, 9, 66),
(30, 15, 5, 88),
(31, 1, 1, 88),
(32, 1, 2, 87),
(33, 1, 3, 92),
(34, 1, 4, 85),
(35, 1, 5, 86),
(36, 1, 6, 88),
(37, 1, 7, 89),
(38, 1, 8, 78),
(39, 1, 9, 75),
(40, 2, 1, 89),
(41, 2, 2, 86),
(42, 2, 3, 85),
(43, 2, 4, 89),
(44, 2, 6, 90),
(45, 2, 5, 92),
(46, 2, 7, 92),
(47, 2, 8, 88),
(48, 2, 9, 78),
(49, 3, 1, 90),
(50, 3, 2, 92),
(51, 3, 3, 89),
(52, 3, 4, 77),
(53, 3, 5, 90),
(54, 3, 6, 89),
(55, 3, 7, 78),
(56, 3, 8, 82),
(57, 3, 9, 76),
(58, 4, 1, 90),
(59, 5, 1, 89),
(60, 5, 2, 93),
(61, 5, 3, 75),
(62, 5, 4, 90),
(63, 5, 5, 54),
(64, 5, 6, 79),
(65, 5, 7, 90),
(66, 5, 8, 90),
(67, 5, 9, 77),
(68, 6, 1, 85),
(69, 6, 2, 88),
(70, 6, 3, 87),
(71, 6, 4, 92),
(72, 6, 5, 87),
(73, 6, 6, 79),
(74, 6, 7, 89),
(75, 6, 8, 92),
(76, 6, 9, 77),
(77, 7, 1, 78),
(78, 8, 1, 87),
(79, 8, 2, 89),
(80, 8, 3, 90),
(81, 8, 4, 85),
(82, 8, 8, 89),
(83, 8, 6, 78),
(84, 8, 5, 77),
(85, 8, 7, 92),
(86, 8, 9, 72),
(87, 9, 1, 65),
(88, 9, 5, 78),
(89, 9, 9, 77),
(90, 9, 8, 85),
(91, 9, 7, 68),
(92, 9, 6, 78),
(93, 9, 4, 90),
(94, 9, 3, 89),
(95, 9, 2, 67),
(96, 10, 1, 82),
(97, 10, 2, 95),
(98, 10, 3, 90),
(99, 10, 4, 80),
(100, 10, 5, 81),
(101, 10, 6, 76),
(102, 10, 7, 80),
(103, 10, 8, 95),
(104, 10, 9, 88),
(105, 11, 1, 89),
(106, 11, 5, 87),
(107, 11, 2, 78),
(108, 11, 3, 90),
(109, 11, 4, 85),
(110, 11, 6, 76),
(111, 11, 7, 89),
(112, 11, 8, 92),
(113, 11, 9, 88),
(114, 12, 1, 82),
(115, 12, 2, 85),
(116, 12, 3, 78),
(117, 12, 4, 92),
(118, 12, 5, 90),
(119, 12, 6, 78),
(120, 12, 7, 85),
(121, 12, 8, 78),
(122, 12, 9, 65);

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasi`
--

CREATE TABLE `organisasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ketua` varchar(100) NOT NULL,
  `penanggung_jawab` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `organisasi`
--

INSERT INTO `organisasi` (`id`, `nama`, `ketua`, `penanggung_jawab`) VALUES
(1, 'MPK', 'Merinke', 'Agus Tri'),
(2, 'OSIS', 'Dimas Insan', 'Joni Setiawan'),
(3, 'PMR', 'Zidan Mumtaaz', 'Chusni'),
(4, 'Paskibraka', 'Adinda Putri', 'Thoriq '),
(55, 'ART CLUB', 'ZAIN', 'SANTO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nip` varchar(200) NOT NULL,
  `guru` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelajaran`
--

INSERT INTO `pelajaran` (`id`, `nama`, `nip`, `guru`) VALUES
(1, 'Matematika', '2205121', 'Bu Wiwik'),
(2, 'Kimia', '2205122', 'Yuni'),
(3, 'Biologi', '2205123', 'Amin'),
(4, 'PJOK', '2205124', 'Puji'),
(5, 'Fisika', '2205125', 'Toni '),
(6, 'Biologi', '2205126', 'Nurcholifah'),
(7, 'PPKN', '2205127', 'Dewi R'),
(8, 'B. Inggris', '2205128', 'Fitri N'),
(9, 'B. Indonesia', '2205129', 'Daniel R');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(100) NOT NULL,
  `total_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `id_kelas`, `nama`, `tanggal_lahir`, `total_nilai`) VALUES
(1, 1, ' Ayu Mustika ', '2024-05-15', 85),
(2, 1, 'Tyo Firmansyah', '2008-02-14', 88),
(3, 1, 'Ayunda Meilin', '2008-03-26', 85),
(4, 1, 'Satriyo Imam', '2009-05-12', 90),
(5, 1, 'Inggria eka', '2008-01-11', 82),
(6, 1, 'Dimas Insan', '2009-04-28', 86),
(7, 1, 'Abyan Naufal', '2008-01-13', 78),
(8, 1, 'Rizky Saputra', '2009-02-14', 84),
(9, 1, 'Ajeng Rahmadani', '2008-04-30', 77),
(10, 1, 'Hardinta Abdul', '2009-02-25', 85),
(11, 1, 'Guntur Naufal', '2009-10-29', 86),
(12, 1, 'Ervinta Mia', '2008-11-13', 81),
(13, 1, 'Noor Izzah', '2009-05-17', NULL),
(14, 2, 'Retno Ayu', '2008-09-18', 85),
(15, 2, 'Naufal P', '2008-12-26', 83),
(16, 2, 'Adinda Putri', '2008-06-22', NULL),
(17, 2, 'Ahmad zakanudin', '2009-07-16', NULL),
(18, 2, 'Zidan Mumtaaz', '2008-08-29', NULL),
(2124, 3, 'Budi Antono', '2008-06-29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2a$12$TLPrtTRoBkluhEk1yQJagu9ezf8JGtS86lNcqndQevOI5nkfwTC.S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_nilai`
--

CREATE TABLE `_nilai` (
  `id` int(11) NOT NULL DEFAULT 0,
  `id_pelajaran` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `_nilai`
--

INSERT INTO `_nilai` (`id`, `id_pelajaran`, `nilai`) VALUES
(2, 2, 90);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota_organisasi`
--
ALTER TABLE `anggota_organisasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_organisasi` (`id_organisasi`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `detail_pelajaran`
--
ALTER TABLE `detail_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indeks untuk tabel `jadwal_kelas`
--
ALTER TABLE `jadwal_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_pelajaran` (`id_pelajaran`);

--
-- Indeks untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota_organisasi`
--
ALTER TABLE `anggota_organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `detail_pelajaran`
--
ALTER TABLE `detail_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kelas`
--
ALTER TABLE `jadwal_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22590;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `organisasi`
--
ALTER TABLE `organisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2125;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota_organisasi`
--
ALTER TABLE `anggota_organisasi`
  ADD CONSTRAINT `anggota_organisasi_ibfk_1` FOREIGN KEY (`id_organisasi`) REFERENCES `organisasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anggota_organisasi_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pelajaran`
--
ALTER TABLE `detail_pelajaran`
  ADD CONSTRAINT `detail_pelajaran_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pelajaran_ibfk_2` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `jurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_pelajaran`) REFERENCES `pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
