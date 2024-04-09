-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2024 at 06:06 AM
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
-- Database: `app_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_crud`
--

CREATE TABLE `app_crud` (
  `id` bigint UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `image`, `address`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Prof. Dakota McClure', 'kiera.hintz@sporer.org', '+1-434-507-4157', '0', '2578 Orland Mountain\nErlingshire, UT 37846', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 29),
(2, 'Scotty Labadie PhD', 'vance46@renner.net', '657.468.5649', '0', '207 Littel Walk\nPort Domenicatown, VT 60661-8429', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 18),
(3, 'Kaia Lynch', 'kareem09@gmail.com', '+1.386.393.2254', 'b6878447336960b0373904d12a707339.png', '20598 Becker Landing Suite 979\nHartmannmouth, MN 11991', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 19),
(4, 'Sibyl Aufderhar DVM', 'bwuckert@wuckert.info', '89787687', '1712573769.jpg', '851 Doyle Parkways Apt. 619Lake Justenstad, KS 63930-9730', '2024-04-08 04:50:13', '2024-04-08 05:26:09', 23),
(5, 'Emery Lubowitz', 'jlang@wisoky.biz', '1-760-400-0707', '0', '2388 Joan Vista Suite 008\nAdamsbury, NM 90518', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 21),
(6, 'Bobbie Bayer', 'keenan.ferry@roob.info', '+1.949.692.2798', '0', '49581 Kuhn Drives Suite 993\nSouth Lela, RI 01002', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 26),
(7, 'Eliza O\'Conner', 'pearl95@hotmail.com', '1-220-414-5453', 'db420a7982a8e14f599f577ec7ebcf18.png', '641 Laury Point\nMillerside, MD 68760-8218', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 20),
(8, 'Cleta Hodkiewicz', 'favian.schoen@kulas.com', '+1.678.678.2135', 'ad2f9f31f47d7250bda0cf59e9282ebd.png', '33129 Yadira Green Apt. 876\nNorth Cornellchester, MN 76036', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 19),
(9, 'Kamille Johnson', 'mia.rau@beahan.com', '480-430-6596', '7a558ad375b24d65c668cd4975ef300e.png', '2237 Stephan Lodge Apt. 826\nBechtelarmouth, ME 08433-4378', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 24),
(10, 'Casimer Hammes', 'gottlieb.darius@cummings.org', '(930) 874-9404', '0338e5df3f7593ba78efede98b45300a.png', '23564 Erwin Village Suite 391\nEast Janessa, MD 71159-3807', '2024-04-08 04:50:13', '2024-04-08 04:50:13', 18),
(11, 'Ankit Yadav', 'ankityadavdc@gmail.com', '09140088783', '1712595399.jpg', 'Maya nagar colony,Kasabad, Rani ki sarai', '2024-04-08 11:26:39', '2024-04-08 11:26:39', 20),
(12, 'nirmal', 'nimmu@gmail.com', '0998787098', '1712595487.jpg', 'mohali', '2024-04-08 11:28:07', '2024-04-08 11:28:07', 20),
(13, 'rinku', 'rk@gmail.com', '9868767890', '1712595518.jpg', 'mizoram', '2024-04-08 11:28:38', '2024-04-08 11:28:38', 20),
(14, 'kkkk', 'king@gmail.com', '985897345', 'C:\\Users\\HP\\AppData\\Local\\Temp\\phpB61A.tmp', 'ndffjebf', '2024-04-08 11:29:14', '2024-04-09 00:35:13', 20),
(15, 'Ankit Yadav', 'ankityadavdc@gmail.com', '09140088783', '1712639380.jpg', 'Maya nagar colony,Kasabad, Rani ki sarai', '2024-04-08 23:38:28', '2024-04-08 23:39:40', 20);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_29_045356_create_app_crud_table', 2),
(6, '2024_03_29_052440_create_students_table', 3),
(7, '2024_03_29_063604_alter_students_table', 4),
(8, '2024_04_03_100643_alter_students_table', 5),
(9, '2024_04_03_101144_alter_students_table', 6),
(10, '2024_04_03_101355_alter_students_table', 7),
(11, '2024_04_03_181313_create_contact_table', 8),
(12, '2024_04_03_182155_alter_contact_table', 9),
(13, '2024_04_04_073341_alter_contact_table', 9),
(14, '2024_04_08_080257_alter_students_table', 10),
(15, '2024_04_08_084620_alter_contacts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `phone`, `f_name`, `m_name`, `image`, `b_group`, `created_at`, `updated_at`) VALUES
(18, 'kkk', 'jee@gmail.com', '0021', '877878454454', 'mndf', ',maef', NULL, 'ab+', '2024-04-03 05:19:25', '2024-04-03 05:19:25'),
(19, 'ppp', 'pk@gmail.com', '8754', '15649846132', ',mf', 'kla', NULL, 'a+', '2024-04-03 05:19:53', '2024-04-03 05:19:53'),
(20, 'swami', 'sy@gmail.com', '5478', '32654822132164', 'fkjn', 'nerf', NULL, 'ab+', '2024-04-03 05:20:17', '2024-04-03 05:20:17'),
(21, 'joiefj', 'ms@gmail.com', '2132', '785321321321', 'uty', 'kjhsf', NULL, 'ab+', '2024-04-03 05:20:43', '2024-04-03 05:20:43'),
(22, 'Ankit Yadav', 'ankityadavdc@gmail.com', '5421', '09140088783', '.,mdsf', 'jkanfjk', NULL, 'ab-', '2024-04-03 05:21:19', '2024-04-03 05:21:19'),
(23, 'Amit Yadav', 'dk@gmail.com', '4555', '9140088783', 'kldf', 'mlknef', NULL, 'ab+', '2024-04-03 05:21:54', '2024-04-03 05:21:54'),
(24, 'berlin', 'bro@gmail.com', '1254', '8996613212311', 'krishna', 'k.efm', NULL, 'a+', '2024-04-03 05:22:49', '2024-04-03 05:22:49'),
(25, 'kaku', 'yyyu@gmail.com', '3333', '89553213231', 'Ankit', 'dfbf', NULL, 'a+', '2024-04-03 08:40:27', '2024-04-03 09:01:00'),
(26, 'kikia', 'king@gmail.com', '1114', '09140088783', 'lllaka', 'k.efm', NULL, 'ab+', '2024-04-04 05:30:24', '2024-04-04 05:30:24'),
(27, 'kad', 'kad@gmail.com', '00009', '89458945', 'kaka', 'radha', NULL, 'ab+', '2024-04-08 02:28:54', '2024-04-08 02:28:54'),
(29, 'jj', 'jio@gmail.com', '0008', '09999879878', 'amit', 'mn', '1712563995.jpg', 'ab+', '2024-04-08 02:43:15', '2024-04-08 02:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_crud`
--
ALTER TABLE `app_crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `app_crud`
--
ALTER TABLE `app_crud`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
