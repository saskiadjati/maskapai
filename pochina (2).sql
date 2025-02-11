-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2025 at 01:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pochina`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int NOT NULL,
  `airline` varchar(100) NOT NULL,
  `departure_city` varchar(100) NOT NULL,
  `destination_city` varchar(100) NOT NULL,
  `flight_time` datetime NOT NULL,
  `ticket_type` enum('reguler','vip') NOT NULL,
  `price` int NOT NULL,
  `img_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `airline`, `departure_city`, `destination_city`, `flight_time`, `ticket_type`, `price`, `img_url`) VALUES
(1, 'Garuda Indonesia', 'Jakarta', 'Bali', '2025-02-21 12:00:00', 'reguler', 3000000, 'https://th.bing.com/th/id/OIP.e7TkDTD9x-sQ2sWZfnK2vQHaF7?rs=1&pid=ImgDetMain'),
(2, 'Citilink', 'Surabaya', 'Medan', '2025-02-21 12:00:00', 'reguler', 2500000, 'https://media-exp1.licdn.com/dms/image/C561BAQFuMnwfEKp2jw/company-background_10000/0/1597397726200?e=2147483647&v=beta&t=ybehYfZW7RLntjCHzubinvYG6O_Z080aRwyRwm3bjgs'),
(3, 'Sriwijaya Airlines', 'Bandung', 'Yogyakarta', '2025-02-21 14:00:00', 'reguler', 2500000, 'https://th.bing.com/th/id/R.91de9aa546a98d537cf5cd086f96c05a?rik=syCMXtcsfOcSbw&riu=http%3a%2f%2fwww.airlinereporter.com%2fwp-content%2fuploads%2f2011%2f10%2fSA.jpg&ehk=TyzbBB0FzeXxcx7hwjFvtH%2fcn%2b6162W3tRfJUb3bIoU%3d&risl=&pid=ImgRaw&r=0'),
(4, 'Lion Air', 'Jakarta', 'Makassar', '2025-02-21 14:00:00', 'reguler', 2800000, 'https://pinterpoin.com/wp-content/uploads/2019/07/f-wwya-lion-air-airbus-a330-941_PlanespottersNet_974876_860bfb1633.jpg'),
(5, 'Batik Airlines', 'Surabaya', 'Bali', '2025-02-21 16:00:00', 'reguler', 1500000, 'https://i.pinimg.com/originals/7e/65/3e/7e653e401a16cc6d53c64af6d1082d70.jpg'),
(6, 'AirAsia Airlines', 'Medan', 'Padang', '2025-02-21 16:00:00', 'reguler', 1500000, 'https://orangemagazine.ph/wp-content/uploads/2019/09/AirAsia.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `username` char(100) NOT NULL,
  `password` char(100) NOT NULL,
  `email` char(100) NOT NULL,
  `NIK` varchar(100) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama_pelanggan`, `username`, `password`, `email`, `NIK`, `role`) VALUES
(5, 'Saskia Bayudjati', 'Saskia', '$2y$10$RwVD2WL0tW8lUoiNhgVJ6usy3sGXdGTVUUaMdb65RwOZl07G15unS', 'saskiadjati@gmail.com', '3174095111060008', 'user'),
(6, 'Saskia Bayudjati', 'saskiadjati@gmail.com', '$2y$10$nXyB2TIwxTtOfaRBj3GStO65fVNyptEgrZgM6BKgYU52ycS92Scwa', 'saskiadjati@gmail.com', '3174095111060008', 'admin'),
(7, 'Saskia Bayudjati', 'syahladwiagustiyani@gmail.com', '$2y$10$1H3IhByE.AW/kVGgat3iU.UKkoLpWGSb82G67MC4rMfM.a1sVn.fa', 'syahladwiagustiyani22@gmail.com', '3174095111060008', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` char(100) NOT NULL,
  `airline` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departure_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `destination_city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `flight_time` datetime NOT NULL,
  `visa` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ticket_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `seat_number` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `account_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payment_proof` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delete_id` tinyint(1) DEFAULT '0',
  `status` enum('pending','success','success, please check your email') NOT NULL,
  `tiket_pesawat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `name`, `phone`, `email`, `airline`, `departure_city`, `destination_city`, `flight_time`, `visa`, `ticket_type`, `total_price`, `seat_number`, `payment_method`, `account_number`, `payment_proof`, `created_at`, `updated_at`, `delete_id`, `status`, `tiket_pesawat`) VALUES
(43, 'syahla dwi agustiyani', '089673796953', 'syahladwiagustiyani22@gmail.com', 'Garuda Indonesia', 'Jakarta', 'Bali', '2025-02-21 12:00:00', '1123456787', 'vip', '7500000.00', 'A2', 'Mandiri', '555-666-7777', 'PIXECT-20250202213224.jpg', '2025-02-10 06:51:09', '2025-02-10 06:51:09', 0, 'pending', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
