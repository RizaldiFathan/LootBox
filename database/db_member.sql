-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 05:16 PM
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
  `nomor_kursi` varchar(5) NOT NULL,
  `is_active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `nomor_kursi`, `is_active`) VALUES
(1, 'A1', 'disabled'),
(2, 'A2', 'disabled'),
(3, 'A3', 'disabled'),
(4, 'A4', 'actived'),
(5, 'A5', 'disabled'),
(6, 'A6', 'actived'),
(7, 'A7', 'actived'),
(8, 'A8', 'actived'),
(9, 'A9', 'actived'),
(10, 'A10', 'actived'),
(11, 'A11', 'actived'),
(12, 'A12', 'actived'),
(13, 'A13', 'actived'),
(14, 'A14', 'actived'),
(15, 'B1', 'actived'),
(16, 'B2', 'actived'),
(17, 'B3', 'actived'),
(18, 'B4', 'actived'),
(19, 'B5', 'actived'),
(20, 'B6', 'actived'),
(21, 'B7', 'actived'),
(22, 'B8', 'actived'),
(23, 'B9', 'actived'),
(24, 'B10', 'actived'),
(25, 'B11', 'actived'),
(26, 'B12', 'actived'),
(27, 'B13', 'actived'),
(28, 'B14', 'actived'),
(29, 'C1', 'actived'),
(30, 'C2', 'actived'),
(31, 'C3', 'actived'),
(32, 'C4', 'actived'),
(33, 'C5', 'actived'),
(34, 'C6', 'actived'),
(35, 'C7', 'actived'),
(36, 'C8', 'actived'),
(37, 'C9', 'actived'),
(38, 'C10', 'actived'),
(39, 'C11', 'actived'),
(40, 'C12', 'actived'),
(41, 'C13', 'actived'),
(42, 'C14', 'actived'),
(43, 'D1', 'actived'),
(44, 'D2', 'actived'),
(45, 'D3', 'actived'),
(46, 'D4', 'actived'),
(47, 'D5', 'actived'),
(48, 'D6', 'actived'),
(49, 'D7', 'actived'),
(50, 'D8', 'actived'),
(51, 'D9', 'actived'),
(52, 'D10', 'actived'),
(53, 'D11', 'actived'),
(54, 'D12', 'actived'),
(55, 'D13', 'actived'),
(56, 'D14', 'actived'),
(57, 'E1', 'actived'),
(58, 'E2', 'actived'),
(59, 'E3', 'actived'),
(60, 'E4', 'actived'),
(61, 'E5', 'actived'),
(62, 'E6', 'actived'),
(63, 'E7', 'actived'),
(64, 'E8', 'actived'),
(65, 'E9', 'actived'),
(66, 'E10', 'actived'),
(67, 'E11', 'actived'),
(68, 'E12', 'actived'),
(69, 'E13', 'actived'),
(70, 'E14', 'actived'),
(71, 'F1', 'actived'),
(72, 'F2', 'actived'),
(73, 'F3', 'actived'),
(74, 'F4', 'actived'),
(75, 'F5', 'actived'),
(76, 'F6', 'actived'),
(77, 'F7', 'actived'),
(78, 'F8', 'actived'),
(79, 'F9', 'actived'),
(80, 'F10', 'actived'),
(81, 'F11', 'actived'),
(82, 'F12', 'actived'),
(83, 'F13', 'actived'),
(84, 'F14', 'actived'),
(85, 'G1', 'actived'),
(86, 'G2', 'actived'),
(87, 'G3', 'actived'),
(88, 'G4', 'actived'),
(89, 'G5', 'actived'),
(90, 'G6', 'actived'),
(91, 'G7', 'actived'),
(92, 'G8', 'actived'),
(93, 'G9', 'actived'),
(94, 'G10', 'actived'),
(95, 'G11', 'actived'),
(96, 'G12', 'actived'),
(97, 'G13', 'actived'),
(98, 'G14', 'actived'),
(99, 'H1', 'actived'),
(100, 'H2', 'actived'),
(101, 'H3', 'actived'),
(102, 'H4', 'actived'),
(103, 'H5', 'actived'),
(104, 'H6', 'actived'),
(105, 'H7', 'actived'),
(106, 'H8', 'actived'),
(107, 'H9', 'actived'),
(108, 'H10', 'actived'),
(109, 'H11', 'actived'),
(110, 'H12', 'actived'),
(111, 'H13', 'actived'),
(112, 'H14', 'actived');

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
(17, 'Izal', '2022-06-15', '21.00', 24, 22, 2);

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
CREATE TRIGGER `update_kursi` AFTER INSERT ON `tiket` FOR EACH ROW UPDATE kursi SET
is_active = 'disabled'
WHERE id_kursi = new.id_kursi
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
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
