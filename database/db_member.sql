-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2022 pada 12.36
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_member`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` int(11) NOT NULL,
  `nomor_kursi` varchar(5) NOT NULL,
  `is_active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `nomor_kursi`, `is_active`) VALUES
(1, 'A1', 'disabled'),
(2, 'A2', 'Active'),
(3, 'A3', 'Active'),
(4, 'A4', 'Active'),
(5, 'A5', 'Active'),
(6, 'A6', 'Active'),
(7, 'A7', 'Active'),
(8, 'A8', 'Active'),
(9, 'A9', 'Active'),
(10, 'A10', 'Active'),
(11, 'A11', 'Active'),
(12, 'A12', 'Active'),
(13, 'A13', 'Active'),
(14, 'A14', 'Active'),
(15, 'B1', 'Active'),
(16, 'B2', 'Active'),
(17, 'B3', 'Active'),
(18, 'B4', 'Active'),
(19, 'B5', 'Active'),
(20, 'B6', 'Active'),
(21, 'B7', 'Active'),
(22, 'B8', 'Active'),
(23, 'B9', 'Active'),
(24, 'B10', 'Active'),
(25, 'B11', 'Bctive'),
(26, 'B12', 'Active'),
(27, 'B13', 'Active'),
(28, 'B14', 'Active'),
(29, 'C1', 'Active'),
(30, 'C2', 'Active'),
(31, 'C3', 'Active'),
(32, 'C4', 'Active'),
(33, 'C5', 'Active'),
(34, 'C6', 'Active'),
(35, 'C7', 'Active'),
(36, 'C8', 'Active'),
(37, 'C9', 'Active'),
(38, 'C10', 'Active'),
(39, 'C11', 'Active'),
(40, 'C12', 'Active'),
(41, 'C13', 'Active'),
(42, 'C14', 'Active'),
(43, 'D1', 'Active'),
(44, 'D2', 'Active'),
(45, 'D3', 'Active'),
(46, 'D4', 'Active'),
(47, 'D5', 'Active'),
(48, 'D6', 'Active'),
(49, 'D7', 'Active'),
(50, 'D8', 'Active'),
(51, 'D9', 'Active'),
(52, 'D10', 'Active'),
(53, 'D11', 'Active'),
(54, 'D12', 'Active'),
(55, 'D13', 'Active'),
(56, 'D14', 'Active'),
(57, 'E1', 'Active'),
(58, 'E2', 'Active'),
(59, 'E3', 'Active'),
(60, 'E4', 'Active'),
(61, 'E5', 'Active'),
(62, 'E6', 'Active'),
(63, 'E7', 'Active'),
(64, 'E8', 'Active'),
(65, 'E9', 'Active'),
(66, 'E10', 'Active'),
(67, 'E11', 'Active'),
(68, 'E12', 'Active'),
(69, 'E13', 'Active'),
(70, 'E14', 'Active'),
(71, 'F1', 'Active'),
(72, 'F2', 'Active'),
(73, 'F3', 'Active'),
(74, 'F4', 'Active'),
(75, 'F5', 'Active'),
(76, 'F6', 'Active'),
(77, 'F7', 'Active'),
(78, 'F8', 'Active'),
(79, 'F9', 'Active'),
(80, 'F10', 'Active'),
(81, 'F11', 'Bctive'),
(82, 'F12', 'Active'),
(83, 'F13', 'Active'),
(84, 'F14', 'Active'),
(85, 'G1', 'Active'),
(86, 'G2', 'Active'),
(87, 'G3', 'Active'),
(88, 'G4', 'Active'),
(89, 'G5', 'Active'),
(90, 'G6', 'Active'),
(91, 'G7', 'Active'),
(92, 'G8', 'Active'),
(93, 'G9', 'Active'),
(94, 'G10', 'Active'),
(95, 'G11', 'Active'),
(96, 'G12', 'Active'),
(97, 'G13', 'Active'),
(98, 'G14', 'Active'),
(99, 'H1', 'Active'),
(100, 'H2', 'Active'),
(101, 'H3', 'Active'),
(102, 'H4', 'Active'),
(103, 'H5', 'Active'),
(104, 'H6', 'Active'),
(105, 'H7', 'Active'),
(106, 'H8', 'Active'),
(107, 'H9', 'Active'),
(108, 'H10', 'Active'),
(109, 'H11', 'Active'),
(110, 'H12', 'Active'),
(111, 'H13', 'Active'),
(112, 'H14', 'Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--

CREATE TABLE `movies` (
  `id_artikel` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `judul_artikel` varchar(500) NOT NULL,
  `rating` float NOT NULL,
  `harga_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`id_artikel`, `id_member`, `type`, `gambar`, `deskripsi`, `kategori`, `judul_artikel`, `rating`, `harga_tiket`) VALUES
(22, 18, 'image/jpeg', '629c762a31873.jpg', '<p><strong><em><u>ini film hacker</u></em></strong></p>\r\n', 'Action', 'hacker', 4.5, 25000),
(24, 18, 'image/jpeg', '62a199255c78f.jpg', '<p>ini film sonic</p>\r\n', 'Drama', 'sonic 2', 4, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `id_member` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_member` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_identitas` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `register`
--

INSERT INTO `register` (`id_member`, `email`, `username`, `password`, `nama_member`, `alamat`, `no_identitas`) VALUES
(21, 'admin@admin.com', 'admin', '$2y$10$Fv.TNgXKF/gt1roh8mppke663DX7oK0wuiq565i/ktww3wd3Rec0e', 'admin', 'Indonesia', '8888'),
(22, 'user@gmail.com', 'user', '$2y$10$3sTYYRIePuRy9Q8TrhtBKOjdF96cwZUfKhUj42pyi7XCizNgAFZCm', 'user', 'indonesia', '1111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_artikel` int(11) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_member` (`id_member`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD KEY `id_artikel` (`id_artikel`),
  ADD KEY `id_member` (`id_member`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kursi`
--
ALTER TABLE `kursi`
  MODIFY `id_kursi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `movies` (`id_artikel`),
  ADD CONSTRAINT `tiket_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `register` (`id_member`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
