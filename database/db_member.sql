-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 12:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

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
-- Table structure for table `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` int(11) NOT NULL,
  `nomor_kursi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `nomor_kursi`) VALUES
(1, 'A1'),
(2, 'A2'),
(3, 'A3'),
(4, 'A4'),
(5, 'A5'),
(6, 'A6'),
(7, 'A7'),
(8, 'A8'),
(9, 'A9'),
(10, 'A10'),
(11, 'A11'),
(12, 'A12'),
(13, 'A13'),
(14, 'A14'),
(15, 'B1'),
(16, 'B2'),
(17, 'B3'),
(18, 'B4'),
(19, 'B5'),
(20, 'B6'),
(21, 'B7'),
(22, 'B8'),
(23, 'B9'),
(24, 'B10'),
(25, 'B11'),
(26, 'B12'),
(27, 'B13'),
(28, 'B14'),
(29, 'C1'),
(30, 'C2'),
(31, 'C3'),
(32, 'C4'),
(33, 'C5'),
(34, 'C6'),
(35, 'C7'),
(36, 'C8'),
(37, 'C9'),
(38, 'C10'),
(39, 'C11'),
(40, 'C12'),
(41, 'C13'),
(42, 'C14'),
(43, 'D1'),
(44, 'D2'),
(45, 'D3'),
(46, 'D4'),
(47, 'D5'),
(48, 'D6'),
(49, 'D7'),
(50, 'D8'),
(51, 'D9'),
(52, 'D10'),
(53, 'D11'),
(54, 'D12'),
(55, 'D13'),
(56, 'D14'),
(57, 'E1'),
(58, 'E2'),
(59, 'E3'),
(60, 'E4'),
(61, 'E5'),
(62, 'E6'),
(63, 'E7'),
(64, 'E8'),
(65, 'E9'),
(66, 'E10'),
(67, 'E11'),
(68, 'E12'),
(69, 'E13'),
(70, 'E14'),
(71, 'F1'),
(72, 'F2'),
(73, 'F3'),
(74, 'F4'),
(75, 'F5'),
(76, 'F6'),
(77, 'F7'),
(78, 'F8'),
(79, 'F9'),
(80, 'F10'),
(81, 'F11'),
(82, 'F12'),
(83, 'F13'),
(84, 'F14'),
(85, 'G1'),
(86, 'G2'),
(87, 'G3'),
(88, 'G4'),
(89, 'G5'),
(90, 'G6'),
(91, 'G7'),
(92, 'G8'),
(93, 'G9'),
(94, 'G10'),
(95, 'G11'),
(96, 'G12'),
(97, 'G13'),
(98, 'G14'),
(99, 'H1'),
(100, 'H2'),
(101, 'H3'),
(102, 'H4'),
(103, 'H5'),
(104, 'H6'),
(105, 'H7'),
(106, 'H8'),
(107, 'H9'),
(108, 'H10'),
(109, 'H11'),
(110, 'H12'),
(111, 'H13'),
(112, 'H14');

-- --------------------------------------------------------

--
-- Table structure for table `log_transaksi`
--

CREATE TABLE `log_transaksi` (
  `id_logtrans` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `nama_pemesan` int(11) NOT NULL,
  `log_tanggal` date NOT NULL,
  `log_waktu` varchar(50) NOT NULL,
  `log_id_artikel` int(11) NOT NULL,
  `log_id_member` int(11) NOT NULL,
  `log_id_kursi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
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
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id_artikel`, `id_member`, `type`, `gambar`, `deskripsi`, `kategori`, `judul_artikel`, `rating`, `harga_tiket`) VALUES
(22, 18, 'image/jpeg', '629c762a31873.jpg', '<p><strong><em><u>ini film hacker</u></em></strong></p>\r\n', 'Action', 'hacker', 4.5, 25000),
(24, 18, 'image/jpeg', '62a199255c78f.jpg', '<p>ini film sonic</p>\r\n', 'Drama', 'sonic 2', 0, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `register`
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
-- Dumping data for table `register`
--

INSERT INTO `register` (`id_member`, `email`, `username`, `password`, `nama_member`, `alamat`, `no_identitas`) VALUES
(21, 'admin@admin.com', 'admin', '$2y$10$Fv.TNgXKF/gt1roh8mppke663DX7oK0wuiq565i/ktww3wd3Rec0e', 'admin', 'Indonesia', '8888'),
(22, 'user@gmail.com', 'user', '$2y$10$3sTYYRIePuRy9Q8TrhtBKOjdF96cwZUfKhUj42pyi7XCizNgAFZCm', 'user', 'indonesia', '1111'),
(23, 'anwarmanw492@gmail.com', 'nana', '$2y$10$I54Qns6NDKGNEI0U49tT/.NW28jllH6TIF0uN9UeALQ8Dl44nk7pi', 'Nananana', 'Keppo', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `id_artikel` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kursi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `nama_pemesan`, `tanggal`, `waktu`, `id_artikel`, `id_member`, `id_kursi`) VALUES
(12, 'Nugraha', '2022-06-15', '19.00', 22, 22, 3),
(14, 'Farhan Anwar Nugraha', '2022-06-14', '17.00', 24, 22, 5),
(15, 'Bagas', '2022-06-14', '21.00', 24, 22, 8),
(16, 'Bagas', '2022-06-17', '17.00', 22, 22, 1),
(17, 'Izal', '2022-06-15', '21.00', 24, 22, 2),
(20, 'Izal', '2022-06-02', '17.00', 24, 22, 1);

--
-- Triggers `tiket`
--
DELIMITER $$
CREATE TRIGGER `delet_kursi` AFTER DELETE ON `tiket` FOR EACH ROW UPDATE kursi 
SET is_active = "actived"
WHERE id_kursi = old.id_kursi
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `delet_tiket` AFTER DELETE ON `tiket` FOR EACH ROW insert into log_transaksi 
    SET id_tiket = old.id_tiket,
    nama_pemesan = old.nama_pemesan,
    log_tanggal = old.tanggal,
    log_waktu = old.waktu,
    log_id_artikel = old.id_artikel,
    log_id_member = old.id_member,
    log_id_kursi = old.id_kursi
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `log_transaksi`
--
ALTER TABLE `log_transaksi`
  ADD PRIMARY KEY (`id_logtrans`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_member` (`id_member`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `id_artikel` (`id_artikel`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_kursi` (`id_kursi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_transaksi`
--
ALTER TABLE `log_transaksi`
  MODIFY `id_logtrans` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`id_artikel`) REFERENCES `movies` (`id_artikel`),
  ADD CONSTRAINT `tiket_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `register` (`id_member`),
  ADD CONSTRAINT `tiket_ibfk_3` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
