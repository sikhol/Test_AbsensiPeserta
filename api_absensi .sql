-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2018 at 03:32 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(10) NOT NULL,
  `nama_kelas` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'Bahasa Inggris', '2018-12-06 07:16:04', '2018-12-06 07:16:04'),
(2, 'Matematika', '2018-12-06 07:16:04', '2018-12-06 07:16:04'),
(3, 'IPA', '2018-12-06 01:03:00', '2018-12-06 01:03:00'),
(4, 'Jaringan', '2018-12-06 01:21:43', '2018-12-06 01:21:43'),
(5, 'Jaringan', '2018-12-06 01:21:51', '2018-12-06 01:21:51'),
(6, 'Jaringan', '2018-12-06 02:02:24', '2018-12-06 02:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `telpon` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `nama`, `telpon`, `created_at`, `updated_at`) VALUES
(5, 'amrul', 'lampung', '2018-12-06 12:46:38', '2018-12-06 12:46:38'),
(6, 'kholiq', 'magelang', '2018-12-06 12:46:38', '2018-12-06 12:46:38'),
(7, 'ardi', '098348343', '2018-12-06 07:22:31', '2018-12-06 07:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `peserta_kelas`
--

CREATE TABLE `peserta_kelas` (
  `id_peserta_kelas` int(11) NOT NULL,
  `id_peserta` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta_kelas`
--

INSERT INTO `peserta_kelas` (`id_peserta_kelas`, `id_peserta`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2018-12-06 12:47:02', '2018-12-06 12:47:02'),
(2, 6, 1, '2018-12-06 12:47:02', '2018-12-06 12:47:02'),
(3, 6, 6, '2018-12-06 13:52:17', '2018-12-06 13:52:17'),
(4, 5, 2, '2018-12-06 13:52:17', '2018-12-06 13:52:17'),
(5, 7, 5, '2018-12-06 07:28:49', '2018-12-06 07:28:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `peserta_kelas`
--
ALTER TABLE `peserta_kelas`
  ADD PRIMARY KEY (`id_peserta_kelas`),
  ADD KEY `id` (`id_kelas`),
  ADD KEY `peserta` (`id_peserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peserta_kelas`
--
ALTER TABLE `peserta_kelas`
  MODIFY `id_peserta_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peserta_kelas`
--
ALTER TABLE `peserta_kelas`
  ADD CONSTRAINT `id` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `peserta` FOREIGN KEY (`id_peserta`) REFERENCES `peserta` (`id_peserta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
