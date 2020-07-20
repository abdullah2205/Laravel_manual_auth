-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 21, 2020 at 05:37 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.2.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_servis`
--

CREATE TABLE `log_servis` (
  `id_servis` varchar(30) NOT NULL,
  `nama_pelanggan` varchar(30) DEFAULT NULL,
  `jenis_perangkat` varchar(30) DEFAULT NULL,
  `merk_perangkat` varchar(30) DEFAULT NULL,
  `tipe_perangkat` varchar(30) DEFAULT NULL,
  `kerusakan` varchar(30) DEFAULT NULL,
  `tanggal_masuk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_servis`
--

INSERT INTO `log_servis` (`id_servis`, `nama_pelanggan`, `jenis_perangkat`, `merk_perangkat`, `tipe_perangkat`, `kerusakan`, `tanggal_masuk`) VALUES
('svc002', 'Irgi', 'Modem', 'd', 'kiko', 'mati', '2020-01-23'),
('svc003', 'Syifa', 'Laptop', 'd', 'kiko', 'mati', '2020-02-04'),
('svc004', 'Syifad', 'PC', 'd', 'kiko', 'mati', '2020-03-06'),
('svc005', 'aSyifad', 'PC', 'd', 'kiko', 'mati', '2020-03-13'),
('svc006', 'Bagus', 'Komputer', 'Asus', 'ROG', 'Mati', '2020-03-23'),
('svc007', 'Naufal', 'Pc', 'HP', '14-xs78-da', 'Tidak bisa charger', '2020-04-01'),
('svc008', 'Dani', 'PC', 'd', 'kiko', 'mati', '2020-04-11'),
('svc009', 'Shella', 'PC', 'ASUS', 'ROG', 'mati', '2020-04-15'),
('svc010', 'Ahmad', 'Laptop', 'Lenovo', 'Lv-998-yu2', 'Bluescreen', '2020-04-16'),
('svc011', 'Reza', 'Laptop', 'Lenovo', 'Lv-998-yu3', 'Bluescreen', '2020-04-20'),
('svc012', 'Marina', 'Laptop', 'Asus', '14-as990-db', 'Suara tidak keluar', '2020-05-02'),
('svc013', 'Rendi', 'Komputer', 'Asus', '14-as911-db', 'Tampilan tidak keluar', '2020-05-05'),
('svc014', 'Cahyo', 'Laptop', 'Dell', '14-dl908-77yu', 'Ganti pasta prosesor', '2020-06-05'),
('svc015', 'Cahyo', 'Usb Wifi', 'Tp-Link', 'wf90-334d', 'Wifi Tidak bisa nyambung', '2020-06-10'),
('svc016', 'Putra', 'Laptop', 'Lenovo', 'Ideapad c340', 'Touchpad tidak bisa', '2020-06-11'),
('svc017', 'jj jj', 'q', 'q', 'q', 'q', '2020-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Muhammad Abdullah', 'ma22052000@gmail.com', NULL, '$2y$10$fz2/8DFHP8pyXt4aKvZKwegFbktHLpuFr5lKNuqfIxejsFiiH2jZO', NULL, '2020-07-18 06:25:18', '2020-07-18 06:25:18'),
(12, 'ahmad', 'ahmad@gmail.com', NULL, '$2y$10$x10BUg2Cxn.CPBnonDYMIOm2gTDTm3F9LrKyxvI9lWzJinPmb8Nru', NULL, '2020-07-19 15:48:44', '2020-07-19 15:48:44'),
(13, 'rina', 'rina@gmail.com', NULL, '$2y$10$86Qg9KWMss41pc1AoLh8t.T18qNOzQ7VOjQtjeaiJG0syXLSoPFtW', NULL, '2020-07-19 15:53:17', '2020-07-19 15:53:17'),
(14, 'irgi', 'irgi@gmail.com', NULL, '$2y$10$GA/Ok2U3q8eqqxqu0GvYfuxvuB79chWbsUdsOq8jErZe1S8tZ8dvS', NULL, '2020-07-19 16:44:45', '2020-07-19 16:44:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_servis`
--
ALTER TABLE `log_servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
