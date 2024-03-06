-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 03:53 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kamus`
--

-- --------------------------------------------------------

--
-- Table structure for table `kosakata`
--

CREATE TABLE `kosakata` (
  `id` int(11) NOT NULL,
  `kosa_kata` varchar(100) NOT NULL,
  `arti` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kosakata`
--

INSERT INTO `kosakata` (`id`, `kosa_kata`, `arti`, `created_at`) VALUES
(1, 'Goedemorgen', 'Ucapan Selamat pagi', '2024-03-05 04:59:31'),
(2, 'Goedemiddag', 'Ucapan Selamat siang', '2024-03-05 06:34:13'),
(3, 'Goedenavond', 'Ucapan Selamat malam', '2024-03-05 06:34:13'),
(4, 'Dag', 'Ucapan Selamat tinggal', '2024-03-05 06:35:43'),
(5, 'Ja', 'Ucapan untuk ya', '2024-03-05 06:35:43'),
(8, 'Nee', 'Ucapan untuk tidak', '2024-03-05 06:37:41'),
(9, 'Alsjeblieft', 'Tolong atau silahkan', '2024-03-05 06:37:41'),
(10, 'Dank je wel', 'Ucapan Terimakasih', '2024-03-05 06:37:47'),
(11, 'Graag gedaan', 'Sama-sama', '2024-03-05 06:37:47'),
(12, 'Broer', 'Saudara laki-laki', '2024-03-05 06:39:20'),
(13, 'Bal', 'Bola', '2024-03-05 06:39:20'),
(14, 'Kleur', 'Warna', '2024-03-05 06:39:57'),
(15, 'Klopt', 'Cocok', '2024-03-05 06:39:57'),
(16, 'Lekker', 'Enak atau nikmat', '2024-03-05 06:40:36'),
(17, 'Royaal', 'Boros', '2024-03-05 06:40:36'),
(18, 'Mes', 'Pisau', '2024-03-05 06:41:17'),
(19, 'Schaak', 'Catur', '2024-03-05 06:41:17'),
(20, 'Tot Ziens', 'Ucapan Sampai Jumpa', '2024-03-05 06:41:56'),
(21, 'Tot Straks', 'Ucapan Sampai Nanti', '2024-03-05 06:41:56'),
(22, 'Welkom', 'Ucapan Selamat Datang', '2024-03-05 06:42:28'),
(23, 'Verboden', 'Dilarang', '2024-03-05 06:42:28'),
(24, 'Gefeliciteerd', 'Ucapan Selamat', '2024-03-05 06:42:59'),
(25, 'Vandaag', 'Hari Ini', '2024-03-05 06:42:59'),
(26, 'Gisteren', 'Kemarin', '2024-03-05 06:43:29'),
(27, 'Het ontbijt', 'Makan Pagi', '2024-03-05 06:43:29'),
(28, 'Het avondmaal', 'Makan Malam', '2024-03-05 06:44:11'),
(29, 'Ik', 'Aku,saya', '2024-03-05 06:44:11'),
(30, 'Jij', 'Kamu,engkau', '2024-03-05 06:44:42'),
(31, 'Hij', 'Dia', '2024-03-05 06:44:42'),
(32, 'Vrouw', 'Perempuan,wanita', '2024-03-05 06:45:15'),
(33, 'Mouder', 'Ibu', '2024-03-05 06:45:15'),
(34, 'Vader', 'Ayah,papa,bapak', '2024-03-05 06:45:51'),
(35, 'Woud', 'Hutan', '2024-03-05 06:45:51'),
(36, 'Blad', 'Daun', '2024-03-05 06:46:40'),
(37, 'Boom', 'Pohon', '2024-03-05 06:46:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kosakata`
--
ALTER TABLE `kosakata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kosakata`
--
ALTER TABLE `kosakata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
