-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 01:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `05_querybuiler`
--
CREATE DATABASE IF NOT EXISTS `05_querybuiler` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `05_querybuiler`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Adell Witting', 'goodwin.stanton@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nzTt0k9kDX', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(2, 'Randy Ortn', 'reichert.ruben@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LhENF9vueZ', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(3, 'Olga Harber', 'waters.kane@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RYGslpa9Wm', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(4, 'Bobbie Flatley II', 'madeline.goldner@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E5lqQsr8NL', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(5, 'Margaret Crooks', 'uzieme@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I3NcMwLiBg', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(6, 'Prof. Margaret Fadel Jr.', 'reichert.elmo@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aUNbKjJxAf', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(7, 'Miss Kylie Harris PhD', 'reyes.mann@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TMCHRTHc3E', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(8, 'Prof. Victor Veum', 'howe.arch@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sAiI0GBRlf', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(9, 'Alysha Davis', 'estanton@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lIplr4qymc', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(10, 'Terrence Jacobs', 'kunde.noah@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IXyvFcWA9E', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(11, 'Dr. Shanon Hudson', 'roberta70@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MMR73SHCF3', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(12, 'Dr. Kelsie Hilpert PhD', 'opacocha@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ylqMRxdGHX', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(13, 'Adah Volkman', 'hayes.jany@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zPVI1vGVT7', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(14, 'Christophe Hyatt', 'schneider.angelita@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5OfCAieZeF', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(15, 'Deangelo Fisher', 'robel.jaquelin@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y1aBENGtgm', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(16, 'Mr. Frederik Rempel', 'ortiz.wilma@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VvXSKfJjOf', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(17, 'Ms. Amya Ferry', 'jordan44@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2rdYGi4HQR', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(18, 'Kianna Rippin', 'dbaumbach@example.com', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4tiuSBe10o', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(19, 'Sven Jerde', 'fredrick85@example.net', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ogUzhpGrHx', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(20, 'Emely Christiansen', 'alivia11@example.org', '2022-03-21 10:36:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nVeL8g8vPn', '2022-03-21 10:36:07', '2022-03-21 10:36:07'),
(21, 'mohamedazmy', 'mohamed@gmail.com', NULL, 'azmy12345678910', NULL, NULL, NULL),
(22, 'wifeofazmy', 'azmywife@gmail.com', NULL, '$2y$10$58Pfi5GBuTE84Ia4XOQ59uTAek0.aAMPSAK9K.5cQnH0KRmkkuE7.', NULL, NULL, NULL),
(23, 'Johnny Depp', 'johnydep@gmail.com', NULL, '$2y$10$lJrVSS9S25y4xSGvYjAgvek8V7kU0vPKK4MSsilBNSPJZDJDOWJmq', NULL, NULL, NULL),
(25, 'Marko Ferrati', 'markoferttin@gmail.com', NULL, '$2y$10$Yvbp8HijcZIflXWEfqut0eA.GpXGEnSJm/f6uaOvXVsfPcI0OkXkq', NULL, NULL, NULL),
(27, 'Wael Jasser', 'waelJasser@gmail.com', NULL, '$2y$10$DNMh12Q2u0587exI.5HqReu0dAJDMNPK6KFHxX7UK7rMMsnjWTUMa', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Database: `06_eloquent`
--
CREATE DATABASE IF NOT EXISTS `06_eloquent` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `06_eloquent`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2022_04_01_112319_create_posts_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'sadfgdas', 'asdgags', '2022-05-04 15:30:23', '2022-04-09 08:39:31', '2022-05-04 15:30:23'),
(5, 'Randa', 'Randa', NULL, '2022-04-09 08:39:36', '2022-05-04 15:28:25'),
(8, 'Azmy', 'Azmy', NULL, '2022-05-04 12:11:15', '2022-05-04 15:28:25'),
(9, 'Azmy', 'Azmy', NULL, '2022-05-04 12:14:28', '2022-05-04 15:28:25');

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
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `08_relationship`
--
CREATE DATABASE IF NOT EXISTS `08_relationship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `08_relationship`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'I visited Cairo', 1, NULL, NULL),
(2, 'I visited Alex', 2, NULL, NULL),
(3, 'adsfafs', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_13_181706_create_phones_table', 1),
(8, '2022_04_13_191924_create_posts_table', 2),
(9, '2022_04_13_192046_create_comments_table', 2),
(10, '2022_04_14_114321_create_roles_table', 3),
(13, '2022_04_14_115409_create_user_role_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `number`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '01113501487', 1, NULL, NULL),
(2, '01113501488', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `posts`, `created_at`, `updated_at`) VALUES
(1, 'Cairo ', NULL, NULL),
(2, 'Alex', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'super_admin', NULL, NULL),
(3, 'user', NULL, NULL);

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
(1, 'mohamed azmy', 'mohamed azmy', NULL, '', NULL, NULL, NULL),
(5, 'randa', 'randa', NULL, 'randa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 2),
(2, 1, 2),
(3, 5, 3),
(4, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `09-polymorphic_relationship`
--
CREATE DATABASE IF NOT EXISTS `09-polymorphic_relationship` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `09-polymorphic_relationship`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'laravel is a framword', 1, 'App\\Models\\Post', NULL, NULL),
(2, 'MVC is Modle view Controller', 2, 'App\\Models\\Post', NULL, NULL),
(3, 'Your Laravel Video Is Great', 1, 'App\\Models\\Video', NULL, NULL),
(4, 'Your MVC Video Is Great', 2, 'App\\Models\\Video', NULL, NULL),
(5, 'what a good video', 1, 'App\\Models\\Video', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'randa.png', 2, 'App\\Models\\User', NULL, NULL),
(2, 'mohamed.png', 1, 'App\\Models\\User', NULL, NULL),
(3, 'laravel.png', 1, 'App\\Models\\Post', NULL, NULL),
(4, 'mvc.png', 2, 'App\\Models\\Post', NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_17_120220_create_posts_table', 1),
(6, '2022_04_17_120552_create_images_table', 1),
(7, '2022_04_17_140103_create_video_table', 2),
(8, '2022_04_17_140135_create_comments_table', 2),
(9, '2022_04_17_144657_create_tags_table', 3),
(10, '2022_04_17_144735_create_taggables_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'laravel', NULL, NULL),
(2, 'Mvc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HTML', NULL, NULL),
(2, 'CSS', NULL, NULL),
(3, 'JS', NULL, NULL),
(4, 'Bootstrap', NULL, NULL),
(5, 'MVC', NULL, NULL),
(6, 'Laravel', NULL, NULL);

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
(1, 'mohamed', 'mohamed@gmail.com', NULL, '', NULL, NULL, NULL),
(2, 'randa', 'randa@gmail.com', NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Introduction To laravel', NULL, NULL),
(2, 'Introduction To MVC', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `13_database_seeder`
--
CREATE DATABASE IF NOT EXISTS `13_database_seeder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `13_database_seeder`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `City_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `About` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`) VALUES
(1, 'lang.alfonzo@gmail.com'),
(2, 'sdietrich@hotmail.com'),
(3, 'eokuneva@hotmail.com'),
(4, 'johnson.crooks@gmail.com'),
(5, 'pbernhard@hotmail.com'),
(6, 'damore.monique@hickle.com'),
(7, 'qhermann@gmail.com'),
(8, 'hudson.kelsie@yahoo.com'),
(9, 'meggie.gusikowski@yahoo.com'),
(10, 'brady39@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_28_131413_create_posts_table', 1),
(6, '2022_05_07_113725_create_cities_table', 1),
(7, '2022_06_04_115504_create_names_table', 1),
(8, '2022_08_01_172213_create_tests_table', 1),
(9, '2022_09_04_184102_create_emails_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE `names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
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
-- Indexes for table `names`
--
ALTER TABLE `names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `names`
--
ALTER TABLE `names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `14_events_listeners`
--
CREATE DATABASE IF NOT EXISTS `14_events_listeners` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `14_events_listeners`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Mohamed Azmy', 'mohameda7my@yahoo.com', NULL, '$2y$10$Nx7C03M5cViGeScWHr7VXeoWUfHnjrT8BAUK/GZwB8x2WblPCeHvu', NULL, '2022-04-29 13:59:13', '2022-04-29 13:59:13');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `admin_control`
--
CREATE DATABASE IF NOT EXISTS `admin_control` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_control`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_21_222943_create_products_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `Product_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_Category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_Name`, `Product_Category`, `Product_Price`, `created_at`, `updated_at`) VALUES
(1, 'TV', 'Technology', '5000dddd', NULL, '2022-12-22 05:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', 'mohamed@yahoo.com', '$2y$10$Q7r01OMGz9VCUBjJIWwEWOIJknirHHVjS5u.mwYBa87mCrwzQ5IVG', '0', NULL, '2022-12-21 20:32:24', '2022-12-21 20:32:24'),
(2, 'azmy', 'azmy@gmail.com', '$2y$10$oukBP3ewaOMW6NSlgqVvZ.VtG363aYm4A/vmWR.BnHruLP3dVcRnK', '1', NULL, '2022-12-21 21:35:34', '2022-12-21 21:35:34'),
(3, 'noah', 'noah@gmail.com', '$2y$10$iLToj2bFp.G6PsPXP3Dfs.ij4odKS/JMsEDuGuGFjuQ6nOYvpWYF6', '0', NULL, '2022-12-22 04:46:00', '2022-12-22 04:46:00');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `amz`
--
CREATE DATABASE IF NOT EXISTS `amz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `amz`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Doctor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Id`, `Name`, `Doctor`) VALUES
(1, 'Biochemistry', 'Noah Mohamed'),
(3, 'Chemistry', 'Nour AbdElRahman'),
(4, 'Geology', 'REHAM'),
(2, 'Physics', 'Mohamed Mahmoud Azmy');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Id`, `Name`, `Department`) VALUES
(1, 'Mohamed Mahmoud Azmy', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `Name` varchar(330) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `Name`, `Department`) VALUES
(5, 'ALi Mubarak', 'Geology'),
(8, 'Aliaa Fathy', 'Chemistry'),
(4, 'Dlal Mohamed', 'Chemistry'),
(2, 'Fahmy Abd El hamid', 'physics'),
(6, 'Hussien EL Sayed', 'Geology'),
(1, 'Mohamed Azmy', 'Biochemistry'),
(9, 'Nadeen Edris', 'Physics'),
(3, 'Randy Ortn', 'Geology'),
(7, 'Reham Ahmed', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `student_vs_doctor`
--

CREATE TABLE `student_vs_doctor` (
  `Students` varchar(100) NOT NULL,
  `Doctors` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `Id` (`Id`),
  ADD UNIQUE KEY `Doctor` (`Doctor`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `Department` (`Department`),
  ADD KEY `Id` (`Id`) USING BTREE;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Department` (`Department`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `student_vs_doctor`
--
ALTER TABLE `student_vs_doctor`
  ADD KEY `Students` (`Students`),
  ADD KEY `Doctors` (`Doctors`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `department` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `department` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_vs_doctor`
--
ALTER TABLE `student_vs_doctor`
  ADD CONSTRAINT `student_vs_doctor_ibfk_1` FOREIGN KEY (`Doctors`) REFERENCES `doctor` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_vs_doctor_ibfk_2` FOREIGN KEY (`Students`) REFERENCES `student` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `api1`
--
CREATE DATABASE IF NOT EXISTS `api1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api1`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `Gender`, `created_at`, `updated_at`) VALUES
(4, 'fgag', 'sadfasdf', 'asdf', 'male', NULL, NULL),
(5, 'dfasdfasdf', '$request->email@gmail', '12212', 'male', '2022-08-10 19:06:09', '2022-08-10 19:06:09'),
(6, 'El Mahalla', 'adf', '232313141', 'male', '2022-08-13 09:16:14', '2022-08-13 09:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_07_145123_create_employee_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'sadf', 'asdf', NULL, 'asdf', 'sadf', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `api2`
--
CREATE DATABASE IF NOT EXISTS `api2` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `api2`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`) VALUES
(2, 'El Mahalla', '2022-08-13 09:07:32', '2022-08-13 09:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_11_120320_create_cities_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `api3`
--
CREATE DATABASE IF NOT EXISTS `api3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api3`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2022_08_15_163544_create_students_table', 1),
(12, '2022_08_15_163643_create_projects_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\Student', 3, 'auth_token', '10de4e04eadad39ef11b58e1568418916f70873729893506ed06586c48b52d8c', '[\"*\"]', NULL, NULL, '2022-08-16 10:12:51', '2022-08-16 10:12:51'),
(9, 'App\\Models\\Student', 4, 'auth_token', '71d9b23207a18e6fefeb3fef67e8016569d92c00ed344dbfed2ad51180257ec0', '[\"*\"]', '2022-08-18 10:04:44', NULL, '2022-08-17 10:40:21', '2022-08-18 10:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `student_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 4, 'asdf', 'adgda', '2022-08-17 10:44:02', '2022-08-17 10:44:02'),
(2, 4, 'wdfga', 'adsdgdfdfgda', '2022-08-18 08:42:18', '2022-08-18 08:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', 'mohamed@gmail.com', '$2y$10$n5AfBeRKKqQRnyoYGghGFu3NI7tXbn6jvrjUoApVsQLgAxjxl8.46', '2022-08-15 15:07:26', '2022-08-15 15:07:26'),
(3, 'azmy', 'azmy@gmail.com', '$2y$10$jmPydLY3XVpmPnvW113DTutcZLPNQcVuyyScwwmjreVRCwaqf6yJi', '2022-08-15 15:10:26', '2022-08-15 15:10:26'),
(4, 'noah', 'noah@gmail.com', '$2y$10$tVTp97jq4vYwYuACMTiy9egTcJm8rMA56vlLtsy6O0qYtZXoQyKw.', '2022-08-15 15:41:55', '2022-08-15 15:41:55');

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
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `api4`
--
CREATE DATABASE IF NOT EXISTS `api4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api4`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_23_163530_create_courses_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'auth_token', '649b0af5be429815e186b5049175e8561c381e2892b94655357f5c5e839375ab', '[\"*\"]', NULL, NULL, '2022-08-25 15:34:05', '2022-08-25 15:34:05'),
(2, 'App\\Models\\User', 3, 'auth_token', '7b2c9b46d9fe20df378c8e8f4dc9f9ef918bbc85a1ef305a9903937c7ce558b2', '[\"*\"]', NULL, NULL, '2022-08-25 15:34:16', '2022-08-25 15:34:16'),
(3, 'App\\Models\\User', 3, 'auth_token', '77377db3f0e27cf1bec3da6220c308d734943632fd91e525c012ced03931db80', '[\"*\"]', NULL, NULL, '2022-08-25 15:37:16', '2022-08-25 15:37:16'),
(4, 'App\\Models\\User', 3, 'auth_token', 'c2e7ef185e7bfb0f958ce17f445b8f5942dbcb5e2169b6d18e043805a6c13ce6', '[\"*\"]', NULL, NULL, '2022-08-25 15:38:23', '2022-08-25 15:38:23'),
(5, 'App\\Models\\User', 3, 'auth_token', 'c8468912de288389560722c87783ead77803e671e28b2da2d90d5238e33b2a46', '[\"*\"]', NULL, NULL, '2022-08-25 15:42:30', '2022-08-25 15:42:30'),
(6, 'App\\Models\\User', 3, 'auth_token', '6f2bcca8c1662a8c27b3e06d64b616539fdfbfd1ed3b2d54e2a78095b339d144', '[\"*\"]', NULL, NULL, '2022-08-25 15:43:42', '2022-08-25 15:43:42');

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
(1, 'mohamed', 'mohamed@gmail.com', NULL, '$2y$10$eR1zk4QkoiLA2ur0MwgDm./K8dTtSEpbLJwhSso/EJQ9ddeVnBlBG', NULL, '2022-08-24 17:18:32', '2022-08-24 17:18:32'),
(2, 'azmy', 'azmy@gmail.com', NULL, '$2y$10$mzM/NQJdSLQKJLDcynYFOuXskMK4uFySFGyu28MGB9ZZnLB.MJt46', NULL, '2022-08-24 17:20:06', '2022-08-24 17:20:06'),
(3, 'noah', 'noah@gmail.com', NULL, '$2y$10$plXZKqZX2ul9fFVhUJ6fqO/MHWxO9F.xHQOPwNL2rYHukxSSUbVRi', NULL, '2022-08-24 17:22:51', '2022-08-24 17:22:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `apiphase1`
--
CREATE DATABASE IF NOT EXISTS `apiphase1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `apiphase1`;
--
-- Database: `auth`
--
CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Wael Jasser', 'mohamed@gmail.com', NULL, '$2y$10$eW3IgzL6.McrROr2qgOlrOai7kh2..qw8CKaOZ4tEKubvzXf85ua2', NULL, '2022-09-08 16:47:20', '2022-09-08 16:47:20'),
(2, 'Azmy', 'azmy@gmail.com', NULL, '$2y$10$G23J.G3pS4iHRhxEs2puduIdJU02HH1lMVJAOqEBxmK6HMFcInTc2', NULL, '2022-09-10 16:42:59', '2022-09-10 16:42:59');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `auth1`
--
CREATE DATABASE IF NOT EXISTS `auth1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `auth_advanced`
--
CREATE DATABASE IF NOT EXISTS `auth_advanced` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth_advanced`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_18_092503_create_posts_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subject`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'Programming Language', 1, NULL, NULL),
(2, 'JS', 'Scripting Language', 2, NULL, NULL),
(3, 'C#', 'C# is a strong language', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Azmy', 'azmy@azmy.net', '$2y$10$YTqBl5nzaX6dgIyo23cvZ.kNkUfWDRAWHunxUUPXDxeMs8j/La3h6', 'admin', NULL, '2023-01-18 06:39:50', '2023-01-18 06:39:50'),
(2, 'Test Account', 'test@test.test', '$2y$10$8C4IN5TpQycdNkRKTxj1Vu7nCyZ.F3nWC3f5Z7GFOUYWteTmCZtOm', 'user', NULL, '2023-01-18 06:40:58', '2023-01-18 06:40:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `breeze`
--
CREATE DATABASE IF NOT EXISTS `breeze` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `breeze`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `test` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `active`, `test`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Azmy', 'mohameda7my@gmail.com', 0, 2, NULL, '$2y$10$L4RrnriD9ntXM7opKTCcJ.OKwEYwb0Lsh3ssUxAwXN6XUXHBWVNRa', NULL, '2022-05-17 10:23:48', '2022-05-17 10:23:48'),
(3, 'rahma', 'rahma@gmail.com', 1, 1, NULL, '$2y$10$ierVUd9Mo6LN7fT0b9VdresVRJaNSqDcuIa1y726Rxw3GPF5TMzk.', NULL, '2022-06-04 13:47:06', '2022-06-04 13:47:06');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `carpoint`
--
CREATE DATABASE IF NOT EXISTS `carpoint` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `carpoint`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Morshedul Arefin', 'admin@gmail.com', '+8801912721070', 'Bangladesh', 'Khulna', 'Khulna', 'Khulna', '9100', 'https://www.arefindev.com', 'https://www.facebook.com/groups/arefindev', NULL, 'https://www.linkedin.com/in/arefindev', NULL, NULL, 'https://www.youtube.com/channel/UCcfYd3bm-e_sLUK29abXb-A', '9ead0b550b7e8cb1fe5351e7893bea6c.jpg', 'bb9c875809f781b550ea063b73cda6f0.jpg', '$2y$10$idqmEK3TKgJ5.443UmLQGu1kFZmFcMfCxjfy3UgblIaMbNYkHAT7a', '', 'Active', NULL, '2022-09-11 01:00:34'),
(5, 'azmy\r\n', 'azmy@gmail.com', '12312412323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PJE3HmTEmeI3SXnkw4EItezkQ7b4p16q4XngaHpXviPvVJOn/IBtO', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenity_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenity_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenity_name`, `amenity_slug`, `created_at`, `updated_at`) VALUES
(1, 'Bluetooth', 'bluetooth', '2021-07-06 13:16:34', '2022-09-09 23:17:38'),
(2, 'Backup Camera', 'backup-camera', '2021-07-06 13:16:42', '2022-09-09 23:17:52'),
(3, 'Sunroof Availability', 'sunroof-availability', '2021-07-06 13:16:52', '2022-09-09 23:18:47'),
(4, 'Air Conditioning', 'air-conditioning', '2021-07-06 13:17:05', '2022-03-04 21:16:09'),
(5, 'USB Ports', 'usb-ports', '2021-07-06 13:18:07', '2022-09-09 23:19:20'),
(6, 'Speech Voice Recognition', 'speech-voice-recognition', '2021-07-06 13:18:25', '2022-09-09 23:19:45'),
(7, 'Blind Spot Monitoring', 'blind-spot-monitoring', '2021-07-06 13:18:43', '2022-09-09 23:20:07'),
(8, 'Cross Traffic Alert', 'cross-traffic-alert', '2021-07-06 13:18:52', '2022-09-09 23:20:28'),
(12, '360⁰ View Camera', '360-degree-view-camera', '2022-09-10 22:36:34', '2022-09-10 22:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content_short` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_show` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_content_short`, `post_photo`, `comment_show`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 8, 'Debitis consequuntur sea eu ex agam', 'debitis-consequuntur-sea-eu-ex-agam', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p>\r\n<p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p>\r\n<p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p>\r\n<p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p>\r\n<p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium.', '0dad7ff384e8dee92414a9e824423bac.jpg', 'Yes', 'Debitis consequuntur sea eu ex agam', 'Debitis consequuntur sea eu ex agam', '2021-07-24 17:30:14', '2022-09-10 07:13:03'),
(2, 4, 'An qui falli sadipscing susci piantur at congue', 'an-qui-falli-sadipscing-susci-piantur-at-congue', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p>\r\n<p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p>\r\n<p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p>\r\n<p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p>\r\n<p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium.', '8fab9f3f622ff6d09db3c031365c3a6a.jpg', 'Yes', 'An qui falli sadipscing susci piantur at congue', 'An qui falli sadipscing susci piantur at congue', '2021-07-24 17:30:56', '2022-09-10 07:06:49'),
(3, 1, 'Libris impetus molestiae te eu ius ludus', 'libris-impetus-molestiae-te-eu-ius-ludus', '<p>Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p>\r\n<p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p>\r\n<p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p>\r\n<p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p>\r\n<p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', 'Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium.', '86271ff53e1bb67f55fe87d3e2bf5172.jpg', 'Yes', 'Libris impetus molestiae te eu ius ludus', 'Libris impetus molestiae te eu ius ludus', '2021-07-24 17:31:31', '2022-09-10 07:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Motor Sport', 'Motor Sport', 'Motor Sport', 'Motor Sport', '2020-11-19 10:00:01', '2022-09-10 07:03:27'),
(4, 'Buying Guide', 'buying-guide', 'Buying Guide', 'Buying Guide', '2020-11-28 00:07:59', '2022-09-10 07:05:44'),
(8, 'Driving License', 'driving-license', 'Driving License', 'Driving License', '2021-07-24 17:39:05', '2022-09-10 07:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `person_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', '1', 'Yes', NULL, '2022-03-10 04:19:38'),
(2, 'INR', '₹', '76.67', 'No', NULL, '2022-03-09 05:19:58'),
(8, 'BDT', '৳', '84.5', 'No', '2022-03-10 04:19:34', '2022-03-10 04:19:34'),
(9, 'NGN', '₦', '415.84', 'No', '2022-03-12 19:16:21', '2022-03-12 19:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dynamic_page_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dynamic_page_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dynamic_page_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `et_subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `et_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `et_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `et_subject`, `et_content`, `et_name`, `created_at`, `updated_at`) VALUES
(1, 'Contact Form Message', '<p>A person has messaged you. Please see it below:&nbsp;<br><br><b>Visitor Message:</b></p><p>Visitor Name: <br>[[visitor_name]]</p><p>Visitor Email: <br>[[visitor_email]]</p><p>Visitor Phone: <br>[[visitor_phone]]</p><p>Visitor Message: <br>[[visitor_message]]</p>', 'Contact Page Message', NULL, '2021-06-26 19:40:48'),
(2, 'New Comment Posted', '<p>You have received a new comment from a person. His detail is here:</p><p><strong>Person Name:</strong>&nbsp;[[person_name]]</p><p><strong>Person Email:&nbsp;</strong>[[person_email]]</p><p><strong>Person Message:</strong></p><p>[[person_comment]]</p><p>Go to this link to see this comment<span style=\"font-weight: bolder;\">:&nbsp;</span><a href=\"[[comment_see_url]]\" target=\"_blank\">See Comment</a></p>', 'Comment Message to Admin', NULL, '2021-07-10 12:07:17'),
(5, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password</a><br></p>', 'Reset Password Message to Admin', NULL, '2020-11-27 19:20:59'),
(6, 'Confirm Registration', '<p>To activate your account and confirm the registration, please click on the verify link below:</p><p><a href=\"[[verification_link]]\" target=\"_blank\">Verification Link</a></p>', 'Registration Email to Customer', NULL, '2020-12-03 10:38:57'),
(7, 'Reset Password', '<p>To reset your password, please click on the following link:</p><p><a href=\"[[reset_link]]\" target=\"_blank\">Reset Password Link</a></p>', 'Reset Password Message to Customer', NULL, '2020-12-05 03:30:14'),
(8, 'Package Purchase Completed', '<p>Dear [[customer_name]],</p><p>You have successfully purchased the package.</p><p><b>Payment Detail:</b></p><p>Payment Method: [[payment_method]]<br>Package Start Date: [[package_start_date]]<br>Package End Date: [[package_end_date]]<br>Transaction Id: [[transaction_id]]<br>Paid Amount: [[paid_amount]]<br>Payment Status: [[payment_status]]<br><br>Thank you!<br>ArefinDev</p>', 'Package Purchase Completed Email to Customer', NULL, '2021-07-08 19:28:15'),
(9, 'Listing Page Message', '<p>Dear [[agent_name]],</p>\n\n<p>You have received a message from a visitor.</p>\n\n<p><strong>Listing Name: </strong><br />\n[[listing_name]]<br />\n<br />\n<strong>Listing URL: </strong><br />\n[[listing_url]]<br />\n<br />\n<strong>Name: </strong><br />\n[[name]]<br />\n<br />\n<strong>Email: </strong><br />\n[[email]]<br />\n<br />\n<strong>Phone: </strong><br />\n[[phone]]<br />\n<br />\n<strong>Message: </strong><br />\n[[message]]</p>', 'Listing Page Message to Agent', NULL, '2022-06-13 18:39:42'),
(10, 'Listing Page Report', '<p>Hi,</p>\n\n<p>A visitor has reported to a listing.</p>\n\n<p><strong>Listing Name: </strong><br />\n[[listing_name]]<br />\n<br />\n<strong>Listing URL: </strong><br />\n[[listing_url]]<br />\n<br />\n<strong>Name: </strong><br />\n[[name]]<br />\n<br />\n<strong>Email: </strong><br />\n[[email]]<br />\n<br />\n<strong>Phone: </strong><br />\n[[phone]]<br />\n<br />\n<strong>Message: </strong><br />\n[[message]]</p>', 'Listing Page Report to Admin', NULL, '2022-06-13 18:40:08');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_title`, `faq_content`, `faq_order`, `created_at`, `updated_at`) VALUES
(1, 'Where are the posting guidelines?', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.</p>', 3, '2020-11-23 11:09:14', '2022-09-10 10:49:44'),
(2, 'Where can I find credits in my profile?', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.</p>', 2, '2020-11-23 11:09:31', '2022-09-10 10:49:18'),
(3, 'How do I search for cars?', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.</p>', 1, '2020-11-23 11:09:45', '2022-09-10 10:48:42'),
(5, 'If I find a car I like, what should I do?', '<p>Lorem ipsum dolor sit amet, eu vim elitr clita, quot putent feugait cu per. Tamquam voluptua persequeris ad cum, at his cibo scaevola. Cibo justo equidem cu nam. An meliore admodum vis, quot aliquip bonorum ei quo. Mea nemore feugiat verterem cu, modus vulputate mea id.</p>', 0, '2022-09-10 10:50:46', '2022-09-10 10:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `top_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_column_1_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_column_1_total_item` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_column_2_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_column_2_total_item` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_column_3_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_column_4_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic_tracking_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tawk_live_chat_property_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tawk_live_chat_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_button_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_text_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_bg_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_button_text_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_button_bg_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_consent_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_recaptcha_site_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_recaptcha_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_listing_option` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout_direction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_environment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_key_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_key_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `razorpay_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flutterwave_country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flutterwave_public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flutterwave_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `flutterwave_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `logo`, `favicon`, `top_phone`, `top_email`, `footer_column_1_heading`, `footer_column_1_total_item`, `footer_column_2_heading`, `footer_column_2_total_item`, `footer_column_3_heading`, `footer_column_4_heading`, `footer_address`, `footer_email`, `footer_phone`, `footer_copyright`, `google_analytic_tracking_id`, `google_analytic_status`, `tawk_live_chat_property_id`, `tawk_live_chat_status`, `cookie_consent_message`, `cookie_consent_button_text`, `cookie_consent_text_color`, `cookie_consent_bg_color`, `cookie_consent_button_text_color`, `cookie_consent_button_bg_color`, `cookie_consent_status`, `google_recaptcha_site_key`, `google_recaptcha_status`, `theme_color`, `customer_listing_option`, `layout_direction`, `paypal_environment`, `paypal_client_id`, `paypal_secret_key`, `paypal_status`, `stripe_public_key`, `stripe_secret_key`, `stripe_status`, `razorpay_key_id`, `razorpay_key_secret`, `razorpay_status`, `flutterwave_country`, `flutterwave_public_key`, `flutterwave_secret_key`, `flutterwave_status`, `mollie_api_key`, `mollie_status`, `created_at`, `updated_at`) VALUES
(1, 'a7eb55f8e8c41cbaee0760d15b226f4d.png', 'c1171d7cd44a7f181fb14af3e3545026.png', '123-342-3471', 'contact@arefindev.com', 'Categories', '5', 'Locations', '5', 'Footer Menu', 'Contact', 'ABC Steet, NewYork.', 'contact@yourwebsite.com', '123-456-7878', 'Copyright 2022. ArefinDev. All Rights Reserved.', 'UA-84213520-6', 'Hide', '60f260f6d6e7610a49abaef3', 'Hide', 'This website uses cookies to ensure you get the best experience on our website.', 'ACCEPT', 'F8FFED', '50BF20', '000000', 'FFFFFF', 'Show', '6Lcf1V0bAAAAAIN5nY_O2MXq0hUuTiKTt_XOYM-_', 'Hide', 'F6552C', 'On', 'ltr', 'sandbox', 'AewyWGlfCXJVrnkUP60N6iCaDxQmCGyny7QP8ZXA9N1xrc1nHhg-7gpf8_xBdihkxNe4c1j6eGCEyQFU', 'EP8A3weVRoKg8Yqr2YpBH547K84B1NSzbX_WNntHGkkR2BFYuw21v7U0YCgufKUOskgkjOe-IPw-hGln', 'Show', 'pk_test_51JffTyGD31Py00wTwqZ2Sz2y5jULGFtUVnsFkJ3pWhRGECG5gkJpseJx4WAfNcUYXEo0dX6f046rrsRhkawEAikJ00E8QnpubW', 'sk_test_51JffTyGD31Py00wTTh3LTkKirpsAxsbWGwBONgjMXvPYR8oXI3rXhX9GyEVhndXCVsdJmjruwBlflS1fizakR9Xm00k7am6TAX', 'Show', 'rzp_test_fMHrzXegENYrbM', '18J4uJojTQIItKkYx8scHTlC', 'Show', 'NG', 'FLWPUBK_TEST-30dcb79e11906ad01d5f709580779e94-X', 'FLWSECK_TEST-949a9866cf40a09399d047de0d17ca1b-X', 'Show', 'test_pT7cjqV5GVE4NcKDUrhx8hSFjaAmQk', 'Show', NULL, '2022-09-10 21:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `home_advertisements`
--

CREATE TABLE `home_advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `above_brand_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_brand_1_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_brand_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_brand_2_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_brand_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_featured_listing_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_featured_listing_1_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_featured_listing_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_featured_listing_2_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_featured_listing_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `above_location_1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_location_1_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_location_2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_location_2_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `above_location_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_advertisements`
--

INSERT INTO `home_advertisements` (`id`, `above_brand_1`, `above_brand_1_url`, `above_brand_2`, `above_brand_2_url`, `above_brand_status`, `above_featured_listing_1`, `above_featured_listing_1_url`, `above_featured_listing_2`, `above_featured_listing_2_url`, `above_featured_listing_status`, `above_location_1`, `above_location_1_url`, `above_location_2`, `above_location_2_url`, `above_location_status`, `created_at`, `updated_at`) VALUES
(1, '9516c8ac61ba1d38c165964a5ea61ddd.jpg', NULL, 'c3259913b2b89a49fd34c1e79c9591e7.jpg', NULL, 'Hide', '88af78bc0de0dfa13187c778e0dfee63.jpg', NULL, '1491dc71d825138f2ca04c0388d90b85.jpg', NULL, 'Hide', '972c0d5c409fb55fe69aef9bf534581c.jpg', NULL, '682c274a3dcb67099eb4cd377fe1aecb.jpg', NULL, 'Hide', NULL, '2022-09-10 21:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_exterior_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_interior_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_cylinder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_fuel_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_transmission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_engine_capacity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_vin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_seat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_wheel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_door` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_mileage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_model_year` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_oh_monday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_tuesday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_wednesday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_thursday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_friday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_saturday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_oh_sunday` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_featured_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_brand_id` int(11) NOT NULL,
  `listing_location_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `listing_name`, `listing_slug`, `listing_description`, `listing_address`, `listing_phone`, `listing_email`, `listing_website`, `listing_map`, `listing_price`, `listing_exterior_color`, `listing_interior_color`, `listing_cylinder`, `listing_fuel_type`, `listing_transmission`, `listing_engine_capacity`, `listing_vin`, `listing_body`, `listing_seat`, `listing_wheel`, `listing_door`, `listing_mileage`, `listing_model_year`, `listing_type`, `listing_oh_monday`, `listing_oh_tuesday`, `listing_oh_wednesday`, `listing_oh_thursday`, `listing_oh_friday`, `listing_oh_saturday`, `listing_oh_sunday`, `listing_featured_photo`, `listing_brand_id`, `listing_location_id`, `user_id`, `admin_id`, `seo_title`, `seo_meta_description`, `listing_status`, `is_featured`, `created_at`, `updated_at`) VALUES
(3, '2022 Toyota 4Runner Limited', '2022-toyota-4runner-limited', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>', '333 East Broadway Avenue\r\nMaryville, TN 37804', '(606) 862-0015', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '50627', 'Midnight Black Metallic', 'Black Graphite', '4', 'Electric', 'Automatic', '1500 cc', 'JHSD8923849', 'SUV', '4', '4', '4', '30000 km', '2022', 'New Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '5244eaad7aa66e19f458f166b13366a8.jpg', 1, 3, 0, 1, '2022 Toyota 4Runner Limited', NULL, 'Active', 'Yes', '2021-07-07 22:44:22', '2022-09-11 04:36:57'),
(5, '2022 Nissan Frontier PRO 4X', '2022-nissan-frontier-pro-4x', '<p>Lorem ipsum dolor sit amet, suscipit dissentiunt usu at, eu nam veri vidit signiferumque. Ad mea erat fabellas, et facete everti eum, tation consul ea ius. Autem feugiat maiorum id sea. Est omnis mediocrem assentior ea. Nam ubique possit verterem ea, cum facer scriptorem an.</p>\r\n<p>Equidem legendos duo ei, et legimus offendit mei. Mea amet tibique explicari ne. Nam blandit patrioque comprehensam an, sed in errem omnes partem. No quo impedit percipit comprehensam, ei dolores intellegam pro, et sed quaeque temporibus referrentur. Quodsi causae dissentias in pri, idque ridens cum an. Vis in facilisi conclusionemque, eu est erant affert veritus. Id qui quodsi iriure quaestio, omittam praesent ne sea, postulant consetetur definitiones an nec.</p>\r\n<p>Probo animal interpretaris ea mea. Mea ad nostrud urbanitas inciderint, sea no noluisse incorrupte. His democritum vituperatoribus no, ad cum offendit rationibus vituperatoribus, eos te quodsi interesset. Regione bonorum no quo. Lobortis torquatos constituto ne per, ferri facete ea duo. Usu molestie complectitur eu, euismod forensibus moderatius sed no.</p>', '2 Bridge St Old Saybrook, CT 06475', '(860) 395-2000', 'info@saybrook.com', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2998.1644726412524!2d-72.35277188518384!3d41.283524779273854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e62268e8620931%3A0x88b1bc148a89e421!2s2%20Bridge%20St%2C%20Old%20Saybrook%2C%20CT%2006475%2C%20USA!5e0!3m2!1sen!2sbd!4v1625913163080!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '18000', 'Silver', 'Light Black', '6', 'Hybrid', 'Automatic', '2200 CC', 'JHD89238494', 'SUV', 'Memory Seat', '4', '4', '15000 KM', '2022', 'New Car', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '34481dd4588dac0ca090e3786c60a8e4.jpg', 3, 3, 3, 0, '2022 Nissan Frontier PRO 4X', NULL, 'Active', 'Yes', '2021-07-10 04:37:48', '2022-09-11 04:58:18'),
(6, '2019 Nissan Murano S', '2019-nissan-murano-s', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p>\r\n<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</p>\r\n<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</p>', '1619 Constitution Dr Iuka, MS 38852', '(662) 423-6836', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3275.2685692563628!2d-88.20734968527874!3d34.82433938409503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x887d9fa0f88eab05%3A0x5ef40a6f791abf32!2s1619%20Constitution%20Dr%2C%20Iuka%2C%20MS%2038852%2C%20USA!5e0!3m2!1sen!2sbd!4v1626071441294!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '24900', 'Black', 'Silver', '8', 'Gasoline', 'Automatic', '1800 CC', 'JDKK2837823', 'SUV', 'Third Row Seating', '4', '5', '12000 KM', '2019', 'Used Car', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', '10:00 AM - 5:00 PM', 'Closed', '2bf25c0c094e8963d3bb24109cf2beed.jpg', 3, 2, 4, 0, '2019 Nissan Murano S', NULL, 'Active', 'Yes', '2021-07-12 00:34:12', '2022-09-11 05:14:10'),
(7, '2020 BMW M340 i', '2020-bmw-m340-i', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p>\r\n<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</p>\r\n<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</p>', '3780 Ash Avenue\r\nSt Louis, MO 63101', '(731) 689-7423', 'info@fitness57.com', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12467.067058237182!2d-90.20114767193759!3d38.63124633618563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x87d8b318a560484b%3A0x4d6bff75e2320bd4!2sSt.%20Louis%2C%20MO%2063101%2C%20USA!5e0!3m2!1sen!2sbd!4v1627142211618!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '50800', 'Silver', 'Light Blue', '8', 'Hybrid', 'Automatic', '3000 CC', 'UURI89328478', 'SUV', '8', '4', '6', '12000 KM', '2020', 'Used Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', 'de51e0ec9808b68b5cad2aa3ae33c739.jpg', 2, 3, 0, 1, '2020 BMW M340 i', NULL, 'Active', 'Yes', '2021-07-12 11:57:14', '2022-09-11 06:08:04'),
(8, '2022 Toyota GR86 Base', '2022-toyota-gr86-base', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p>\r\n<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</p>\r\n<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</p>', '1375 Stanley Avenue\r\nLynbrook, NY 11563', '(731) 607-3076', 'contact@duanewright.com', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24214.094270888058!2d-73.69071312302569!3d40.657181234407346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2649434a75c9b%3A0x2a440e4b0a258756!2sLynbrook%2C%20NY%2011563%2C%20USA!5e0!3m2!1sen!2sbd!4v1627142848579!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '37970', 'Silver', 'Light Blue', '6', 'Electric', 'Automatic', '1400 CC', 'HHDG9832847', 'SUV', '4', '4', '2', '34000 KM', '2022', 'New Car', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', '10 AM - 9 PM', 'Closed', '650e83ddbafb95b1436ad9eed6662c49.jpg', 1, 5, 0, 1, '2022 Toyota GR86 Base', NULL, 'Active', 'Yes', '2021-07-12 12:00:04', '2022-09-11 06:34:15'),
(10, '2020 Jaguar F-PACE SVR', '2020-jaguar-f-pace-svr', '<p>Lorem ipsum dolor sit amet, suscipit dissentiunt usu at, eu nam veri vidit signiferumque. Ad mea erat fabellas, et facete everti eum, tation consul ea ius. Autem feugiat maiorum id sea. Est omnis mediocrem assentior ea. Nam ubique possit verterem ea, cum facer scriptorem an.</p>\r\n<p>Equidem legendos duo ei, et legimus offendit mei. Mea amet tibique explicari ne. Nam blandit patrioque comprehensam an, sed in errem omnes partem. No quo impedit percipit comprehensam, ei dolores intellegam pro, et sed quaeque temporibus referrentur. Quodsi causae dissentias in pri, idque ridens cum an. Vis in facilisi conclusionemque, eu est erant affert veritus. Id qui quodsi iriure quaestio, omittam praesent ne sea, postulant consetetur definitiones an nec.</p>\r\n<p>Probo animal interpretaris ea mea. Mea ad nostrud urbanitas inciderint, sea no noluisse incorrupte. His democritum vituperatoribus no, ad cum offendit rationibus vituperatoribus, eos te quodsi interesset. Regione bonorum no quo. Lobortis torquatos constituto ne per, ferri facete ea duo. Usu molestie complectitur eu, euismod forensibus moderatius sed no.</p>', '3661 Pinewood Avenue\r\nMenominee, MI 49858', '123-343-4444', 'chicagomedicalcenter@gmail.com', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d45041.29338642683!2d-87.66000203029316!3d45.124697659298626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4d52a1080e88c5fd%3A0x4ab429fd11be80ec!2sMenominee%2C%20MI%2049858%2C%20USA!5e0!3m2!1sen!2sbd!4v1627143440252!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '75900', 'Red', 'Silver', '5', '4', NULL, '2000 CC', 'GGGS7238423', 'SUV', '4', '6', '6', NULL, '2020', 'New Car', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', '24 Hours Open', 'eaf92a57244c0b2406a3f73e4714b6c2.jpg', 14, 2, 3, 0, '2020 Jaguar F-PACE SVR', NULL, 'Active', 'No', '2021-07-19 08:43:27', '2022-09-11 08:04:25'),
(12, '2022 Mazda MX-5 Miata Grand Touring', '2022-mazda-mx-5-miata-grand-touring', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>', '333 East Broadway Avenue\r\nMaryville, TN 37804', '(606) 862-0015', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '32450', 'Blue', 'Deep Black', '6', 'Electric', 'Automatic', '2000 CC', 'OPHD893478234', 'SUV', '2', '4', '2', '30000 KM', '2022', 'Used Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '657e270e48cebafa381b724042c03f63.jpg', 6, 3, 0, 1, '2022 Mazda MX-5 Miata Grand Touring', NULL, 'Active', 'Yes', '2022-06-14 08:11:50', '2022-09-11 08:38:49'),
(13, '2015 Mazda Mazda5 Sport', '2015-mazda-mazda5-sport', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>', '333 East Broadway Avenue\r\nMaryville, TN 37804', '(606) 862-0015', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '11960', 'Silver', 'Black', '6', 'Electric', 'Automatic', '1200 CC', 'HHD8923477', 'SUV', '4', '4', '4', '12000 KM', '2015', 'New Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '3bb970bc46e0a47b20bd0efeda35d14d.jpg', 6, 1, 0, 1, '2015 Mazda Mazda5 Sport', NULL, 'Active', 'Yes', '2022-06-14 08:15:25', '2022-09-11 08:44:27'),
(14, '2019 Lamborghini Urus Base', '2019-lamborghini-urus-base', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>', '333 East Broadway Avenue\r\nMaryville, TN 37804', '(606) 862-0015', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '242990', 'Black', 'Black', '8', 'Electric', 'Automatic', '4000 CC', 'GGD98234923', 'SUV', '6', '4', '6', '34000 KM', '2019', 'New Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', 'c05257ca738dd4b947f291f6096c5b5e.jpg', 7, 4, 0, 1, '2019 Lamborghini Urus Base', NULL, 'Active', 'Yes', '2022-06-14 08:19:15', '2022-09-11 09:26:11'),
(15, '2019 VW e-golf SEL Premium', '2019-vw-e-golf-sel-premium', '<p>Lorem ipsum dolor sit amet, nibh saperet te pri, at nam diceret disputationi. Quo an consul impedit, usu possim evertitur dissentiet ei, ridens minimum nominavi et vix. An per mutat adipisci. Ut pericula dissentias sed, est ea modus gloriatur. Aliquip persius has cu, oportere adversarium mei an, justo fabulas in vix.</p>\r\n<p>Nec in rebum primis causae. Affert iisque ex pri, vis utinam vivendo definitionem ad, nostrum omnesque per et. Omnium antiopam cotidieque cu sit. Id pri placerat voluptatum, vero dicunt dissentiunt eum et, adhuc iisque vis no. Eu suavitate contentiones definitionem mel, ex vide insolens ocurreret eam. Et dico blandit mea. Sea tollit vidisse mandamus te, qui movet efficiendi ex.</p>\r\n<p>Doming aliquid te pro. Mei et quodsi ornatus praesent, summo debet vis eu, dolor soleat nostrud sea eu. Cu altera possim sanctus est. Ea iriure repudiandae per, no eam legendos consectetuer. Mel at justo doming voluptatum. Mel mentitum fabellas deserunt no, et duo amet unum appetere.</p>\r\n<p>Quo id nemore dignissim persequeris, unum melius option ei vix, oratio vidisse eam ei. Altera neglegentur cum te. Latine probatus cum cu. Vim dicta sonet intellegebat ne, ei mazim decore eleifend nam, no malis soleat usu. Est ei tale praesent, ad nibh iudicabit has.</p>', '333 East Broadway Avenue\r\nMaryville, TN 37804', '(606) 862-0015', NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3237.7024268769424!2d-83.97154938525155!3d35.75811813335977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x885e9fd3fccccd2b%3A0x4b27a99931ed8fd8!2s333%20E%20Broadway%20Ave%2C%20Maryville%2C%20TN%2037804%2C%20USA!5e0!3m2!1sen!2sbd!4v1625719037629!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '29990', 'White', 'Black', '4', 'Electric', 'Automatic', '1400 CC', 'AIHS783247923', 'SUV', '4', '4', '6', '12000 KM', '2019', 'Used Car', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '9 AM to 5 PM', '7d29e4eb6fd995ec98f8465e927f1006.jpg', 8, 7, 0, 1, '2019 VW e-golf SEL Premium', NULL, 'Active', 'Yes', '2022-06-14 08:42:08', '2022-09-11 09:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `listing_additional_features`
--

CREATE TABLE `listing_additional_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `additional_feature_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_feature_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_additional_features`
--

INSERT INTO `listing_additional_features` (`id`, `listing_id`, `additional_feature_name`, `additional_feature_value`, `created_at`, `updated_at`) VALUES
(11, 5, 'Masks required', 'Yes', NULL, NULL),
(12, 5, 'Payment Methods', 'All major payment method are allowed', NULL, NULL),
(13, 6, 'Credit Card', 'Does not accept', NULL, NULL),
(23, 7, 'Credit Card Accepted', 'Yes', '2022-09-11 06:11:20', '2022-09-11 06:11:20'),
(24, 7, 'Valid Papers Required', 'Yes', '2022-09-11 06:11:20', '2022-09-11 06:11:20'),
(25, 13, 'Credit Card Allowed?', 'Yes', '2022-09-11 08:45:44', '2022-09-11 08:45:44'),
(26, 13, 'Installment Available?', 'No', '2022-09-11 08:45:44', '2022-09-11 08:45:44'),
(27, 14, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:28:15', '2022-09-11 09:28:15'),
(28, 15, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:38:13', '2022-09-11 09:38:13'),
(30, 15, 'Installment Possible?', 'No', '2022-09-11 09:38:35', '2022-09-11 09:38:35'),
(31, 3, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:38:57', '2022-09-11 09:38:57'),
(32, 3, 'Installment Possible?', 'No', '2022-09-11 09:38:57', '2022-09-11 09:38:57'),
(33, 10, 'Installment Possible?', 'No', '2022-09-11 09:40:05', '2022-09-11 09:40:05'),
(34, 10, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:40:35', '2022-09-11 09:40:35'),
(35, 12, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:40:52', '2022-09-11 09:40:52'),
(36, 12, 'Installment Possible?', 'No', '2022-09-11 09:40:52', '2022-09-11 09:40:52'),
(37, 14, 'Installment Possible?', 'Yes', '2022-09-11 09:41:12', '2022-09-11 09:41:12'),
(38, 8, 'Credit Card Accepted?', 'Yes', '2022-09-11 09:41:34', '2022-09-11 09:41:34'),
(39, 8, 'Installment Possible?', 'No', '2022-09-11 09:41:34', '2022-09-11 09:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `listing_amenities`
--

CREATE TABLE `listing_amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_amenities`
--

INSERT INTO `listing_amenities` (`id`, `listing_id`, `amenity_id`, `created_at`, `updated_at`) VALUES
(13, 3, 1, NULL, NULL),
(14, 3, 2, NULL, NULL),
(15, 3, 7, NULL, NULL),
(19, 5, 1, NULL, NULL),
(20, 5, 2, NULL, NULL),
(21, 6, 3, NULL, NULL),
(22, 6, 5, NULL, NULL),
(23, 6, 7, NULL, NULL),
(27, 7, 1, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(28, 7, 2, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(29, 7, 3, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(30, 7, 6, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(31, 7, 7, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(32, 7, 8, '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(33, 8, 1, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(34, 8, 2, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(35, 8, 3, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(36, 8, 7, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(37, 8, 8, '2021-07-24 10:09:58', '2021-07-24 10:09:58'),
(38, 10, 1, '2021-07-24 10:20:22', '2021-07-24 10:20:22'),
(39, 10, 5, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(40, 10, 6, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(41, 10, 7, '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(42, 12, 1, '2022-06-14 08:11:50', '2022-06-14 08:11:50'),
(43, 12, 2, '2022-06-14 08:11:50', '2022-06-14 08:11:50'),
(45, 12, 5, '2022-06-14 08:11:50', '2022-06-14 08:11:50'),
(46, 12, 7, '2022-06-14 08:11:50', '2022-06-14 08:11:50'),
(48, 13, 2, '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(49, 13, 4, '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(50, 13, 5, '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(51, 13, 6, '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(52, 13, 8, '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(53, 14, 1, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(54, 14, 2, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(55, 14, 3, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(56, 14, 4, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(57, 14, 5, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(58, 14, 6, '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(59, 15, 1, '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(61, 15, 5, '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(62, 15, 6, '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(63, 15, 7, '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(64, 15, 8, '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(65, 5, 6, '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(66, 5, 7, '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(67, 5, 8, '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(68, 5, 12, '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(69, 6, 1, '2022-09-11 05:16:22', '2022-09-11 05:16:22'),
(70, 6, 2, '2022-09-11 05:16:22', '2022-09-11 05:16:22'),
(71, 6, 4, '2022-09-11 05:16:22', '2022-09-11 05:16:22'),
(72, 6, 6, '2022-09-11 05:16:22', '2022-09-11 05:16:22'),
(73, 7, 4, '2022-09-11 06:08:33', '2022-09-11 06:08:33'),
(74, 12, 3, '2022-09-11 08:38:49', '2022-09-11 08:38:49'),
(75, 12, 6, '2022-09-11 08:38:49', '2022-09-11 08:38:49'),
(76, 12, 12, '2022-09-11 08:38:49', '2022-09-11 08:38:49'),
(77, 14, 7, '2022-09-11 09:26:23', '2022-09-11 09:26:23'),
(78, 14, 8, '2022-09-11 09:26:23', '2022-09-11 09:26:23'),
(79, 14, 12, '2022-09-11 09:26:23', '2022-09-11 09:26:23'),
(80, 15, 4, '2022-09-11 09:37:41', '2022-09-11 09:37:41'),
(81, 15, 12, '2022-09-11 09:37:41', '2022-09-11 09:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `listing_brands`
--

CREATE TABLE `listing_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_brand_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_brand_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_brand_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_brands`
--

INSERT INTO `listing_brands` (`id`, `listing_brand_name`, `listing_brand_slug`, `listing_brand_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'toyota', '3fa4918a87203c2b8a4f1f773bc08d74.jpg', 'Toyota', NULL, '2021-07-06 13:39:30', '2022-09-09 23:12:24'),
(2, 'BMW', 'bmw', '13d509467d021397f17e943cb68b750c.jpg', 'BMW', NULL, '2021-07-06 13:39:42', '2022-09-09 22:24:36'),
(3, 'Nissan', 'nissan', 'a4f80e32fdb1db3fa0d0310fe7de62b9.jpg', 'Nissan', NULL, '2021-07-06 13:40:29', '2022-09-09 23:13:55'),
(6, 'Mazda', 'mazda', '2bc74c80d17eebacf1de098186e028b0.jpg', 'Mazda', NULL, '2021-07-11 23:00:44', '2022-09-09 22:17:03'),
(7, 'Lamborghini', 'lamborghini', '25aab7366ea773e85be7b731e25d5d75.jpg', 'Lamborghini', NULL, '2021-07-11 23:03:44', '2022-09-11 09:08:14'),
(8, 'Volkswagen', 'volkswagen', 'abf8e2d9e822fc23acd219246c658e2c.jpg', 'Volkswagen', NULL, '2021-07-11 23:50:49', '2022-09-09 23:15:06'),
(13, 'Porsche', 'porsche', 'bdef15bf04bb381858b82f34216035a3.jpg', 'Porsche', NULL, '2022-06-16 04:52:26', '2022-09-09 23:10:02'),
(14, 'Jaguar', 'jaguar', 'ecda20d11a98085670055e0935530a27.jpg', 'Jaguar', NULL, '2022-06-16 04:59:13', '2022-09-09 23:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `listing_locations`
--

CREATE TABLE `listing_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_location_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_location_slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_location_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_locations`
--

INSERT INTO `listing_locations` (`id`, `listing_location_name`, `listing_location_slug`, `listing_location_photo`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'San Diego', 'san-diego', 'eb44f9a13791129efbf73b6557bb6301.jpg', 'San Diego', NULL, '2021-07-06 20:02:02', '2022-09-11 09:55:22'),
(2, 'Chicago', 'chicago', '7f2a3cc598783d96c6cb38822f297c4e.jpg', 'Chicago', NULL, '2021-07-06 20:02:42', '2022-09-11 09:49:24'),
(3, 'Los Angeles', 'los-angeles', 'c9aaf9f4f384a986e92630aee5a729c3.jpg', 'Los Angeles', NULL, '2021-07-06 20:02:54', '2022-09-11 09:57:15'),
(4, 'NewYork', 'newyork', 'da979a83a7ee727dd73f0fc30bbb4ee0.jpg', 'NewYork', NULL, '2021-07-06 20:03:07', '2022-09-11 09:49:33'),
(5, 'Boston', 'boston', 'be19037990394911430d0994c988ad15.jpg', 'Boston', NULL, '2021-07-06 20:03:18', '2022-09-11 09:59:33'),
(7, 'Colorado', 'colorado', '8c252c3932d5514d03df53ef2bf2f578.jpg', 'Colorado', NULL, '2021-07-12 09:39:50', '2022-09-11 10:03:14'),
(8, 'Portland', 'portland', '13ec36fb7431b072dd2d0dedcb9a0327.jpg', 'Portland', NULL, '2022-06-16 06:22:27', '2022-09-11 10:07:00'),
(9, 'Oakland', 'oakland', '76729b551dd233ab8e1e4d4ccfa894d3.jpg', 'Oakland', NULL, '2022-06-16 06:25:28', '2022-09-11 10:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `listing_photos`
--

CREATE TABLE `listing_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_photos`
--

INSERT INTO `listing_photos` (`id`, `listing_id`, `photo`, `created_at`, `updated_at`) VALUES
(81, 15, '159b8d3252179b42a50399ad7e81a383.jpg', '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(82, 15, 'd6d29ed704282f9f51725134845b4d7d.jpg', '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(83, 15, '53f53a220848b76ea91e9970cbdd709d.jpg', '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(84, 3, 'b1cc20004be93df5d0fa9cb85defaae2.jpg', '2022-09-09 23:54:56', '2022-09-09 23:54:56'),
(85, 3, 'f264e5614e11102dab514b6208c55711.jpg', '2022-09-09 23:54:56', '2022-09-09 23:54:56'),
(86, 3, 'cb6fc696641488cb51604e41e5255d1b.jpg', '2022-09-09 23:54:56', '2022-09-09 23:54:56'),
(87, 5, '7264110e09271723bf7442de251ed3de.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(88, 5, 'b97ea802892bae72d3ba0db9f5eda231.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(89, 5, '71c29f7fc069e0330d624fc824bc0029.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(90, 5, '87a1266731e5ee228bc95f72012efe6c.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(91, 5, 'a090812b2322cf0cc66c0e4bcef78e0e.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(92, 5, 'b038c75a4ebe1f4e8bbd6013c1e9e043.jpg', '2022-09-11 05:02:58', '2022-09-11 05:02:58'),
(93, 6, 'dd30139fc64b96abb338d9c83043f3a6.jpg', '2022-09-11 05:14:48', '2022-09-11 05:14:48'),
(94, 6, 'faefc591e66135b901b71cb64c39fa83.jpg', '2022-09-11 05:14:48', '2022-09-11 05:14:48'),
(95, 6, 'f9b1a3cf75a53582d0840c1a9eb0275b.jpg', '2022-09-11 05:14:48', '2022-09-11 05:14:48'),
(96, 7, '1c540373fde2b6728ac2ab8facc52fc6.jpg', '2022-09-11 06:09:45', '2022-09-11 06:09:45'),
(97, 7, 'ad9deef9eaae167b942f0d711fca5865.jpg', '2022-09-11 06:09:45', '2022-09-11 06:09:45'),
(98, 7, 'e399aeb0e8fdafdf0c5f49b1f1de6694.jpg', '2022-09-11 06:09:45', '2022-09-11 06:09:45'),
(99, 8, '2ed7f9e6b4d0d62fa4c6b5dd284cdb8e.jpg', '2022-09-11 06:35:05', '2022-09-11 06:35:05'),
(100, 8, '0ec136eba95456f39a01b51ab50fe42e.jpg', '2022-09-11 06:35:05', '2022-09-11 06:35:05'),
(101, 8, 'f22d3ab98ba7c6f927ad4369987fa28e.jpg', '2022-09-11 06:35:05', '2022-09-11 06:35:05'),
(102, 10, '9aeaf1b56eeacbf2d63c1cc0d3dbb654.jpg', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(103, 10, 'd3f503b277b6806907766d3a9b24db7b.jpg', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(104, 10, '2c21c5669c67e72a92651469d79dc2e7.jpg', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(105, 12, 'e24ae54b748ea03cad102a9c53de4b4f.jpg', '2022-09-11 08:37:02', '2022-09-11 08:37:02'),
(106, 12, '5686839adb8884af40d8bb2cec66952e.jpg', '2022-09-11 08:37:02', '2022-09-11 08:37:02'),
(107, 12, 'e09b85c46b64550258d1e106019c1588.jpg', '2022-09-11 08:37:02', '2022-09-11 08:37:02'),
(108, 13, '2f7851292074666cc02f2c2f4e67a794.jpg', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(109, 13, '9704007af58c2384e15210901812eb71.jpg', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(110, 13, 'face1ff2ee5b27dbabb2c3501f9ab8f1.jpg', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(111, 14, 'e573f79709af2d6d27226f66a6c55ce8.jpg', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(112, 14, '30d24bbfc102357b2ccfc03c1a5baeb4.jpg', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(113, 14, '7f568be688984a59d494d499d42d94d8.jpg', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(114, 15, '6c78d1c66851985554ea6c7d847dcc5e.jpg', '2022-09-11 09:37:08', '2022-09-11 09:37:08'),
(115, 15, 'a0bcc5429bef70ab55cc2f7010c0ee2f.jpg', '2022-09-11 09:37:08', '2022-09-11 09:37:08'),
(116, 15, 'd75e81b3de80577f4266a11a7ff563c8.jpg', '2022-09-11 09:37:08', '2022-09-11 09:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `listing_social_items`
--

CREATE TABLE `listing_social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `social_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_social_items`
--

INSERT INTO `listing_social_items` (`id`, `listing_id`, `social_icon`, `social_url`, `created_at`, `updated_at`) VALUES
(10, 3, 'Facebook', '#', NULL, NULL),
(11, 3, 'Twitter', '#', NULL, NULL),
(12, 3, 'LinkedIn', '#', NULL, NULL),
(15, 5, 'Facebook', '#', NULL, NULL),
(16, 5, 'Twitter', '#', NULL, NULL),
(17, 6, 'Facebook', '#', NULL, NULL),
(18, 6, 'Twitter', '#', NULL, NULL),
(19, 6, 'YouTube', '#', NULL, NULL),
(20, 6, 'Instagram', '#', NULL, NULL),
(24, 7, 'Facebook', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(25, 7, 'Twitter', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(26, 7, 'LinkedIn', '#', '2021-07-24 10:00:12', '2021-07-24 10:00:12'),
(27, 8, 'Facebook', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(28, 8, 'Twitter', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(29, 8, 'Pinterest', '#', '2021-07-24 10:09:59', '2021-07-24 10:09:59'),
(30, 10, 'Facebook', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(31, 10, 'YouTube', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(32, 10, 'GooglePlus', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(33, 10, 'LinkedIn', '#', '2021-07-24 10:20:23', '2021-07-24 10:20:23'),
(34, 12, 'Facebook', '#', '2022-06-14 08:11:51', '2022-06-14 08:11:51'),
(35, 12, 'YouTube', '#', '2022-06-14 08:11:51', '2022-06-14 08:11:51'),
(36, 12, 'Twitter', '#', '2022-06-14 08:11:51', '2022-06-14 08:11:51'),
(37, 13, 'Facebook', '#', '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(38, 13, 'Twitter', '#', '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(39, 13, 'LinkedIn', '#', '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(40, 13, 'YouTube', '#', '2022-06-14 08:15:25', '2022-06-14 08:15:25'),
(41, 14, 'Twitter', '#', '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(42, 14, 'LinkedIn', '#', '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(43, 14, 'YouTube', '#', '2022-06-14 08:19:15', '2022-06-14 08:19:15'),
(44, 15, 'LinkedIn', '#', '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(45, 15, 'YouTube', '#', '2022-06-14 08:42:08', '2022-06-14 08:42:08'),
(46, 15, 'Twitter', '#', '2022-06-14 08:42:08', '2022-06-14 08:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `listing_videos`
--

CREATE TABLE `listing_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `youtube_video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listing_videos`
--

INSERT INTO `listing_videos` (`id`, `listing_id`, `youtube_video_id`, `created_at`, `updated_at`) VALUES
(53, 3, '8a3klIS-kzw', '2022-09-11 04:39:22', '2022-09-11 04:39:22'),
(54, 3, 'nVmEIlRyNbc', '2022-09-11 04:39:22', '2022-09-11 04:39:22'),
(55, 3, 'QoK4VJRsHzc', '2022-09-11 04:39:22', '2022-09-11 04:39:22'),
(56, 5, 'oSFhdNi-qGc', '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(57, 5, 'hySAyK8-JW4', '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(58, 5, 'Padg3QDYxjI', '2022-09-11 05:04:08', '2022-09-11 05:04:08'),
(59, 6, 'k7yU3CmUeqQ', '2022-09-11 05:16:02', '2022-09-11 05:16:02'),
(60, 6, 'u-GWH60nFNI', '2022-09-11 05:16:02', '2022-09-11 05:16:02'),
(61, 6, 'Frtm-IMIMhk', '2022-09-11 05:16:02', '2022-09-11 05:16:02'),
(62, 7, 'G1hbsk7_Ihk', '2022-09-11 06:10:27', '2022-09-11 06:10:27'),
(63, 7, 's5Ti50KrarU', '2022-09-11 06:10:27', '2022-09-11 06:10:27'),
(64, 7, '2Y6GyyHWlBY', '2022-09-11 06:10:27', '2022-09-11 06:10:27'),
(65, 8, 'Bzj4IQhYhAg', '2022-09-11 06:35:50', '2022-09-11 06:35:50'),
(66, 8, 'u42n5bVbYgA', '2022-09-11 06:35:50', '2022-09-11 06:35:50'),
(67, 8, 'VYKz2xIJbZs', '2022-09-11 06:35:50', '2022-09-11 06:35:50'),
(68, 10, 'D1JVxeVoKFM', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(69, 10, 'UDpH-EaCUWg', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(70, 10, 'uYq31yUCX0g', '2022-09-11 08:04:10', '2022-09-11 08:04:10'),
(71, 12, '2idhRGvkU0s', '2022-09-11 08:35:00', '2022-09-11 08:35:00'),
(72, 12, 'sh3rPmYxO-Q', '2022-09-11 08:35:00', '2022-09-11 08:35:00'),
(73, 12, 'Bxey5z2mt9k', '2022-09-11 08:35:00', '2022-09-11 08:35:00'),
(74, 13, '7PYZMoQQqsU', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(75, 13, 'CrE0Qt-i1vM', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(76, 13, 'uScUBMGPBcU', '2022-09-11 08:43:18', '2022-09-11 08:43:18'),
(77, 14, '9lVdn9sG1FU', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(78, 14, 'dQrGGHM8xRo', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(79, 14, 'cQvQaZ4ML0E', '2022-09-11 09:27:57', '2022-09-11 09:27:57'),
(80, 15, 'bhZDpefiWIQ', '2022-09-11 09:37:08', '2022-09-11 09:37:08'),
(81, 15, 'BC3PheAPDOE', '2022-09-11 09:37:08', '2022-09-11 09:37:08'),
(82, 15, 'B3i7T1VIfuQ', '2022-09-11 09:37:08', '2022-09-11 09:37:08');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_11_18_041627_create_categories_table', 1),
(6, '2020_11_18_041747_create_blogs_table', 1),
(8, '2020_11_20_052802_create_general_settings_table', 3),
(11, '2020_11_20_161634_create_page_about_items_table', 4),
(14, '2020_11_21_052123_create_page_blog_items_table', 5),
(18, '2020_11_21_052416_create_page_faq_items_table', 5),
(20, '2020_11_21_052449_create_page_contact_items_table', 5),
(22, '2020_11_21_052522_create_page_term_items_table', 5),
(23, '2020_11_21_052537_create_page_privacy_items_table', 5),
(24, '2020_11_21_121719_create_page_home_items_table', 6),
(25, '2020_11_22_034318_create_page_other_items_table', 7),
(35, '2020_11_23_065919_create_testimonials_table', 15),
(36, '2020_11_23_145620_create_team_members_table', 16),
(37, '2020_11_23_170012_create_faqs_table', 17),
(38, '2020_11_24_155819_create_email_templates_table', 18),
(39, '2020_11_25_003858_create_social_media_items_table', 19),
(40, '2020_11_25_014512_create_subscribers_table', 20),
(48, '2020_12_03_124013_create_customers_table', 27),
(49, '2020_12_06_054145_create_orders_table', 28),
(68, '2021_05_27_120318_create_page_refund_items_table', 29),
(69, '2021_06_14_033116_create_products_table', 29),
(70, '2021_06_14_033648_create_product_categories_table', 29),
(71, '2021_06_14_033937_create_product_tags_table', 29),
(72, '2021_06_14_034232_create_product_photos_table', 29),
(73, '2021_06_19_133943_create_product_videos_table', 30),
(74, '2021_06_20_103527_create_features_table', 31),
(75, '2021_06_24_042127_create_order_details_table', 32),
(76, '2021_06_25_115914_create_customer_products_table', 33),
(77, '2021_07_06_091800_create_page_pricing_items_table', 34),
(78, '2021_07_06_092303_create_page_property_category_items_table', 35),
(79, '2021_07_06_092326_create_page_property_location_items_table', 35),
(80, '2021_07_06_092346_create_page_property_items_table', 35),
(81, '2020_11_28_085244_create_comments_table', 36),
(83, '2020_11_22_051017_create_dynamic_pages_table', 37),
(84, '2021_07_06_155753_create_property_brands_table', 37),
(85, '2021_07_06_155812_create_property_locations_table', 37),
(86, '2021_07_06_155829_create_properties_table', 37),
(92, '2021_07_06_160817_create_property_amenities_table', 38),
(93, '2021_07_06_160837_create_property_photos_table', 38),
(94, '2021_07_06_160854_create_property_videos_table', 38),
(95, '2021_07_06_160938_create_property_social_items_table', 38),
(96, '2021_07_06_161021_create_property_additional_features_table', 38),
(97, '2021_07_06_185302_create_amenities_table', 38),
(98, '2021_07_08_064744_create_packages_table', 39),
(99, '2021_07_08_163838_create_package_purchases_table', 40),
(100, '2019_12_14_000001_create_personal_access_tokens_table', 41);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_days` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_listings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amenities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_photos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_videos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_social_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_additional_features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_order` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_type`, `package_name`, `package_price`, `valid_days`, `total_listings`, `total_amenities`, `total_photos`, `total_videos`, `total_social_items`, `total_additional_features`, `allow_featured`, `package_order`, `created_at`, `updated_at`) VALUES
(1, 'Free', 'Free', '0', '1', '1', '2', '2', '2', '2', '2', 'No', 1, '2021-07-08 02:42:16', '2021-07-18 22:20:20'),
(2, 'Paid', 'Standard', '10', '30', '5', '5', '5', '5', '5', '5', 'Yes', 2, '2021-07-08 02:43:07', '2021-07-19 12:34:55'),
(4, 'Paid', 'Premium', '45', '60', '20', '20', '20', '20', '20', '20', 'Yes', 3, '2021-07-08 03:31:43', '2021-07-08 04:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `package_purchases`
--

CREATE TABLE `package_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_currency` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_currency_symbol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_amount` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_start_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currently_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_purchases`
--

INSERT INTO `package_purchases` (`id`, `user_id`, `package_id`, `transaction_id`, `paid_amount`, `paid_currency`, `paid_currency_symbol`, `admin_amount`, `payment_method`, `payment_status`, `package_start_date`, `package_end_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'PAYID-MDV23AY53140771GK6394933', '45.00', 'USD', '$', '45', 'PayPal', 'Completed', '2021-07-12', '2028-09-10', 1, NULL, '2022-03-11 21:53:40'),
(5, 3, 2, 'txn_3Kbz8LGD31Py00wT0xK7nK6I', '766.7', 'INR', '₹', '10', 'Stripe', 'Completed', '2022-03-11', '2022-04-10', 0, '2022-03-10 21:27:18', '2022-04-14 22:31:02'),
(6, 3, 2, 'PAYID-MIVMJ7I7TU27601UC2064509', '10', 'USD', '$', '10', 'PayPal', 'Completed', '2022-03-11', '2022-04-10', 0, '2022-03-10 21:43:39', '2022-04-14 22:31:02'),
(8, 3, 2, 'pay_J6O7IQXnl8Xhd6', '845', 'BDT', '৳', '10', 'RazorPay', 'Completed', '2022-03-13', '2022-04-12', 0, '2022-03-12 19:14:05', '2022-04-14 22:31:02'),
(9, 3, 2, '3219377', '4158.4', 'NGN', '₦', '10', 'Flutterwave', 'Completed', '2022-03-13', '2022-04-12', 0, '2022-03-12 19:35:11', '2022-04-14 22:31:02'),
(10, 3, 1, '', '0', NULL, NULL, NULL, '', 'Completed', '2022-04-15', '2028-04-16', 1, '2022-04-14 22:31:02', '2022-04-14 22:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `page_about_items`
--

CREATE TABLE `page_about_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_about_items`
--

INSERT INTO `page_about_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<h3>Our Mission</h3>\r\n<p style=\"text-align: left;\">Lorem ipsum dolor sit amet, ea qui tation adversarium definitionem, eu labitur denique est. Ad duo quando recusabo petentium. Mea elit affert oportere ex. Ut error affert accusam pri. Sit no causae vidisse invenire, bonorum inermis nec ex.</p>\r\n<p>Eam sint reformidans ex, ex doming iracundia his. Sint modus pro ne, vix ut omnis scripta corpora. Sea graecis suavitate te. Eum tantas possim torquatos ei. An qui falli sadipscing suscipiantur. At congue forensibus constituto his, erat vidit veniam vis eu, dico soleat possim nec ei.</p>\r\n<h3>Our Vision</h3>\r\n<p>Cu modo adipisci sea. At clita doctus sit. Pri ex solet deterruisset, falli harum fuisset qui ei, an commune delicata patrioque sit. Fabulas adversarium no sea, at quis disputando pri, meis epicurei eloquentiam vix ad. An consulatu sententiae posidonium his, te elaboraret cotidieque eos, sed an illud recteque.</p>\r\n<p>Eu per altera aliquam consulatu, ea pro nulla doctus. Sea porro everti an, nostrud ceteros nam no. Ei quando qualisque his, alterum ocurreret nec eu, dolorum deseruisse ad mel. Nam vidit omnis ad, pro eu veniam efficiendi, sea an iriure vivendo appetere. Usu ad latine vocibus voluptatum.</p>\r\n<p>Et bonorum consetetur mediocritatem qui, cu est omnis persequeris, mea te doctus incorrupte. Vix et tale justo. Vel te lorem sapientem interesset. Ne ius tantas saperet officiis, volutpat adolescens ut sea, an animal consectetuer vis. Nonumy ornatus constituam vis ne, cum ne vidisse patrioque.</p>', '53f50d2bf215f178667bbd016538ba9d.jpg', 'Show', 'About Us', 'About Us', NULL, '2022-09-10 06:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog', NULL, '4ea2ecf38750ca3c1efd203a3cb27b5e.jpg', 'Show', 'Blog', 'Blog Meta Description', NULL, '2022-09-10 06:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `name`, `detail`, `banner`, `status`, `contact_address`, `contact_email`, `contact_phone`, `contact_map`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', NULL, 'ad39adbcdc2c4085e818d495203092e1.jpg', 'Show', '3153 Foley Street\r\nMiami, FL 33176', 'Office 1: 954-648-1802\r\nOffice 2: 963-612-1782', 'sales@yourwebsite.com\r\nsupport@yourwebsite.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Contact Us', 'Contact Us Meta Description', NULL, '2022-09-10 06:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'FAQ', NULL, '7e8148c29f4fdba3b1c90617165fb953.jpg', 'Show', 'FAQ', 'FAQ Meta Description', NULL, '2022-09-10 06:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_total` int(11) DEFAULT NULL,
  `brand_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_youtube_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `listing_total` int(11) DEFAULT NULL,
  `listing_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_heading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_subheading` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_total` int(11) DEFAULT NULL,
  `location_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `seo_title`, `seo_meta_description`, `search_heading`, `search_text`, `search_background`, `brand_heading`, `brand_subheading`, `brand_total`, `brand_status`, `video_heading`, `video_text`, `video_youtube_id`, `video_background`, `video_status`, `listing_heading`, `listing_subheading`, `listing_total`, `listing_status`, `testimonial_heading`, `testimonial_subheading`, `testimonial_background`, `testimonial_status`, `location_heading`, `location_subheading`, `location_total`, `location_status`, `created_at`, `updated_at`) VALUES
(1, 'CarPoint - Multi Vendor Car Listing Directory', NULL, 'Find Your Desired Car', 'You can get your desired awesome different types of cars here by name, category or brand.', '006cd0074f808a36f64b572092a49eed.jpg', 'Brands', 'Please see all the car brands from here', 8, 'Show', 'Car Listing Instruction Video', 'You can submit your car on this website. But before submission, we suggest you to view our video guideline and we are sure it will help you very much to understand the review and submission process.', 'nSESMoHgItM', '210dcd72d6c4e55a05bbf5c8e0a75da5.jpg', 'Show', 'Featured Cars', 'See all the popular cars from below', 6, 'Show', 'Testimonial', 'What our clients tell about us', '78d1c104310a2e9fa6b0dab3130cd508.jpg', 'Show', 'Locations', 'Please see all the car locations from here', 8, 'Show', NULL, '2022-09-11 10:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_brand_items`
--

CREATE TABLE `page_listing_brand_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_brand_items`
--

INSERT INTO `page_listing_brand_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Listing Brand', NULL, '0c753632e3dc3980af6fc3c30ba32a2b.jpg', 'Show', 'Listing Brand', NULL, NULL, '2022-09-10 21:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_items`
--

CREATE TABLE `page_listing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_items`
--

INSERT INTO `page_listing_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Listing', NULL, '17257fb19420ac1317819843235591d9.jpg', 'Show', 'Listing', NULL, NULL, '2022-09-10 07:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `page_listing_location_items`
--

CREATE TABLE `page_listing_location_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_listing_location_items`
--

INSERT INTO `page_listing_location_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Listing Location', NULL, '023f9a040e41edac2cd1a37fe130be7a.jpg', 'Show', 'Listing Location', NULL, NULL, '2022-09-10 07:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_page_seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_page_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_page_seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_page_seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_page_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_page_seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_page_seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_page_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_panel_page_seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_panel_page_seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_panel_page_banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_seo_title`, `login_page_seo_meta_description`, `login_page_banner`, `registration_page_seo_title`, `registration_page_seo_meta_description`, `registration_page_banner`, `forget_password_page_seo_title`, `forget_password_page_seo_meta_description`, `forget_password_page_banner`, `customer_panel_page_seo_title`, `customer_panel_page_seo_meta_description`, `customer_panel_page_banner`, `created_at`, `updated_at`) VALUES
(1, 'Login', NULL, '02904c59043470e451f0cbf6e0b891d3.jpg', 'Registration', NULL, 'c15c06240e63faef21c06a891a52d721.jpg', 'Forget Password', NULL, '1ac9781bb480ed9623ca153eafe1d1c9.jpg', 'Customer Panel', NULL, '7eb1650ca5075e2b8c9d96f6ab43839e.jpg', NULL, '2022-09-10 07:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pricing', NULL, '55943a0e85f9410b80defc0eb9934fac.jpg', 'Show', 'Pricing', NULL, NULL, '2022-09-10 06:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p>\r\n<p>Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p>\r\n<p>Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p>\r\n<p>Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', '75d0d8c129db6f43989b0b498efb8097.jpg', 'Show', 'Privacy Policy', 'Privacy Policy Meta Description', NULL, '2022-09-10 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `name`, `detail`, `banner`, `status`, `seo_title`, `seo_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', '<p>Lorem ipsum dolor sit amet, id saperet suavitate signiferumque sea. Eu tantas invenire signiferumque per, at affert eloquentiam eos, duo no sale utroque. His ad homero verterem, ut paulo neglegentur contentiones per. Ex cum unum vocent commodo. Ut ridens principes rationibus ius, ex mea saepe docendi, cu eum unum assum accumsan.</p>\r\n<p>Ne quo possim consectetuer, splendide voluptatibus ut mea. Summo mucius regione qui et, sea soleat everti indoctum no. Brute postea ut vel, oblique propriae pertinacia et sed. No nominati adipiscing nam, accusata interpretaris no est, no tota conceptam nam. Id posidonium dissentiunt mea, an nibh menandri eum. Meis nominati cum cu.</p>\r\n<p>Eum ad delicatissimi signiferumque, mea causae delenit perfecto et. Sit primis nostrum id, an postea numquam per, id quo diceret deleniti consectetuer. Eum eu salutatus mediocritatem. Blandit ocurreret dissentiet ne quo, ex mazim numquam delenit his.</p>\r\n<p>Ea mel elit placerat. Ius nobis delicata gloriatur at. Nam fabulas salutandi at, in per officiis omittantur contentiones, omnes insolens suscipiantur sed cu. Ei modus persequeris vix. Persius legimus has an, mea dicit maiestatis adipiscing eu.</p>', '3dc9f048fc748843f0d00940c6e4f262.jpg', 'Show', 'Terms and Conditions', 'Terms and Conditions Meta Description', NULL, '2022-09-10 07:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arefin2k@gmail.com', '$2y$10$n.b82lZQRLiL4WIgRsgpeu8UpfQMmx9M1FdiQQ18rjK38i9yGD6kG', '2020-11-23 19:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `agent_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `listing_id`, `agent_id`, `agent_type`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(2, 3, 3, 'Customer', 4, 'This car is just awesome. I loved it.', '2021-07-11 12:42:25', '2021-07-11 12:42:25'),
(3, 7, 3, 'Customer', 5, 'First we thought that it was not good. But it changed our mind. It is very nice to ride. ', '2021-07-22 07:35:29', '2021-07-22 07:35:29'),
(4, 6, 3, 'Customer', 1, 'This is just a racing machine. Excellent accelaration.', '2021-07-22 08:21:04', '2021-07-22 08:21:04'),
(6, 3, 6, 'Customer', 3, 'Speed and accuracy is awesome. Always recommended!', '2021-07-22 17:43:38', '2021-07-22 17:43:38'),
(8, 5, 1, 'Admin', 4, 'Speechless and very good.', '2021-07-22 22:16:53', '2021-07-22 22:39:02'),
(11, 6, 1, 'Admin', 5, 'I love all the variations of this car.', '2021-07-22 22:44:16', '2021-07-22 22:44:16'),
(12, 5, 6, 'Customer', 5, 'The security is a pleasure. ', '2021-07-23 00:24:27', '2021-07-23 00:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_items`
--

CREATE TABLE `social_media_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_order` smallint(6) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media_items`
--

INSERT INTO `social_media_items` (`id`, `social_url`, `social_icon`, `social_order`, `created_at`, `updated_at`) VALUES
(2, 'https://www.twitter.com', 'fab fa-twitter', 2, '2020-11-24 12:54:56', '2021-07-05 09:41:31'),
(4, 'https://www.facebook.com/', 'fab fa-facebook-f', 1, '2020-11-24 12:56:23', '2022-03-06 21:49:11'),
(7, 'https://www.linkedin.com', 'fab fa-linkedin-in', 3, '2021-07-05 09:41:50', '2021-07-05 09:42:09'),
(8, 'https://www.pinterest.com', 'fab fa-pinterest-p', 4, '2021-07-05 09:42:37', '2021-07-16 22:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'David Smith', 'CEO, XYZ Multimedia', 'Eu alii augue copiosae cum, duo ei quaeque tibique repudiare, tantas pertinax pro ad. An vis ferri singulis tractatos. Per in facer utamur qualisque, vim simul placerat ex, ex vidit omnium convenire vix. At sea inani numquam tractatos. Persius adipisci rationibus at cum, qui cu aperiam volutpat periculis. Stet docendi adipisci mei ei.', '2bd322322a29fbd968cd2845fc9f6ab9.jpg', '2022-03-13 04:53:32', '2022-03-13 10:18:27'),
(2, 'John Doe', 'Director, ABC Media', 'Iisque corrumpit voluptatum vel et, et maluisset contentiones eos. Duo tantas adversarium eu, erant labores an mea. Ei perfecto tacimates mei. Per eirmod oporteat antiopam eu, duo in mucius admodum, nibh consul detracto cu sea. Nonumy iudicabit eu eam, at sed apeirian platonem liberavisse. Magna noster disputando pri eu.', 'acfabd7132148c90fcb91c9d911c6e88.jpg', '2022-03-13 10:16:59', '2022-03-13 10:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `country`, `address`, `state`, `city`, `zip`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `photo`, `banner`, `password`, `token`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Peter Smith', 'customer@gmail.com', '111-222-4569', 'USA', '23, PK Road, NYC 45', 'CA', 'NYC', '12982', 'https://www.testwebsite.com', 'https://www.facebook.com/sabbir', 'https://www.twitter.com/sabbir', NULL, NULL, NULL, NULL, '39953cc10c2b3ca7b26a64a3d53a3527.jpg', '5913aa1901f13d57607c5308ca4c6ed8.jpg', '$2y$10$u4qe8OUXllX2wZmPmwTdNuDXvi//RywL3Prhc07G8f.sH3VxQVJDy', '', 'Active', '2021-07-10 02:24:24', '2022-03-08 07:53:25'),
(4, 'James Hendershot', 'customer1@gmail.com', '662-908-3879', 'United States', '1240 Tanglewood Road,', 'MS', 'Luka', '38852', 'https://www.james101.com', '#', '#', '#', '#', '#', '#', '9cccdb0438c11135c7cd17549df802fd.jpg', 'faf1e4768e32e6272ef9f7e6342bfa1e.jpg', '$2y$10$jS2sgKkluo1AZR73RPltluFnY3aQF7yxp6INXhfmOn7VrpTEWGp76', '', 'Active', '2021-07-11 20:41:06', '2022-03-08 07:52:48'),
(6, 'Samin Shikder', 'customer2@gmail.com', '662-746-8568', 'USA', '2642 Rafe Lane', 'MS', 'Yazoo City', '39194', 'http://www.samin00.com', '#', '#', '#', '#', NULL, NULL, NULL, NULL, '$2y$10$51K8otGh6RH1CLbwW2YgK.TK0BzI1dJKGdySUA53i2gvDDcMeGruq', 'dd46d3a124a85f2f910008ce2c906face1e79a2db1d446bfa8db4843a91f89f5', 'Active', '2021-07-17 00:33:56', '2022-09-10 21:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(4, 6, 3, '2021-07-23 05:03:13', '2021-07-23 05:03:13'),
(5, 6, 5, '2021-07-23 05:03:58', '2021-07-23 05:03:58'),
(10, 3, 8, '2022-03-08 04:21:47', '2022-03-08 04:21:47'),
(11, 3, 6, '2022-03-08 04:21:51', '2022-03-08 04:21:51'),
(12, 3, 15, '2022-06-15 21:49:21', '2022-06-15 21:49:21'),
(13, 3, 13, '2022-06-15 21:51:29', '2022-06-15 21:51:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_additional_features`
--
ALTER TABLE `listing_additional_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_brands`
--
ALTER TABLE `listing_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_locations`
--
ALTER TABLE `listing_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_photos`
--
ALTER TABLE `listing_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_social_items`
--
ALTER TABLE `listing_social_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_videos`
--
ALTER TABLE `listing_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_purchases`
--
ALTER TABLE `package_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_about_items`
--
ALTER TABLE `page_about_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_brand_items`
--
ALTER TABLE `page_listing_brand_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_items`
--
ALTER TABLE `page_listing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_listing_location_items`
--
ALTER TABLE `page_listing_location_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_items`
--
ALTER TABLE `social_media_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_advertisements`
--
ALTER TABLE `home_advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `listing_additional_features`
--
ALTER TABLE `listing_additional_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `listing_amenities`
--
ALTER TABLE `listing_amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `listing_brands`
--
ALTER TABLE `listing_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `listing_locations`
--
ALTER TABLE `listing_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `listing_photos`
--
ALTER TABLE `listing_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `listing_social_items`
--
ALTER TABLE `listing_social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `listing_videos`
--
ALTER TABLE `listing_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_purchases`
--
ALTER TABLE `package_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `page_about_items`
--
ALTER TABLE `page_about_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_brand_items`
--
ALTER TABLE `page_listing_brand_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_items`
--
ALTER TABLE `page_listing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_listing_location_items`
--
ALTER TABLE `page_listing_location_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `social_media_items`
--
ALTER TABLE `social_media_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `cb1`
--
CREATE DATABASE IF NOT EXISTS `cb1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cb1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_23_081237_create_patients_table', 1),
(6, '2023_01_26_083828_create_surgeys_table', 2);

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
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diseases_suffering` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `what_diseases_suffering` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `given_birth_before` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_times_given_birth_before` int(11) NOT NULL DEFAULT 0,
  `how_given_birth` enum('natural','caesarean','not_given_birth_before') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_given_birth_before',
  `miscarriage_before` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_first_visit` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `what_visit` enum('detect','redo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `amount_remaining` int(11) NOT NULL,
  `detection_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `phone_number`, `address`, `diseases_suffering`, `what_diseases_suffering`, `given_birth_before`, `how_times_given_birth_before`, `how_given_birth`, `miscarriage_before`, `is_first_visit`, `what_visit`, `amount_paid`, `amount_remaining`, `detection_time`) VALUES
(5, '', 0, '', '', '', 'no', '', 0, 'not_given_birth_before', '', '', '', 0, 0, '2023-01-25 13:01:30'),
(6, '', 0, '', '', '', 'no', '', 0, 'not_given_birth_before', '', '', '', 0, 0, '2023-03-01 22:33:00'),
(7, '', 0, '', '', '', 'no', '', 0, 'not_given_birth_before', '', '', '', 0, 0, '2023-01-25 13:02:19'),
(8, '', 0, '', '', '', 'no', '', 0, 'not_given_birth_before', '', '', '', 0, 0, '2023-03-01 22:30:00'),
(9, '1212', 1212, '1212', '1212', 'no', 'no', 'no', 0, 'not_given_birth_before', 'yes', 'no', 'detect', 12, 12, '2024-03-01 13:30:00'),
(10, '1212', 1212, '1212', '1212', 'no', 'no', 'no', 0, 'not_given_birth_before', 'yes', 'no', 'detect', 12, 12, '2023-01-25 12:30:00'),
(12, 'شسيبشسيب', 121, '31212', 'يسشبشييب', 'yes', 'يبسبي', 'yes', 1, 'natural', 'no', 'no', 'detect', 12, 0, '2023-01-26 22:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surgeys`
--

CREATE TABLE `surgeys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diseases_suffering` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `what_diseases_suffering` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `given_birth_before` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_times_given_birth_before` int(11) NOT NULL DEFAULT 0,
  `how_given_birth` enum('natural','caesarean','not_given_birth_before') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_given_birth_before',
  `miscarriage_before` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_birth` enum('natural','caesarean','not_given_birth_before') COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `amount_remaining` int(11) NOT NULL,
  `detection_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surgeys`
--

INSERT INTO `surgeys` (`id`, `name`, `age`, `phone_number`, `address`, `diseases_suffering`, `what_diseases_suffering`, `given_birth_before`, `how_times_given_birth_before`, `how_given_birth`, `miscarriage_before`, `how_birth`, `hospital`, `amount_paid`, `amount_remaining`, `detection_time`) VALUES
(1, 'شسيبشسيب', 121, '31212', 'يسشبشييب', 'yes', 'يبسبي', 'yes', 1, 'natural', 'no', 'natural', 'النور', 0, 0, '2023-01-05 16:16:00'),
(2, '1212', 1212, '1212', '1212', 'no', 'no', 'no', 0, 'not_given_birth_before', 'yes', 'caesarean', 'sfdg', 322, 23, '2023-01-03 23:03:00'),
(3, '1212', 1212, '1212', '1212', 'no', 'no', 'no', 0, 'not_given_birth_before', 'yes', 'natural', 'dfaf', 121, 12, '2023-01-18 01:01:00');

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
(1, 'admin', 'admin@admin.admin', NULL, '$2y$10$SihWvLyKaQgQ4.wr3CzZp.RF7WBtzlwrSHd0xq0vXsyrIo7F4RLmm', NULL, '2023-01-25 07:58:46', '2023-01-25 07:58:46');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `surgeys`
--
ALTER TABLE `surgeys`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surgeys`
--
ALTER TABLE `surgeys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `clientdata`
--
CREATE DATABASE IF NOT EXISTS `clientdata` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `clientdata`;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `role` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`Id`, `Name`, `Mail`, `Password`, `image`, `role`) VALUES
(1, 'Mohamed Azmy', 'mohamed@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 'Mohamed Azmy.jpg', 1),
(2, 'Azmiasdf', 'zakry.com', '8cb2237d0679ca88db6464eac60da96345513964', 'zakry.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cms`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(8, 'Websites'),
(11, 'Clothes'),
(12, 'Horses'),
(13, 'Mohamed'),
(34, 'Mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `Id` int(11) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(300) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `RoleName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `RoleName`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `Id` int(11) NOT NULL,
  `site_key` varchar(300) NOT NULL,
  `site_value` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`Id`, `site_key`, `site_value`) VALUES
(1, 'theme1', 'food'),
(2, 'theme2', 'coffe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Mail` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Role` int(11) NOT NULL DEFAULT 1,
  `phone` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `Mail`, `Password`, `Role`, `phone`) VALUES
(1, 'Azmy', 'azmy@gmail.com', '123', 1, NULL),
(2, 'Mohamed', 'mohamed@gmail.com', '123', 1, NULL),
(5, 'Noah', 'noah@gmail.com', '12wael3', 2, NULL),
(6, 'JShark', 'jshark@gmail.com', 'jshark12345', 2, NULL),
(43, 'Mohamed Azmy', 'mohamedazmy@gmail.com', '123', 1, '01113501487'),
(44, 'wael', 'waelemad@gmail.com', '123', 1, '0111 350 1423'),
(45, 'addm', 'aadm@gmail.com', '123', 1, '0112313423'),
(46, 'Wael Jasser', 'waeljasser@gmail.com', '123', 1, '13222'),
(47, 'noah', 'noah@gmail.com', '123', 1, '012312412'),
(48, 'awdf', 'mohamed@gmail.com', '123', 1, 'asdf'),
(49, 'awdf', 'mohamed@gmail.com', '123', 1, 'asdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `category` (`category`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Role` (`Role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`category`) REFERENCES `category` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`Role`) REFERENCES `role` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `course`
--
CREATE DATABASE IF NOT EXISTS `course` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `course`;

-- --------------------------------------------------------

--
-- Table structure for table `coursename`
--

CREATE TABLE `coursename` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coursename`
--

INSERT INTO `coursename` (`id`, `Name`) VALUES
(1, 'Back-End'),
(2, 'Front-End'),
(3, 'Angular'),
(4, 'Unity');

-- --------------------------------------------------------

--
-- Stand-in structure for view `courserating`
-- (See below for the actual view)
--
CREATE TABLE `courserating` (
`Course_Name` varchar(30)
,`Rate` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `Name`) VALUES
(2, 'Ali Hassn'),
(3, 'Zakeria'),
(4, 'Fattoh'),
(5, 'Wael Abd ElHamid'),
(6, 'Hassan '),
(8, 'ma'),
(11, 'azd'),
(13, 'sdfa'),
(14, 'asdl;dg'),
(15, 'asdjdjgg'),
(16, 'jsf'),
(17, 'Sherif'),
(18, 'Sherif'),
(20, 'OLD.Name');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ID` int(11) NOT NULL,
  `Student` int(11) NOT NULL,
  `Course` int(11) NOT NULL,
  `Review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `Name`) VALUES
(7, 'Azmy'),
(9, 'Mohamed Azmy'),
(10, 'Wael Jasser'),
(19, '3shry'),
(21, 'fsdfsd');

-- --------------------------------------------------------

--
-- Structure for view `courserating`
--
DROP TABLE IF EXISTS `courserating`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `courserating`  AS SELECT `coursename`.`Name` AS `Course_Name`, avg(`review`.`Review`) AS `Rate` FROM ((`review` join `student` on(`review`.`Student` = `student`.`Id`)) join `coursename` on(`review`.`Course` = `coursename`.`id`)) GROUP BY `coursename`.`Name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursename`
--
ALTER TABLE `coursename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Student` (`Student`),
  ADD KEY `Course` (`Course`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursename`
--
ALTER TABLE `coursename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Student`) REFERENCES `student` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`Course`) REFERENCES `coursename` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `devjobs`
--
CREATE DATABASE IF NOT EXISTS `devjobs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `devjobs`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'asdf', 'logos/xSUyC3FYF2avxvY7X5fMluEFqpRdAZto6IWIfWUz.jpg', 'asdfsaasdffasdg', 'sdfa', 'asdfdsaf', 'asdfsadf@gmail.com', 'asrfagafe.com', 'adsgfadsfgsdafgfsad;lgjadofv;lamnb;oesfajsd;lmvklas\'dfvm;saldkvbmadfl;vms;dlmvnkl;sdfhnvl;savadsv', '2022-07-31 17:03:51', '2022-07-31 17:04:52');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_13_120711_create_listings_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Azmy', 'azmy@gmail.com', NULL, '$2y$10$BGaNGOCg3TSVZeevBWdhJeMSnXH6ORhLidbiUPd0YFGbIFxmcZ876', NULL, '2022-07-31 16:56:11', '2022-07-31 16:56:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `eloquent1`
--
CREATE DATABASE IF NOT EXISTS `eloquent1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `eloquent1`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Christiansenstad', '2022-08-01 16:16:35', '2022-08-01 16:16:35'),
(2, 'Rickyshire', '2022-08-01 16:16:35', '2022-08-01 16:16:35'),
(3, 'Morarland', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(4, 'Nienowchester', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(5, 'Port Johathanton', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(6, 'New Davinton', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(7, 'Keelingtown', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(8, 'North Carlee', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(9, 'Lake Jamaalmouth', '2022-08-01 16:16:36', '2022-08-01 16:16:36'),
(10, 'Ziemefort', '2022-08-01 16:16:36', '2022-08-01 16:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Country_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `Country_Name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Belarus', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(2, 'Guatemala', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(3, 'Vietnam', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(4, 'Guernsey', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(5, 'Yemen', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(6, 'Equatorial Guinea', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(7, 'Uganda', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(8, 'British Virgin Islands', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(9, 'Paraguay', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(10, 'Denmark', NULL, '2022-08-02 13:16:56', '2022-08-02 13:16:56'),
(11, 'Dominica', NULL, '2022-08-02 13:16:57', '2022-08-02 13:45:57'),
(12, 'Jersey', NULL, '2022-08-02 13:16:57', '2022-08-02 13:45:57'),
(13, 'Guinea-Bissau', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(14, 'Bosnia and Herzegovina', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(15, 'Antarctica (the territory South of 60 deg S)', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(16, 'Saint Barthelemy', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(17, 'Saint Martin', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(18, 'British Indian Ocean Territory (Chagos Archipelago)', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57'),
(20, 'Saint Kitts and Nevis', NULL, '2022-08-02 13:16:57', '2022-08-02 13:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_01_162833_create_products_table', 1),
(6, '2022_08_01_170329_create_cities_table', 1),
(7, '2022_08_02_151156_create_countries_table', 2),
(8, '2022_08_06_151932_create_gender_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vallie Friesen Jr.', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(2, 'Adolfo Legros', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(3, 'Mr. Gregory Lemke', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(4, 'Mr. Easter Brown I', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(5, 'Otto Rogahn', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(6, 'Miss Chloe Kuhn Sr.', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(7, 'Malachi Kulas', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(8, 'Ines Langworth', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(9, 'Mark Larkin', '2022-08-01 16:20:53', '2022-08-01 16:20:53'),
(10, 'Kacey Wunsch', '2022-08-01 16:20:53', '2022-08-01 16:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Azmy', 'Azmy@azmy.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:16', '2022-08-01 16:46:41'),
(2, 'Valentina Rutherford', 'violet45@reynolds.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:16', '2022-08-01 16:20:16'),
(3, 'Genoveva Rutherford', 'eleonore51@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(4, 'Mr. Ulises Bahringer', 'corkery.emmanuelle@yahoo.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(5, 'Mr. Travon Luettgen', 'dina84@hintz.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(6, 'Alberto Durgan', 'rharvey@osinski.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(7, 'Clemmie Eichmann Sr.', 'wweimann@beier.biz', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(8, 'Prof. Trace Deckow Jr.', 'cordia00@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17'),
(9, 'Alexandrea Harris DVM', 'denis82@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-08-01 16:20:17', '2022-08-01 16:20:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `email_verf_and_forgot_pass`
--
CREATE DATABASE IF NOT EXISTS `email_verf_and_forgot_pass` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `email_verf_and_forgot_pass`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'noah', 'noah@gmail.com', NULL, '$2y$10$v3GJpsCwQHe4WKYVF0.7X.SH4dmBJM32ae3yMtYB5lCMsK0AcxSTm', NULL, '2022-10-15 14:36:50', '2022-10-15 14:36:50'),
(2, 'Wael', 'wael@gmail.com', NULL, '$2y$10$o/OXo4OeK8n.VJx4uTEmC.mqchIr43Bpir2KBYrCK7/LVrMHal5oq', NULL, '2022-10-15 14:39:16', '2022-10-15 14:39:16'),
(3, 'qq', 'qq@gmail.com', NULL, '$2y$10$/FI2xY7Qg5Oi6Fz89DvhO.f.A2Pmzjwf1d/Hy7E5bZS49B7bTRd3W', NULL, '2022-10-15 14:42:33', '2022-10-15 14:42:33'),
(4, 'azmy', 'mohameda7my@yahoo.com', '2022-10-15 14:50:38', '$2y$10$/nofokv0LOCmxIl/PA6zT.QBl15fnFtrtJeOhaoHmdgSrt/rsbsGm', '6CuabbznYqqCnTpRT0UaxIQfZlKsKdYXKKaAjY1eGcz657fRu94V1XOzUBqn', '2022-10-15 14:45:47', '2022-10-15 14:55:47');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `homestead`;
--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Roof` int(11) DEFAULT NULL,
  `Number Of Patients` int(11) DEFAULT NULL,
  `Doctor Manger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `Name`, `Roof`, `Number Of Patients`, `Doctor Manger`) VALUES
(1, 'Eye', 3, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `docinhos`
--

CREATE TABLE `docinhos` (
  `id` int(11) NOT NULL,
  `DocId` int(11) NOT NULL,
  `FhospitalID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docinhos`
--

INSERT INTO `docinhos` (`id`, `DocId`, `FhospitalID`) VALUES
(0, 4, 2),
(1, 1, 1),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `BD` date DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `phony` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `department`, `BD`, `sex`, `phony`) VALUES
(1, 'Ali Hussin', 'Kindney', '0000-00-00', 'Male', 2),
(2, 'Hassan El Banna', 'Heart', '0000-00-00', 'Male', 3),
(4, 'Mahmoud', 'Eyes', '1963-09-01', 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `f hospitals`
--

CREATE TABLE `f hospitals` (
  `id` int(11) NOT NULL,
  `Doctors` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `f hospitals`
--

INSERT INTO `f hospitals` (`id`, `Doctors`) VALUES
(1, 'Hamoda'),
(2, 'El Akhlaq');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Date of Arrival` date DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `Doctor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `Date of Arrival`, `nationality`, `sex`, `Doctor`) VALUES
(1, 'Ali', 30, '2021-08-30', 'Egyption', 'Male', 4),
(2, 'Hassan', 30, '2021-09-03', 'Egyption', 'Male', 2),
(3, 'Adel', 32, '2021-09-05', 'Egyption', 'Male', 4),
(4, 'ahmed', 44, '2021-09-06', 'Egyption', 'Male', 1),
(9, 'folana', 100, '2021-09-07', 'Egyptian', 'Female', 4),
(10, 'Ali Hasanen', 44, '2021-09-08', 'Egyptian', 'Male', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phone number`
--

CREATE TABLE `phone number` (
  `id` int(11) NOT NULL,
  `Prefix` varchar(5) DEFAULT NULL,
  `Number R` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone number`
--

INSERT INTO `phone number` (`id`, `Prefix`, `Number R`) VALUES
(1, '+2012', 28884702),
(2, '+2012', 34875643),
(3, '+2012', 21323435);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Doctor Manger` (`Doctor Manger`);

--
-- Indexes for table `docinhos`
--
ALTER TABLE `docinhos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DocId` (`DocId`),
  ADD KEY `DocId_2` (`DocId`),
  ADD KEY `FhospitalID` (`FhospitalID`),
  ADD KEY `DocId_3` (`DocId`),
  ADD KEY `DocId_4` (`DocId`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phony` (`phony`);

--
-- Indexes for table `f hospitals`
--
ALTER TABLE `f hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Doctor` (`Doctor`);

--
-- Indexes for table `phone number`
--
ALTER TABLE `phone number`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `f hospitals`
--
ALTER TABLE `f hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phone number`
--
ALTER TABLE `phone number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Doctor Manger`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `docinhos`
--
ALTER TABLE `docinhos`
  ADD CONSTRAINT `docinhos_ibfk_1` FOREIGN KEY (`DocId`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docinhos_ibfk_2` FOREIGN KEY (`FhospitalID`) REFERENCES `f hospitals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`phony`) REFERENCES `phone number` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`Doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameOfHotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Excellence_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Service_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Teamwork_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `nameOfHotel`, `bio`, `description_1`, `description_2`, `description_3`, `Excellence_description`, `Service_description`, `Teamwork_description`, `success_description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Group III', 'this is our bio', 'this is our desc 1', 'this is our desc2', 'this is desc 3', 'Excellence Descritpuo', 'Ser', 'Team', 'Success', 'about.jpg', NULL, '2023-01-10 01:46:06'),
(3, 'Name OF hotel 1 And Welcom', 'bio 1  And Welcome', 'description1 of hotel 1 And Welcom', 'description 2 of hotel 1 And Welcome', 'description 3 of hotel 1 And Welcome asdf', '', '', '', '', 'AZMY.jpg', NULL, '2022-12-27 12:16:40'),
(4, 'Name 2 for hotelrer', 'sadf', 'kj;saopf', 'gllk;m\';l', '\'lkn\'lsn\'', '', '', '', '', '14_rango.jpg', NULL, '2022-12-26 11:48:20'),
(5, 'The Name 3', 'THe Bio 3', 'DESCRIPTION 3ff', 'DESCRIPTION 3', 'DESCRIPTION 3', '', '', '', '', '113-1136028_rango-wallpaper-px-download-animatiin-jackpot.jpg', NULL, '2022-12-26 11:49:37'),
(6, 'NAME $4', 'BIO $4', 'DESCRIPTION 4', 'DESCRIPTION 4', 'DESCRIPTION 4', '', '', '', '', '1292471_fantasticbeaststhecrimesofgrindelwaldwarnerbros_736555.jpg', NULL, '2022-12-26 11:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `about_ar`
--

CREATE TABLE `about_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameOfHotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Excellence_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Service_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Teamwork_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_ar`
--

INSERT INTO `about_ar` (`id`, `nameOfHotel`, `bio`, `description_1`, `Excellence_description`, `Service_description`, `Teamwork_description`, `success_description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'سيبسيب سشيب شسيب', 'سشيبسيب شسيب شسيب', 'شسيللسيب شسيب شسيب', 'نحن نؤدي على مستويات غيرشسيبسشيب عادية. نحن المهنبشسيبية في مظهرنا, لغة, والسلوك', 'نحن نتوقع باستمرار ونستجيب لرشسيبشسيبغبات واحتياجات ضيوفنا المعلنة وغير المعلنة', 'نحن نخلق بيئة من الخدمسشيبشسيبة الجانبية بحيثشسيبسشيب يتم تلبيةشسيبشسيب', 'نحن ملتزمون بالنجاح الجشسيبماعي لفندقناشسيبسشيبشيسب', '247166106_6247266280689_163454015584681749_n.png.jpg', NULL, '2022-12-27 12:04:28');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Ci_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Co_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adults_number` int(11) NOT NULL,
  `childs_number` int(11) NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cvv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Ci_date`, `Co_date`, `name`, `adults_number`, `childs_number`, `room_type`, `CN`, `MY`, `Cvv`, `message`, `created_at`, `updated_at`) VALUES
(1, 'asdf', 'asdf', 'asdf', 23, 23, 'sadf', 'as32', '323', '23', 'sdfasadf', NULL, NULL),
(2, '2022-12-02', '2023-01-07', 'Mohamed Azmy', 2, 0, 'Couple Room', '23', '23', '23123', 'sadfasdfsadf', '2022-12-29 08:23:12', '2022-12-29 08:23:12'),
(3, '2022-12-29', '2023-01-01', 'Mohamed Azmy', 2, 1, 'Couple Room', '124123', '12/123', '123', 'asdf asdfasdf', '2022-12-29 08:39:12', '2022-12-29 08:39:12'),
(4, '2022-12-27', '2023-01-03', 'Mohamed Azmy', 1, 0, 'Signature Room', '312351234', '14/12', '242', 'asdf asdf asdfsadfc sdaf sadfasdf', '2023-01-09 14:10:31', '2023-01-09 14:10:31'),
(5, '2023-01-10', '2023-01-13', 'Noah Aadam', 1, 0, 'Signature Room', '2134124132', '22/12', '242', 'This is my first room in this hotel', '2023-01-10 01:47:27', '2023-01-10 01:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_and_rest`
--

CREATE TABLE `cafe_and_rest` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cafe_and_rest`
--

INSERT INTO `cafe_and_rest` (`id`, `meal`, `description1`, `description2`, `image`, `created_at`, `updated_at`) VALUES
(1, 'breakfast', 'Break From The Restaurant sdf asdf fsadfsd sadf sadf f sdf fsad', 'adsf sadff asdf asdf asdfsadf sdf asdf', 'Chrysanthemum.jpg', NULL, '2022-12-24 12:28:56'),
(2, 'lunch', 'Voluptas vel esse repudiandae quo excepturi.', 'Et nobis maiores eius. Voluptatibus ut enim blanditiis atque harum sint. Laborum eos ipsum ipsa odit magni. Incidunt hic ut molestiae aut qui. Est repellat minima eveniet eius et quis magni nihil. Consequatur dolorem quaerat quos qui similique accusamus n', 'Desert.jpg', NULL, '2022-12-24 12:28:56'),
(3, 'dinner', 'Velit veniam ipsa sit nihil blanditiis mollitia natus.sdf sadfsadfsadf', 'asdgsadf asdff asdf,f m;snflvnslnf lksadnlf msd;ln fklsdmfcs', 'Hydrangeas.jpg', NULL, '2022-12-24 12:28:09'),
(4, 'cafe', 'Ratione hic sapiente nsadf asdd sdf asdf ostrum doloremque illum nulla praesentium id', 'asdgsadf asdff asdf,f m;snflvnslnf lksadnlf msd;ln fklsdmfcs', 'Koala.jpg', NULL, '2022-12-24 12:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `cafe_ar`
--

CREATE TABLE `cafe_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cafe_ar`
--

INSERT INTO `cafe_ar` (`id`, `meal`, `description1`, `description2`, `image`, `created_at`, `updated_at`) VALUES
(1, 'الإفطار', 'سشينب', 'سشيبسشيب', 'bandicam 2021-11-20 23-48-12-49.jpg', NULL, '2022-12-27 12:07:15'),
(2, 'الغذاء', 'اللذة أو وجود النبذ ​​الذي يجب أن نتلقاه.', 'ولنا أجداده. للمتعة كما هي للتملق وهذه. إنها تكره تلك المهام بالذات. تحدث هنا كمشكلة أو من. إنه يصد أصغر شيء له ، والذي ليس كبيرًا. دعه يبحث عن المعاناة التي تأتي من أولئك الذين يتهموننا بما شابه ذلك\r\n\r\n', 'departments-2.jpg', NULL, NULL),
(3, 'العشاء', 'يرغب في العفو عنه ، حتى لا يكون شيئًا من لطف التملق.', 'ولنا أجداده. للمتعة كما هي للتملق وهذه. إنها تكره تلك المهام بالذات. تحدث هنا كمشكلة أو من. إنه يصد أصغر شيء له ، والذي ليس كبيرًا. دعه يبحث عن المعاناة التي تأتي من أولئك الذين يتهموننا بما شابه ذلك', 'bandicam 2022-01-05 17-58-09-914.jpg', NULL, '2022-12-27 12:07:15'),
(4, 'الكافية', 'شسيسبشسي', 'سشيب', 'fd6b16d4cdf628ad45d0551d1abbac91--vinyl-figures-action-figures.jpg', NULL, '2022-12-27 12:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `description`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Description', 'Email1', 122342, 'address 1', NULL, '2022-12-26 09:05:41'),
(2, 'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.\r\n\r', 'Email224e23', 12234, 'A108 Adam Street, New York, NY 535022', NULL, '2022-12-26 09:05:42'),
(3, 'Description koko wawa', 'email', 12301341, 'address 2', NULL, '2022-12-27 12:17:16'),
(4, 'Description', 'Email1 for hotel 2', 12123, 'address 2', NULL, '2022-12-26 10:36:57'),
(5, 'Desc for hotel 2', 'Email1 for hotel 2', 12123, 'address 1 for hotel 2', NULL, NULL),
(6, 'Desc', 'Email2 for hotel 2', 3123, 'adress 2 for hotel 2', NULL, NULL),
(7, 'fasdf---', 'asdfaf@gmail--', 23, 'adfadgwqefqwef--', NULL, '2022-12-26 12:02:29'),
(8, 'sadfqwrgqwef', 'asdfqwregqwe@yahoo.ent--', 999999931, 'asdfqrwhkqwef', NULL, '2022-12-26 12:02:29'),
(9, 'o;khjnwpoj', 'qwkegnlqweg@lk;asfg.asf', 8888888, 'fsadfqwe', NULL, NULL),
(10, 'gqwefg&&fqwe', 'fqwefeqw@fwe', 77777, 'asfqwef', NULL, NULL),
(11, 'الوصف  شسيبشسيب', 'email@email.arabic1adsf', 1142, 'العنوان الاول شسيبشيب', NULL, '2022-12-28 07:59:22'),
(12, 'الوصف', 'email@email.arabic1fa', 2242, 'العنوان الثاني', NULL, '2022-12-28 07:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_urls`
--

CREATE TABLE `contacts_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts_urls`
--

INSERT INTO `contacts_urls` (`id`, `facebook`, `twitter`, `insta`, `linkedin`, `skype`, `created_at`, `updated_at`) VALUES
(1, 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', 'https://www.linkedin.com/', NULL, '2022-12-26 09:05:42'),
(2, 'https://facebook.com/', 'https://twitter.com/', 'https://inastagram.com/', 'https://linkedin.com/', 'https://facebook.com/', NULL, '2022-12-26 10:36:58'),
(3, 'https://facebook.com/', 'https://twitter.com/', 'https://inastagram.com/', 'https://linkedin.com/', 'https://facebook.com/', NULL, NULL),
(4, 'https://www.facebook.com/', 'https://www.facebook.com/groups/feed/', 'https://www.facebook.com/groups/feed/', 'https://www.facebook.com/groups/feed/', 'https://www.facebook.com/groups/feed/', NULL, '2022-12-26 12:04:00'),
(5, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', NULL, NULL),
(6, 'https://www.linkedin.com', 'https://www.google.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.instagram.com', NULL, '2022-12-28 07:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `hotel_name`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ALAZMI REITY', 'https://www.youtube.com/watch?v=8hGW5CTRs3k', 'hero-bg.jpg', NULL, '2023-01-10 01:48:39'),
(2, 'Hotel1 ', 'https://youtu.be/Jwg2pSA0YN8', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `features_ar`
--

CREATE TABLE `features_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features_ar`
--

INSERT INTO `features_ar` (`id`, `hotel_name`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'فنادق العزمي عزميبيس بشسيب شسيب', 'https://www.youtube.com/watch?v=desfMmub1s8', 'hero-bg.jpg', NULL, '2022-12-27 12:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `fq_ar`
--

CREATE TABLE `fq_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `q1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `q2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `q3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `q4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `q5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `a1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `a2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `a3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `a4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `a5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fq_ar`
--

INSERT INTO `fq_ar` (`id`, `description`, `q1`, `q2`, `q3`, `q4`, `q5`, `a1`, `a2`, `a3`, `a4`, `a5`, `created_at`, `updated_at`) VALUES
(1, 'asfd', 'sadf', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'adsf', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', 'من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟', NULL, '2022-12-28 07:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `gal`
--

CREATE TABLE `gal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image5` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gal`
--

INSERT INTO `gal` (`id`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `created_at`, `updated_at`) VALUES
(1, 'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.\r\n', 'gallery-1.jpg', 'gallery-2.jpg', 'gallery-3.jpg', 'gallery-4.jpg', 'gallery-5.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gal_ar`
--

CREATE TABLE `gal_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image5` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gal_ar`
--

INSERT INTO `gal_ar` (`id`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `created_at`, `updated_at`) VALUES
(1, 'asdfasdf', 'img1.jpg', 'img2.jpg', 'img3.jpg', 'img4.jpg', 'img5.jpg', NULL, '2022-12-28 06:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `bio`, `image`, `created_at`, `updated_at`) VALUES
(1, 'United Arab Hotel', 'Welcome to our hotel', 'Desert.jpg', NULL, '2023-01-25 12:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `main_ar`
--

CREATE TABLE `main_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_ar`
--

INSERT INTO `main_ar` (`id`, `hotel_name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'فندق ريماب ب شسيب بيسشب شسي', 'لسينتىل مششسيبسيبشبكسيىيبمكنش شمنسيكىببشسيبشسي سشيب مشكنسيىب شسيبمنكبى مكسيبىمنك', 'slidy.jpg', NULL, '2022-12-27 12:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `url`, `created_at`, `updated_at`) VALUES
(2, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27368.00259351084!2d31.190784847778303!3d30.970473138459845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f7a3588d1e0bc9%3A0x6183a7dc067aac00!2z2YXYs9iq2LTZgdmJINin2YTZhdit2YTYqSDYp9mE2YPYqNix2Ykg2KfZhNi52KfZhQ!5e0!3m2!1sar!2seg!4v1673323264935!5m2!1sar!2seg', NULL, '2023-01-10 02:02:06'),
(3, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1709.284519825923!2d31.356432981861868!3d31.038254602312804!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79d707e6c89ad%3A0xf28c6c0f1e40830c!2z2KjZiNin2KjYqSDYqtmI2LTZg9inINis2KfZhdi52Kkg2KfZhNmF2YbYtdmI2LHYqQ!5e0!3m2!1sar!2seg!4v1672054910588!5m2!1sar!2seg', NULL, '2022-12-26 09:42:44'),
(4, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1709.284519825923!2d31.356432981861868!3d31.038254602312804!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79d707e6c89ad%3A0xf28c6c0f1e40830c!2z2KjZiNin2KjYqSDYqtmI2LTZg9inINis2KfZhdi52Kkg2KfZhNmF2YbYtdmI2LHYqQ!5e0!3m2!1sar!2seg!4v1672054910588!5m2!1sar!2seg', NULL, NULL),
(5, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1709.2266746887603!2d31.35641152418975!3d31.041476594758137!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79dd5f452aadf%3A0xcd01fe041552ee7!2z2YXYs9is2K8g2YPZhNmK2Kkg2LnZhNmI2YXYjCDZhdmK2Kog2K7ZhdmK2LMg2YjZg9mB2LEg2KfZhNmF2YjYrNmK2Iwg2KfZhNmF2YbYtdmI2LHYqdiMINin2YTYr9mC2YfZhNmK2KkgNzY1MDAzMA!5e0!3m2!1sar!2seg!4v1672063614755!5m2!1sar!2seg', NULL, '2022-12-26 12:07:54'),
(6, 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1709.284519825923!2d31.356432981861868!3d31.038254602312804!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79d707e6c89ad%3A0xf28c6c0f1e40830c!2z2KjZiNin2KjYqSDYqtmI2LTZg9inINis2KfZhdi52Kkg2KfZhNmF2YbYtdmI2LHYqQ!5e0!3m2!1sar!2seg!4v1672054910588!5m2!1sar!2seg', NULL, NULL),
(7, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13676.271652088635!2d31.36559835!3d31.024357449999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14f79c257dd7d28f%3A0x5d183458459d4b6e!2z2YXYrdi32Ycg2KrZiNiq2KfZhCDYp9mE2YXZhti12YjYsdmH!5e0!3m2!1sar!2seg!4v1673253839322!5m2!1sar!2seg', NULL, '2023-01-09 06:45:08');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_22_094805_create_home_table', 1),
(6, '2022_12_22_095130_create_about_table', 1),
(7, '2022_12_22_095230_create_services_table', 1),
(8, '2022_12_22_095334_create_cafe_and_rest_table', 1),
(9, '2022_12_22_095527_create_teams_table', 1),
(10, '2022_12_22_095609_create_contacts_table', 1),
(11, '2022_12_22_103429_create_team_description_table', 1),
(12, '2022_12_24_134515_create_map_table', 2),
(13, '2022_12_25_082001_create_features_table', 3),
(14, '2022_12_25_085921_create_gal_table', 4),
(15, '2022_12_25_095147_create__f_q_table', 5),
(16, '2022_12_25_104908_create_contacts_urls_table', 6),
(17, '2022_12_27_083139_create_main_ar_table', 7),
(18, '2022_12_27_085447_create_about_ar_table', 8),
(19, '2022_12_27_092410_create_features_ar_table', 9),
(20, '2022_12_27_102839_create_serive_ar_table', 10),
(21, '2022_12_27_110040_create_cafe_ar_table', 11),
(22, '2022_12_27_121710_create_team_ar_table', 12),
(23, '2022_12_28_072808_create_gal_ar_table', 13),
(24, '2022_12_28_085202_create_fq_ar_table', 14),
(25, '2022_12_28_222344_create_text_us_table', 15),
(26, '2022_12_29_094457_create_book_table', 16);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serive_ar`
--

CREATE TABLE `serive_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bio` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurants_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `RoomService_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parking_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `BusinessCenter_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `FreeShuttleService_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `InternetAcess_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `serive_ar`
--

INSERT INTO `serive_ar` (`id`, `bio`, `restaurants_description`, `RoomService_description`, `parking_description`, `BusinessCenter_description`, `FreeShuttleService_description`, `InternetAcess_description`, `created_at`, `updated_at`) VALUES
(1, 'بسشي', 'بثصب', '12', 'بشس', 'تقدم مجموعة فنادق العازمي ريت خدمات مهمة لتجربة سفر أعمال خالية من العيوب. تم تصميم مركز رجال الأعمال في الفندق لتلبية جميع احتياجات سفر رجال الأعمال الخاص بك ومتاح لمساعدتك في جميع الخدمات المكتبية مثل المسح الضوئي والبريد الإلكتروني الوثائق وخدمات الفاكس وتصوير المستندات والطباعة واللوازم المكتبية.', 'شسيبي', 'توفر مجموعة فنادق ألازمي ريت خدمة الإنترنت المجشسيبشسيبانية. اتصال إنترنت لاسلكي عالي السرعة مجاني في كل من الغرف والمناطق العامة.', NULL, '2022-12-27 12:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurants_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RoomService_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parking_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BusinessCenter_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FreeShuttleService_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InternetAcess_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `bio`, `restaurants_description`, `RoomService_description`, `parking_description`, `BusinessCenter_description`, `FreeShuttleService_description`, `InternetAcess_description`, `created_at`, `updated_at`) VALUES
(1, 'asdgsadf asdff asdf,f m;snflvnslnf lksadnlf msd;ln fklsdmfcs', 'asdgsadf asdff asdf,f m;snflvnslnf lksadnlf msd;ln fklsdmfcs', 'ALAZMI REIT Hotel Group provides 24-hour room service. Please click here for Room Service menu.\r\n\r\n', 'asdgsadf asdff asdf,f m;snflvnslnf lksadnlf msd;ln fklsdmfcs', 'ALAZMI REIT Hotel Group provides significant services for a flawless business-travel experience. The hotel\'s business centre is designated to meet all your business travel needs and available to assist you with all office services such as scanning and ema', 'The accommodating hotel guests can benefit of free shuttle service provided by Shopping & Entertainment World based on availability. Please click here for free shuttle bus hours and destinations.', 'ALAZMI REIT Hotel Group offers free Internet access. High-speed wireless Internet connection is complimentary both in the rooms and public areas.', NULL, '2022-12-24 12:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LinkedIn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Insta_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `job`, `Facebook_url`, `Twitter_url`, `LinkedIn_url`, `Insta_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Sarah Jhonson', 'Anesthesiologist', 'dd', 'sadff', 'sdaf', 'sda', 'Penguins.jpg', NULL, '2022-12-24 11:30:52'),
(3, 'William Anderson', 'Cardiology', 'asdfads', 'asdfasd', 'asdfsda', 'asdfsda', 'Chrysanthemum.jpg', NULL, '2022-12-24 11:32:04'),
(6, 'Mohamed Azmy', 'Laravel Developer', 'https://www.google.com', 'https://www.google.com', 'https://www.google.com', 'https://www.google.com', 'FB_IMG_1532105802866.jpg', '2022-12-24 11:26:37', '2023-01-10 01:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `team_ar`
--

CREATE TABLE `team_ar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Facebook_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Twitter_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `LinkedIn_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Insta_url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_ar`
--

INSERT INTO `team_ar` (`id`, `name`, `job`, `Facebook_url`, `Twitter_url`, `LinkedIn_url`, `Insta_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'اماندا جيبسون', 'طبيبة اعصاب', 'https://google.com', 'https://google.com', 'https://google.com', 'https://google.com', 'doctors-1.jpg', NULL, NULL),
(2, 'ويليام اندريسون', 'طبيب قلب', 'https://google.com', 'https://google.com', 'https://google.com', 'https://google.com', 'doctors-2.jpg', NULL, NULL),
(3, 'وائل', 'بشمهندس', 'https://google.com', 'https://twiiter.com', 'https://google.com', 'https://google.com', '113-1136028_rango-wallpaper-px-download-animatiin-jackpot.jpg', NULL, '2022-12-27 10:43:32'),
(5, 'qwerweqr', 'wqerweqr', 'https://facebook.com/', 'https://facebook.com/', 'https://facebook.com/', 'https://facebook.com/', 'AZMY.jpg', '2022-12-27 10:50:56', '2022-12-27 10:50:56'),
(6, 'fasd', 'شسيب', 'https://twitter.com/', 'https://facebook.com/', 'https://facebook.com/', 'https://facebook.com/', '1292471_fantasticbeaststhecrimesofgrindelwaldwarnerbros_736555.jpg', '2022-12-27 12:08:24', '2022-12-27 12:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `team_description`
--

CREATE TABLE `team_description` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_description`
--

INSERT INTO `team_description` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'it dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.', NULL, '2022-12-24 09:30:35'),
(3, ' من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟من هم الذين سأقرأ منهم؟\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `text_us`
--

CREATE TABLE `text_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_us`
--

INSERT INTO `text_us` (`id`, `name`, `email`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Azmy', 'azmy@gmail.com', 'asdfa', 'asfd', '2022-12-28 21:28:05', '2022-12-28 21:28:05'),
(2, 'Mohamed Azmy', 'azmy@gmail.com', 'asdfa', 'asdfsadf', '2022-12-28 21:29:41', '2022-12-28 21:29:41'),
(3, 'Mohamed Azmy', 'asdfads@asdfd.asdf', 'asdfsadf', 'sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdf', '2022-12-29 06:23:05', '2022-12-29 06:23:05'),
(4, 'asdf', 'asfd@asdfd.asdf', 'asdf@adsfsadf', 'asdf', '2022-12-29 06:35:59', '2022-12-29 06:35:59'),
(5, 'sdf', 'asdf@sadf', 'asdf', 'asfdasdf', '2022-12-29 07:01:46', '2022-12-29 07:01:46'),
(6, 'asdf', 'asdfads@asdfd.asdf', 'asdf', 'asdf', '2022-12-29 07:07:49', '2022-12-29 07:07:49'),
(7, 'محمد عزمي', 'mohameda7my@yahoo.com', 'anysub', 'السلام عليكم ورحمة الله وبركاته', '2023-01-10 02:03:22', '2023-01-10 02:03:22');

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
(1, 'azmy@azmy.net', 'azmy@azmy.net', NULL, '$2y$10$mI29hqBB336S/k0J3puAle6AKAOnIro9DP/gQ7SkYbDCZrz0E.cbi', NULL, '2022-12-27 11:05:59', '2022-12-27 11:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `_f_q`
--

CREATE TABLE `_f_q` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `q1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `q5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_f_q`
--

INSERT INTO `_f_q` (`id`, `description`, `q1`, `q2`, `q3`, `q4`, `q5`, `a1`, `a2`, `a3`, `a4`, `a5`, `created_at`, `updated_at`) VALUES
(1, 'this is desc', 'Questions 1', 'Questions 2', 'Questions 3', 'Questions 4', 'Questions 5', 'Answer 1', 'Answer 2', 'Answer 3', 'Answer 4', 'Answer 5', NULL, '2023-01-10 01:53:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_ar`
--
ALTER TABLE `about_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_and_rest`
--
ALTER TABLE `cafe_and_rest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cafe_ar`
--
ALTER TABLE `cafe_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts_urls`
--
ALTER TABLE `contacts_urls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features_ar`
--
ALTER TABLE `features_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fq_ar`
--
ALTER TABLE `fq_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gal`
--
ALTER TABLE `gal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gal_ar`
--
ALTER TABLE `gal_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_ar`
--
ALTER TABLE `main_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `serive_ar`
--
ALTER TABLE `serive_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_ar`
--
ALTER TABLE `team_ar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_description`
--
ALTER TABLE `team_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_us`
--
ALTER TABLE `text_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_f_q`
--
ALTER TABLE `_f_q`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `about_ar`
--
ALTER TABLE `about_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cafe_and_rest`
--
ALTER TABLE `cafe_and_rest`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cafe_ar`
--
ALTER TABLE `cafe_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts_urls`
--
ALTER TABLE `contacts_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `features_ar`
--
ALTER TABLE `features_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fq_ar`
--
ALTER TABLE `fq_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gal`
--
ALTER TABLE `gal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gal_ar`
--
ALTER TABLE `gal_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_ar`
--
ALTER TABLE `main_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serive_ar`
--
ALTER TABLE `serive_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team_ar`
--
ALTER TABLE `team_ar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team_description`
--
ALTER TABLE `team_description`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `text_us`
--
ALTER TABLE `text_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_f_q`
--
ALTER TABLE `_f_q`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `interview`
--
CREATE DATABASE IF NOT EXISTS `interview` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `interview`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `created_at`, `updated_at`) VALUES
(9, 'Good Article', 5, NULL, NULL),
(10, 'Good Article', 6, NULL, NULL),
(11, 'Good Article', 5, NULL, NULL),
(12, 'Good Article', 6, NULL, NULL),
(13, 'Wow Man', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_18_120121_create_posts_table', 2),
(6, '2022_05_18_120148_create_comments_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(5, 'JSON', 'JSON (JavaScript Object Notation, pronounced /ˈdʒeɪsən/; also /ˈdʒeɪˌsɒn/) is an open standard file format and data interchange format that uses human-readable text to store and transmit data objects consisting of attribute–value pairs and arrays (or other serializable values). It is a common data format with diverse uses in electronic data interchange, including that of web applications with servers.\r\n\r\nJSON is a language-independent data format. It was derived from JavaScript, but many modern programming languages include code to generate and parse JSON-format data. JSON filenames use the extension .json.\r\n\r\nDouglas Crockford originally specified the JSON format in the early 2000s.[1] He and Chip Morningstar sent the first JSON message in April 2001.[2]', NULL, NULL),
(6, 'What is REST?\r\n', 'In the REST architectural style, the implementation of the client and the implementation of the server can be done independently without each knowing about the other. This means that the code on the client side can be changed at any time without affecting the operation of the server, and the code on the server side can be changed without affecting the operation of the client.\r\n\r\nAs long as each side knows what format of messages to send to the other, they can be kept modular and separate. Separating the user interface concerns from the data storage concerns, we improve the flexibility of the interface across platforms and improve scalability by simplifying the server components. Additionally, the separation allows each component the ability to evolve independently.\r\n\r\nBy using a REST interface, different clients hit the same REST endpoints, perform the same actions, and receive the same responses.', NULL, NULL);

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
(5, 'Mohamed Azmy', 'mohameda7my@gmail.com', NULL, '$2y$10$qz5R9Qs5zFNNHrHtYpijqOXsHV7C4XKA5MMel2zKA3NB48fGb8Nie', NULL, '2022-05-18 07:14:48', '2022-05-18 08:08:42'),
(6, 'Wael', 'w@gfsadmail.com', NULL, '$2y$10$9p9GADkbjh0/QlXZ0B2dPOKbceAYSj.JEZHdvDllJ0zkmWVrXO8mW', NULL, '2022-05-18 07:15:29', '2022-05-18 16:01:16'),
(8, '36 Street , El bahr Street', 'w@gmaidfl.com', NULL, '$2y$10$RGm8lboPlVqLdh23KND7seK9vEdXkGlltUX048mpbVI0BOShei/sa', NULL, '2022-05-18 07:46:05', '2022-05-18 07:46:05'),
(9, 'Wael', 'w@asdfasdfgmail.com', NULL, '$2y$10$b7eWYq.zqZZcx3i2TlmFxO.MFkLrEwaNEXmQvMW6j0CpM/ZvakQrC', NULL, '2022-05-18 07:49:05', '2022-05-18 16:02:52'),
(11, 'asdf23rrwqf', 'w@sadfgmail.com', NULL, '$2y$10$y6pfi.z3AqM4E54BDKkEU.675zpNVOIo/JFr6GshDlwRZFXLi33xG', NULL, '2022-05-18 07:51:00', '2022-05-18 07:51:00'),
(12, 'sdafadsfas', 'w@asdfgmail.com', NULL, '$2y$10$7dksDY0wQv0SYgis5/3F/uskGEE4/Jo7l3kn9mXjhQTT6d9hjUPPa', NULL, '2022-05-18 07:51:31', '2022-05-18 07:51:31'),
(13, 'asdfsadfdfs', 'w@gsadfaemail.com', NULL, '$2y$10$DqZ1zkCpExsF5vWD73fQGuamTHglMyfQdxwwemNkB7uxpTLfJb2wy', NULL, '2022-05-18 09:36:12', '2022-05-18 09:36:12'),
(14, 'asdf', 'w@gmail.com', NULL, '$2y$10$bxurVP/EayLxTf9HI4V0p.GWq.ckxQdbEiYUztTB60HoOhQgNAlq6', NULL, '2022-05-18 09:41:47', '2022-05-18 09:41:47'),
(16, 'dffdf', 'w@dfgmail.com', NULL, '$2y$10$bo6McV4lJlqWSPT5oLoAiePQ5KtcGVIGxGEpOjUnV8hUUYsFbAw8S', NULL, '2022-05-18 16:01:56', '2022-05-18 16:01:56'),
(17, 'Ali', 'ali@gmail.com', NULL, '$2y$10$1BvJGjlVSONQUBaGzBs/OeBR3oW5tDOhtY8IvujxgEwevSXRwUolC', NULL, '2022-05-18 16:03:31', '2022-05-18 16:03:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
--
-- Database: `jetstream`
--
CREATE DATABASE IF NOT EXISTS `jetstream` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jetstream`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_04_23_210510_create_sessions_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DGIyiqS2DE2EWuq2qpaPRvwa6DtGpKgjXyDEhI8Q', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlczYkhsQlFCUVVyWXcyMXVHaXVhT1dWVWI2WURMYXAyeVpWTGpVdSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1658835276),
('xWy3wmeQqabPuVvOpRWdS6gEqSLjut7QuJpOebih', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjNxWHhCNER2ZVE4cnBXWVZaUnRJVkNUcHg0TzE3bER6c0gwaGdiNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1658831682),
('yzwkTNEpMPaVgniZt3O3GyzG3qosP1lUZKjcv5Ov', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidG1lb0ZIZHg2WWpQSkEzSGhSdnlpVFoyZDE3Y1ZZc242MGF1U0pCQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1650748595);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'mohamed\'s Team', 1, '2022-07-26 08:54:45', '2022-07-26 08:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', 'mohamed@gmail.com', NULL, '$2y$10$fcnP2jH7EI.8QUUBrq00GufGsPeSJritUs9a4qbTFsAFt3sAY9Sae', NULL, NULL, NULL, NULL, 1, NULL, '2022-07-26 08:54:45', '2022-07-26 08:54:47');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`) VALUES
(1, 'Ms. Piper Schoen I', 'ken20@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9kOvWXFfv4'),
(2, 'Chad Kihn Sr.', 'jayce90@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zpCKAXz5ex'),
(3, 'Melvin Krajcik II', 'barton.mohr@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cI6aElPS9g'),
(4, 'Meredith Rodriguez II', 'ludwig.toy@example.org', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KrjKoYMOFD'),
(5, 'Jimmie Powlowski', 'aweimann@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SgTCbxfLUW'),
(6, 'Jaqueline Wisozk V', 'cdietrich@example.com', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XQGjMjUgQg'),
(7, 'Alfonso Abernathy II', 'wilma.crona@example.com', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n6zNK4UUGr'),
(8, 'Dulce Goodwin', 'andrew10@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'y0CFOljspV'),
(9, 'Wiley Pfannerstill', 'viva04@example.net', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pWZi9rCDLY'),
(10, 'Dr. Marcelo Paucek Jr.', 'llesch@example.org', '2022-12-07 15:02:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SxjsRLLmj0');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `laravel1`
--
CREATE DATABASE IF NOT EXISTS `laravel1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel1`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fsa1e', '2022-09-28 17:01:40', '2022-09-28 17:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_28_191703_category', 1),
(6, '2022_08_31_195210_create_product_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_cms`
--
CREATE DATABASE IF NOT EXISTS `laravel_cms` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_cms`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `blog_category`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Atom', 'Atom Is The Monemer Of Any Substance', 1, 1, NULL, '2022-07-08 11:05:25', NULL),
(2, 'Tesla', 'He Is A Physics Scientist', 2, 2, '2022-06-22 10:52:46', '2022-07-07 09:17:49', NULL),
(3, 'Molecules', 'Is more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atomIs more and bigger than an atom', 1, 2, '2022-06-22 10:59:42', '2022-07-08 10:02:19', NULL),
(5, 'Jack Sparrow', 'He\'s A Good Pirate And Real character , He\'s Muslim', 2, 2, '2022-07-08 10:46:44', '2022-07-08 10:46:44', NULL),
(7, 'quantum mechanics', 'Quantum mechanics is a fundamental theory in physics that provides a description of the physical properties of nature at the scale of atoms and subatomic particles. It is the foundation of all quantum physics including quantum chemistry, quantum field theory, quantum technology, and quantum information science.', 1, 2, '2022-07-10 09:08:13', '2022-07-10 09:08:13', NULL),
(8, 'HTML', 'Is Hyper Text Language', 14, 2, '2022-07-10 10:57:25', '2022-07-10 10:57:25', NULL),
(9, 'Most Democrats Don’t Want Biden in 2024, New Poll Shows', '(CNN)President Joe Biden on Friday signed an executive order aimed at protecting access to reproductive health services in the wake of the Supreme Court overturning Roe v. Wade and eliminating the constitutional right to an abortion.', 6, 3, '2022-07-11 09:46:16', '2022-07-11 09:49:22', NULL),
(10, '10 Political Conspiracy Theories That Would Actually Make Sense', 'The Mount Rushmore National Memorial is a giant sculpture carved into the Black Hills of South Dakota. The idea stemmed from Doane Robinson in 1923 and enlisted the help of Danish-American sculptor Gutzon Borglum. Construction took place from 1937 to 1941, but in 1938, Borglum began secretly blasting away at the rockwork for what would become the Hall of Records. This room was meant to be a vault containing the nation’s history and important documents, but when Congress found out, they ordered the funding be spent on the presidents and not the Hall of Records.', 6, 3, '2022-07-11 09:48:47', '2022-07-11 09:51:35', NULL),
(12, 'What\'s BioChemistry', 'Biochemistry is the branch of science that explores the chemical processes within and related to living organisms. It is a laboratory based science that brings together biology and chemistry. By using chemical knowledge and techniques, biochemists can understand and solve biological problems.', 4, 4, '2022-07-11 10:33:48', '2022-07-11 10:34:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs_categories`
--

CREATE TABLE `blogs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs_categories`
--

INSERT INTO `blogs_categories` (`id`, `blog_category`) VALUES
(1, 'Physics'),
(2, 'Hisory'),
(3, 'Chemistry'),
(4, 'BioChemistry'),
(5, 'Commerce'),
(6, 'Politics'),
(7, 'Economy'),
(8, 'literature and novel'),
(9, 'Biology'),
(10, 'Religion'),
(11, 'Islamic Religion'),
(12, 'Maths'),
(13, 'Medicine'),
(14, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `blog_id`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'WHat A Good Person', 2, NULL, NULL),
(2, 2, 'Good Scientist', 2, NULL, NULL),
(3, 2, 'I Love Tesla', 2, '2022-07-08 13:38:13', '2022-07-08 13:38:13'),
(4, 5, 'I Love The Movie soooooo much', 2, '2022-07-08 13:59:57', '2022-07-08 13:59:57'),
(5, 7, 'I love quntam mechanics', 2, '2022-07-10 09:08:41', '2022-07-10 09:08:41'),
(6, 7, 'I LOve Qunntam Mehcanics', 2, '2022-07-10 10:58:18', '2022-07-10 10:58:18'),
(7, 2, 'Tesla Is A Good Man , that made edison to exploit \'m', 1, '2022-07-11 09:16:52', '2022-07-11 09:16:52'),
(8, 10, 'I think it from 1936', 4, '2022-07-11 10:14:38', '2022-07-11 10:14:38'),
(9, 7, 'I Like Tesla Theories', 4, '2022-07-11 10:25:27', '2022-07-11 10:25:27'),
(10, 5, 'that mean he is a real character', 3, '2022-07-11 10:43:48', '2022-07-11 10:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_16_122914_create_blogs_categories_table', 2),
(6, '2022_06_20_185105_create_blogs_table', 3),
(7, '2022_06_20_185137_create_comments_table', 3),
(8, '2022_07_07_131444_add_soft_deletes_to_blogs', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Azmy', 'azmy@gmail.com', '$2y$10$dTRUz7R5cGx1ylq6NtSM.OElF06a.h6tPV1gBWh7dW/Xh/T9aJoyW', 0, NULL, '2022-06-16 10:26:18', '2022-06-16 10:26:18'),
(2, 'mohamed', 'mohamed@gmail.com', '$2y$10$DrnCC/rYS4NMMfCY7yoaIudnjB2CKr7756UmaS.PnjbJ0jsxJXY6G', 0, NULL, '2022-06-16 17:48:40', '2022-06-16 17:48:40'),
(3, 'Noah', 'noah@gmail.com', '$2y$10$6K3.CO82Xe1yLaCnGMqjgOwpKEBrixJpnV9XzdNEj3x5xFb/2RZ8S', 0, NULL, '2022-07-11 09:44:36', '2022-07-11 09:44:36'),
(4, 'Mohamed Azmy', 'mohamedazmy@gmail.com', '$2y$10$rBgzMAMxfWmFRMOfADHeFuL36mE.1LicH08H3XZoMyTs78TjhtL4S', 0, NULL, '2022-07-11 10:09:46', '2022-07-11 10:09:46'),
(5, 'Mohamed Azmy', 'mohameda7my@yahoo.com', '$2y$10$zMbfC8t3h0UXGczMfZ7IR.0jEhtebAlJgzH.vRx4crSiPBHPLuP3S', 0, NULL, '2022-12-10 10:39:55', '2022-12-10 10:39:55'),
(6, 'Azmy', 'sadf@asdf.net', '$2y$10$C3ULFUixcL5CRon6/TDCXuOMzRaXqRQe8tttQSznqzb2/mKnQP3Nu', 0, NULL, '2023-01-09 06:48:13', '2023-01-09 06:48:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_foreign` (`blog_category`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_foreign` (`blog_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blogs_categories`
--
ALTER TABLE `blogs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_foreign` FOREIGN KEY (`blog_category`) REFERENCES `blogs_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel_rest_api-main`
--
CREATE DATABASE IF NOT EXISTS `laravel_rest_api-main` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_rest_api-main`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_04_140823_create_petitions_table', 1),
(6, '2022_06_04_142335_change_category_type_in_petitions', 1),
(7, '2022_06_15_124123_create_authors_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petitions`
--

CREATE TABLE `petitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signees` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petitions`
--
ALTER TABLE `petitions`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petitions`
--
ALTER TABLE `petitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Id`, `Name`) VALUES
(1, 'Mohamed Azmy'),
(2, 'Mohamed'),
(44, 'Ramy Essam');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`) VALUES
(1, 'We All Go'),
(2, 'To Where'),
(37, 'www');

-- --------------------------------------------------------

--
-- Table structure for table `mix`
--

CREATE TABLE `mix` (
  `id` int(11) NOT NULL,
  `author_name` int(11) DEFAULT NULL,
  `book_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mix`
--

INSERT INTO `mix` (`id`, `author_name`, `book_name`) VALUES
(1, 1, 1),
(2, 2, 1),
(7, 5, 2),
(20, 44, 37);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mix`
--
ALTER TABLE `mix`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `author_name` (`author_name`),
  ADD KEY `book_name` (`book_name`),
  ADD KEY `author_name_2` (`author_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `mix`
--
ALTER TABLE `mix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mix`
--
ALTER TABLE `mix`
  ADD CONSTRAINT `mix_ibfk_1` FOREIGN KEY (`book_name`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mix_ibfk_2` FOREIGN KEY (`author_name`) REFERENCES `author` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `many2many`
--
CREATE DATABASE IF NOT EXISTS `many2many` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `many2many`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_14_124615_create_roles_table', 1),
(6, '2022_04_14_124713_create_role_user_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', NULL, NULL),
(2, 'admin', NULL, NULL),
(3, 'superadmin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'mohamed azmy'),
(2, 'randa ');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `middleware`
--
CREATE DATABASE IF NOT EXISTS `middleware` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `middleware`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`) VALUES
(1, 'Maria Nikolaus', 'edythe.jacobi@example.com', 'female'),
(2, 'Dedrick Harris', 'guy29@example.com', 'female'),
(3, 'Stone Deckow', 'sophie.nitzsche@example.com', 'male'),
(4, 'Prof. Margret Christiansen', 'teresa07@example.com', 'male'),
(5, 'Gudrun Bergnaum', 'felicity81@example.org', 'female'),
(6, 'Mrs. Jakayla Kemmer', 'krista43@example.org', 'male'),
(7, 'Ellen Corwin', 'trantow.jaqueline@example.net', 'female'),
(8, 'Eula Hettinger DDS', 'hudson.kenny@example.org', 'female'),
(9, 'Prof. Tabitha Kautzer Jr.', 'america43@example.com', 'male'),
(10, 'Sydnee Schultz', 'johan.thiel@example.net', 'female'),
(11, 'Ms. Eva Luettgen', 'jalon.watsica@example.com', 'male'),
(12, 'Arch Kreiger II', 'keara.koch@example.org', 'male'),
(13, 'Miss Paula Crooks II', 'nellie64@example.com', 'female'),
(14, 'Eloisa Beatty', 'spollich@example.org', 'male'),
(15, 'Prof. Brittany Douglas', 'nmurazik@example.org', 'female'),
(16, 'Virginie Flatley', 'emilie.eichmann@example.org', 'male'),
(17, 'Russ O\'Connell MD', 'will.arnoldo@example.org', 'female'),
(18, 'Avery Block', 'skiles.audie@example.com', 'female'),
(19, 'Crystel Batz', 'amorar@example.org', 'female'),
(20, 'Estefania Wehner III', 'spfannerstill@example.org', 'male');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Database: `migration`
--
CREATE DATABASE IF NOT EXISTS `migration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `migration`;

-- --------------------------------------------------------

--
-- Table structure for table `categ`
--

CREATE TABLE `categ` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_Id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_03_14_171145_create_posts_table', 1),
(14, '2022_03_16_180003_add_age_to_posts_table', 1),
(15, '2022_03_16_181035_add_description_to_posts', 1),
(16, '2022_04_09_113920_create_categ_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `age` int(11) NOT NULL,
  `myDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','owner','producer','manger') COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Indexes for table `categ`
--
ALTER TABLE `categ`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categ_user_id_foreign` (`user_Id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categ`
--
ALTER TABLE `categ`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categ`
--
ALTER TABLE `categ`
  ADD CONSTRAINT `categ_user_id_foreign` FOREIGN KEY (`user_Id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `migration_1`
--
CREATE DATABASE IF NOT EXISTS `migration_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `migration_1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_01_160322_create_students_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `migration_2`
--
CREATE DATABASE IF NOT EXISTS `migration_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `migration_2`;
--
-- Database: `p2`
--
CREATE DATABASE IF NOT EXISTS `p2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `p2`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_02_111408_create_projects_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user_token', 'd451add782de508b07e3df163d8c5436cce975f0bb00542a982933f18171475c', '[\"*\"]', '2022-10-02 10:26:32', NULL, '2022-10-02 09:24:52', '2022-10-02 10:26:32'),
(2, 'App\\Models\\User', 2, 'user_token', 'a2fc8991e863068fea21120cfcd05ba72106023e97be68c57dd767d8abe4cb8e', '[\"*\"]', '2022-10-02 10:27:02', NULL, '2022-10-02 10:17:47', '2022-10-02 10:27:02'),
(3, 'App\\Models\\User', 2, 'user_token', 'ce4b53d28a95457a3c6371a56d3304fbad75ca301193bf83ec50cf44494a2712', '[\"*\"]', '2022-10-03 18:14:25', NULL, '2022-10-03 18:11:41', '2022-10-03 18:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `project_description`, `user_id`) VALUES
(1, 'la mer', 'la mer est blue', 1),
(2, 'la mer 2', 'la mer est blue 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'azmy', 'azmy@gmail.com', '$2y$10$KSiEqGiShZZYgUVO2plbf.WN.54Ovsf5T/gKfQGw4Uefe2SbE8f9a', NULL, '2022-10-02 09:24:38', '2022-10-02 09:24:38'),
(2, 'noah', 'noah@gmail.com', '$2y$10$9p7xCKNO1vXaq5r4lleQ.uRUDT9H1iWtDD8jdxcz./OAArU.vdo.i', NULL, '2022-10-02 10:17:34', '2022-10-02 10:17:34'),
(3, 'img/Chrysanthemum.jpg', 'asf@gmail.com', '12345', NULL, '2022-10-03 19:46:37', '2022-10-03 19:46:37'),
(4, 'img/Chrysanthemum.jpg', 'awsf@gmail.com', '12345', NULL, '2022-10-03 19:54:36', '2022-10-03 19:54:36');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `paddle1`
--
CREATE DATABASE IF NOT EXISTS `paddle1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paddle1`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billable_id` bigint(20) UNSIGNED NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_05_03_000001_create_customers_table', 1),
(4, '2019_05_03_000002_create_subscriptions_table', 1),
(5, '2019_05_03_000003_create_receipts_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billable_id` bigint(20) UNSIGNED NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `checkout_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `receipt_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billable_id` bigint(20) UNSIGNED NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_id` int(11) NOT NULL,
  `paddle_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_plan` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paused_from` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Mohamed Azmy', 'azmy@azmy.net', NULL, '$2y$10$aErLMJPSRS0VHD7u3z3mWOynLsRIJmjpWCMgBRFS8iMqZevczWDIq', NULL, '2023-01-14 06:22:50', '2023-01-14 07:22:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_billable_id_billable_type_index` (`billable_id`,`billable_type`);

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
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `receipts_order_id_unique` (`order_id`),
  ADD UNIQUE KEY `receipts_receipt_url_unique` (`receipt_url`),
  ADD KEY `receipts_billable_id_billable_type_index` (`billable_id`,`billable_type`),
  ADD KEY `receipts_paddle_subscription_id_index` (`paddle_subscription_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_paddle_id_unique` (`paddle_id`),
  ADD KEY `subscriptions_billable_id_billable_type_index` (`billable_id`,`billable_type`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `part2`
--
CREATE DATABASE IF NOT EXISTS `part2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `part2`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_17_144711_create_posts_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'hhhh', NULL, NULL),
(2, 'Ewellfurt', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(3, 'Batzland', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(4, 'North Jerryborough', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(5, 'Brownstad', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(6, 'Mitchellton', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(7, 'Lake Rosemaryville', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(8, 'Port Alfredamouth', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(9, 'South Dereck', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(10, 'Braunland', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(11, 'South Dellaberg', '2022-05-17 12:55:27', '2022-05-17 12:55:27'),
(12, 'New Lilianeburgh', '2022-05-17 12:56:18', '2022-05-17 12:56:18'),
(13, 'East Mauriciofurt', '2022-05-17 12:56:18', '2022-05-17 12:56:18'),
(14, 'Zackeryfurt', '2022-05-17 12:56:18', '2022-05-17 12:56:18'),
(15, 'Leonieton', '2022-05-17 12:56:18', '2022-05-17 12:56:18'),
(16, 'South Gonzalofort', '2022-05-17 12:56:19', '2022-05-17 12:56:19'),
(17, 'West Ronaldo', '2022-05-17 12:56:19', '2022-05-17 12:56:19'),
(18, 'South Chasemouth', '2022-05-17 12:56:19', '2022-05-17 12:56:19'),
(19, 'Port Favian', '2022-05-17 12:56:19', '2022-05-17 12:56:19'),
(20, 'Zboncakbury', '2022-05-17 12:56:19', '2022-05-17 12:56:19'),
(21, 'North Annettaborough', '2022-05-17 12:56:19', '2022-05-17 12:56:19');

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
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `part_01`
--
CREATE DATABASE IF NOT EXISTS `part_01` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `part_01`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_13_181706_create_phones_table', 1),
(6, '2022_04_13_191924_create_posts_table', 1),
(7, '2022_04_13_192046_create_comments_table', 1),
(8, '2022_04_14_114321_create_roles_table', 1),
(9, '2022_04_14_115409_create_user_role_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `paypal1`
--
CREATE DATABASE IF NOT EXISTS `paypal1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paypal1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_09_085526_create_payments_table', 1);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `paypal2`
--
CREATE DATABASE IF NOT EXISTS `paypal2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paypal2`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_14_120054_create_payments_table', 1);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `paypal3`
--
CREATE DATABASE IF NOT EXISTS `paypal3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `paypal3`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_15_083058_create_payment_table', 1);

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
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'PAYID-MPB32VQ60S68553YC818952T', 'QMW8AT5Y9N7EE', 'sb-isz4v24871230@personal.example.com', 10.00, 'USD', 'approved', '2023-01-15 06:46:44', '2023-01-15 06:46:44'),
(2, 'PAYID-MPCAA6Y816971693S6416320', 'QMW8AT5Y9N7EE', 'sb-isz4v24871230@personal.example.com', 10.00, 'USD', 'approved', '2023-01-15 11:33:27', '2023-01-15 11:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"full_screen\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'profs', 'table', 'college', ''),
('root', 'student', 'table', 'college', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('hospital', 1, 'A'),
('tax governent', 2, 'Al'),
('library', 3, 'dd'),
('course', 4, 'Review'),
('wael', 5, 'adf'),
('cms', 6, 'cms'),
('amz', 7, 'sas'),
('migration', 8, 'migration_01'),
('08_relationship', 9, '08_relationship'),
('pos_website', 10, 'pos'),
('laravel_cms', 11, 'laravel-cms'),
('relationship_1', 12, 'relationship_1'),
('spatie1', 13, 'spatie');

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cb1\",\"table\":\"surgeys\"},{\"db\":\"cb1\",\"table\":\"patients\"},{\"db\":\"students\",\"table\":\"students\"},{\"db\":\"paddle1\",\"table\":\"users\"},{\"db\":\"spatie1\",\"table\":\"user_pages\"},{\"db\":\"spatie1\",\"table\":\"pages\"},{\"db\":\"spatie1\",\"table\":\"users\"},{\"db\":\"amz\",\"table\":\"student_vs_doctor\"},{\"db\":\"08_relationship\",\"table\":\"user_role\"},{\"db\":\"auth_advanced\",\"table\":\"posts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('08_relationship', 'comments', 9, 149, 415),
('08_relationship', 'failed_jobs', 9, 117, 22),
('08_relationship', 'migrations', 9, 829, 301),
('08_relationship', 'password_resets', 9, 61, 320),
('08_relationship', 'personal_access_tokens', 9, 782, 21),
('08_relationship', 'phones', 9, 335, 166),
('08_relationship', 'posts', 9, 406, 328),
('08_relationship', 'users', 9, 557, 48),
('amz', 'department', 7, 465, 241),
('amz', 'doctor', 7, 716, 232),
('amz', 'student', 7, 197, 243),
('amz', 'student_vs_doctor', 7, 462, 391),
('cms', 'category', 6, 163, 164),
('cms', 'post', 6, 427, 172),
('cms', 'role', 6, 892, 240),
('cms', 'setting', 6, 166, 369),
('cms', 'user', 6, 687, 202),
('course', 'coursename', 4, 122, 213),
('course', 'review', 4, 373, 206),
('course', 'student', 4, 608, 222),
('hospital', 'department', 1, 102, 61),
('hospital', 'docinhos', 1, 518, 228),
('hospital', 'doctor', 1, 306, 223),
('hospital', 'f hospitals', 1, 808, 246),
('hospital', 'patients', 1, 67, 216),
('hospital', 'phone number', 1, 90, 437),
('laravel_cms', 'blogs', 11, 145, 289),
('laravel_cms', 'blogs_categories', 11, 431, 357),
('laravel_cms', 'comments', 11, 152, 69),
('laravel_cms', 'failed_jobs', 11, 893, 14),
('laravel_cms', 'migrations', 11, 893, 206),
('laravel_cms', 'password_resets', 11, 863, 317),
('laravel_cms', 'personal_access_tokens', 11, 232, 536),
('laravel_cms', 'users', 11, 392, 74),
('library', 'author', 3, 695, 219),
('library', 'book', 3, 227, 233),
('library', 'mix', 3, 457, 221),
('migration', 'categ', 8, 374, 54),
('migration', 'failed_jobs', 8, 452, 257),
('migration', 'migrations', 8, 115, 200),
('migration', 'password_resets', 8, 108, 45),
('migration', 'personal_access_tokens', 8, 786, 287),
('migration', 'posts', 8, 104, 334),
('migration', 'users', 8, 755, 16),
('pos_website', 'categories', 10, 102, 44),
('pos_website', 'failed_jobs', 10, 579, 38),
('pos_website', 'invoices', 10, 351, 34),
('pos_website', 'migrations', 10, 889, 339),
('pos_website', 'password_resets', 10, 841, 21),
('pos_website', 'personal_access_tokens', 10, 578, 233),
('pos_website', 'products', 10, 88, 212),
('pos_website', 'users', 10, 882, 120),
('relationship_1', 'failed_jobs', 12, 846, 36),
('relationship_1', 'migrations', 12, 367, 26),
('relationship_1', 'password_resets', 12, 578, 36),
('relationship_1', 'personal_access_tokens', 12, 797, 244),
('relationship_1', 'phones', 12, 41, 17),
('relationship_1', 'posts', 12, 435, 194),
('relationship_1', 'role_user', 12, 325, 274),
('relationship_1', 'roles', 12, 363, 39),
('relationship_1', 'users', 12, 242, 162),
('spatie1', 'failed_jobs', 13, 155, 28),
('spatie1', 'migrations', 13, 358, 25),
('spatie1', 'pages', 13, 706, 226),
('spatie1', 'password_resets', 13, 439, 196),
('spatie1', 'personal_access_tokens', 13, 176, 232),
('spatie1', 'user_pages', 13, 587, 53),
('spatie1', 'users', 13, 488, 303),
('tax governent', 'author', 2, 354, 341),
('tax governent', 'books', 2, 814, 341),
('tax governent', 'department', 2, 311, 10),
('tax governent', 'employed', 2, 693, 25),
('tax governent', 'id card', 2, 330, 144),
('tax governent', 'mix', 2, 565, 317),
('wael', 'info', 5, 669, 152),
('wael', 'job', 5, 171, 321);

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'amz', 'department', '{\"CREATE_TIME\":\"2022-03-11 15:00:01\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1],\"sorted_col\":\"`department`.`Id` ASC\"}', '2022-03-11 13:21:32'),
('root', 'amz', 'student', '{\"sorted_col\":\"`student`.`Id` ASC\"}', '2022-03-12 19:06:47'),
('root', 'breeze', 'users', '[]', '2022-07-30 15:10:09'),
('root', 'college', 'courses', '[]', '2021-09-01 16:36:37'),
('root', 'college', 'student', '{\"sorted_col\":\"`courses` ASC\"}', '2021-09-01 17:10:00'),
('root', 'eloquent1', 'countries', '{\"CREATE_TIME\":\"2022-08-02 17:16:32\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2022-08-02 15:56:53'),
('root', 'hospital', 'doctor', '{\"CREATE_TIME\":\"2021-09-06 15:00:43\"}', '2021-09-07 12:23:24'),
('root', 'hospital', 'patients', '[]', '2021-09-08 03:21:36'),
('root', 'library', 'book', '{\"sorted_col\":\"`name`  DESC\"}', '2021-10-11 12:24:27'),
('root', 'tax governent', 'mix', '{\"CREATE_TIME\":\"2021-09-10 13:34:41\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2021-09-15 09:59:44'),
('root', 'wael', 'info', '{\"sorted_col\":\"`id` ASC\"}', '2021-12-31 14:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-28 12:27:07', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-48.01362,\"NavigationWidth\":237}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pos_website`
--
CREATE DATABASE IF NOT EXISTS `pos_website` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pos_website`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Tv', 'Tvs', NULL, NULL),
(4, 'Glasses', 'This is Medical Glasses Category', '2022-05-23 16:21:41', '2022-05-23 16:30:24'),
(5, 'Berfume', 'This Is Chemical Product , Contains Brands etc..', '2022-05-23 16:29:19', '2022-05-23 16:29:19'),
(7, 'Shoes', 'Shoes Category ANd Slippers', '2022-06-01 08:10:22', '2022-06-01 08:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `tax_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_date`, `category_id`, `product_id`, `price`, `discount`, `tax_rate`, `tax_value`, `total`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(2, '1212', '2022-05-20', 1, 2, '22.00', '12.00', '12211', '2.00', '12.00', 2, 'ads', NULL, NULL),
(7, '1216', '2022-05-28', 5, 8, '50.00', '8.00', '5.00', '2.00', '44.00', 2, 'This Is An Item , Will Be Bought In Coming A Date', '2022-05-23 16:34:23', '2022-05-23 16:34:23');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_13_134913_create_categories_table', 1),
(6, '2022_05_20_143310_create_products_table', 1),
(7, '2022_05_21_131116_create_invoices_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `nots` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `nots`, `created_at`, `updated_at`) VALUES
(1, 'Toshiba', '12.00', 1, 'wdadsf', NULL, NULL),
(2, 'Samsung', '200.00', 1, 'This A Type OF Smart TVs , 30 Items Remaining', NULL, '2022-05-23 16:32:56'),
(8, 'Saufage', '50.00', 5, 'This Is A Type Of Berfume , There are 4 Of compnies in America', '2022-05-23 16:31:14', '2022-05-23 16:31:14');

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
(1, 'Mohamed Azmy', 'w@gmail.com', NULL, '$2y$10$JTuM9IwE6X1b.rPmwdCMruKM5a9L6Ccwgs3FsX9KyjSOkLpinWeP2', NULL, '2022-05-21 18:21:03', '2022-05-21 18:21:03'),
(4, 'sham', 'sham@gmail.com', NULL, '$2y$10$qzmfv/NZu1sYu3Y8RZNx1u6SHcthnuI/AhBskN6PfeMxXLOfS4k2S', NULL, '2022-05-23 16:28:44', '2022-05-23 16:28:44');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_category_id_foreign` (`category_id`),
  ADD KEY `invoices_product_id_foreign` (`product_id`);

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
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
--
-- Database: `queue`
--
CREATE DATABASE IF NOT EXISTS `queue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `queue`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_08_105546_create_jobs_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rosalyn Harris', 'halvorson.emelia@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WP5RTPWVQF', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(2, 'Rhiannon Rowe Sr.', 'ona85@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fT5xSrSK3K', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(3, 'Tatyana Bins', 'francis.beier@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WCLsc2cBu0', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(4, 'Ida Schumm', 'bkautzer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DChzzD31ry', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(5, 'Dr. Frankie Schaden I', 'noemi56@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aWjROosnyG', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(6, 'Bernadette DuBuque', 'cpfannerstill@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Erlpgqjw1O', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(7, 'Monique Kreiger', 'lexi.williamson@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WOQP2XRvM0', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(8, 'Brody Abbott', 'fay.mitchell@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9HbmK1MHrZ', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(9, 'Dale Corkery', 'manuel85@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qZU45auQNF', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(10, 'Kyler Marks', 'amiya60@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PfjYD9Z4ZC', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(11, 'Dr. Bernie Grant Sr.', 'nikita15@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'AUzsgFbCCC', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(12, 'Raegan Hammes', 'dean72@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6tmYms0hEq', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(13, 'Prof. Jimmie Jast', 'madalyn.nicolas@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'T2ujz6Mcmk', '2022-10-09 08:20:04', '2022-10-09 09:10:23'),
(14, 'Mrs. Selena Rutherford Sr.', 'oral.brakus@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'dANDzkNcSf', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(15, 'Norene Wolff', 'hester.yost@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'pLkHjlPMqa', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(16, 'Erling Reichert', 'angela59@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TZdI98y3OE', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(17, 'Brenda Runolfsdottir', 'marge.powlowski@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'C8QTb7fI50', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(18, 'Dariana Shields I', 'jschmidt@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5yh4TdmX3e', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(19, 'Max King DVM', 'bradford.spencer@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8mxXz8O9cf', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(20, 'Anais Funk', 'blanca.rath@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3QuClT07DR', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(21, 'Ms. Muriel Gulgowski', 'brian43@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vfNOSmx2zk', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(22, 'Wilton Gibson', 'brakus.vicky@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'KJuwZy5kK3', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(23, 'Kian O\'Hara', 'dangelo48@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'rA4tSUMa1Y', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(24, 'Alba Little', 'parker.tanya@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xXTk2xCdPd', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(25, 'Arjun Lemke', 'agorczany@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LWhYzKVORP', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(26, 'Carole Schuppe II', 'tkeebler@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'FGn9Sy3Cp7', '2022-10-09 08:20:05', '2022-10-09 09:10:23'),
(27, 'Jeanie Murray', 'walker.tabitha@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SPEJECSFAa', '2022-10-09 08:20:05', '2022-10-09 09:10:24'),
(28, 'Ms. Elvera Jacobs', 'pstreich@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'a8sRCjP7d0', '2022-10-09 08:20:05', '2022-10-09 09:10:24'),
(29, 'Abbie Leffler DDS', 'oabernathy@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6zqgreh1G6', '2022-10-09 08:20:05', '2022-10-09 09:10:24'),
(30, 'Prof. Armando Jakubowski', 'ukonopelski@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'jff6MH6NAZ', '2022-10-09 08:20:05', '2022-10-09 09:10:24'),
(31, 'Prof. Rollin Carroll II', 'elouise.rath@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DffI3dp8Mq', '2022-10-09 08:20:05', '2022-10-09 09:10:24'),
(32, 'Hector Botsford', 'drew.huels@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'IlYYLA1cpw', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(33, 'Neoma Littel', 'milo.bergstrom@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Go12SpjDuh', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(34, 'Russel Stokes Jr.', 'anderson.leora@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'OjeP9F0AZY', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(35, 'Carlie Becker', 'zemlak.camila@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'h6dy0jZzzn', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(36, 'Bryce Beer III', 'rahul.mayert@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'pzHdcJEK5N', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(37, 'Mara Ferry', 'eboyer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bnhSRWubMM', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(38, 'Hunter Muller', 'bella89@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uVlI6UFDlU', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(39, 'Eleazar Hermann Sr.', 'sallie.mraz@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JfAFHXduVB', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(40, 'Mr. Gerard McCullough', 'jonas.paucek@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xaGeeD1XOZ', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(41, 'Dr. Eloisa Krajcik', 'spencer83@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vU1or0WMOw', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(42, 'Clemmie Fadel MD', 'schimmel.elmer@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PbGp8SSeXv', '2022-10-09 08:20:06', '2022-10-09 09:10:24'),
(43, 'Delia Altenwerth', 'schultz.adell@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'j3HQ9Vrzo6', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(44, 'Monique Grimes IV', 'witting.albina@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mltehoVdpy', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(45, 'Davonte Breitenberg DDS', 'ccassin@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'K7mjwWnRj3', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(46, 'Mrs. Alvina Ortiz', 'jamil42@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DnZB6P28If', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(47, 'Davin Ritchie', 'hgulgowski@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8qWtdNlcY6', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(48, 'Wallace Deckow V', 'adele.cummings@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zCcyaM6x2S', '2022-10-09 08:20:06', '2022-10-09 09:10:25'),
(49, 'Prof. Candida Morissette', 'fritsch.dion@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1TdJiDTmEo', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(50, 'Verner Russel', 'ewisozk@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8GGNviosdH', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(51, 'Tyra McGlynn', 'marco89@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'kZ5k4AtBHs', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(52, 'Grayson Swift', 'adelia92@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Ti0HCa7OL0', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(53, 'Dr. Walker Mertz', 'wfranecki@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oa7pDcBNij', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(54, 'Florence Homenick', 'hermann41@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Ky57h6slIO', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(55, 'Mr. Fredrick Hagenes', 'toby.zboncak@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6DHyarPkRT', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(56, 'Jo Hansen', 'vkunze@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4akir6n6bw', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(57, 'Miss Cali Pfannerstill IV', 'valentine63@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DBxig3Wd57', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(58, 'Alaina Altenwerth', 'javier84@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'toBARkHrgL', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(59, 'Prof. Coby Gerlach', 'fadel.jasmin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ZCKymYq0bv', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(60, 'Malachi Johnston DDS', 'kassandra.hermann@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'KUr3FgDsTR', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(61, 'Jackeline Conroy', 'tmayer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2VIIoSVfp9', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(62, 'Mr. Alan Jacobson', 'npacocha@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9faSMb9bAK', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(63, 'Madyson Rutherford DVM', 'rosie42@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6SPWIr7fLS', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(64, 'Preston Trantow', 'pleannon@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '77B0oubG2H', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(65, 'Ashly Batz', 'hirthe.dock@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qPl188zaRd', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(66, 'Tad Volkman Jr.', 'mariana30@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'RokkHYE6pH', '2022-10-09 08:20:06', '2022-10-09 09:10:26'),
(67, 'Violet Hartmann', 'breana.pfannerstill@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'E2JSXCO5Ms', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(68, 'Johan Bruen MD', 'ilehner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EWKQA8E60V', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(69, 'Linnie Herzog', 'freda.ritchie@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xUM4boJ60n', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(70, 'Nichole Nikolaus', 'freida.metz@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ZSvDMOvmCz', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(71, 'Dr. Garrick Labadie V', 'hill.barney@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SN9U4nXvWF', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(72, 'Prof. Edmond Heathcote PhD', 'amaya.rempel@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'BYclYoe8FF', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(73, 'Ottilie Kuhn', 'allen41@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ILqoq3LTU2', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(74, 'Halie Harvey', 'dickens.vada@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zGqongVrGM', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(75, 'Lon Lynch PhD', 'parker.muhammad@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'tLI7tTMnC3', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(76, 'Marty Towne', 'kaycee27@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3PkipZK1u4', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(77, 'Dr. Chyna Towne', 'terence.greenfelder@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'S4snINYFoD', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(78, 'Dr. Gayle Corkery Jr.', 'fpouros@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vEQnsrplxW', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(79, 'Kelley Marvin', 'reed18@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0Hb6007SZM', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(80, 'Fanny Barrows', 'webster.tromp@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1co3AxkTHL', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(81, 'Noemie Schuster', 'legros.bret@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QqkBgxmsQN', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(82, 'Garth Ratke', 'oreichert@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xVaSq4gqq2', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(83, 'Mireille Schultz I', 'thalia00@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'U97zqFwHUa', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(84, 'Loma Murazik', 'alycia11@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'R05gvvqn4t', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(85, 'Miss Elmira Stiedemann', 'timmothy26@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WcD9Icmq9B', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(86, 'Torey Jacobs', 'susana43@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'tE79EhtG9X', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(87, 'Mr. Shad Schumm IV', 'laverne.quigley@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ltkuTvvH1G', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(88, 'Alysa Wyman Sr.', 'chesley89@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GOynAtEEqS', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(89, 'Germaine Legros', 'franecki.sandrine@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zBANVhuNvy', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(90, 'Justus Boyer', 'hansen.cleora@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0IhEU0mWqr', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(91, 'Miss Letha Kohler V', 'anabel.torp@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 't0YktHc3f2', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(92, 'Mallie Orn III', 'dallin17@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lO8LKntYJR', '2022-10-09 08:20:07', '2022-10-09 09:10:27'),
(93, 'Zoila Nicolas', 'alba.williamson@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ddknxPZI5m', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(94, 'Dr. Kendra Schinner MD', 'rhea.botsford@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'G6kXTWu66E', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(95, 'Nikki Mayer', 'ola74@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SsKbcNsAqU', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(96, 'Martine Beahan', 'patience.zemlak@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5cuwacgCp4', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(97, 'Pink McCullough II', 'luis93@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EutgQLLLHY', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(98, 'Mr. Rollin Herzog III', 'anderson.markus@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'H5N8HXliJ6', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(99, 'Mr. Ryley McClure I', 'pcollins@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'J0U7xIf7Ne', '2022-10-09 08:20:07', '2022-10-09 09:10:28'),
(100, 'Naomie Armstrong Sr.', 'miller.kira@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JttUNcVL7y', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(101, 'Horace Bosco', 'crussel@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lIpQJKf7lj', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(102, 'Angel Hill', 'heaney.kale@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'pvAIszRgbM', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(103, 'Mitchel Ebert', 'kwaters@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'w4cO4eFkkK', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(104, 'Prof. Adrianna McCullough Jr.', 'breichert@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fx4W3lMILO', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(105, 'Fiona Stiedemann', 'mariane.mclaughlin@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mMK5NpROCY', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(106, 'Kale Crona', 'zbuckridge@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bEdusnaUhY', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(107, 'Conner Bogan', 'schowalter.meghan@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1WSaejE1gs', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(108, 'Helmer Bradtke', 'camren05@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fFuEgF0wB8', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(109, 'Diego Jakubowski', 'hammes.ollie@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '55GzAAZLR1', '2022-10-09 08:20:08', '2022-10-09 09:10:28'),
(110, 'Miss Eldora Rau Jr.', 'schuppe.amparo@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'jpm8JKznrR', '2022-10-09 08:20:08', '2022-10-09 09:10:29'),
(111, 'Jessy Denesik', 'willms.virginia@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JHgFJM9E1c', '2022-10-09 08:20:08', '2022-10-09 09:10:29'),
(112, 'Mabel Orn', 'katlyn81@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7yWEiVaguB', '2022-10-09 08:20:08', '2022-10-09 09:10:29'),
(113, 'Dariana Hickle II', 'godfrey50@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'AEEQwyxr3A', '2022-10-09 08:20:08', '2022-10-09 09:10:29'),
(114, 'Flavie Hessel MD', 'rudolph.renner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EkPEuPtq5t', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(115, 'Dayana Will', 'nabernathy@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Dq9Dl0g2yt', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(116, 'D\'angelo Abshire', 'rowe.bernita@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'MQfB1diTOT', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(117, 'Elena Harber IV', 'trantow.myah@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'e4anDtyafY', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(118, 'Kyla Goldner', 'mcdermott.harrison@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'MhhDIMQU5o', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(119, 'Nicholaus Fahey', 'alta60@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '36tmemSKpl', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(120, 'Prof. Baron Jacobson', 'zelma.kuhic@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uOwhzpuw5e', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(121, 'Kamron O\'Keefe Sr.', 'frances87@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7GlKATuMKY', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(122, 'Turner Littel', 'gottlieb.roderick@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'guMluMS5pi', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(123, 'Cristina Hermiston', 'xdickens@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'w5Kj8oEy5I', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(124, 'Leora Zboncak', 'schoen.serenity@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Mnjbbn6h0e', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(125, 'Dr. Wilburn Bartoletti II', 'wiley31@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Z6lQYVYzbw', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(126, 'Marlee Langworth', 'laury76@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GPIf7phATT', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(127, 'Noelia Tremblay DVM', 'judy39@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xixjxQ9dWN', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(128, 'Nona Hoppe', 'becker.jeffrey@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Ca5qmJeyLC', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(129, 'Miss Isabelle Wuckert MD', 'abraham55@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mptJnHJINA', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(130, 'Alfred Brekke', 'aileen.witting@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VC2YaSt1ZC', '2022-10-09 08:20:09', '2022-10-09 09:10:29'),
(131, 'Sidney Rippin DVM', 'padberg.andreanne@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'taD8oYxRqO', '2022-10-09 08:20:09', '2022-10-09 09:10:30'),
(132, 'Hermina Hickle', 'yundt.candelario@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'n2lFVon6pI', '2022-10-09 08:20:09', '2022-10-09 09:10:30'),
(133, 'Ms. Yadira O\'Keefe', 'stella78@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ICM3Rqk02O', '2022-10-09 08:20:09', '2022-10-09 09:10:30'),
(134, 'William Sanford', 'casandra.gleichner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SoZJhhOfZ7', '2022-10-09 08:20:09', '2022-10-09 09:10:30'),
(135, 'Pascale Beer', 'jane.renner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'yFXZw4ArEM', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(136, 'Sophia Goyette', 'katheryn.stiedemann@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Eu73phtGyy', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(137, 'Mr. Sherman Streich DDS', 'audrey.eichmann@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qBnKL9LKhc', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(138, 'Leonie Hills', 'ofelia.schoen@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aZkXNupnfu', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(139, 'Jamal Gaylord', 'name50@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'YR9cyLJDW7', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(140, 'Prof. Rene Erdman', 'xrenner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8mPJBvkGE6', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(141, 'Electa Rempel', 'dominic89@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1cH93VAiSK', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(142, 'Casper Shields', 'gmueller@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uvST3FLAVL', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(143, 'Isaias Konopelski I', 'quinton88@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'V3uj621YBB', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(144, 'Lily Langosh', 'claudine74@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3wiQTTcCCI', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(145, 'Bonnie Simonis', 'sanford.torp@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7HThOchRtt', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(146, 'Chyna Mann', 'fward@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HVONGmUbMD', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(147, 'Elody McLaughlin MD', 'hwalker@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EyBK9pqHqR', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(148, 'Eden Anderson', 'mayer.rachel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'iAkuuxgA2D', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(149, 'Jaiden Cremin', 'xtreutel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XLcDf5FRQb', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(150, 'Tre Rau', 'frankie.blick@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'loVxqB75nO', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(151, 'Mr. Deshaun Langosh Jr.', 'ruth57@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'tTmXOwByns', '2022-10-09 08:20:10', '2022-10-09 09:10:30'),
(152, 'Darrell Reichert', 'barrows.francesco@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SQsW6Rwio2', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(153, 'Miss Ardith Dickens', 'bettie35@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XMwg1LaP62', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(154, 'Dr. Paula Beatty Sr.', 'ima.halvorson@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oOYhwfjab8', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(155, 'Trenton Effertz', 'ervin.weimann@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ei8kCEeuOC', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(156, 'Mervin Zboncak', 'cassandre.rau@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TNfQCIsrQI', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(157, 'Lottie Pouros', 'tadams@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'E2HSyvWV8T', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(158, 'Glenda Lehner', 'flossie.williamson@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Kk3xmwJ7mA', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(159, 'Alfonso Koelpin', 'russel.jabari@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bLaPxCwVU2', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(160, 'Bennie McGlynn', 'may.hauck@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '058fs2wFUO', '2022-10-09 08:20:10', '2022-10-09 09:10:31'),
(161, 'Linnea Bauch', 'lbrekke@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'S7sTXVcbaz', '2022-10-09 08:20:10', '2022-10-09 09:10:32'),
(162, 'Ms. Janiya Heller MD', 'cristal79@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '146FGkyxUf', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(163, 'Prof. Royce Barton V', 'rodrick22@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'y6y3pHNscV', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(164, 'Delphia Hudson', 'abernathy.roxane@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lHWMGhwbiJ', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(165, 'Bruce Jacobs', 'kyla.hackett@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HMVbOB93wR', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(166, 'Alexandrine Dare', 'ptreutel@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Ds4swdmhTq', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(167, 'Cindy Durgan', 'manderson@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'nWLeedA6bF', '2022-10-09 08:20:11', '2022-10-09 09:10:32'),
(168, 'Stefanie Hoppe', 'ofritsch@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5KlUWdQp1g', '2022-10-09 08:20:11', '2022-10-09 09:10:33'),
(169, 'Theresia Green', 'fleta.zieme@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'spZVWHfE8Y', '2022-10-09 08:20:11', '2022-10-09 09:10:33'),
(170, 'Stewart Beier', 'leonor.murazik@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'P9xnB46sUM', '2022-10-09 08:20:11', '2022-10-09 09:10:34'),
(171, 'Nichole Goldner', 'marcos.orn@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TUFYN9iKdX', '2022-10-09 08:20:11', '2022-10-09 09:10:34'),
(172, 'Macie Emmerich', 'rlakin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'M46XTQwjs7', '2022-10-09 08:20:11', '2022-10-09 09:10:34'),
(173, 'Eulalia Goyette', 'homenick.esteban@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5FFsj87gga', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(174, 'Aron Hoeger', 'donato19@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EdITVnH7mk', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(175, 'Aurelie Blick', 'johan.ryan@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WG4VpbZdmr', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(176, 'Spencer Sipes', 'rath.casper@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zWmlzNpBvq', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(177, 'Sandrine Ziemann', 'camila.armstrong@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8OBDvjFljt', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(178, 'Ilene Kovacek', 'vmohr@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'joISVk2yOn', '2022-10-09 08:20:11', '2022-10-09 09:10:35'),
(179, 'Mr. Laurel Denesik PhD', 'jmiller@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'C5VnesCyzq', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(180, 'Giles Lubowitz MD', 'okon.vincenzo@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'gfFp5xTGzR', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(181, 'Maximus Erdman', 'olson.corene@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'd234gAWtgU', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(182, 'Godfrey Satterfield', 'stephanie85@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mlnqmqn1sD', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(183, 'Dr. Cordie Schaden', 'gladyce.hudson@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ywZElZjlgY', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(184, 'Damien Leannon', 'gideon.zieme@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GlCjMHXdk1', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(185, 'Hulda Wisozk', 'qohara@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LO20tqyLw9', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(186, 'Rosalyn Schulist', 'coconner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '92MwCWpZ1R', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(187, 'Reid Sporer Jr.', 'cassandre92@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mxR0yiFiuN', '2022-10-09 08:20:12', '2022-10-09 09:10:35'),
(188, 'Jaquan Conroy', 'erna.braun@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'kl5V8nDXN3', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(189, 'Ms. Rebeka Murazik', 'oblanda@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'jr6dHMcxIm', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(190, 'Sedrick Streich PhD', 'gino69@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ggmopiKfLY', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(191, 'Ms. Ressie Nikolaus Sr.', 'jenkins.catherine@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aY71Ec9JIS', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(192, 'Mr. Flavio Schultz IV', 'loren97@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'YQqrVZ4p5S', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(193, 'Odessa Gutkowski', 'lenore68@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'MWhTTrnUjm', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(194, 'Ms. Charlene Mohr', 'streich.kristy@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4UBX7Zdj96', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(195, 'Dr. Keon Schamberger PhD', 'ocartwright@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Z2NSXQY3ND', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(196, 'Prof. Katrine Jenkins', 'quigley.kristoffer@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'biXVWrGLLX', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(197, 'Dejuan Kohler', 'edna64@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'psn47j0X29', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(198, 'Annette Bosco', 'rogers23@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ytbmXgBjDF', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(199, 'Felipa Kassulke', 'maxie83@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TMC7ZTszEp', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(200, 'Brenden Considine', 'kaela.herman@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zF7nVPsZME', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(201, 'Alena Fahey', 'tyrell15@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lShDRhWLdc', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(202, 'Weston Hane', 'justine.leuschke@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ubbslKcaV2', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(203, 'Lonie Conroy', 'verona.pfeffer@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VFOj6Km35k', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(204, 'Fletcher Muller MD', 'jones.deshawn@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JcuLNi0xtW', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(205, 'Kenny Blick', 'brielle.emmerich@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zoV77FMaCY', '2022-10-09 08:20:12', '2022-10-09 09:10:36'),
(206, 'Yvette Wilkinson', 'jrobel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Y1oAwFdM1E', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(207, 'Wyman Huels', 'columbus.mertz@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'jabmB8GF42', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(208, 'Christiana Leannon', 'cgrady@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aS35XxDfv4', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(209, 'Osvaldo Corwin', 'mosciski.asha@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ArlYfDqfLc', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(210, 'Coralie O\'Conner', 'okon.daniela@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WYAETtwmzx', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(211, 'Prof. Lura Brown Sr.', 'hkoss@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8Undi0vvn0', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(212, 'Miss Alysson Leannon PhD', 'ehackett@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '65utFx1hod', '2022-10-09 08:20:13', '2022-10-09 09:10:36'),
(213, 'Nelle Collier', 'frami.dandre@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PvzFpP941D', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(214, 'Antonina Casper', 'tgrant@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oMIOoI6w13', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(215, 'Dr. Gene Torp', 'rory.flatley@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6pzFt3g9NF', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(216, 'Miss Dianna Champlin IV', 'fwiegand@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oR0ZtLV2dr', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(217, 'Bell Gottlieb', 'treutel.salvador@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'UlfrkYqyuF', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(218, 'Miss Hosea Funk', 'kaylah61@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zd0xgETgNu', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(219, 'Lori Parisian', 'nsteuber@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HlfDnr6Vkp', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(220, 'Ms. Mireya Zboncak V', 'carroll51@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'YSLIUIeulR', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(221, 'Billie Mayer', 'addie78@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ueJENQSaQ6', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(222, 'Mrs. Brandyn Lindgren DDS', 'johnnie69@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JuE4WVFHMk', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(223, 'Cordell Stanton', 'lonzo.murphy@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mLx6gJ4XI9', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(224, 'Ethan Kreiger', 'pconn@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vX911p4j1m', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(225, 'Ashly Thiel', 'frussel@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XSmkDa1diB', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(226, 'Karlie Koss Jr.', 'fermin.king@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vxsW61G76d', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(227, 'Angelo Stamm', 'xkerluke@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'h48uo8dDA6', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(228, 'Prof. Miles Roberts', 'zena.denesik@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0Hc3LBrVfN', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(229, 'Maximo Schimmel II', 'osvaldo.gleason@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PFF6DCgtEE', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(230, 'Prof. Aracely Leffler', 'friesen.selena@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xcZy8slNqJ', '2022-10-09 08:20:13', '2022-10-09 09:10:37'),
(231, 'Dr. Roxanne Ward PhD', 'hlueilwitz@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GCDmc0heXo', '2022-10-09 08:20:14', '2022-10-09 09:10:37'),
(232, 'Ramon Mann', 'ethel02@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'd8N8AmJV32', '2022-10-09 08:20:14', '2022-10-09 09:10:37'),
(233, 'Elenora Skiles', 'jermaine60@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aF61RB0pr7', '2022-10-09 08:20:14', '2022-10-09 09:10:37'),
(234, 'Mr. Jeramie Jakubowski DDS', 'mueller.ansley@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qMtIF0c5wT', '2022-10-09 08:20:14', '2022-10-09 09:10:37'),
(235, 'Rosemary Kirlin', 'davon.treutel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2mCNsQTAOA', '2022-10-09 08:20:14', '2022-10-09 09:10:37'),
(236, 'Dr. Jerrell Armstrong', 'mervin.yost@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'N2uTwDACAg', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(237, 'Alfred Casper', 'bahringer.jaclyn@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Q8tcoTnnla', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(238, 'Destany Wehner', 'parisian.anais@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2VLXvegyms', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(239, 'Ms. Nellie Kemmer V', 'vkunde@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'wfg1upvxKT', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(240, 'Alivia Considine IV', 'gay.daugherty@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JyXXl2lEa2', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(241, 'Ramon Bradtke', 'mosciski.buck@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9iaTEJ7pwu', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(242, 'Hildegard Hagenes', 'tromp.julian@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XKRgGvGQvU', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(243, 'Gillian Maggio', 'gilbert90@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'NkUrm7EK5W', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(244, 'Prof. Cruz Hegmann', 'dortha.lehner@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QWQMhv15C5', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(245, 'Rowena Schumm', 'ned.larkin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'sFVTr6LZM3', '2022-10-09 08:20:14', '2022-10-09 09:10:38');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(246, 'Fatima Dach', 'jakubowski.rebekah@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'pvtZtrgps3', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(247, 'Emelia Boehm', 'lynch.deon@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HWmHyWaqVT', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(248, 'Garry Koch', 'schumm.jimmy@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'AmZhT42BGF', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(249, 'Mrs. Catalina Haag', 'pacocha.margret@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'I2RRHRRV7w', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(250, 'Unique Fay DDS', 'osporer@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7w3UPoX1xL', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(251, 'Alfonso Pacocha', 'georgianna.spinka@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LrAfEAUKBn', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(252, 'Estevan Muller', 'hauck.sven@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'dbfbZyGmrd', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(253, 'Alivia Schiller PhD', 'gutmann.janessa@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5RjxsKkDy3', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(254, 'Orland Bergstrom', 'brekke.grant@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PPdeAteT1I', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(255, 'Gardner Skiles', 'gretchen.legros@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'z0KkyUHONt', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(256, 'Helene Larson V', 'conroy.hermina@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'MvmgRv8Yb2', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(257, 'Zachariah Grimes', 'buster.hartmann@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qfL8t1oJkK', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(258, 'Dr. Filiberto Lowe Sr.', 'reinhold.kihn@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'eadNwWVK4m', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(259, 'Zula Bogan', 'jamir.anderson@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VL3XNnsowE', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(260, 'Susan Schuster', 'austin02@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2Er68TRBez', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(261, 'Dr. Chelsea Marquardt I', 'maurice00@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2K0fAUVFNa', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(262, 'Mrs. Alberta Okuneva PhD', 'cbarton@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Dv1sgVemHS', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(263, 'Augustine Lindgren', 'harry.lubowitz@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'OSHSHdRS7B', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(264, 'Dr. Vernon Jacobi', 'baumbach.josefa@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'a4ZFnBZM2P', '2022-10-09 08:20:14', '2022-10-09 09:10:38'),
(265, 'Andres McGlynn', 'juvenal.abshire@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SYEgf9Ec0O', '2022-10-09 08:20:15', '2022-10-09 09:10:38'),
(266, 'Jorge Price', 'sammy15@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QGP21BrXiI', '2022-10-09 08:20:15', '2022-10-09 09:10:39'),
(267, 'Laura Lueilwitz', 'sterling.hammes@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'gBH5jMjkPt', '2022-10-09 08:20:15', '2022-10-09 09:10:39'),
(268, 'Jamal Hoeger', 'lynch.ignatius@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LUE1Xd0kVy', '2022-10-09 08:20:15', '2022-10-09 09:10:39'),
(269, 'Helene Hahn', 'claudia.okon@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3MUABHX0A0', '2022-10-09 08:20:15', '2022-10-09 09:10:39'),
(270, 'Maudie Gottlieb', 'naomie92@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'FnOIxdR36V', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(271, 'Miss Kenna Dickinson', 'foster66@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HzByFahffe', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(272, 'Baron Leuschke', 'emiliano50@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8lxaJKOlsp', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(273, 'Miss Alverta DuBuque DDS', 'makenna.brekke@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'sUQBTn2oZG', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(274, 'Shad Bergnaum II', 'tressa41@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TRT5XPgfuy', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(275, 'Tess Bailey', 'fheaney@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9pSWhJHlPY', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(276, 'Lorine Ebert', 'cgusikowski@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TipwlHZQYr', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(277, 'Mr. Sofia Borer V', 'gideon10@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4M5zTPcxP4', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(278, 'Ms. Amira Osinski PhD', 'hwhite@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VP0tWo4rE3', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(279, 'Norris Glover', 'maggie35@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SFhzljsVT7', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(280, 'Isac Pfeffer', 'beverly62@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'FQOyYyjEgJ', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(281, 'Miss Karolann Aufderhar', 'strosin.jillian@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6D79yVbmsY', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(282, 'Lafayette Dach', 'kmedhurst@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lCXFIMKvmk', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(283, 'Mr. Jayce Funk PhD', 'vena51@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EXf5RVw9jy', '2022-10-09 08:20:16', '2022-10-09 09:10:39'),
(284, 'Annabel Emard', 'dcremin@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'phtrBDC4TY', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(285, 'Bart Hand', 'corkery.clair@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TLWrUtlwG4', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(286, 'Mr. Royal Gutmann', 'eyost@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 's12Jux11Lb', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(287, 'Mr. Orin Bashirian Sr.', 'anika36@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5h5fmx1Hd3', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(288, 'Jett Ankunding', 'mankunding@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0eKiUcNBd9', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(289, 'Graham Watsica', 'dave99@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1Xvsugd8pu', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(290, 'Etha Connelly', 'ywitting@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HlYxsiG2xf', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(291, 'Cloyd Wisoky Jr.', 'lilian13@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'YG1n887Vbh', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(292, 'Mariana Will', 'abbott.brandyn@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HwZzEO3Vcv', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(293, 'Hilda Moore', 'ohaag@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WuiUba4Mxr', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(294, 'Eda Huel', 'agerlach@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'YnzwlqLyKT', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(295, 'Mr. Zackery Braun V', 'pearl99@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5aCutJNvPo', '2022-10-09 08:20:16', '2022-10-09 09:10:40'),
(296, 'Mrs. Dolly Pfannerstill', 'salvatore.howell@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'X0e9j86A6A', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(297, 'Casandra Mueller', 'nick86@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LypRhhcN09', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(298, 'Ms. Allison Kerluke IV', 'bernadette27@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2a1MZwpFtO', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(299, 'Camren Harvey', 'jakubowski.frederique@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'N7GoLpdm2X', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(300, 'Albertha Rau DDS', 'fveum@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GxA1uvF1RN', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(301, 'Ernest Lynch', 'alice.kilback@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mfRcrhZFQM', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(302, 'Mr. Celestino Berge', 'westley.davis@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'IsLz3br419', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(303, 'Dr. Camille Kertzmann', 'cornelius.corkery@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'U5flBhUBfL', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(304, 'Bud Macejkovic DVM', 'daniella.mckenzie@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Vy886CruPY', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(305, 'Jamison Jaskolski Jr.', 'aleen59@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'hwg4M34cmX', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(306, 'Ardella Daniel', 'dariana03@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ghTka39gXP', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(307, 'Kieran Paucek', 'rodger88@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qDNc8mcE71', '2022-10-09 08:20:17', '2022-10-09 09:10:40'),
(308, 'Garrett Howell', 'regan56@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DHbjPywBc9', '2022-10-09 08:20:17', '2022-10-09 09:10:41'),
(309, 'Miss Avis Schroeder', 'schuster.keven@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'aFU65jbq50', '2022-10-09 08:20:17', '2022-10-09 09:10:41'),
(310, 'Miss Adelle Hickle V', 'cschimmel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'THu51jrlRu', '2022-10-09 08:20:17', '2022-10-09 09:10:41'),
(311, 'Renee Crona', 'xdeckow@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XTcuYmEQ9U', '2022-10-09 08:20:17', '2022-10-09 09:10:41'),
(312, 'Marilyne Ondricka', 'sfarrell@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'm6tYeHSQsn', '2022-10-09 08:20:17', '2022-10-09 09:10:41'),
(313, 'Dr. Mandy Hartmann DVM', 'aniya.harris@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'RfCoz0QwgQ', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(314, 'Prof. Aurelie Gutmann', 'ldamore@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3WFKjZybBc', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(315, 'Frederik Mraz III', 'norval.vandervort@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'R1FUgS9uhS', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(316, 'Lacey Gislason Jr.', 'zrowe@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'L75vMb70tr', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(317, 'Danyka Hayes V', 'bernice43@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SaCYPdOaCy', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(318, 'Althea Mayert', 'tyreek95@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'FsjlRtoCMV', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(319, 'Jayde Miller', 'mellie66@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4DS6mJGR2C', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(320, 'Earl Cassin', 'claudine.toy@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HX9fShGAIk', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(321, 'Ms. Eloisa Grimes', 'santina10@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JsSCLBH19J', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(322, 'Alfred Walsh', 'kip85@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3TB3lUmkOo', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(323, 'Prof. Freeda Bergnaum DDS', 'elva.howe@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4DcELGLNGa', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(324, 'Tomasa Zulauf', 'mohammad.smitham@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'buo5WXUMlo', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(325, 'Retha Wyman', 'dhudson@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'yW92YBZwdu', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(326, 'Ansley Wintheiser', 'justina.boyer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'eDFeryNJwf', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(327, 'Prof. Roberta Donnelly DDS', 'johnston.darron@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'hjdZPd5Oti', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(328, 'Mrs. Arianna Walsh V', 'treutel.bradly@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'A38z5Q9SLP', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(329, 'Prof. Cornelius Turcotte', 'morissette.wendell@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6ybWc7qc0D', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(330, 'Jaclyn Sporer II', 'noah.pouros@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'v7Ns3oHJ5c', '2022-10-09 08:20:17', '2022-10-09 09:10:42'),
(331, 'Gerald Kutch', 'rosalee.nikolaus@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'egoQvGflj7', '2022-10-09 08:20:17', '2022-10-09 09:10:43'),
(332, 'Hollis Rodriguez', 'schroeder.dexter@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'RXwprB9ILL', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(333, 'Lester Stroman III', 'hettinger.kaley@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'CFr94bHiSc', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(334, 'Moshe Pouros', 'veronica64@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'BPjJroPG26', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(335, 'Miss Ova Rosenbaum Jr.', 'wbrekke@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QzrHIIMOi7', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(336, 'Treva Ernser', 'sandy.lebsack@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'AsfECfeP0L', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(337, 'Prof. Zola Morar', 'gaylord.darwin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SuFemMybBn', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(338, 'Prof. Colby Schoen', 'greenfelder.shany@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'wDAyd3llIY', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(339, 'Grayson Carter', 'sage76@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Zij3K7KZAX', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(340, 'Ms. Marietta Rodriguez', 'jacobi.harrison@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ghPlPbJ8aI', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(341, 'Roslyn Hoppe', 'federico59@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'wiLw1XTSVY', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(342, 'Delta Carter', 'elsie63@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3jWvw2UoLc', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(343, 'Dr. Earl Bednar I', 'lstracke@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vvbrYWHfUG', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(344, 'Roosevelt Will', 'oberbrunner.lela@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'O3hqCH9Mtf', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(345, 'Dr. Verner Mayer PhD', 'adah60@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'TUpEBML6tY', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(346, 'Alicia Champlin', 'collier.trevor@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WbUs0CO6FG', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(347, 'Leola Buckridge', 'bnienow@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7hxi0d1N0D', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(348, 'Madisen Roob', 'constance29@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HpjJUXvzCa', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(349, 'Anissa Gaylord DDS', 'baby.labadie@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'cCtdtDet2R', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(350, 'Prof. Davonte Collins Sr.', 'wgreen@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'k8Xdm8EMDN', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(351, 'Karlie Fritsch', 'reilly.rico@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bpEaHyVAT2', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(352, 'Sandy Parisian', 'brent48@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'E4qQd60XYq', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(353, 'Mr. Jovany Kuhlman Sr.', 'anita08@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'yeU3OhBPaP', '2022-10-09 08:20:18', '2022-10-09 09:10:43'),
(354, 'Ms. Leonie Quitzon', 'rashawn.walter@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oapZZd5cF7', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(355, 'Gertrude Cruickshank', 'carmella.sporer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3gLOq3SFs3', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(356, 'Miss Selena Prosacco III', 'ondricka.jay@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'dXB6zAJBLM', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(357, 'Era Turner Jr.', 'donald81@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'iF3kbehJFI', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(358, 'Enoch Considine', 'lou69@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SYEyWAukTf', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(359, 'Prof. Maverick Kertzmann', 'therese52@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xKFlrx6xWc', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(360, 'Eulalia Hauck II', 'afton00@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Xdn7O5Nprh', '2022-10-09 08:20:18', '2022-10-09 09:10:44'),
(361, 'Juston Kunde', 'emmett15@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'OsGxxgsUIs', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(362, 'Karlee Jaskolski', 'leannon.estel@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'W3Kz2IBxgH', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(363, 'Monserrate Willms', 'osmith@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'yw5Usa1XcV', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(364, 'Larue Koepp', 'jbrakus@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EvLYNHaPyO', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(365, 'Russ Wolff', 'belle81@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vuBViHwEws', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(366, 'Boyd Schimmel', 'adolphus67@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'BmpEr2YuC9', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(367, 'Stephan Crist', 'raymundo87@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4yEZXeqE4C', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(368, 'Dr. Haley Mueller V', 'lauryn65@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '52uLq20qgI', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(369, 'Frances Vandervort DDS', 'brakus.name@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bmuJhTAgKU', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(370, 'Justice Turcotte', 'erdman.ellis@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'gAnBlO4Ap5', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(371, 'Lane Leffler DVM', 'eden86@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'eAutSofY9Z', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(372, 'Ms. Filomena Goodwin DDS', 'zschuppe@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DyIsRTBs1O', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(373, 'Alessandro Strosin', 'okuneva.margret@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'tffr88M5nZ', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(374, 'Anthony Lynch DVM', 'martina.schaden@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'vJKTsHPFdS', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(375, 'Dr. Darryl Gleason', 'jordi98@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VGZzjmLsF9', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(376, 'Giovanna Rath DVM', 'vchamplin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HuYKcNE207', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(377, 'Madelyn Tremblay', 'magnolia.lesch@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'nl3W8a9pwf', '2022-10-09 08:20:19', '2022-10-09 09:10:44'),
(378, 'Mr. Ray Carroll IV', 'wstanton@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xsV3bBV7CH', '2022-10-09 08:20:20', '2022-10-09 09:10:44'),
(379, 'Dr. Aimee Ortiz', 'susan29@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4Lt2SOVN77', '2022-10-09 08:20:20', '2022-10-09 09:10:44'),
(380, 'Jannie Jakubowski', 'devante31@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6vqAVunAEp', '2022-10-09 08:20:20', '2022-10-09 09:10:44'),
(381, 'Darrin Sanford', 'roconnell@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'BWQ6N6ILD7', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(382, 'Danika Kling', 'hermann.kenneth@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JmOf67VPCe', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(383, 'Major Gerhold', 'hulda11@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '51EUx2Uw1Q', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(384, 'Lucio Wiza', 'wilburn.kozey@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'l0wJuRrHGR', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(385, 'Tristin Carter III', 'ferry.jovan@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'XrjQw7N9tz', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(386, 'Deanna Boehm III', 'hauck.loren@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fQ6sPhOXIL', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(387, 'Aracely Windler V', 'bahringer.rodrigo@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9G7uBPZ0UO', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(388, 'Patrick Haley II', 'cormier.velda@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '54Vw2Y7ULj', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(389, 'Mr. Green Purdy DVM', 'dawson.harris@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'DKxh17nKrS', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(390, 'Prof. Lewis Hammes', 'cleta.frami@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'muGo6LjgwT', '2022-10-09 08:20:20', '2022-10-09 09:10:45'),
(391, 'Torrance Ferry', 'frida09@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'D08FCC83ym', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(392, 'Mr. Christopher Greenfelder V', 'swift.rollin@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'GEWMxDSaCN', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(393, 'Lessie Morissette', 'lydia.hartmann@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'k48gQZsgFl', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(394, 'Kory Adams', 'kshlerin.curt@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6JMIoep1xf', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(395, 'Dr. Regan Walker', 'june17@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'B4d1TmzZHy', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(396, 'Miss Colleen Hauck MD', 'green.aaron@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'F6DGxdCobN', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(397, 'Zane Stroman', 'kattie52@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QvFJ49nrlL', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(398, 'Shana Mann Sr.', 'winston.runolfsdottir@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mkh0aWOmvr', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(399, 'Dr. Stephon Pouros', 'mariana.flatley@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'UC0682AZk7', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(400, 'Mallie Buckridge', 'marianne77@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'nU419MozyU', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(401, 'Clovis Shields Sr.', 'hyatt.delfina@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bt5efhCc98', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(402, 'Dr. Frankie Bahringer', 'yturner@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'oW2G4Qp96z', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(403, 'Miss Jordane Prohaska', 'damore.lauretta@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'UVbOQ20o1V', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(404, 'Judson Strosin Jr.', 'ted86@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'mKwrsjibeE', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(405, 'Katelyn Johnston V', 'elyse04@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1MXGJ7RDcj', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(406, 'Elza O\'Conner', 'hherzog@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6xjluia91w', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(407, 'Celine Kutch', 'oorn@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'cGelOH71cH', '2022-10-09 08:20:21', '2022-10-09 09:10:45'),
(408, 'Alyson Powlowski', 'kchristiansen@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uS0NVPRwgx', '2022-10-09 08:20:22', '2022-10-09 09:10:45'),
(409, 'Emmanuelle Mayer', 'marquardt.omer@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4wvEfdikeW', '2022-10-09 08:20:22', '2022-10-09 09:10:45'),
(410, 'Geovanni Sporer', 'franz40@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0Oi6EQwVNi', '2022-10-09 08:20:22', '2022-10-09 09:10:45'),
(411, 'Sedrick Heaney', 'zgrimes@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9CP8QCVmWE', '2022-10-09 08:20:22', '2022-10-09 09:10:45'),
(412, 'Prof. Pamela Kling Sr.', 'jaunita.torp@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fGwFA7Trst', '2022-10-09 08:20:22', '2022-10-09 09:10:45'),
(413, 'Mrs. Judy Lehner PhD', 'gudrun32@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zcLTtdvw7F', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(414, 'Leila Gulgowski', 'luna.wolf@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JNiRL2JRNH', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(415, 'Alek Upton PhD', 'llittle@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'sroIibfASz', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(416, 'Prof. Lessie Tremblay PhD', 'helene50@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qrZnArqkMT', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(417, 'Magnolia Morar PhD', 'robb65@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'nGbQzZJzXR', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(418, 'Prof. Adolph Murazik DDS', 'istark@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uZOHN6c8gC', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(419, 'Nella Breitenberg', 'toy.ernestine@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'CqWTOhKLU1', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(420, 'Grant Langosh', 'aanderson@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ZraR3mQkOF', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(421, 'Phyllis Hegmann Sr.', 'derek56@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ZFt1uhHuew', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(422, 'Griffin Glover', 'pierre46@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JQkvIPzq0I', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(423, 'Manuel Feest', 'kohler.zoie@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VmUTre25TF', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(424, 'Barton Mante', 'aufderhar.jasmin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VwGEHsXNpg', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(425, 'Zola O\'Hara', 'bfay@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Zp1OJpu1Rm', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(426, 'Doyle Quigley', 'zula39@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WrJwBEwfO6', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(427, 'Dell Cole', 'qwiza@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'qEm5ZqHodl', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(428, 'Paris Kuhlman MD', 'hyatt.ward@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '81Opsv4vzk', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(429, 'Larue Lynch', 'mante.theodore@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ztHDB4Uqne', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(430, 'Gudrun Kuvalis', 'jadon48@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '178Iepdh0M', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(431, 'Kavon Feeney', 'jamir53@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8FsRJz9H5n', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(432, 'Tiara Bashirian', 'kenny59@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'EJY2AEFNCw', '2022-10-09 08:20:22', '2022-10-09 09:10:46'),
(433, 'Mrs. Golda Morar', 'cole13@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ukiMFjIZJe', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(434, 'Hailie Emmerich Jr.', 'pstrosin@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uGC0gfYRdh', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(435, 'Felton Adams I', 'purdy.garrison@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6TYqFXAEy7', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(436, 'Cindy Schaefer', 'wanda83@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'SrWRveymI9', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(437, 'Leta Swaniawski', 'agnes04@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'p1Clgotbl5', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(438, 'Felicita Mayer', 'zboyle@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '25bEruzVbD', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(439, 'Fredy Grimes', 'beahan.suzanne@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'CIymWtaOVn', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(440, 'Maudie Schinner', 'edwardo42@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1J9oWxA7ow', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(441, 'Dr. Gust Hartmann DDS', 'dubuque.dee@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5QcwTqMuDO', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(442, 'Prof. Jacquelyn Yost', 'carter.yasmin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'QpehKyB9ba', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(443, 'Gabrielle Herzog', 'hgraham@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'haVK3xFlAO', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(444, 'Tess Brekke', 'feil.colton@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'RvFZZ09HdY', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(445, 'Kaya Cruickshank', 'kiara59@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'hc7tmIe1Hu', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(446, 'Estell McGlynn DVM', 'elmore.emard@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Kspe6EMJim', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(447, 'Dr. Bernice Bradtke', 'qkoelpin@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'veVGS7NEvN', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(448, 'Dr. Ismael Kshlerin', 'xboyle@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'wGLOYeADnF', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(449, 'Justus Wisoky', 'stefanie11@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7lyRA9PBxl', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(450, 'Nicholas Witting', 'qrunolfsson@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'pSNRBEJR5B', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(451, 'Demetris Hermann', 'ashtyn.treutel@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'JA3Ptmpy1q', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(452, 'Al Kreiger', 'brendan02@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '4FT4IshpRS', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(453, 'Thea Medhurst', 'godfrey41@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'J0JingLH95', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(454, 'Korey Herman', 'fadel.alice@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1EqnzCrhQ6', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(455, 'Jakob Mante', 'breitenberg.bartholome@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WvV1hbWwZ9', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(456, 'Adele Kemmer', 'johnston.sally@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'cx0KHiT5U1', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(457, 'Jevon Zemlak V', 'gerlach.lambert@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uEEsYYiZ1o', '2022-10-09 08:20:23', '2022-10-09 09:10:47'),
(458, 'Erick Crona', 'mia.johns@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5SckpkAb1N', '2022-10-09 08:20:23', '2022-10-09 09:10:48'),
(459, 'Wilhelmine Orn IV', 'hassie84@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'brPjnQTc5J', '2022-10-09 08:20:23', '2022-10-09 09:10:48'),
(460, 'Kassandra Rohan', 'oberbrunner.jewel@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'g3BfUzLHNP', '2022-10-09 08:20:23', '2022-10-09 09:10:48'),
(461, 'Mr. Kody O\'Reilly I', 'mertz.trey@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'MUEJsvRdyb', '2022-10-09 08:20:23', '2022-10-09 09:10:48'),
(462, 'Luella Sanford', 'gretchen.medhurst@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'gUWhm3ilxr', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(463, 'Margarita Pouros', 'kacie.thiel@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'zgZyzEegHN', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(464, 'Henri Prohaska V', 'nrohan@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0yAfSLinTB', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(465, 'Gerry Raynor', 'gusikowski.amy@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bCfgJLeCYL', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(466, 'Adelle Langworth DVM', 'gerhard93@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'UseheZVDQG', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(467, 'Ms. Leila Stiedemann PhD', 'yaltenwerth@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'AlS1LpaSIc', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(468, 'Maurine Shanahan', 'aharvey@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'HiodLGh9Ce', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(469, 'Tyra Welch', 'lrobel@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'RZ5Ga46Ygb', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(470, 'Adrianna Conn Sr.', 'alessia32@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'FPTdBKU3JO', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(471, 'Frederick Schoen', 'jairo50@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'stqK5nErxy', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(472, 'Layla Langworth', 'dicki.marlene@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fPgPWMmcco', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(473, 'Mr. Agustin Wolff', 'keith.keebler@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Sjh4AXEjIg', '2022-10-09 08:20:24', '2022-10-09 09:10:48'),
(474, 'Amelia Maggio IV', 'stokes.eulalia@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xajnBoxhwY', '2022-10-09 08:20:25', '2022-10-09 09:10:48'),
(475, 'Prof. Allison Auer', 'schiller.richmond@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Z1MZ10YQGo', '2022-10-09 08:20:25', '2022-10-09 09:10:48'),
(476, 'Britney Schimmel', 'vfahey@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'NeGhdctutF', '2022-10-09 08:20:25', '2022-10-09 09:10:48'),
(477, 'Conor Veum', 'asha78@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'bNVHnZ3V2x', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(478, 'Tod Hilpert', 'deion71@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VcariIcVkJ', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(479, 'Mr. Gerald McCullough', 'hamill.dock@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'lY3e2H9ivt', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(480, 'Luis Nader', 'alvera.pouros@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3WSPhtv41R', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(481, 'Bryon Zemlak', 'josh82@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'VRdoSF8HyW', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(482, 'Letha Koepp', 'glenda90@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Ol0S4DpFw8', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(483, 'Nathanial Grady DDS', 'tristian98@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7CoPzeEysH', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(484, 'Prof. Jaren Kemmer Jr.', 'deion.crona@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'fIrV7B2VsU', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(485, 'Mr. Americo Volkman DDS', 'summer.pfeffer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'n1qDcUydCj', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(486, 'Joaquin Spencer', 'gnienow@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'E3a5pvH8lV', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(487, 'Lue Lebsack', 'maxie.bogan@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8ApMKxh9RU', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(488, 'Dr. Zita Reinger PhD', 'koss.candelario@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'sGyrQyW6XK', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(489, 'Prof. Pedro Heaney', 'leo26@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'WGBgwSsN7S', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(490, 'Dr. Abbie Schroeder', 'funk.kiana@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'UNNpD9QGee', '2022-10-09 08:20:25', '2022-10-09 09:10:49');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(491, 'Dr. Abner Walsh', 'larkin.summer@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'uQJ1cTbh79', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(492, 'Kenya Paucek', 'virgil.kertzmann@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'Uiz0tw14vy', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(493, 'Jaqueline Hoeger', 'stanton.arlene@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'BYAMV8o24w', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(494, 'Prof. Fredrick Gutkowski', 'upton.mariam@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'k3WQNJGUHr', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(495, 'Bridgette Botsford Sr.', 'ncremin@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'PrJX8BUwYK', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(496, 'Prof. Keith Upton I', 'wilson.grady@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2MaABF2CDX', '2022-10-09 08:20:25', '2022-10-09 09:10:49'),
(497, 'Mr. Junior Kemmer', 'yturcotte@example.net', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '0I35Jz6lys', '2022-10-09 08:20:26', '2022-10-09 09:10:49'),
(498, 'Odell Stark', 'willy47@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'ZficXuEGgg', '2022-10-09 08:20:26', '2022-10-09 09:10:49'),
(499, 'Vicente Wilderman', 'alysa65@example.com', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'LlEUICITL3', '2022-10-09 08:20:26', '2022-10-09 09:10:49'),
(500, 'Mr. Richmond Abbott', 'barton.lisette@example.org', '2022-10-09 08:20:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', 'xwHOuAcea3', '2022-10-09 08:20:26', '2022-10-09 09:10:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- Database: `relationship_1`
--
CREATE DATABASE IF NOT EXISTS `relationship_1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `relationship_1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_03_081445_create_phones_table', 1),
(6, '2022_08_03_083547_create_posts_table', 2),
(7, '2022_08_03_111652_create_roles_table', 3),
(8, '2022_08_03_111745_create_user_role_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 122121, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'tech', 1, NULL, NULL),
(2, 'physics', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Azmy', NULL, NULL);

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phones_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phones`
--
ALTER TABLE `phones`
  ADD CONSTRAINT `phones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `rev`
--
CREATE DATABASE IF NOT EXISTS `rev` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rev`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Mail` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Mail`, `Password`, `Role`) VALUES
(1, 'Mohamed Azmy', 'mohamed@gmail.com', '123', 1),
(2, 'Randa Azmy', 'randa@gmail.com', '123', 0),
(5, 'wael', 'azmy@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `spatie1`
--
CREATE DATABASE IF NOT EXISTS `spatie1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spatie1`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_21_112417_create_pages_table', 1),
(6, '2023_01_21_112538_create_user_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `created_at`, `updated_at`) VALUES
(1, 'test1', NULL, NULL),
(2, 'test2', NULL, NULL),
(3, 'test3', NULL, NULL),
(4, 'test4', NULL, NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Noah Azmy', 'noah@gmail.com', NULL, '$2y$10$2yATHUflpc0QcMwntqrfxOjEYPQmKewnelr0JFY34AhQJKuT7G.7W', NULL, '2023-01-21 10:36:41', '2023-01-21 10:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_pages`
--

INSERT INTO `user_pages` (`id`, `user_id`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `storage_system`
--
CREATE DATABASE IF NOT EXISTS `storage_system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `storage_system`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `path`) VALUES
(1, 'user/Koala.jpg'),
(2, 'user/Koala.jpg'),
(3, 'user/Tulips.jpg');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `storage_system1`
--
CREATE DATABASE IF NOT EXISTS `storage_system1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `storage_system1`;
--
-- Database: `students`
--
CREATE DATABASE IF NOT EXISTS `students` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `students`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_16_073342_create_students_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mobile_Phone` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `Mobile_Phone`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed', 'Azmy', 'azmy@gmail.com', '01113501487', '63c53b9cb05f1.png', '2023-01-16 07:05:09', '2023-01-16 07:05:09'),
(2, 'afd', 'asdf', 'mohamed@gamil.com', '1234132', 'ta:image/jpeg;base64.png', '2023-01-16 07:19:43', '2023-01-16 07:19:43'),
(4, 'Mohamed', 'Azmy', 'noah@gmail.com', '12312123', '63c51a640cc07.png', '2023-01-16 07:35:32', '2023-01-16 07:35:32'),
(6, 'adsdgasdfd', 'fsdf', 'sadfads@gmai.com', '23123', '63c5244497737.png', '2023-01-16 08:17:40', '2023-01-16 08:17:40'),
(10, 'John', 'Smith', 'asdfsad@gamid.fsdf', '341244123', '63c5347229c36.png', '2023-01-16 09:26:42', '2023-01-16 09:26:42'),
(11, 'sadf', 'asdf', 'moha22med@gamil.com', '23123123', '63c5365044ab2.png', '2023-01-16 09:34:40', '2023-01-16 09:34:40'),
(12, 'asdfff', 'asdfff', 'asfad@asdf.net', '23123123', '63c54032eb377.png', '2023-01-16 10:16:51', '2023-01-16 10:16:51'),
(13, 'fdere', 'asdf', 'mohamrrrered@gamil.com', '23123123', '63c543b9f0dcb.png', '2023-01-16 10:31:54', '2023-01-16 10:31:54'),
(14, 'wefqwer', 'qwerqwer', 'qwerqwer@asdf.net', '234123123', '63c54458e92fe.png', '2023-01-16 10:34:33', '2023-01-16 10:34:33');

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
(1, 'admin', 'admin@admin.admin', NULL, '$2y$10$snBsomAx0j8M001fYh/WPOPmhYg.NKjb4E6rzdvrorrckd5WBgTuq', NULL, '2023-01-16 08:48:12', '2023-01-16 08:48:12');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `task` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `task`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Azmy', 'azmy@gmail.com', NULL, '$2y$10$25bJ2H9Fz5vM2k7wW9fDD.pLZ0YOV/7LdZbixrCRSqEvoaJM.VN7W', NULL, '2022-06-09 21:01:52', '2022-06-09 21:01:52');

--
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `tax governent`
--
CREATE DATABASE IF NOT EXISTS `tax governent` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tax governent`;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `Name`) VALUES
(1, 'Azmy');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Name`) VALUES
('Are You A Man');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Name` varchar(20) NOT NULL,
  `Floor` int(11) DEFAULT NULL,
  `Boss` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Name`, `Floor`, `Boss`) VALUES
('Grounds', 3, 'Hussin Ali'),
('Houses', 2, 'Mohamed Abd-ElRahman');

-- --------------------------------------------------------

--
-- Table structure for table `employed`
--

CREATE TABLE `employed` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `id card` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employed`
--

INSERT INTO `employed` (`Id`, `Name`, `Department`, `id card`) VALUES
(1, 'Mohamed Azmy', 'Grounds', NULL),
(2, 'Ali Hassn', 'Grounds', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `id card`
--

CREATE TABLE `id card` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mix`
--

CREATE TABLE `mix` (
  `id` int(11) NOT NULL,
  `Name Of Author` varchar(30) DEFAULT NULL,
  `Name Of Book` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mix`
--

INSERT INTO `mix` (`id`, `Name Of Author`, `Name Of Book`) VALUES
(6, 'Azmy', 'Are You A Man');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `employed`
--
ALTER TABLE `employed`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `id card` (`id card`),
  ADD KEY `Department` (`Department`);

--
-- Indexes for table `id card`
--
ALTER TABLE `id card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mix`
--
ALTER TABLE `mix`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Name Of Author` (`Name Of Author`),
  ADD KEY `Name Of Book` (`Name Of Book`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employed`
--
ALTER TABLE `employed`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mix`
--
ALTER TABLE `mix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employed`
--
ALTER TABLE `employed`
  ADD CONSTRAINT `employed_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `department` (`Name`),
  ADD CONSTRAINT `employed_ibfk_2` FOREIGN KEY (`id card`) REFERENCES `id card` (`id`);

--
-- Constraints for table `mix`
--
ALTER TABLE `mix`
  ADD CONSTRAINT `mix_ibfk_1` FOREIGN KEY (`Name Of Author`) REFERENCES `author` (`Name`),
  ADD CONSTRAINT `mix_ibfk_2` FOREIGN KEY (`Name Of Book`) REFERENCES `books` (`Name`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Indexes for dumped tables
--

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
