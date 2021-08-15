-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 03:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualanmakanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `id_kategori` varchar(10) DEFAULT NULL,
  `id_suplier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `quantity`, `id_kategori`, `id_suplier`) VALUES
('B101', 'Le Minerale 600 ml', 3500, 200, 'M0202', 1),
('B102', 'Coca Cola 390 ml', 5000, 50, 'M0202', 2),
('B103', 'Fruity Tea 500 ml', 6000, 50, 'M0202', 3),
('B202', 'Sprite 390 ml', 5000, 50, 'M0202', 2),
('B203', 'Teh Pucuk 350 ml', 3500, 100, 'M0202', 3),
('B302', 'Fanta 390 ml', 5000, 50, 'M0202', 2),
('F101', 'Baso Aci LEVEL 0-4', 9500, NULL, 'M0101', NULL),
('F102', 'Mie setan LEVEL 0-4', 9500, NULL, 'M0101', NULL),
('F103', 'Mie Iblis LEVEL 0-4', 9500, NULL, 'M0101', NULL),
('F104', 'Mie Petir LEVEL 0-4', 9500, NULL, 'M0101', NULL),
('F105', 'Chicken Burger Cheese', 13000, NULL, 'M0101', NULL),
('F106', 'Rice Box BBQ + Mozza', 18000, NULL, 'M0101', NULL),
('F201', 'Baso Aci LEVEL 5-9', 10000, NULL, 'M0101', NULL),
('F202', 'Mie Setan LEVEL 5-9', 10000, NULL, 'M0101', NULL),
('F203', 'Mie Iblis LEVEL 5-9', 10000, NULL, 'M0101', NULL),
('F204', 'Mie Petir LEVEL 5-9', 10000, NULL, 'M0101', NULL),
('F205', 'Beef Burger Cheese', 15000, NULL, 'M0101', NULL),
('F206', 'Rice Box Chili Mayo + Mozza', 18000, NULL, 'M0101', NULL),
('F305', 'Chicken Burger', 10000, NULL, 'M0101', NULL),
('F306', 'Rice Box Jalapenos + Mozza', 18000, NULL, 'M0101', NULL),
('F405', 'Beef Burger', 13000, NULL, 'M0101', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_pembeli` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_pembeli`, `id_pesanan`, `id_barang`, `quantity`, `harga`) VALUES
(1, 1, 'B101', 1, 3500),
(1, 1, 'F105', 1, 13000),
(1, 2, 'B103', 1, 6000),
(1, 2, 'B202', 1, 5000),
(1, 2, 'F201', 1, 10000),
(1, 2, 'F204', 1, 10000),
(1, 3, 'B101', 1, 3500),
(1, 3, 'B302', 1, 5000),
(1, 3, 'F202', 1, 10000),
(1, 4, 'B203', 1, 3500),
(1, 4, 'F105', 1, 13000),
(1, 5, 'B102', 1, 5000),
(1, 5, 'B103', 1, 9500),
(1, 5, 'F204', 1, 10000),
(1, 5, 'F405', 1, 13000),
(1, 6, 'B101', 1, 3500),
(1, 6, 'B203', 1, 3500),
(1, 6, 'F205', 1, 15000),
(1, 6, 'F206', 1, 18000),
(1, 7, 'B302', 1, 5000),
(1, 7, 'F306', 1, 18000),
(1, 8, 'B102', 2, 5000),
(1, 8, 'F305', 1, 10000),
(1, 8, 'F405', 1, 13000),
(1, 9, 'B203', 1, 3500),
(1, 9, 'F106', 1, 18000),
(1, 10, 'B103', 1, 6000),
(1, 10, 'F103', 1, 9500),
(2, 11, 'B102', 2, 5000),
(2, 11, 'F105', 2, 13000),
(2, 12, 'B101', 2, 3500),
(2, 12, 'F101', 1, 9500),
(2, 12, 'F102', 1, 9500),
(2, 13, 'B203', 2, 3500),
(2, 13, 'F206', 1, 18000),
(2, 13, 'F306', 1, 18000),
(2, 14, 'B203', 1, 3500),
(2, 14, 'F105', 1, 13000),
(2, 15, 'B302', 1, 5000),
(2, 15, 'F306', 1, 18000),
(2, 16, 'B203', 1, 3500),
(2, 16, 'F106', 1, 18000),
(2, 17, 'B101', 1, 3500),
(2, 17, 'B302', 1, 5000),
(2, 17, 'F202', 1, 10000),
(2, 18, 'B202', 1, 5000),
(2, 18, 'F204', 1, 10000),
(2, 19, 'B101', 1, 3500),
(2, 19, 'F106', 1, 18000),
(2, 20, 'F103', 1, 9500),
(2, 20, 'F202', 1, 18000),
(3, 21, 'B102', 1, 5000),
(3, 21, 'B103', 1, 6000),
(3, 21, 'F203', 1, 10000),
(3, 21, 'F204', 1, 10000),
(3, 22, 'F103', 1, 9500),
(3, 22, 'F202', 1, 10000),
(3, 23, 'B101', 1, 3500),
(3, 23, 'F106', 1, 18000),
(3, 24, 'B202', 1, 5000),
(3, 24, 'F204', 1, 10000),
(3, 25, 'B203', 2, 3500),
(3, 25, 'F206', 1, 18000),
(3, 25, 'F306', 1, 18000),
(3, 26, 'B101', 2, 3500),
(3, 26, 'F101', 1, 9500),
(3, 26, 'F201', 1, 10000),
(3, 27, 'B102', 2, 5000),
(3, 27, 'F105', 2, 13000),
(3, 28, 'B103', 1, 6000),
(3, 28, 'F103', 1, 9500),
(3, 29, 'B203', 1, 3500),
(3, 29, 'F106', 1, 18000),
(3, 30, 'B102', 2, 5000),
(3, 30, 'F305', 1, 10000),
(3, 30, 'F405', 1, 13000),
(4, 31, 'F101', 1, 9500),
(4, 31, 'F102', 1, 9500),
(4, 31, 'F103', 1, 9500),
(4, 32, 'F103', 1, 9500),
(4, 32, 'F202', 1, 10000),
(4, 33, 'B101', 1, 3500),
(4, 33, 'F106', 1, 18000),
(4, 34, 'B102', 1, 5000),
(4, 34, 'B103', 1, 6000),
(4, 34, 'F203', 1, 10000),
(4, 34, 'F204', 1, 10000),
(4, 35, 'B101', 2, 3500),
(4, 35, 'F101', 1, 9500),
(4, 35, 'F201', 1, 10000),
(4, 36, 'B203', 2, 3500),
(4, 36, 'F206', 1, 18000),
(4, 36, 'F306', 1, 18000),
(4, 37, 'B202', 1, 5000),
(4, 37, 'F204', 1, 10000),
(4, 38, 'B102', 2, 5000),
(4, 38, 'F105', 2, 13000),
(4, 39, 'B103', 1, 6000),
(4, 39, 'F205', 1, 15000),
(4, 40, 'F103', 1, 9500),
(4, 40, 'F202', 1, 10000),
(5, 41, 'B203', 2, 3500),
(5, 41, 'F104', 2, 9500),
(5, 42, 'B203', 1, 3500),
(5, 42, 'F104', 1, 9500),
(5, 43, 'B103', 1, 6000),
(5, 43, 'F205', 1, 15000),
(5, 44, 'F101', 1, 9500),
(5, 44, 'F102', 1, 9500),
(5, 44, 'F103', 1, 9500),
(5, 45, 'F103', 1, 9500),
(5, 45, 'F202', 1, 10000),
(5, 46, 'B102', 1, 5000),
(5, 46, 'B103', 1, 6000),
(5, 46, 'F203', 1, 10000),
(5, 46, 'F204', 1, 10000),
(5, 47, 'F103', 1, 9500),
(5, 47, 'F202', 1, 10000),
(5, 48, 'B202', 1, 5000),
(5, 48, 'F204', 1, 10000),
(5, 49, 'B101', 1, 3500),
(5, 49, 'F106', 1, 18000),
(5, 50, 'B203', 2, 3500),
(5, 50, 'F206', 1, 18000),
(5, 50, 'F306', 1, 18000),
(6, 51, 'B203', 1, 3500),
(6, 51, 'F104', 1, 9500),
(6, 52, 'F103', 1, 9500),
(6, 52, 'F202', 1, 10000),
(6, 53, 'B102', 2, 5000),
(6, 53, 'F105', 2, 13000),
(6, 54, 'B101', 2, 3500),
(6, 54, 'F101', 1, 9500),
(6, 54, 'F201', 1, 10000),
(6, 55, 'B102', 1, 5000),
(6, 55, 'B103', 1, 6000),
(6, 55, 'F203', 1, 10000),
(6, 55, 'F204', 1, 10000),
(6, 56, 'F101', 1, 9500),
(6, 56, 'F102', 1, 9500),
(6, 56, 'F103', 1, 9500),
(6, 57, 'B202', 1, 5000),
(6, 57, 'F204', 1, 10000),
(6, 58, 'B203', 2, 3500),
(6, 58, 'F206', 1, 18000),
(6, 58, 'F306', 1, 18000),
(6, 59, 'B203', 2, 3500),
(6, 59, 'F104', 2, 9500),
(6, 60, 'B103', 1, 6000),
(6, 60, 'F205', 1, 15000),
(7, 61, 'B103', 2, 6000),
(7, 61, 'F104', 1, 9500),
(7, 61, 'F105', 1, 13000),
(7, 62, 'B203', 2, 3500),
(7, 62, 'F104', 1, 9500),
(7, 63, 'B203', 2, 3500),
(7, 63, 'F104', 2, 9500),
(7, 64, 'B103', 1, 6000),
(7, 64, 'F205', 1, 15000),
(7, 65, 'F103', 1, 9500),
(7, 65, 'F202', 1, 10000),
(7, 66, 'B102', 1, 5000),
(7, 66, 'B103', 1, 6000),
(7, 66, 'F203', 1, 10000),
(7, 66, 'F204', 1, 10000),
(7, 67, 'F101', 1, 9500),
(7, 67, 'F102', 1, 9500),
(7, 67, 'F103', 1, 9500),
(7, 68, 'B101', 1, 3500),
(7, 68, 'F106', 1, 18000),
(7, 69, 'F103', 1, 9500),
(7, 69, 'F202', 1, 10000),
(7, 70, 'B103', 2, 6000),
(7, 70, 'F206', 1, 18000),
(7, 70, 'F305', 1, 10000),
(8, 71, 'B102', 2, 5000),
(8, 71, 'F105', 2, 13000),
(8, 72, 'B202', 1, 5000),
(8, 72, 'F204', 1, 10000),
(8, 73, 'B101', 1, 3500),
(8, 73, 'F106', 1, 18000),
(8, 74, 'F103', 1, 9500),
(8, 74, 'F202', 1, 10000),
(8, 75, 'B103', 1, 6000),
(8, 75, 'F205', 1, 15000),
(8, 76, 'B103', 1, 9500),
(8, 76, 'F202', 1, 10000),
(8, 77, 'B203', 2, 3500),
(8, 77, 'F104', 2, 9500),
(8, 78, 'B203', 1, 3500),
(8, 78, 'F104', 1, 9500),
(8, 79, 'B103', 1, 6000),
(8, 79, 'F104', 1, 9500),
(8, 79, 'F105', 1, 13000),
(8, 80, 'B103', 1, 6000),
(8, 80, 'F206', 1, 18000),
(8, 80, 'F305', 1, 10000),
(9, 81, 'F101', 1, 9500),
(9, 82, 'F106', 1, 18000),
(9, 83, 'F204', 1, 10000),
(9, 84, 'B103', 1, 6000),
(9, 85, 'F205', 2, 15000),
(9, 86, 'F306', 1, 18000),
(9, 87, 'B101', 1, 3500),
(9, 88, 'F201', 1, 10000),
(9, 89, 'B102', 1, 5000),
(9, 90, 'B203', 1, 3500),
(10, 91, 'F104', 2, 9500),
(10, 92, 'F103', 2, 6000),
(10, 93, 'F204', 2, 10000),
(10, 94, 'B203', 2, 3500),
(10, 95, 'F201', 1, 10000),
(10, 96, 'B101', 2, 3500),
(10, 97, 'B102', 1, 5000),
(10, 98, 'F205', 1, 15000),
(10, 99, 'F106', 1, 18000),
(10, 100, 'F101', 2, 9500);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `nama` varchar(100) DEFAULT NULL,
  `id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`nama`, `id`) VALUES
