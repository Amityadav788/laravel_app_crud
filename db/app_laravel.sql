-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2024 at 04:56 PM
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Ankit Yadav', 'officialankit1998@gmail.com', '09140088783', 'New Hargobind Nagar, Backside Hero steel', '2024-04-04 02:49:02', '2024-04-04 02:49:02', 20),
(2, 'vikas kumar', 'vk@gmail.com', '980898778', 'Chak sethwal, Rani ki sarai', '2024-04-04 02:49:40', '2024-04-04 02:49:40', 20),
(3, 'haleloea', 'yu@gmail.com', '48787879548', 'New Hargobind Nagar, Backside Hero steel', '2024-04-04 02:51:03', '2024-04-04 04:18:38', 21),
(8, 'nikolas', 'niik@gmail.com', '879877867', 'mdtv', '2024-04-04 04:19:32', '2024-04-04 04:19:32', 21),
(9, 'kjdfjf', 'legends@inlnww', '897656687879', 'model town', '2024-04-04 04:20:41', '2024-04-04 04:20:41', 21),
(10, 'Amit Yadav', 'officialankit1998@gmail.com', '9140088783', 'Chak sethwal, Rani ki sarai', '2024-04-04 04:47:40', '2024-04-04 04:47:40', 21),
(11, 'Ankit Yadav', 'ankityadavdc@gmail.com', '09140088783', 'Maya nagar colony,Kasabad, Rani ki sarai', '2024-04-04 05:32:26', '2024-04-04 05:32:26', 20),
(14, 'khushi', 'ks@gmail.coms', '809989889809', 'moti nagar', '2024-04-04 09:46:40', '2024-04-04 09:46:40', 20),
(15, 'tarun', 'tm@gmail.com', '8978767789', 'HARGOBIND NAGAR', '2024-04-04 10:12:27', '2024-04-04 10:12:27', 20),
(16, 'dhiru', 'da@gmail.com', '87989787987', 'mumbai', '2024-04-04 22:08:51', '2024-04-04 22:08:51', 23),
(17, 'mintu', 'my@gmail.com', '908898989', 'delhi', '2024-04-04 22:19:38', '2024-04-04 22:19:38', 23),
(18, 'chikku', 'ck@gmail.com', '98898987879', 'model tower', '2024-04-04 22:35:49', '2024-04-04 22:35:49', 20),
(19, 'Ankit Yadav', 'ankityadavdc@gmail.com', '09140088783', 'Maya nagar colony,Kasabad, Rani ki sarai', '2024-04-04 22:59:34', '2024-04-04 22:59:34', 20),
(20, 'kapu', 'ks@gmail.com', '879879879879', 'model town', '2024-04-04 23:01:49', '2024-04-04 23:01:49', 20),
(21, 'giaan', 'gc@gmail.com', '9889897877', 'model town', '2024-04-04 23:18:10', '2024-04-04 23:18:10', 20),
(22, 'Amit Yadav', 'officialankit1998@gmail.com', '9140088783', 'Chak sethwal, Rani ki sarai', '2024-04-04 23:44:32', '2024-04-04 23:44:32', 20),
(24, 'pk', 'pk@gmail.com', '980980569', 'HARGOBIND NAGAR', '2024-04-04 23:46:42', '2024-04-04 23:46:42', 20),
(25, 'kapil', 'ks@gmail.com', '98787987789', 'HARGOBIND NAGAR', '2024-04-05 00:07:26', '2024-04-05 00:07:26', 20),
(34, 'Amit Yadav', 'officialankit1998@gmail.com', '9140088783', 'Chak sethwal, Rani ki sarai', '2024-04-05 09:51:12', '2024-04-05 09:51:12', 23);

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
(13, '2024_04_04_073341_alter_contact_table', 9);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `phone`, `f_name`, `m_name`, `b_group`, `created_at`, `updated_at`) VALUES
(18, 'kkk', 'jee@gmail.com', '0021', '877878454454', 'mndf', ',maef', 'ab+', '2024-04-03 05:19:25', '2024-04-03 05:19:25'),
(19, 'ppp', 'pk@gmail.com', '8754', '15649846132', ',mf', 'kla', 'a+', '2024-04-03 05:19:53', '2024-04-03 05:19:53'),
(20, 'swami', 'sy@gmail.com', '5478', '32654822132164', 'fkjn', 'nerf', 'ab+', '2024-04-03 05:20:17', '2024-04-03 05:20:17'),
(21, 'joiefj', 'ms@gmail.com', '2132', '785321321321', 'uty', 'kjhsf', 'ab+', '2024-04-03 05:20:43', '2024-04-03 05:20:43'),
(22, 'Ankit Yadav', 'ankityadavdc@gmail.com', '5421', '09140088783', '.,mdsf', 'jkanfjk', 'ab-', '2024-04-03 05:21:19', '2024-04-03 05:21:19'),
(23, 'Amit Yadav', 'dk@gmail.com', '4555', '9140088783', 'kldf', 'mlknef', 'ab+', '2024-04-03 05:21:54', '2024-04-03 05:21:54'),
(24, 'berlin', 'bro@gmail.com', '1254', '8996613212311', 'krishna', 'k.efm', 'a+', '2024-04-03 05:22:49', '2024-04-03 05:22:49'),
(25, 'kaku', 'yyyu@gmail.com', '3333', '89553213231', 'Ankit', 'dfbf', 'a+', '2024-04-03 08:40:27', '2024-04-03 09:01:00'),
(26, 'kikia', 'king@gmail.com', '1114', '09140088783', 'lllaka', 'k.efm', 'ab+', '2024-04-04 05:30:24', '2024-04-04 05:30:24');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
