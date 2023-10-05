-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 07:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', 'adidas', 1, '2023-10-02 13:50:02', '2023-10-02 13:50:02'),
(2, 'Adidas68090000', 'adidas68090000', 0, '2023-10-02 14:50:31', '2023-10-02 14:50:31'),
(3, 'Adidas68090000', 'adidas68090000', 1, '2023-10-05 11:26:59', '2023-10-05 11:26:59'),
(4, 'Adidas6809000067899', 'adidas6809000067899', 1, '2023-10-05 11:27:10', '2023-10-05 11:27:10'),
(5, 'Adidas68090000123', 'adidas68090000123', 0, '2023-10-05 11:38:17', '2023-10-05 11:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Watch', 'watch', NULL, 0, '2023-09-09 00:13:18', '2023-09-09 00:13:18'),
(7, 'Faustino Effertz', 'Terry Braun', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(8, 'Glenda Bins', 'Lue Haley', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(9, 'Ms. Aryanna Dach', 'Dedrick Bashirian', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(10, 'Prof. Freddy Swift MD', 'Kobe Brown', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(11, 'Ricky Powlowski', 'Miss Katharina Frami', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(12, 'Wade Shanahan Sr.', 'Winston Turner Sr.', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(13, 'Meghan Ziemann', 'Raoul Konopelski', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(14, 'Ruthie Botsford', 'Mrs. Evie Mante I', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(15, 'Miss Melody Armstrong DVM', 'Dr. Josue Miller DDS', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(16, 'Miss Emely McClure DDS', 'Prof. Ashly Hagenes I', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(17, 'Georgianna Nader', 'Minerva Crist', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(18, 'Prof. Makenna Padberg', 'Isac Hane', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(19, 'Ms. Reva Weimann Sr.', 'Bertha Rippin', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(20, 'Jaquelin Durgan', 'Mrs. Evalyn Kling II', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(21, 'Alycia Johnson', 'Trevor O\'Conner II', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(22, 'Alexandre Reinger DDS', 'Ms. Julie Shields V', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(23, 'Mrs. Mireille Walter III', 'Julian Terry', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(24, 'Lexi Donnelly', 'Yasmeen Anderson PhD', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(25, 'Alberta Brown', 'Imogene Zulauf PhD', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(26, 'Ms. Eryn Kassulke III', 'Mr. Wiley Hudson', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(27, 'Quinten Volkman IV', 'Louisa Hessel', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(28, 'Jerod Romaguera', 'Nyah Zieme', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(29, 'Nigel Rodriguez PhD', 'Otto Greenholt', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(30, 'Monty Klocko', 'Forest Towne', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(31, 'Therese Nader III', 'Rosetta Toy DDS', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(32, 'Elvie Williamson', 'Mr. Floyd Nolan III', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(33, 'Mekhi Legros III', 'Dr. Rosina Windler', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(34, 'Brennan Erdman', 'Mrs. Bernice Sanford III', NULL, 0, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(35, 'Mr. Ismael Mante MD', 'Orville Beatty', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(36, 'Dixie Klein', 'Maya Durgan Jr.', NULL, 1, '2023-09-09 11:05:15', '2023-09-09 11:05:15'),
(37, 'Shirts', 'shirts', NULL, 1, '2023-09-09 11:49:36', '2023-09-09 11:49:36'),
(38, 'Toothpaste', 'toothpaste', NULL, 0, '2023-09-14 06:38:12', '2023-09-14 06:38:12'),
(39, 'Toothpaste123', 'toothpaste123', NULL, 0, '2023-09-14 07:05:33', '2023-09-14 07:05:33'),
(40, 'Bottles', 'bottles', '40.jpg', 1, '2023-09-14 07:09:06', '2023-09-14 07:09:06'),
(41, 'Testcat', 'testcat', NULL, 1, '2023-09-15 09:19:21', '2023-09-15 09:19:21'),
(42, 'Test_2', 'test-2', NULL, 1, '2023-09-15 10:11:35', '2023-09-15 10:11:35'),
(43, 'CSCA', 'csca', NULL, 0, '2023-09-15 10:16:10', '2023-09-15 10:16:10'),
(44, 'Kavishka1234', 'kavishka1234', NULL, 0, '2023-09-15 12:09:10', '2023-09-15 12:09:10'),
(45, 'Kavishka11', 'kavishka11', '45.png', 1, '2023-09-15 12:16:07', '2023-09-15 12:16:07'),
(46, 'Test_3_d_2', 'test-3-d-2', '46.png', 0, '2023-09-16 09:26:19', '2023-09-16 09:26:19'),
(47, 'Kavishkatest56', 'kavishkatest56', NULL, 0, '2023-09-16 09:32:52', '2023-09-16 09:32:52'),
(49, 'Test567', 'test567', NULL, 0, '2023-09-16 09:34:32', '2023-09-16 09:34:32'),
(50, 'Adidas567', 'adidas567', NULL, 1, '2023-09-16 09:37:01', '2023-09-16 09:37:01'),
(51, 'Kavishkajkl', 'kavishkajkl', NULL, 1, '2023-09-16 09:37:50', '2023-09-16 09:37:50'),
(52, 'Kavishka23456', 'kavishka23456', NULL, 0, '2023-09-16 09:42:45', '2023-09-16 09:42:45'),
(53, 'Kavishka567', 'kavishka567', NULL, 0, '2023-09-16 09:44:03', '2023-09-16 09:44:03'),
(54, 'Test7', 'test7', NULL, 0, '2023-09-16 09:45:13', '2023-09-16 09:45:13'),
(55, 'CSCA7890', 'csca7890', NULL, 1, '2023-09-16 09:47:35', '2023-09-16 09:47:35'),
(56, 'Kavishkaer', 'kavishkaer', NULL, 1, '2023-09-16 09:51:13', '2023-09-16 09:51:13'),
(58, 'Kavishkanm', 'kavishkanm', NULL, 0, '2023-09-16 10:06:23', '2023-09-16 10:06:23'),
(59, 'Kavishka12345556', 'kavishka12345556', NULL, 1, '2023-09-16 10:07:41', '2023-09-16 10:07:41'),
(60, 'Test_success2', 'test-success2', '60-1695104278.png', 1, '2023-09-16 10:12:39', '2023-09-19 00:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_01_105918_alter_users_table', 2),
(6, '2023_09_08_050624_create_categories_table', 3),
(7, '2023_09_14_115727_create_temp_images_table', 4),
(8, '2023_09_22_144130_create_products_table', 5),
(9, '2023_09_22_144654_create_products_images_table', 5),
(10, '2023_09_25_041005_create_sub_categories_table', 6),
(11, '2023_09_30_083734_alter_users_table', 7),
(12, '2023_10_02_143238_create_brands_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'No',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1694693855.jpg', '2023-09-14 06:47:35', '2023-09-14 06:47:35'),
(2, '1694694924.jpg', '2023-09-14 07:05:24', '2023-09-14 07:05:24'),
(3, '1694695142.jpg', '2023-09-14 07:09:02', '2023-09-14 07:09:02'),
(4, '1694789360.png', '2023-09-15 09:19:20', '2023-09-15 09:19:20'),
(5, '1694789407.png', '2023-09-15 09:20:07', '2023-09-15 09:20:07'),
(6, '1694792493.gif', '2023-09-15 10:11:33', '2023-09-15 10:11:33'),
(7, '1694792766.png', '2023-09-15 10:16:06', '2023-09-15 10:16:06'),
(8, '1694799546.png', '2023-09-15 12:09:06', '2023-09-15 12:09:06'),
(9, '1694799965.png', '2023-09-15 12:16:05', '2023-09-15 12:16:05'),
(10, '1694876175.png', '2023-09-16 09:26:15', '2023-09-16 09:26:15'),
(11, '1694876568.gif', '2023-09-16 09:32:48', '2023-09-16 09:32:48'),
(12, '1694876606.jpg', '2023-09-16 09:33:26', '2023-09-16 09:33:26'),
(13, '1694876621.png', '2023-09-16 09:33:41', '2023-09-16 09:33:41'),
(14, '1694876669.png', '2023-09-16 09:34:29', '2023-09-16 09:34:29'),
(15, '1694876818.png', '2023-09-16 09:36:58', '2023-09-16 09:36:58'),
(16, '1694876869.png', '2023-09-16 09:37:49', '2023-09-16 09:37:49'),
(17, '1694877163.jpg', '2023-09-16 09:42:43', '2023-09-16 09:42:43'),
(18, '1694877241.jpeg', '2023-09-16 09:44:01', '2023-09-16 09:44:01'),
(19, '1694877311.png', '2023-09-16 09:45:11', '2023-09-16 09:45:11'),
(20, '1694877451.png', '2023-09-16 09:47:31', '2023-09-16 09:47:31'),
(21, '1694877672.png', '2023-09-16 09:51:12', '2023-09-16 09:51:12'),
(22, '1694877779.jpg', '2023-09-16 09:52:59', '2023-09-16 09:52:59'),
(23, '1694878581.png', '2023-09-16 10:06:21', '2023-09-16 10:06:21'),
(24, '1694878659.jpeg', '2023-09-16 10:07:39', '2023-09-16 10:07:39'),
(25, '1694878955.png', '2023-09-16 10:12:35', '2023-09-16 10:12:35'),
(26, '1695103679.jpg', '2023-09-19 00:37:59', '2023-09-19 00:37:59'),
(27, '1695104265.png', '2023-09-19 00:47:45', '2023-09-19 00:47:45'),
(28, '1695104272.png', '2023-09-19 00:47:52', '2023-09-19 00:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, 1, NULL, '$2y$10$0RAKQX7Kkj0M0gM7CG9V3O1Ijdx6hePgp1.b6ywJCAkupkprtjSIO', NULL, '2023-09-01 05:42:27', '2023-09-01 05:42:27'),
(2, 'Admin2', 'admin2@example.com', NULL, 1, NULL, '$2y$10$vN/MqngudKeE6v0swP26/u1z5lIdjweQMv7D4Lnp9BwbffIGdSZPW', NULL, '2023-09-01 05:44:55', '2023-09-01 05:44:55'),
(3, 'BatMan', 'Batman@example.com', NULL, 1, NULL, '$2y$10$pLTDheecET9bKepWLRK0oOIWWKLpspktv2GitqV49z4LgXby8w9MS', NULL, '2023-09-30 03:36:50', '2023-09-30 03:36:50'),
(4, 'Superman', 'superman@example.com', NULL, 1, NULL, '$2y$10$m1itTk5/fMt2II.ckAriq./WOpB28krIi8Ug6u2B5wpcFAboT7R1e', NULL, '2023-09-30 03:45:56', '2023-09-30 03:45:56'),
(5, 'Kavishka', 'Bata@gmail.com', '0777000000', 1, NULL, '$2y$10$yQJZlc4n56.nlMVa1uQoqufccETjQGm3HB4/Xf7G0NJ2tlzsRQHLy', NULL, '2023-10-02 03:21:06', '2023-10-02 03:21:06'),
(6, 'Kavishkaek', 'Bata2@gmail.com', '920938093320', 1, NULL, '$2y$10$8WsCgTJEWCIYODIIPPkl9Oi4rvwOlNd1/UDuYSdr6HAkL5FsXOlFS', NULL, '2023-10-04 08:23:36', '2023-10-04 08:23:36'),
(7, 'Kavishka3', 'Bata3@gmail.com', '0777000000', 1, NULL, '$2y$10$iNN1Tguk51YPBRqw13CMP.O5SN1AFgzPRhhN0ZPt747TNKxaJ45WK', NULL, '2023-10-04 08:28:34', '2023-10-04 08:28:34'),
(8, 'KavishkaEk', 'kavishkaekanayake20@gmail.com', '0777000000', 0, NULL, '$2y$10$evdDd5UHmTBFOxqVLjRYPe9JBLoonhFRqaDpfPBppDdOKqoE37pLO', NULL, '2023-10-04 14:10:09', '2023-10-04 14:10:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_images`
--
ALTER TABLE `products_images`
  ADD CONSTRAINT `products_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