('Food', 'M0101'),
('Baverage', 'M0202');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL,
  `no_telp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `no_telp`) VALUES
(1, 'Raka Aji', 2147483647),
(2, 'Vernon', 2147483647),
(3, 'Sulastri', NULL),
(4, 'Ara', 2147483647),
(5, 'Febbiana', 2147483647),
(6, 'Kurniasih', NULL),
(7, 'Haikal', 2147483647),
(8, 'Queensia', 2147483647),
(9, 'Mohamad', 2147483647),
(10, 'Ulfaina', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `tanggal_pesanan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_pembeli`, `total`, `tanggal_pesanan`) VALUES
(1, 1, 16500, '2021-08-10 07:52:49'),
(2, 1, 31000, '2021-08-10 09:53:28'),
(3, 1, 18500, '2021-08-10 09:53:28'),
(4, 1, 16500, '2021-08-10 09:53:28'),
(5, 1, 30500, '2021-08-10 09:53:28'),
(6, 1, 40000, '2021-08-10 09:53:28'),
(7, 1, 23000, '2021-08-10 09:53:28'),
(8, 1, 33000, '2021-08-10 09:53:28'),
(9, 1, 21500, '2021-08-10 09:53:28'),
(10, 1, 15500, '2021-08-10 09:53:28'),
(11, 2, 36000, '2021-08-10 14:16:54'),
(12, 2, 26500, '2021-08-10 14:16:54'),
(13, 2, 43000, '2021-08-10 14:16:54'),
(14, 2, 16500, '2021-08-10 14:16:54'),
(15, 2, 23000, '2021-08-10 14:16:54'),
(16, 2, 21500, '2021-08-10 14:16:54'),
(17, 2, 18500, '2021-08-10 14:16:54'),
(18, 2, 15000, '2021-08-10 14:16:54'),
(19, 2, 21500, '2021-08-10 14:16:54'),
(20, 2, 19500, '2021-08-10 14:16:54'),
(21, 3, 31000, '2021-08-11 03:10:13'),
(22, 3, 19500, '2021-08-11 03:10:13'),
(23, 3, 21500, '2021-08-11 03:10:13'),
(24, 3, 15000, '2021-08-11 03:10:13'),
(25, 3, 43000, '2021-08-11 03:10:13'),
(26, 3, 26500, '2021-08-11 03:10:13'),
(27, 3, 36000, '2021-08-11 03:10:13'),
(28, 3, 15500, '2021-08-11 03:10:13'),
(29, 3, 21500, '2021-08-11 03:10:13'),
(30, 3, 33000, '2021-08-11 03:10:13'),
(31, 4, 28500, '2021-08-11 11:20:12'),
(32, 4, 19500, '2021-08-11 11:20:12'),
(33, 4, 21500, '2021-08-11 11:20:12'),
(34, 4, 31000, '2021-08-11 11:20:12'),
(35, 4, 26500, '2021-08-11 11:20:12'),
(36, 4, 43000, '2021-08-11 11:20:12'),
(37, 4, 15000, '2021-08-11 11:20:12'),
(38, 4, 36000, '2021-08-11 11:20:12'),
(39, 4, 21000, '2021-08-11 11:20:12'),
(40, 4, 19500, '2021-08-11 11:20:12'),
(41, 5, 26000, '2021-08-12 06:54:31'),
(42, 5, 13000, '2021-08-12 06:54:31'),
(43, 5, 21000, '2021-08-12 06:54:31'),
(44, 5, 28500, '2021-08-12 06:54:31'),
(45, 5, 19500, '2021-08-12 06:54:31'),
(46, 5, 31000, '2021-08-12 06:54:31'),
(47, 5, 19500, '2021-08-12 06:54:31'),
(48, 5, 15000, '2021-08-12 06:54:31'),
(49, 5, 21500, '2021-08-12 06:54:31'),
(50, 5, 43000, '2021-08-12 06:54:31'),
(51, 6, 13000, '2021-08-12 07:39:01'),
(52, 6, 19500, '2021-08-12 07:39:01'),
(53, 6, 36000, '2021-08-12 07:39:01'),
(54, 6, 26500, '2021-08-12 07:39:01'),
(55, 6, 31000, '2021-08-12 07:39:01'),
(56, 6, 28500, '2021-08-12 07:39:01'),
(57, 6, 15000, '2021-08-12 07:39:01'),
(58, 6, 43000, '2021-08-12 07:39:01'),
(59, 6, 26000, '2021-08-12 07:39:01'),
(60, 6, 21000, '2021-08-12 07:39:01'),
(61, 7, 34500, '2021-08-12 12:53:33'),
(62, 7, 13000, '2021-08-12 12:53:33'),
(63, 7, 26000, '2021-08-12 12:53:33'),
(64, 7, 21000, '2021-08-12 12:53:33'),
(65, 7, 19500, '2021-08-12 12:53:33'),
(66, 7, 31000, '2021-08-12 12:53:33'),
(67, 7, 28500, '2021-08-12 12:53:33'),
(68, 7, 28500, '2021-08-12 12:53:33'),
(69, 7, 19500, '2021-08-12 12:53:33'),
(70, 7, 34000, '2021-08-12 12:53:33'),
(71, 8, 36000, '2021-08-12 13:30:43'),
(72, 8, 15000, '2021-08-12 13:30:43'),
(73, 8, 21500, '2021-08-12 13:30:43'),
(74, 8, 19500, '2021-08-12 13:30:43'),
(75, 8, 21000, '2021-08-12 13:30:43'),
(76, 8, 19500, '2021-08-12 13:30:43'),
(77, 8, 26000, '2021-08-12 13:30:43'),
(78, 8, 13000, '2021-08-12 13:30:43'),
(79, 8, 34500, '2021-08-12 13:30:43'),
(80, 8, 34000, '2021-08-12 13:30:43'),
(81, 9, 9500, '2021-08-12 14:19:09'),
(82, 9, 18000, '2021-08-12 14:19:09'),
(83, 9, 10000, '2021-08-12 14:19:09'),
(84, 9, 6000, '2021-08-12 14:19:09'),
(85, 9, 30000, '2021-08-12 14:19:09'),
(86, 9, 18000, '2021-08-12 14:19:09'),
(87, 9, 3500, '2021-08-12 14:19:09'),
(88, 9, 10000, '2021-08-12 14:19:09'),
(89, 9, 5000, '2021-08-12 14:19:09'),
(90, 9, 3500, '2021-08-12 14:19:09'),
(91, 10, 19000, '2021-08-13 03:18:48'),
(92, 10, 12000, '2021-08-13 03:18:48'),
(93, 10, 20000, '2021-08-13 03:18:48'),
(94, 10, 7000, '2021-08-13 03:18:48'),
(95, 10, 10000, '2021-08-13 03:18:48'),
(96, 10, 7000, '2021-08-13 03:18:48'),
(97, 10, 5000, '2021-08-13 03:18:48'),
(98, 10, 15000, '2021-08-13 03:18:48'),
(99, 10, 18000, '2021-08-13 03:18:48'),
(100, 10, 19000, '2021-08-13 03:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_suplier` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id_suplier`, `nama_suplier`, `alamat`, `no_telp`) VALUES
(1, 'Agen Le Mineral Mas AL', 'Tegalpare, Wonorejo, Kingkang, Kec. Wonosari, Kab. Klaten, Jawa Tengah 57473', 2147483647),
(2, 'Syifalona Agen Minuman', 'Tegalmas, Prawatan, Jogonalan, Klaten Regency, Central Java 57452', 2147483647),
(3, 'Kenanga Kinasih (KK) 2', 'Jl. Diponegoro No. 45, Jetak Kidul, Karangnom, Kec. Klaten Utara, Kab. Klaten, Jawa Tengah 57438', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `fk_barang_kategori` (`id_kategori`),
  ADD KEY `fk_barang_suplier` (`id_suplier`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_pesanan`,`id_barang`),
  ADD KEY `fk_detail_pesanan_barang` (`id_barang`),
  ADD KEY `fk_detail_pesanan_pembeli` (`id_pembeli`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `fk_pesanan_pembeli` (`id_pembeli`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `suplier`
--
ALTER TABLE `suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_barang_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_barang_suplier` FOREIGN KEY (`id_suplier`) REFERENCES `suplier` (`id_suplier`);

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `fk_detail_pesanan_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `fk_detail_pesanan_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `fk_detail_pesanan_pesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
