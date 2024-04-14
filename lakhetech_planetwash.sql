-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2024 at 01:30 AM
-- Server version: 5.7.44
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lakhetech_planetwash`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_adminmenu_user`
--

CREATE TABLE `cl_adminmenu_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `adminmenu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_adminmenu_user`
--

INSERT INTO `cl_adminmenu_user` (`id`, `user_id`, `adminmenu_id`) VALUES
(30, 5, 1),
(31, 5, 2),
(32, 5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `cl_admin_menu`
--

CREATE TABLE `cl_admin_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_admin_menu`
--

INSERT INTO `cl_admin_menu` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Manage Banners', '2020-08-16 08:51:13', '2020-08-16 08:51:13'),
(2, 'Manage Posts', '2020-08-16 08:52:23', '2020-08-16 08:52:23'),
(3, 'Manage Portfolio', '2020-08-16 08:52:31', '2020-08-16 08:52:31'),
(9, 'Manage Users', '2020-08-16 08:53:49', '2020-08-16 08:53:49'),
(12, 'Settings', '2020-08-16 08:54:22', '2020-08-16 08:54:22'),
(13, 'Photo Gallery', '2022-05-22 11:45:30', '2022-05-22 11:45:30'),
(14, 'Video Gallery', '2022-05-22 11:45:37', '2022-05-22 11:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_portfolios`
--

CREATE TABLE `cl_associated_portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `portfolio_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` longtext COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_posts`
--

CREATE TABLE `cl_associated_posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` varchar(1091) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_in_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_associated_posts`
--

INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `category`, `sub_title`, `phone`, `email`, `brief`, `content`, `thumbnail`, `ordering`, `uri`, `facebook_link`, `twitter_link`, `linked_in_link`, `page_key`, `created_at`, `updated_at`) VALUES
(207, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-1-ZYLiP4QbJXxpewKYOdLAmTOhp0LkVatTz5TlbixM.jpg', 131, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989850117529479', '2024-02-15 03:52:30', '2024-02-17 23:39:29'),
(208, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-2-RfZ6vIMMhcdnQWH6FqcmuSt43c6VaWsMbUhPgiui.jpg', 132, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989897904631967', '2024-02-15 03:53:17', '2024-02-15 03:53:17'),
(209, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-3-R6JLILkqmJF6pfwQLr041XfRU60S6iaTV5jxWyOs.jpg', 133, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989919934374513', '2024-02-15 03:53:39', '2024-02-15 03:53:39'),
(210, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-4-0tuK3IaYKkpm4SsdkADgNBFsF8qYjXh4PKfwjNdD.jpg', 134, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989945259625085', '2024-02-15 03:54:05', '2024-02-15 03:54:05'),
(211, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-5-wEEKl572JWZ2FgKQ1Pfh4xcNHeLKQPy0CHLv0Zy2.jpg', 135, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989965890073908', '2024-02-15 03:54:25', '2024-02-15 03:54:25'),
(212, 398, 'Hamish Macqueen', NULL, 'Managing Director', NULL, NULL, NULL, NULL, 'team-6-lv636vbmImQyzKKQQEh1MAahdPltYLNwSXIN4FIv.jpg', 136, 'Hamish-Macqueen', NULL, NULL, NULL, '1707989986359358887', '2024-02-15 03:54:46', '2024-02-15 03:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `cl_banner`
--

CREATE TABLE `cl_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Learn More',
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_banner`
--

INSERT INTO `cl_banner` (`id`, `title`, `caption`, `content`, `picture`, `video`, `link_title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Need A Great Cleaner Who’s Reliable?', 'With thousands of happy customers (and counting) we’re the #1 fastest growing commercial cleaning company in US. .', NULL, 'slide-1-D0Ng9h7RZDzTfPKn19jTxRG5y8dS6HCwE4VziXSu.jpg', NULL, 'Book an Appointment', 'http://127.0.0.1:8000/page/contact.html', '1', '2023-11-22 16:57:31', '2024-02-14 03:44:44'),
(21, 'Need A Great Cleaner Who’s Reliable?', 'With thousands of happy customers (and counting) we’re the #1 fastest growing commercial cleaning company in US. .', NULL, 'banner-page-du8OadbOSSo7AesKY5YMCcQnkWUWt80uPLk1EENr.jpg', NULL, 'Book an Appointment', 'http://localhost:8000/page/contact.html', '1', '2024-02-17 23:13:00', '2024-02-17 23:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `cl_country`
--

CREATE TABLE `cl_country` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_images`
--

CREATE TABLE `cl_gallery_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_image_categories`
--

CREATE TABLE `cl_gallery_image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_videos`
--

CREATE TABLE `cl_gallery_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `video` text COLLATE utf8mb4_unicode_ci,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_gallery_video_categories`
--

CREATE TABLE `cl_gallery_video_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_images`
--

CREATE TABLE `cl_images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cl_log`
--

CREATE TABLE `cl_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_members`
--

CREATE TABLE `cl_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT '2',
  `activation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_banner`
--

CREATE TABLE `cl_multiple_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_id` int(11) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_document`
--

CREATE TABLE `cl_multiple_document` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `key_string` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_multiple_document`
--

INSERT INTO `cl_multiple_document` (`id`, `post_id`, `key_string`, `title`, `document`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 215, '2tsCJTXClcU8vmysG2QxGWqKufR01xG3ax8STebL', 'संरकछन् र सल्लाहकार समिति नामावली (२०२१ - २०२३ )', 'll-l-62a1ecf83f131.pdf', 1, '2022-05-08 00:46:47', '2022-06-09 16:52:08'),
(2, 215, 'hly9y2d2w7nIT5FWL5HZze5462DgaH0pyfdHSdIM', 'अन्तरराष्ट्रिय पर्वत समाज ष्ट्र्धान २०७६', 'ips-bidhan-1-62a1ec36e2a66.pdf', 2, '2022-05-08 00:47:32', '2022-06-09 16:48:54'),
(4, 215, 'eLaCPbIrO9080QJ6Ybr38cexEZ7IJTVlBEiktOLx', 'IPS constitution 2017', 'international-parbat-samaj-bidhan-2-62a1ec910d76d.pdf', 3, '2022-05-23 15:36:36', '2022-06-09 16:50:25'),
(5, 215, 'n8QP2OSmPdWh6PacpitfpVBfXoIcCvMpRK9KWTtl', 'अन्तर्राष्ट्रिय पर्वत समाज - कार्य समितिको नामावली (२०१७ - २०१९)', 'whatsapp-image-2022-06-03-at-7-629a0b8b389ef.jpeg', 4, '2022-05-23 15:36:47', '2022-06-03 17:24:27'),
(6, 215, 'Z5htrCljtlSdpB7eC7kTUhHlJdHnSfs8gewcukpb', 'कार्य पर्तिबेदन', 'b-629a0a9314a2b.pdf', 5, '2022-06-03 17:20:19', '2022-06-03 17:20:19'),
(7, 215, 'Tj8bWJlyDWG7id7C1Wwx95YOm8uZx0Pv0UqMaLZR', 'घोषणा  पत्र', '-629a0aa38d19d.pdf', 6, '2022-06-03 17:20:35', '2022-06-03 17:20:35'),
(8, 215, 'ZoHYQUNuxYlrLk4Lcdc1oDUIatIFxNcUanOA1Mh7', 'IPS Health Camp', 'ips-health-camp-629a0b5e4f2b8.pdf', 7, '2022-06-03 17:23:42', '2022-06-03 17:23:42'),
(9, 215, 'Z5iiw0UgCIgJPoBFZwKwF3BOJVAJdbgIShLDJtGB', 'अन्तराष्ट्रिय पर्वत समाज केन्द्रिय कार्यसमिति को नामावली', 'a-l-62a1eb92b29e7.pdf', 8, '2022-06-09 16:46:10', '2022-06-09 16:46:10'),
(13, 215, 'UQwCiqYqlldeMomoFb9sBL6DjsW6iT9IKtaFksrv', 'new notice', 'international-parbat-samaj-bidhan-2017-62a9b42788e40.pdf', 12, '2022-06-15 14:27:51', '2022-06-15 14:27:51'),
(14, 215, 'OsD9bKcBQrgGTwVV0TSKiXQBmKsvkKIqktamNvZM', 'जानकारी', '276151199-1204655390339005-1108288668489920558-n-62a9bfb35d20f.png', 13, '2022-06-15 15:17:07', '2022-06-15 15:17:07'),
(15, 215, 'h8GMoM15pT3CCqu6j1YSd1GczGW8SlJXveNLf6xD', 'spain programme 17 April 2022', 'spain-bhela-report-62aa5523a2501.pdf', 14, '2022-06-16 01:54:43', '2022-06-16 01:54:43'),
(20, 215, 'rBoj07ihTF0aSchMYUCMxwwzJsqBhNnl4XwYJ6iE', 'IPS Spain', 'a-l-62aa5ea36b84b.pdf', 19, '2022-06-16 02:35:15', '2022-06-16 02:35:15'),
(21, 215, 'PBSDm6xjZT3aowQlQ4QPKmn1M0BU1fzqYjOW7dKX', 'IPS REPORT', 'copy-of-ips-finacial-report-2019-new-62aa60757861c.xlsx', 20, '2022-06-16 02:43:01', '2022-06-20 18:02:39'),
(28, 215, 'uFFw1e9oEC1C6BiLglxYc3udWarUP73xsPCV8hXA', 'IPS Programme of Paiyu Dalit basti', 'dalit-help-pratibedan-3-62af325def756.rtf', 27, '2022-06-19 18:27:41', '2022-06-19 18:27:41'),
(33, 215, 'AvyKCA58FA67aZVzk3xpjFX9nvJm1wYnffLLPdrX', 'Dalit Basti Nirman sampanna', 'dalit-basti-paiyu-62d1809b3d548.rtf', 30, '2022-07-15 18:58:35', '2022-07-15 18:58:35'),
(34, 287, 'qeirREvrqJJrSVjt320ZTKvSNQXrkGZW8yVbO4tB', 'IPS 2017- 2019', 'ips-2017-2019-financial-report-62d7f793a754a.pdf', 31, '2022-07-20 16:39:47', '2022-07-20 16:39:47'),
(35, 287, '11utArgqpC9GWE0I9IQGqKKc3Tfy4BI4ZzAqlhVE', 'IPS account report', 'ips-account-annual-2019-2021-62d7f7d7ac6b7.pdf', 32, '2022-07-20 16:40:55', '2022-07-20 16:40:55'),
(36, 287, 'obzGVCYNeraRQufEl8iq3Xa73atj1lbBDahJEKjB', 'IPS COVID help', 'ips-covid-help-62d7f8204194c.pdf', 33, '2022-07-20 16:42:08', '2022-07-20 16:42:08'),
(37, 287, 'X1dwYytzp6OxKnXBbj6cW4tG0eIoPs5KGbQqnUQn', 'IPS COVID -2', 'ips-covied-2-62d7ff8d9e246.pdf', 34, '2022-07-20 17:13:49', '2022-07-20 17:13:49'),
(38, 287, 'h2QPxyCkb5CG66iab472I6RWpxIHYDFRMy538Sev', 'IPS ambulance', 'ips-ambulance-62d7ffc906c74.pdf', 35, '2022-07-20 17:14:49', '2022-07-20 17:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_image`
--

CREATE TABLE `cl_multiple_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_multiple_video`
--

CREATE TABLE `cl_multiple_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_portfolio`
--

CREATE TABLE `cl_portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `brief` longtext COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_portfolio_categories`
--

CREATE TABLE `cl_portfolio_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `category_caption` varchar(255) DEFAULT NULL,
  `category_content` text,
  `uri` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `visiter` int(11) DEFAULT '0',
  `post_date` datetime DEFAULT NULL,
  `post_author` int(11) NOT NULL DEFAULT '1',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_child` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci,
  `sub_title` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_type` int(191) DEFAULT '0',
  `post_category` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_parent` int(11) DEFAULT '0',
  `post_order` int(11) DEFAULT '0',
  `home_order` int(11) DEFAULT '0',
  `banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `audio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `page_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associated_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` tinyint(1) DEFAULT '0',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `global_post` tinyint(4) DEFAULT '0',
  `published` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_active` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `show_in_home` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_password_protected` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','np') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `uid`, `visiter`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `category`, `post_parent`, `post_order`, `home_order`, `banner`, `audio`, `page_thumbnail`, `thumbnail`, `icon`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `price`, `post_tags`, `project_status`, `status`, `global_post`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(362, NULL, 165, '2024-02-15 10:36:55', 1, 'single', NULL, 'Office Cleaning', 'We also understand that safety of your family comes first.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'office-cleaning', '1700461011350203711', 38, NULL, NULL, 0, 142, NULL, 'service-2-bHbou5Z95TZ20jOTCTmcnkSvTuPca0FY9KnA4HYA.jpg', NULL, 'service-1-az1vNbyO7Laqq2bX0QTVJ0YGEW2f4wFlnQRhNDAw.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2023-11-20 00:31:51', '2024-04-08 10:22:53'),
(388, NULL, 36, '2024-02-14 09:52:12', 1, 'single', NULL, 'Strata Cleaning', 'We also understand that safety of your family comes first.', NULL, NULL, 'strata-cleaning', '1706075093659019542', 38, NULL, NULL, 0, 163, NULL, 'service-2-FbENLP86tX1DKQaK3o8mwdthrtJdD3az3TRmlrHJ.jpg', NULL, 'service-2-zu2pmFMKivYkPlURyJmMAh7XGmg1JcobbwGiy7DY.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-01-23 23:59:53', '2024-02-18 00:25:30'),
(389, NULL, 9, '2024-02-14 09:51:51', 1, 'single', NULL, 'Builders Cleaning', 'We also understand that safety of your family comes first.', NULL, NULL, 'builders-cleaning', '1706075131349711296', 38, NULL, NULL, 0, 164, NULL, 'service-3-Wv28cV4mQNjvBfvcpScWnn0gmLh1y0JQHpcp7GcX.jpg', NULL, 'service-3-p0KllFlrCWXukP6KSq0IV95Dt87WGLnmYTqrC3RW.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-01-24 00:00:31', '2024-02-18 00:25:34'),
(390, '0', 9, '2024-02-14 09:50:08', 1, 'single', NULL, 'Home Cleaning', 'We also understand that safety of your family comes first.', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'home-cleaning', '1707904275492641828', 38, '0', NULL, 0, 165, 0, 'service-4-zM2dUPRHD7Rkm2vgzsP2xNA8tIWA86ZCU8CCvfKf.jpg', NULL, 'service-4-mBkLn2X7RvYlPUgE8Ndikp1qEMEoq2msnnP4SK5U.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:06:15', '2024-02-15 04:56:03'),
(391, NULL, 0, '2024-02-15 04:14:57', 1, 'single', NULL, 'Phil Rockliff, Development Executive', 'Real Estate Investment, VALAD Property Group', NULL, '<p>SK Star Cleaning has provided excellent service. Concerns and requests from tenants are quickly and efficiently addressed. Thank you for being so reliable and taking great care of our assets, as well as quickly responding to any emergencies we&rsquo;ve had. You do a wonderful job for us, keep up the good work.</p>', 'phil-rockliff-development-executive', '1707904790296763235', 46, NULL, NULL, 0, 166, NULL, '', NULL, 'team-1-8RKiciKl9w6z68gykRbH09xyknDubtgY54FzA19J.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:14:50', '2024-02-14 22:30:27'),
(392, NULL, 0, '2024-02-15 04:15:45', 1, 'single', NULL, 'Phil Rockliff, Development Executive', 'Real Estate Investment, VALAD Property Group', NULL, '<p>SK Star Cleaning has provided excellent service. Concerns and requests from tenants are quickly and efficiently addressed. Thank you for being so reliable and taking great care of our assets, as well as quickly responding to any emergencies we&rsquo;ve had. You do a wonderful job for us, keep up the good work.</p>', 'phil-rockliff-development-executive', '1707904853917838292', 46, NULL, NULL, 0, 167, NULL, '', NULL, 'team-2-4bqr2zZz8CoRKRx94oJoQhAMSWBrJEzVTA1XaQ6w.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:15:53', '2024-02-14 22:31:02'),
(393, '0', 0, '2024-02-14 10:04:02', 1, 'single', NULL, 'body corporate services', 'BCS', NULL, NULL, 'body-corporate-services', '1707905132444362491', 47, '0', NULL, 0, 168, 0, '', NULL, 'partners-1-8kF4TW6buesud0wPw2kaYncvAgZZHPGMBWKYA5zY.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:20:32', '2024-02-14 04:20:32'),
(394, '0', 0, '2024-02-14 10:06:04', 1, 'single', NULL, 'Hurley', 'Hurley', NULL, NULL, 'hurley', '1707905202447880962', 47, '0', NULL, 0, 169, 0, '', NULL, 'partners-2-B0FLN57bvobRdyK8qOZoJp4AupvmUlfGXJyyRDkX.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:21:42', '2024-02-14 04:21:42'),
(395, '0', 0, '2024-02-14 10:06:47', 1, 'single', NULL, 'Football NSW', 'NSW', NULL, NULL, 'football-nsw', '170790526099746620', 47, '0', NULL, 0, 170, 0, '', NULL, 'partners-3-HHbqHreaUTaYTousHmqtle0gbZBHrt4lpASdBtn4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:22:40', '2024-02-14 04:22:40'),
(396, '0', 0, '2024-02-14 10:07:44', 1, 'single', NULL, 'Sirona The Dental Company', 'Sirona', NULL, NULL, 'sirona-the-dental-company', '1707905319179576535', 47, '0', NULL, 0, 171, 0, '', NULL, 'partners-4-6uIvrQvcZFqtCYaKN0goxoqt4KmH11M6WMiDnTBi.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 04:23:39', '2024-02-14 04:23:39'),
(397, NULL, 60, '2024-02-16 04:22:18', 1, 'single', NULL, 'Company Profile', 'company-profile', '<h2 class=\"section-heading-2\">Company Profile</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, 'company-profile', '1707908313658360038', 37, NULL, NULL, 0, 172, NULL, 'blog-3-klKY0KE8dqEE2s8W4YqO7VoU2qIvxUuByyRM5ICQ.jpg', NULL, 'bgoverlay-cta-FfjRTLMg9cK0PcN8HOI3k5Ejsb11jIYR6YH9ertc.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 05:13:33', '2024-03-22 11:55:16'),
(398, NULL, 58, '2024-02-18 05:37:18', 1, 'template-team', NULL, 'our Team', 'our-team', NULL, NULL, 'our-team', '1707908378890018320', 37, NULL, NULL, 0, 173, NULL, '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 05:14:38', '2024-03-14 16:21:12'),
(399, '0', 5, '2024-02-15 05:27:53', 1, 'single', NULL, 'End of Lease Cleaning', 'End of Lease Cleaning', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'end-of-lease-cleaning', '1707974946932728279', 38, '0', NULL, 0, 174, 0, 'service-2-oNKwjJGIZxymTltZSCDxJszz362m2dUPVGaXufbJ.jpg', NULL, 'service-2-9vcE4XEgPQG4xbnh039NgdjyAzYwbYZJcDtB9wIH.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-14 23:44:06', '2024-03-14 16:21:15'),
(400, '0', 0, '2024-02-18 05:02:45', 1, 'single', NULL, 'MCDonalds', 'MC', NULL, NULL, 'mcdonalds', '1708232639718560502', 47, '0', NULL, 0, 175, 0, 'partners-9-5mISUTM62LL3x7zwV1udbp25yzqlFb5WnyjYGHmg.png', NULL, 'partners-9-hooeBlosIovVYRt3obzPDvgYmdnHunn1z3Ohtziy.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-17 23:18:59', '2024-02-17 23:18:59'),
(401, '0', 0, '2024-02-18 05:04:17', 1, 'single', NULL, 'Australian Center for Photography', 'ACP', NULL, NULL, 'australian-center-for-photography', '1708232841835824865', 47, '0', NULL, 0, 176, 0, 'partners-7-rlkTBppSopT3Y9vYTJnVr34JviGv2757BHKvhbRZ.png', NULL, 'partners-7-5a71vaJHu6kTkznPBASl657scUJwmlKsrKHTHZeC.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '1', 0, '1', '1', '0', '0', '0', '0', '0', 'en', '2024-02-17 23:22:21', '2024-02-17 23:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_categories`
--

CREATE TABLE `cl_post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_content` text COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_featured_images`
--

CREATE TABLE `cl_post_featured_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_portfolio`
--

CREATE TABLE `cl_post_portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_portfolio`
--

INSERT INTO `cl_post_portfolio` (`id`, `post_id`, `portfolio_id`, `created_at`, `updated_at`) VALUES
(260, 151, 8, NULL, NULL),
(261, 151, 9, NULL, NULL),
(262, 151, 17, NULL, NULL),
(263, 151, 19, NULL, NULL),
(264, 151, 21, NULL, NULL),
(270, 152, 8, NULL, NULL),
(271, 152, 9, NULL, NULL),
(272, 152, 17, NULL, NULL),
(273, 152, 19, NULL, NULL),
(274, 152, 21, NULL, NULL),
(280, 154, 8, NULL, NULL),
(281, 154, 9, NULL, NULL),
(282, 154, 17, NULL, NULL),
(283, 154, 19, NULL, NULL),
(284, 154, 21, NULL, NULL),
(285, 217, 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_type`
--

CREATE TABLE `cl_post_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(49) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `post_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `is_menu` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_footer_menu` tinyint(1) DEFAULT '0',
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_type`
--

INSERT INTO `cl_post_type` (`id`, `uid`, `post_type`, `uri`, `caption`, `content`, `meta_keyword`, `meta_description`, `template`, `banner`, `featured`, `ordering`, `is_menu`, `is_footer_menu`, `status`, `created_at`, `updated_at`) VALUES
(37, 'Lifetime Community Care', 'About Us', 'about-us', '<p>We are here to provide you with accommodation and housing, community connection, disability support and employment services so that you can live the life you choose and feel connected in your community.</p>', '<p>At Lifetime Community Care, our culture and values are integral to the achievement of our purpose; supporting you to be the best you can be.</p>\r\n<p>Our values of fairness, hope, courage, and perseverance, and expected behaviours associated with these, create a culture and safe environment where our people can thrive, be highly engaged and committed to delivering high quality services to our clients. Our values and behaviours help each individual staff member to deliver a valued contribution to achieving our strategic goals.</p>\r\n<p>To provide transparency and clear accountability at the individual level the Lifetime Community Care Code of Conduct provides a shared understanding and expectation of the way we behave at work as individuals, towards each other, our clients, their families and carers, partners, and other professionals. Building on our values, it empowers us to carry out our roles ethically and professionally, promoting a positive, safe environment.</p>', NULL, NULL, 'posttypeTemplate-about-us', 'blue-modern-just-listed-real-estate-linkedin-article-cover-image-ztIRgi5PUqxjuAv1nPV5btI6pplwJMOUJhgrpkn0.png', 'about-1-hrgBIh3AfPfj4pNXsm8SpM8ZKJB5uDNqfpa3J2Je.jpg', 1, '1', 0, '1', '2023-11-19 03:16:22', '2024-02-14 05:28:08'),
(38, 'We Provide these Services', 'Services', 'services', '<p class=\"text-center mb-0\">Lifetime community care who provide a variety of services in New South Wales for now.</p>\r\n<p>We offer the following services.</p>', NULL, NULL, NULL, 'posttypeTemplate-services', 'assistance-in-coordinating-rX3YWDlXTVoGfDMHDPksaPPlO9uRrLkeNdUxxgTb.jpg', NULL, 2, '1', 0, '1', '2023-11-19 03:22:15', '2024-02-14 23:09:57'),
(40, NULL, 'Contact', 'contact', '<p><span style=\"font-size: 18pt;\"><strong>Save money on insurance with Cosmic Insurance Brokerage</strong></span></p>', NULL, NULL, NULL, 'posttypeTemplate-contact-us', NULL, 'pngegg-BbMbfJXyjczw2EPWEi5HWQe6LZvUzOdqFil2U4Y9.png', 3, '1', 0, '1', '2023-11-19 03:22:46', '2024-02-14 05:29:52'),
(46, 'Customer Feedback', 'Customer Feedback', 'customer-feedback', NULL, NULL, NULL, NULL, 'page', '', '', 6, '0', 0, '1', '2024-02-14 04:12:11', '2024-02-14 04:12:11'),
(47, 'Clients who know the difference', 'clients', 'clients', NULL, NULL, NULL, NULL, 'page', '', '', 7, '0', 0, '1', '2024-02-14 04:17:19', '2024-02-14 04:17:19'),
(48, 'Get free quote', 'Get A Quote', 'contact-quote', '<h4>Ready to book your cleaning?</h4>\r\n<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat</p>', 'We are determined to carry on our mission for as long as there will be a demand for that kind of care!', NULL, NULL, 'posttypeTemplate-contact-quote', '', '', 8, '0', 0, '1', '2024-02-15 00:00:26', '2024-02-16 02:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_videos`
--

CREATE TABLE `cl_post_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `featured_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_roles`
--

CREATE TABLE `cl_roles` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_roles`
--

INSERT INTO `cl_roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', '2018-07-01 09:56:16', '2020-08-16 14:47:31'),
(2, 'Admin', '2018-07-01 09:56:34', '2020-08-16 14:47:43'),
(3, 'General', '2020-08-16 14:47:05', '2020-08-16 14:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `cl_settings`
--

CREATE TABLE `cl_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_of_inquiries` int(11) DEFAULT '0',
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_primary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_secondary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_link` mediumtext COLLATE utf8mb4_unicode_ci,
  `location_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signin_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_map` text COLLATE utf8mb4_unicode_ci,
  `google_map2` text COLLATE utf8mb4_unicode_ci,
  `welcome_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_text` text COLLATE utf8mb4_unicode_ci,
  `copyright_text` text COLLATE utf8mb4_unicode_ci,
  `field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_settings`
--

INSERT INTO `cl_settings` (`id`, `num_of_inquiries`, `site_name`, `location1`, `location2`, `address2`, `website2`, `phone`, `phone2`, `email_primary`, `email_secondary`, `website`, `address`, `facebook_link`, `linkedin_link`, `youtube_link`, `twitter_link`, `google_plus`, `instagram_link`, `pinterest_link`, `location_link`, `signin_url`, `signup_url`, `experience`, `meta_key`, `meta_description`, `google_map`, `google_map2`, `welcome_title`, `welcome_text`, `copyright_text`, `field1`, `field2`, `field3`, `field4`, `created_at`, `updated_at`) VALUES
(1, 46, 'Planet Floor Wash', '2909 E Arkansas Ln, Arlington, TX 76010', NULL, NULL, NULL, '+012 345 6789', 'ABN: 32878004993', 'sabeen@planetfloorwash.com', 'sabeen@planetfloorwash.com', NULL, NULL, 'https://www.facebook.com', 'https://twitter.com/login', 'https://youtube.com/', 'https://facebook.com', NULL, 'https://www.instagram.com', 'https://pinterest.com/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3357.2249369393226!2d-97.06039752454316!3d32.70665007369319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x864e87d127af8943%3A0x2bec0807744ffde8!2s2909%20E%20Arkansas%20Ln%2C%20Arlington%2C%20TX%2076010%2C%20USA!5e0!3m2!1sen!2snp!4v1706004008686!5m2!1sen!2snp\" width=\"100%\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor</p>', 'Planet Floor Wash - All Rights Reserved', 'Working Days: Mon. – Fri.', 'Working Hours: 9.00AM – 5.00PM', NULL, NULL, NULL, '2024-03-01 14:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `company` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact` varchar(191) DEFAULT NULL,
  `city` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `company`, `contact`, `city`, `address`, `email`, `message`, `created_at`, `updated_at`) VALUES
(17, 'Camden', NULL, 'Wallace Cantrell Co', '93', 'Molestiae non minima', 'Nemo dignissimos vol', 'qejovod@mailinator.com', 'Commodi lorem aut na', '2024-03-01 12:54:53', '2024-03-01 12:54:53'),
(18, 'Rajah', NULL, 'Sherman Castillo Trading', '85', 'Provident explicabo', 'Quia itaque excepteu', 'wuvyragid@mailinator.com', 'Tempore consequuntu', '2024-03-01 12:57:54', '2024-03-01 12:57:54'),
(19, 'Colette', NULL, 'Duncan Sandoval Co', '90', 'Commodi amet hic lo', 'Dicta ipsam similiqu', 'sangam.cyberlink@gmail.com', 'Dolores voluptatum n', '2024-04-08 10:23:16', '2024-04-08 10:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_services_rel`
--

CREATE TABLE `contact_us_services_rel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_us_id` int(11) DEFAULT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countrycode`, `countryname`, `code`) VALUES
('ABW', 'Aruba', 'AW'),
('AFG', 'Afghanistan', 'AF'),
('AGO', 'Angola', 'AO'),
('AIA', 'Anguilla', 'AI'),
('ALA', 'Åland', 'AX'),
('ALB', 'Albania', 'AL'),
('AND', 'Andorra', 'AD'),
('ARE', 'United Arab Emirates', 'AE'),
('ARG', 'Argentina', 'AR'),
('ARM', 'Armenia', 'AM'),
('ASM', 'American Samoa', 'AS'),
('ATA', 'Antarctica', 'AQ'),
('ATF', 'French Southern Territories', 'TF'),
('ATG', 'Antigua and Barbuda', 'AG'),
('AUS', 'Australia', 'AU'),
('AUT', 'Austria', 'AT'),
('AZE', 'Azerbaijan', 'AZ'),
('BDI', 'Burundi', 'BI'),
('BEL', 'Belgium', 'BE'),
('BEN', 'Benin', 'BJ'),
('BES', 'Bonaire', 'BQ'),
('BFA', 'Burkina Faso', 'BF'),
('BGD', 'Bangladesh', 'BD'),
('BGR', 'Bulgaria', 'BG'),
('BHR', 'Bahrain', 'BH'),
('BHS', 'Bahamas', 'BS'),
('BIH', 'Bosnia and Herzegovina', 'BA'),
('BLM', 'Saint Barthélemy', 'BL'),
('BLR', 'Belarus', 'BY'),
('BLZ', 'Belize', 'BZ'),
('BMU', 'Bermuda', 'BM'),
('BOL', 'Bolivia', 'BO'),
('BRA', 'Brazil', 'BR'),
('BRB', 'Barbados', 'BB'),
('BRN', 'Brunei', 'BN'),
('BTN', 'Bhutan', 'BT'),
('BVT', 'Bouvet Island', 'BV'),
('BWA', 'Botswana', 'BW'),
('CAF', 'Central African Republic', 'CF'),
('CAN', 'Canada', 'CA'),
('CCK', 'Cocos [Keeling] Islands', 'CC'),
('CHE', 'Switzerland', 'CH'),
('CHL', 'Chile', 'CL'),
('CHN', 'China', 'CN'),
('CIV', 'Ivory Coast', 'CI'),
('CMR', 'Cameroon', 'CM'),
('COD', 'Democratic Republic of the Congo', 'CD'),
('COG', 'Republic of the Congo', 'CG'),
('COK', 'Cook Islands', 'CK'),
('COL', 'Colombia', 'CO'),
('COM', 'Comoros', 'KM'),
('CPV', 'Cape Verde', 'CV'),
('CRI', 'Costa Rica', 'CR'),
('CUB', 'Cuba', 'CU'),
('CUW', 'Curacao', 'CW'),
('CXR', 'Christmas Island', 'CX'),
('CYM', 'Cayman Islands', 'KY'),
('CYP', 'Cyprus', 'CY'),
('CZE', 'Czech Republic', 'CZ'),
('DEU', 'Germany', 'DE'),
('DJI', 'Djibouti', 'DJ'),
('DMA', 'Dominica', 'DM'),
('DNK', 'Denmark', 'DK'),
('DOM', 'Dominican Republic', 'DO'),
('DZA', 'Algeria', 'DZ'),
('ECU', 'Ecuador', 'EC'),
('EGY', 'Egypt', 'EG'),
('ERI', 'Eritrea', 'ER'),
('ESH', 'Western Sahara', 'EH'),
('ESP', 'Spain', 'ES'),
('EST', 'Estonia', 'EE'),
('ETH', 'Ethiopia', 'ET'),
('FIN', 'Finland', 'FI'),
('FJI', 'Fiji', 'FJ'),
('FLK', 'Falkland Islands', 'FK'),
('FRA', 'France', 'FR'),
('FRO', 'Faroe Islands', 'FO'),
('FSM', 'Micronesia', 'FM'),
('GAB', 'Gabon', 'GA'),
('GBR', 'United Kingdom', 'GB'),
('GEO', 'Georgia', 'GE'),
('GGY', 'Guernsey', 'GG'),
('GHA', 'Ghana', 'GH'),
('GIB', 'Gibraltar', 'GI'),
('GIN', 'Guinea', 'GN'),
('GLP', 'Guadeloupe', 'GP'),
('GMB', 'Gambia', 'GM'),
('GNB', 'Guinea-Bissau', 'GW'),
('GNQ', 'Equatorial Guinea', 'GQ'),
('GRC', 'Greece', 'GR'),
('GRD', 'Grenada', 'GD'),
('GRL', 'Greenland', 'GL'),
('GTM', 'Guatemala', 'GT'),
('GUF', 'French Guiana', 'GF'),
('GUM', 'Guam', 'GU'),
('GUY', 'Guyana', 'GY'),
('HKG', 'Hong Kong', 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'HM'),
('HND', 'Honduras', 'HN'),
('HRV', 'Croatia', 'HR'),
('HTI', 'Haiti', 'HT'),
('HUN', 'Hungary', 'HU'),
('IDN', 'Indonesia', 'ID'),
('IMN', 'Isle of Man', 'IM'),
('IND', 'India', 'IN'),
('IOT', 'British Indian Ocean Territory', 'IO'),
('IRL', 'Ireland', 'IE'),
('IRN', 'Iran', 'IR'),
('IRQ', 'Iraq', 'IQ'),
('ISL', 'Iceland', 'IS'),
('ISR', 'Israel', 'IL'),
('ITA', 'Italy', 'IT'),
('JAM', 'Jamaica', 'JM'),
('JEY', 'Jersey', 'JE'),
('JOR', 'Jordan', 'JO'),
('JPN', 'Japan', 'JP'),
('KAZ', 'Kazakhstan', 'KZ'),
('KEN', 'Kenya', 'KE'),
('KGZ', 'Kyrgyzstan', 'KG'),
('KHM', 'Cambodia', 'KH'),
('KIR', 'Kiribati', 'KI'),
('KNA', 'Saint Kitts and Nevis', 'KN'),
('KOR', 'South Korea', 'KR'),
('KWT', 'Kuwait', 'KW'),
('LAO', 'Laos', 'LA'),
('LBN', 'Lebanon', 'LB'),
('LBR', 'Liberia', 'LR'),
('LBY', 'Libya', 'LY'),
('LCA', 'Saint Lucia', 'LC'),
('LIE', 'Liechtenstein', 'LI'),
('LKA', 'Sri Lanka', 'LK'),
('LSO', 'Lesotho', 'LS'),
('LTU', 'Lithuania', 'LT'),
('LUX', 'Luxembourg', 'LU'),
('LVA', 'Latvia', 'LV'),
('MAC', 'Macao', 'MO'),
('MAF', 'Saint Martin', 'MF'),
('MAR', 'Morocco', 'MA'),
('MCO', 'Monaco', 'MC'),
('MDA', 'Moldova', 'MD'),
('MDG', 'Madagascar', 'MG'),
('MDV', 'Maldives', 'MV'),
('MEX', 'Mexico', 'MX'),
('MHL', 'Marshall Islands', 'MH'),
('MKD', 'Macedonia', 'MK'),
('MLI', 'Mali', 'ML'),
('MLT', 'Malta', 'MT'),
('MMR', 'Myanmar [Burma]', 'MM'),
('MNE', 'Montenegro', 'ME'),
('MNG', 'Mongolia', 'MN'),
('MNP', 'Northern Mariana Islands', 'MP'),
('MOZ', 'Mozambique', 'MZ'),
('MRT', 'Mauritania', 'MR'),
('MSR', 'Montserrat', 'MS'),
('MTQ', 'Martinique', 'MQ'),
('MUS', 'Mauritius', 'MU'),
('MWI', 'Malawi', 'MW'),
('MYS', 'Malaysia', 'MY'),
('MYT', 'Mayotte', 'YT'),
('NAM', 'Namibia', 'NA'),
('NCL', 'New Caledonia', 'NC'),
('NER', 'Niger', 'NE'),
('NFK', 'Norfolk Island', 'NF'),
('NGA', 'Nigeria', 'NG'),
('NIC', 'Nicaragua', 'NI'),
('NIU', 'Niue', 'NU'),
('NLD', 'Netherlands', 'NL'),
('NOR', 'Norway', 'NO'),
('NPL', 'Nepal', 'NP'),
('NRU', 'Nauru', 'NR'),
('NZL', 'New Zealand', 'NZ'),
('OMN', 'Oman', 'OM'),
('PAK', 'Pakistan', 'PK'),
('PAN', 'Panama', 'PA'),
('PCN', 'Pitcairn Islands', 'PN'),
('PER', 'Peru', 'PE'),
('PHL', 'Philippines', 'PH'),
('PLW', 'Palau', 'PW'),
('PNG', 'Papua New Guinea', 'PG'),
('POL', 'Poland', 'PL'),
('PRI', 'Puerto Rico', 'PR'),
('PRK', 'North Korea', 'KP'),
('PRT', 'Portugal', 'PT'),
('PRY', 'Paraguay', 'PY'),
('PSE', 'Palestine', 'PS'),
('PYF', 'French Polynesia', 'PF'),
('QAT', 'Qatar', 'QA'),
('REU', 'Réunion', 'RE'),
('ROU', 'Romania', 'RO'),
('RUS', 'Russia', 'RU'),
('RWA', 'Rwanda', 'RW'),
('SAU', 'Saudi Arabia', 'SA'),
('SDN', 'Sudan', 'SD'),
('SEN', 'Senegal', 'SN'),
('SGP', 'Singapore', 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
('SHN', 'Saint Helena', 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'SJ'),
('SLB', 'Solomon Islands', 'SB'),
('SLE', 'Sierra Leone', 'SL'),
('SLV', 'El Salvador', 'SV'),
('SMR', 'San Marino', 'SM'),
('SOM', 'Somalia', 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'PM'),
('SRB', 'Serbia', 'RS'),
('SSD', 'South Sudan', 'SS'),
('STP', 'São Tomé and Príncipe', 'ST'),
('SUR', 'Suriname', 'SR'),
('SVK', 'Slovakia', 'SK'),
('SVN', 'Slovenia', 'SI'),
('SWE', 'Sweden', 'SE'),
('SWZ', 'Swaziland', 'SZ'),
('SXM', 'Sint Maarten', 'SX'),
('SYC', 'Seychelles', 'SC'),
('SYR', 'Syria', 'SY'),
('TCA', 'Turks and Caicos Islands', 'TC'),
('TCD', 'Chad', 'TD'),
('TGO', 'Togo', 'TG'),
('THA', 'Thailand', 'TH'),
('TJK', 'Tajikistan', 'TJ'),
('TKL', 'Tokelau', 'TK'),
('TKM', 'Turkmenistan', 'TM'),
('TLS', 'East Timor', 'TL'),
('TON', 'Tonga', 'TO'),
('TTO', 'Trinidad and Tobago', 'TT'),
('TUN', 'Tunisia', 'TN'),
('TUR', 'Turkey', 'TR'),
('TUV', 'Tuvalu', 'TV'),
('TWN', 'Taiwan', 'TW'),
('TZA', 'Tanzania', 'TZ'),
('UGA', 'Uganda', 'UG'),
('UKR', 'Ukraine', 'UA'),
('UMI', 'U.S. Minor Outlying Islands', 'UM'),
('URY', 'Uruguay', 'UY'),
('USA', 'United States', 'US'),
('UZB', 'Uzbekistan', 'UZ'),
('VAT', 'Vatican City', 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'VC'),
('VEN', 'Venezuela', 'VE'),
('VGB', 'British Virgin Islands', 'VG'),
('VIR', 'U.S. Virgin Islands', 'VI'),
('VNM', 'Vietnam', 'VN'),
('VUT', 'Vanuatu', 'VU'),
('WLF', 'Wallis and Futuna', 'WF'),
('WSM', 'Samoa', 'WS'),
('XKX', 'Kosovo', 'XK'),
('YEM', 'Yemen', 'YE'),
('ZAF', 'South Africa', 'ZA'),
('ZMB', 'Zambia', 'ZM'),
('ZWE', 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_box_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entrance_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_03_28_114354_create_cl_post_metas_table', 1),
(5, '2018_03_28_114442_create_cl_post_featured_images_table', 1),
(6, '2018_03_28_114755_create_cl_post_attachments_table', 1),
(7, '2018_03_28_114834_create_cl_post_videos_table', 1),
(9, '2018_03_28_115212_create_cl_post_comments_table', 1),
(10, '2018_03_28_115358_create_cl_categories_table', 1),
(11, '2018_03_28_115432_create_cl_category_metas_table', 1),
(12, '2018_03_29_064328_create_cl_log_table', 1),
(13, '2018_05_08_114118_create_cl_userroles_table', 1),
(14, '2018_05_20_062425_create_cl_members_table', 1),
(15, '2018_06_04_092530_create_cl_roles_table', 1),
(16, '2018_06_06_123826_create_product_category_table', 1),
(17, '2018_06_07_093316_create_post_type_table', 1),
(18, '2018_06_13_071711_create_cl_post_category_table', 1),
(19, '2018_06_21_080700_create_cl_banner_table', 1),
(20, '2018_06_27_053620_create_cl_product_type_table', 2),
(21, '2018_06_28_061103_create_cl_product_brand_table', 3),
(22, '2018_06_28_061256_create_cl_currency_table', 3),
(23, '2018_06_28_061707_create_cl_product_unit_table', 3),
(26, '2018_06_29_051629_create_cl_products_table', 1),
(31, '2018_07_03_014755_create_cl_gallery_image_categories_table', 4),
(32, '2018_07_03_014814_create_cl_gallery_images_table', 4),
(35, '2018_07_03_104330_create_cl_gallery_videos_table', 6),
(37, '2018_07_03_103721_create_cl_gallery_video_categories_table', 7),
(38, '2018_07_04_061117_create_cl_post_type_table', 7),
(39, '2018_03_28_113701_create_cl_posts_table', 8),
(41, '2018_08_06_085514_create_cl_product_tag_table', 9),
(42, '2018_09_20_120321_create_cl_customer_billing_address_table', 10),
(43, '2018_09_20_120340_create_cl_customer_shipping_address_table', 10),
(44, '2018_09_24_094921_create_cl_orders_table', 11),
(45, '2018_09_25_061818_create_cl_country_table', 12),
(46, '2018_09_25_092853_create_order_product_table', 13),
(47, '2018_09_25_100703_create_cl_order_product_table', 14),
(48, '2018_10_02_031657_create_cl_settings_table', 15),
(49, '2018_11_14_092229_create_cl_tender_table', 16),
(51, '2018_11_19_042417_create_cl_tender_category', 18),
(52, '2018_11_19_075448_create_cl_tender_document_table', 19),
(53, '2018_11_16_111624_create_cl_venderdetail_table', 20),
(54, '2018_11_25_060813_create_cl_multiple_video_table', 21),
(55, '2018_11_29_065424_create_cl_multiple_document_table', 22),
(56, '2019_03_13_082841_create_newsletter_signup_table', 23),
(59, '2019_03_14_052123_create_cl_associated_posts_table', 24),
(61, '2019_03_15_090749_create_cl_dwninfo_table', 25),
(62, '2020_08_06_095339_create_cl_multiple_banner_table', 26),
(63, '2020_08_06_120936_add_banner_id_column_at_cl_multiple_banner_table', 26),
(64, '2020_08_07_084648_add_visitor_column_at_posts_table', 26),
(66, '2020_08_11_180220_create_role_user_table', 27),
(67, '2020_08_12_061740_create_foreign_keys_for_role_user_table', 27),
(68, '2020_08_16_130049_crate_admin_menu_table', 28),
(74, '2020_08_16_162623_create_adminmenu_user_table', 29),
(75, '2020_08_16_205219_crate_foreign_keys_for_adminmenu_user_table', 29),
(79, '2020_08_17_062614_add_global_post_cl_posts_table', 30),
(80, '2020_12_10_131852_create_cl_portfolio_table', 31),
(81, '2020_12_10_132930_create_cl_associated_portfolios_table', 31),
(82, '2019_08_19_000000_create_failed_jobs_table', 32),
(83, '2021_03_29_110453_create_inquiries_table', 32),
(86, '2021_03_29_111050_create_bookings_table', 33),
(87, '2021_03_29_122554_create_trip_bookings_table', 34),
(88, '2021_03_30_070214_create_contacts_table', 35),
(89, '2021_04_19_105315_create_proposals_table', 36),
(90, '2021_04_19_122930_create_contacts_table', 37),
(91, '2020_10_20_094703_cl_post_portfolio', 38),
(96, '2022_05_08_092040_create_memberships_table', 39),
(98, '2022_05_09_105000_create_donations_table', 40),
(99, '2019_12_14_000001_create_personal_access_tokens_table', 41),
(100, '2023_11_21_074755_create_careers_table', 41),
(101, '2023_12_20_101126_create_contact_us_services_rel_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(255) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(3, 'suveer.joc@gmail.com', 'uxyFmAof8UhhFLne1Zw38sCcbzu8WRMLo7HwCT7EBnC7Mr3n7WkJMwyJ3XRCcuZ3', '2022-06-15 12:19:28');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(17, 3, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_districts`
--

CREATE TABLE `tbl_districts` (
  `id` int(11) NOT NULL,
  `districtname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincecode` int(11) NOT NULL,
  `districtcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_districts`
--

INSERT INTO `tbl_districts` (`id`, `districtname`, `provincecode`, `districtcode`) VALUES
(1, 'ताप्लेजुङ', 1, 1),
(2, 'पाँचथर', 1, 2),
(3, 'ईलाम', 1, 3),
(4, 'झापा', 1, 4),
(5, 'मोरंग', 1, 5),
(6, 'सुनसरी', 1, 6),
(7, 'धनकुटा', 1, 7),
(8, 'तेहथुम', 1, 8),
(9, 'संखुवासभा', 1, 9),
(10, 'भोजपुर', 1, 10),
(11, 'सोलुखुम्बु', 1, 11),
(12, 'ओखलढुंगा', 1, 12),
(13, 'खोटाङ', 1, 13),
(14, 'उदयपुर', 1, 14),
(15, 'सप्तरी', 2, 15),
(16, 'सिराहा', 2, 16),
(17, 'धनुषा', 2, 17),
(18, 'महोत्तरी', 2, 18),
(19, 'सर्लाही', 2, 19),
(20, 'रौतहट', 2, 20),
(21, 'वारा', 2, 21),
(22, 'पर्सा', 2, 22),
(23, 'सिन्धुली', 3, 23),
(24, 'रामेछाप', 3, 24),
(25, 'दोलखा', 3, 25),
(26, 'सिन्धुपाल्चोक', 3, 26),
(27, 'काभ्रेपलान्चोक', 3, 27),
(28, 'ललितपुर', 3, 28),
(29, 'भक्तपुर', 3, 29),
(30, 'काठमाण्डौ', 3, 30),
(31, 'नुवाकोट', 3, 31),
(32, 'रसुवा', 3, 32),
(33, 'धादिङ', 3, 33),
(34, 'मकवानपुर', 3, 34),
(35, 'चितवन', 3, 35),
(36, 'गोरखा', 4, 36),
(37, 'लमजुङ', 4, 37),
(38, 'तनहुँ', 4, 38),
(39, 'स्याङजा', 4, 39),
(40, 'कास्की', 4, 40),
(41, 'मनाङ', 4, 41),
(42, 'मुस्ताङ', 4, 42),
(43, 'म्याग्दी', 4, 43),
(44, 'पर्वत', 4, 44),
(45, 'वाग्लुङ', 4, 45),
(46, 'नवलपरासी (बर्दघाट सुस्ता पूर्व)', 4, 46),
(47, 'गुल्मी', 5, 47),
(48, 'पाल्पा', 5, 48),
(49, 'रुपन्देही', 5, 49),
(50, 'कपिलबस्तु', 5, 50),
(51, 'अर्घाखाँची', 5, 51),
(52, 'प्यूठान', 5, 52),
(53, 'रोल्पा', 5, 53),
(54, 'रुकुम (पूर्वी भाग)', 5, 54),
(55, 'दाङ', 5, 55),
(56, 'बाँके', 5, 56),
(57, 'बर्दिया', 5, 57),
(58, 'नवलपरासी (बर्दघाट सुस्ता पश्चिम)', 5, 58),
(59, 'रुकुम (पश्चिम भाग)', 6, 59),
(60, 'सल्यान', 6, 60),
(61, 'सुर्खेत', 6, 61),
(62, 'दैलेख', 6, 62),
(63, 'जाजरकोट', 6, 63),
(64, 'डोल्पा', 6, 64),
(65, 'जुम्ला', 6, 65),
(66, 'कालिकोट', 6, 66),
(67, 'मुगु', 6, 67),
(68, 'हुम्ला', 6, 68),
(69, 'बाजुरा', 7, 69),
(70, 'बझाङ', 7, 70),
(71, 'अछाम', 7, 71),
(72, 'डोटी', 7, 72),
(73, 'कैलाली', 7, 73),
(74, 'कञ्चनपुर', 7, 74),
(75, 'डडेलधुरा', 7, 75),
(76, 'बैतडी', 7, 76),
(77, 'दार्चुला', 7, 77);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_municipal`
--

CREATE TABLE `tbl_municipal` (
  `id` int(11) NOT NULL,
  `municipalname` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `districtcode` int(11) NOT NULL,
  `municipalcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_municipal`
--

INSERT INTO `tbl_municipal` (`id`, `municipalname`, `districtcode`, `municipalcode`) VALUES
(1, 'फुङलिङ नगरपालिका', 1, 1),
(2, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(3, 'सिदिङ्वा गाउँपालिका', 1, 3),
(4, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(5, 'मिक्वाखोला गाउँपालिका', 1, 5),
(6, 'मेरिङदेन गाउँपालिका', 1, 6),
(7, 'मैवाखोला गाउँपालिका', 1, 7),
(8, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(9, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(10, 'फिदिम नगरपालिका', 2, 10),
(11, 'फालेलुङ गाउँपालिका', 2, 11),
(12, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(13, 'हिलिहाङ गाउँपालिका', 2, 13),
(14, 'कुम्मायक गाउँपालिका', 2, 14),
(15, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(16, 'तुम्बेवा गाउँपालिका', 2, 16),
(17, 'याङवरक गाउँपालिका', 2, 17),
(18, 'ईलाम नगरपालिका', 3, 18),
(19, 'देउमाई नगरपालिका', 3, 19),
(20, 'माई नगरपालिका', 3, 20),
(21, 'सूर्योदय नगरपालिका', 3, 21),
(22, 'फाकफोकथुम गाउँपालिका', 3, 22),
(23, 'चुलाचुली गाउँपालिका', 3, 23),
(24, 'माईजोगमाई गाउँपालिका', 3, 24),
(25, 'माङसेबुङ गाउँपालिका', 3, 25),
(26, 'रोङ गाउँपालिका', 3, 26),
(27, 'सन्दकपुर गाउँपालिका', 3, 27),
(28, 'मेचीनगर नगरपालिका', 4, 28),
(29, 'दमक नगरपालिका', 4, 29),
(30, 'कन्काई नगरपालिका', 4, 30),
(31, 'भद्रपुर नगरपालिका', 4, 31),
(32, 'अर्जुनधारा नगरपालिका', 4, 32),
(33, 'शिवशताक्षी नगरपालिका', 4, 33),
(34, 'गौरादह नगरपालिका', 4, 34),
(35, 'विर्तामोड नगरपालिका', 4, 35),
(36, 'कमल गाउँपालिका', 4, 36),
(37, 'गौरीगंज गाउँपालिका', 4, 37),
(38, 'बाह्रदशी गाउँपालिका', 4, 38),
(39, 'झापा गाउँपालिका', 4, 39),
(40, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(41, 'हल्दिवारी गाउँपालिका', 4, 41),
(42, 'कचनकवल गाउँपालिका', 4, 42),
(43, 'विराटनगर महानगरपालिका', 5, 43),
(44, 'बेलवारी नगरपालिका', 5, 44),
(45, 'लेटाङ नगरपालिका', 5, 45),
(46, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(47, 'रंगेली नगरपालिका', 5, 47),
(48, 'रतुवामाई नगरपालिका', 5, 48),
(49, 'सुनवर्षि नगरपालिका', 5, 49),
(50, 'उर्लावारी नगरपालिका', 5, 50),
(51, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(52, 'बुढीगंगा गाउँपालिका', 5, 52),
(53, 'धनपालथान गाउँपालिका', 5, 53),
(54, 'ग्रामथान गाउँपालिका', 5, 54),
(55, 'जहदा गाउँपालिका', 5, 55),
(56, 'कानेपोखरी गाउँपालिका', 5, 56),
(57, 'कटहरी गाउँपालिका', 5, 57),
(58, 'केरावारी गाउँपालिका', 5, 58),
(59, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(60, 'ईटहरी उपमहानगरपालिका', 6, 60),
(61, 'धरान उपमहानगरपालिका', 6, 61),
(62, 'ईनरुवा नगरपालिका', 6, 62),
(63, 'दुहवी नगरपालिका', 6, 63),
(64, 'रामधुनी नगरपालिका', 6, 64),
(65, 'बराहक्षेत्र नगरपालिका', 6, 65),
(66, 'देवानगञ्ज गाउँपालिका', 6, 66),
(67, 'कोशी गाउँपालिका', 6, 67),
(68, 'गढी गाउँपालिका', 6, 68),
(69, 'बर्जु गाउँपालिका', 6, 69),
(70, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(71, 'हरिनगर गाउँपालिका', 6, 71),
(72, 'पाख्रिबास नगरपालिका', 7, 72),
(73, 'धनकुटा नगरपालिका', 7, 73),
(74, 'महालक्ष्मी नगरपालिका', 7, 74),
(75, 'साँगुरीगढी गाउँपालिका', 7, 75),
(76, 'सहिदभूमि गाउँपालिका', 7, 76),
(77, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(78, 'चौविसे गाउँपालिका', 7, 78),
(79, 'म्याङलुङ नगरपालिका', 8, 79),
(80, 'लालीगुराँस नगरपालिका', 8, 80),
(81, 'आठराई गाउँपालिका', 8, 81),
(82, 'छथर गाउँपालिका', 8, 82),
(83, 'फेदाप गाउँपालिका', 8, 83),
(84, 'मेन्छयायेम गाउँपालिका', 8, 84),
(85, 'चैनपुर नगरपालिका', 9, 85),
(86, 'धर्मदेवी नगरपालिका', 9, 86),
(87, 'खाँदवारी नगरपालिका', 9, 87),
(88, 'मादी नगरपालिका', 9, 88),
(89, 'पाँचखपन नगरपालिका', 9, 89),
(90, 'भोटखोला गाउँपालिका', 9, 90),
(91, 'चिचिला गाउँपालिका', 9, 91),
(92, 'मकालु गाउँपालिका', 9, 92),
(93, 'सभापोखरी गाउँपालिका', 9, 93),
(94, 'सिलीचोङ गाउँपालिका', 9, 94),
(95, 'भोजपुर नगरपालिका', 10, 95),
(96, 'षडानन्द नगरपालिका', 10, 96),
(97, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(98, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(99, 'अरुण गाउँपालिका', 10, 99),
(100, 'पौवादुङमा गाउँपालिका', 10, 100),
(101, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(102, 'आमचोक गाउँपालिका', 10, 102),
(103, 'हतुवागढी गाउँपालिका', 10, 103),
(104, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(105, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(106, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(107, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(108, 'नेचासल्यान गाउँपालिका', 11, 108),
(109, 'माहाकुलुङ गाउँपालिका', 11, 109),
(110, 'लिखु पिके गाउँपालिका', 11, 110),
(111, 'सोताङ गाउँपालिका', 11, 111),
(112, 'सिद्दिचरण नगरपालिका', 12, 112),
(113, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(114, 'चम्पादेवी गाउँपालिका', 12, 114),
(115, 'चिशंखुगढी गाउँपालिका', 12, 115),
(116, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(117, 'मोलुङ गाउँपालिका', 12, 117),
(118, 'लिखु गाउँपालिका', 12, 118),
(119, 'सुनकोशी गाउँपालिका', 12, 119),
(120, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(121, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(122, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(123, 'रावा बेसी गाउँपालिका', 13, 123),
(124, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(125, 'खोटेहाङ गाउँपालिका', 13, 125),
(126, 'केपिलासगढी गाउँपालिका', 13, 126),
(127, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(128, 'साकेला गाउँपालिका', 13, 128),
(129, 'वराहपोखरी गाउँपालिका', 13, 129),
(130, 'कटारी नगरपालिका', 14, 130),
(131, 'चौदण्डीगढी नगरपालिका', 14, 131),
(132, 'त्रियुगा नगरपालिका', 14, 132),
(133, 'वेलका नगरपालिका', 14, 133),
(134, 'उदयपुरगढी गाउँपालिका', 14, 134),
(135, 'ताप्ली गाउँपालिका', 14, 135),
(136, 'रौतामाई गाउँपालिका', 14, 136),
(137, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(138, 'राजविराज नगरपालिका', 15, 138),
(139, 'कञ्चनरुप नगरपालिका', 15, 139),
(140, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(141, 'बोदेबरसाईन नगरपालिका', 15, 141),
(142, 'खडक नगरपालिका', 15, 142),
(143, 'शम्भुनाथ नगरपालिका', 15, 143),
(144, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(145, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(146, 'सप्तकोशी नगरपालिका', 15, 146),
(147, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(148, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(149, 'महादेवा गाउँपालिका', 15, 149),
(150, 'तिरहुत गाउँपालिका', 15, 150),
(151, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(152, 'रुपनी गाउँपालिका', 15, 152),
(153, 'राजगढ गाउँपालिका', 15, 153),
(154, 'बिष्णुपुर गाउँपालिका', 15, 154),
(155, 'बलान-बिहुल गाउँपालिका', 15, 155),
(156, 'लहान नगरपालिका', 16, 156),
(157, 'धनगढीमाई नगरपालिका', 16, 157),
(158, 'सिरहा नगरपालिका', 16, 158),
(159, 'गोलबजार नगरपालिका', 16, 159),
(160, 'मिर्चैयाँ नगरपालिका', 16, 160),
(161, 'कल्याणपुर नगरपालिका', 16, 161),
(162, 'कर्जन्हा नगरपालिका', 16, 162),
(163, 'सुखीपुर नगरपालिका', 16, 163),
(164, 'भगवानपुर गाउँपालिका', 16, 164),
(165, 'औरही गाउँपालिका', 16, 165),
(166, 'विष्णुपुर गाउँपालिका', 16, 166),
(167, 'बरियारपट्टी गाउँपालिका', 16, 167),
(168, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(169, 'नरहा गाउँपालिका', 16, 169),
(170, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(171, 'अर्नमा गाउँपालिका', 16, 171),
(172, 'नवराजपुर गाउँपालिका', 16, 172),
(173, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(174, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(175, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(176, 'धनुषाधाम नगरपालिका', 17, 176),
(177, 'नगराइन नगरपालिका', 17, 177),
(178, 'विदेह नगरपालिका', 17, 178),
(179, 'मिथिला नगरपालिका', 17, 179),
(180, 'शहीदनगर नगरपालिका', 17, 180),
(181, 'सबैला नगरपालिका', 17, 181),
(182, 'कमला नगरपालिका', 17, 182),
(183, 'मिथिला बिहारी नगरपालिका', 17, 183),
(184, 'हंसपुर नगरपालिका', 17, 184),
(185, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(186, 'बटेश्वर गाउँपालिका', 17, 186),
(187, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(188, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(189, 'औरही गाउँपालिका', 17, 189),
(190, 'धनौजी गाउँपालिका', 17, 190),
(191, 'जलेश्वर नगरपालिका', 18, 191),
(192, 'बर्दिबास नगरपालिका', 18, 192),
(193, 'गौशाला नगरपालिका', 18, 193),
(194, 'लोहरपट्टी नगरपालिका', 18, 194),
(195, 'रामगोपालपुर नगरपालिका', 18, 195),
(196, 'मनरा शिसवा नगरपालिका', 18, 196),
(197, 'मटिहानी नगरपालिका', 18, 197),
(198, 'भँगाहा नगरपालिका', 18, 198),
(199, 'बलवा नगरपालिका', 18, 199),
(200, 'औरही नगरपालिका', 18, 200),
(201, 'एकडारा गाउँपालिका', 18, 201),
(202, 'सोनमा गाउँपालिका', 18, 202),
(203, 'साम्सी गाउँपालिका', 18, 203),
(204, 'महोत्तरी गाउँपालिका', 18, 204),
(205, 'पिपरा गाउँपालिका', 18, 205),
(206, 'ईश्वरपुर नगरपालिका', 19, 206),
(207, 'मलंगवा नगरपालिका', 19, 207),
(208, 'लालबन्दी नगरपालिका', 19, 208),
(209, 'हरिपुर नगरपालिका', 19, 209),
(210, 'हरिपुर्वा नगरपालिका', 19, 210),
(211, 'हरिवन नगरपालिका', 19, 211),
(212, 'बरहथवा नगरपालिका', 19, 212),
(213, 'बलरा नगरपालिका', 19, 213),
(214, 'गोडैटा नगरपालिका', 19, 214),
(215, 'बागमती नगरपालिका', 19, 215),
(216, 'कविलासी नगरपालिका', 19, 216),
(217, 'चक्रघट्टा गाउँपालिका', 19, 217),
(218, 'चन्द्रनगर गाउँपालिका', 19, 218),
(219, 'धनकौल गाउँपालिका', 19, 219),
(220, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(221, 'रामनगर गाउँपालिका', 19, 221),
(222, 'विष्णु गाउँपालिका', 19, 222),
(223, 'कौडेना गाउँपालिका', 19, 223),
(224, 'पर्सा गाउँपालिका', 19, 224),
(225, 'बसबरीया गाउँपालिका', 19, 225),
(226, 'चन्द्रपुर नगरपालिका', 20, 226),
(227, 'गरुडा नगरपालिका', 20, 227),
(228, 'गौर नगरपालिका', 20, 228),
(229, 'बौधीमाई नगरपालिका', 20, 229),
(230, 'बृन्दावन नगरपालिका', 20, 230),
(231, 'देवाही गोनाही नगरपालिका', 20, 231),
(232, 'गढीमाई नगरपालिका', 20, 232),
(233, 'गुजरा नगरपालिका', 20, 233),
(234, 'कटहरिया नगरपालिका', 20, 234),
(235, 'माधव नारायण नगरपालिका', 20, 235),
(236, 'मौलापुर नगरपालिका', 20, 236),
(237, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(238, 'ईशनाथ नगरपालिका', 20, 238),
(239, 'परोहा नगरपालिका', 20, 239),
(240, 'राजपुर नगरपालिका', 20, 240),
(241, 'राजदेवी नगरपालिका', 20, 241),
(242, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(243, 'यमुनामाई गाउँपालिका', 20, 243),
(244, 'कलैया उपमहानगरपालिका', 21, 244),
(245, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(246, 'कोल्हवी नगरपालिका', 21, 246),
(247, 'निजगढ नगरपालिका', 21, 247),
(248, 'महागढीमाई नगरपालिका', 21, 248),
(249, 'सिम्रौनगढ नगरपालिका', 21, 249),
(250, 'पचरौता नगरपालिका', 21, 250),
(251, 'फुङलिङ नगरपालिका', 1, 1),
(252, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(253, 'सिदिङ्वा गाउँपालिका', 1, 3),
(254, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(255, 'मिक्वाखोला गाउँपालिका', 1, 5),
(256, 'मेरिङदेन गाउँपालिका', 1, 6),
(257, 'मैवाखोला गाउँपालिका', 1, 7),
(258, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(259, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(260, 'फिदिम नगरपालिका', 2, 10),
(261, 'फालेलुङ गाउँपालिका', 2, 11),
(262, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(263, 'हिलिहाङ गाउँपालिका', 2, 13),
(264, 'कुम्मायक गाउँपालिका', 2, 14),
(265, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(266, 'तुम्बेवा गाउँपालिका', 2, 16),
(267, 'याङवरक गाउँपालिका', 2, 17),
(268, 'ईलाम नगरपालिका', 3, 18),
(269, 'देउमाई नगरपालिका', 3, 19),
(270, 'माई नगरपालिका', 3, 20),
(271, 'सूर्योदय नगरपालिका', 3, 21),
(272, 'फाकफोकथुम गाउँपालिका', 3, 22),
(273, 'चुलाचुली गाउँपालिका', 3, 23),
(274, 'माईजोगमाई गाउँपालिका', 3, 24),
(275, 'माङसेबुङ गाउँपालिका', 3, 25),
(276, 'रोङ गाउँपालिका', 3, 26),
(277, 'सन्दकपुर गाउँपालिका', 3, 27),
(278, 'मेचीनगर नगरपालिका', 4, 28),
(279, 'दमक नगरपालिका', 4, 29),
(280, 'कन्काई नगरपालिका', 4, 30),
(281, 'भद्रपुर नगरपालिका', 4, 31),
(282, 'अर्जुनधारा नगरपालिका', 4, 32),
(283, 'शिवशताक्षी नगरपालिका', 4, 33),
(284, 'गौरादह नगरपालिका', 4, 34),
(285, 'विर्तामोड नगरपालिका', 4, 35),
(286, 'कमल गाउँपालिका', 4, 36),
(287, 'गौरीगंज गाउँपालिका', 4, 37),
(288, 'बाह्रदशी गाउँपालिका', 4, 38),
(289, 'झापा गाउँपालिका', 4, 39),
(290, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(291, 'हल्दिवारी गाउँपालिका', 4, 41),
(292, 'कचनकवल गाउँपालिका', 4, 42),
(293, 'विराटनगर महानगरपालिका', 5, 43),
(294, 'बेलवारी नगरपालिका', 5, 44),
(295, 'लेटाङ नगरपालिका', 5, 45),
(296, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(297, 'रंगेली नगरपालिका', 5, 47),
(298, 'रतुवामाई नगरपालिका', 5, 48),
(299, 'सुनवर्षि नगरपालिका', 5, 49),
(300, 'उर्लावारी नगरपालिका', 5, 50),
(301, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(302, 'बुढीगंगा गाउँपालिका', 5, 52),
(303, 'धनपालथान गाउँपालिका', 5, 53),
(304, 'ग्रामथान गाउँपालिका', 5, 54),
(305, 'जहदा गाउँपालिका', 5, 55),
(306, 'कानेपोखरी गाउँपालिका', 5, 56),
(307, 'कटहरी गाउँपालिका', 5, 57),
(308, 'केरावारी गाउँपालिका', 5, 58),
(309, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(310, 'ईटहरी उपमहानगरपालिका', 6, 60),
(311, 'धरान उपमहानगरपालिका', 6, 61),
(312, 'ईनरुवा नगरपालिका', 6, 62),
(313, 'दुहवी नगरपालिका', 6, 63),
(314, 'रामधुनी नगरपालिका', 6, 64),
(315, 'बराहक्षेत्र नगरपालिका', 6, 65),
(316, 'देवानगञ्ज गाउँपालिका', 6, 66),
(317, 'कोशी गाउँपालिका', 6, 67),
(318, 'गढी गाउँपालिका', 6, 68),
(319, 'बर्जु गाउँपालिका', 6, 69),
(320, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(321, 'हरिनगर गाउँपालिका', 6, 71),
(322, 'पाख्रिबास नगरपालिका', 7, 72),
(323, 'धनकुटा नगरपालिका', 7, 73),
(324, 'महालक्ष्मी नगरपालिका', 7, 74),
(325, 'साँगुरीगढी गाउँपालिका', 7, 75),
(326, 'सहिदभूमि गाउँपालिका', 7, 76),
(327, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(328, 'चौविसे गाउँपालिका', 7, 78),
(329, 'म्याङलुङ नगरपालिका', 8, 79),
(330, 'लालीगुराँस नगरपालिका', 8, 80),
(331, 'आठराई गाउँपालिका', 8, 81),
(332, 'छथर गाउँपालिका', 8, 82),
(333, 'फेदाप गाउँपालिका', 8, 83),
(334, 'मेन्छयायेम गाउँपालिका', 8, 84),
(335, 'चैनपुर नगरपालिका', 9, 85),
(336, 'धर्मदेवी नगरपालिका', 9, 86),
(337, 'खाँदवारी नगरपालिका', 9, 87),
(338, 'मादी नगरपालिका', 9, 88),
(339, 'पाँचखपन नगरपालिका', 9, 89),
(340, 'भोटखोला गाउँपालिका', 9, 90),
(341, 'चिचिला गाउँपालिका', 9, 91),
(342, 'मकालु गाउँपालिका', 9, 92),
(343, 'सभापोखरी गाउँपालिका', 9, 93),
(344, 'सिलीचोङ गाउँपालिका', 9, 94),
(345, 'भोजपुर नगरपालिका', 10, 95),
(346, 'षडानन्द नगरपालिका', 10, 96),
(347, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(348, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(349, 'अरुण गाउँपालिका', 10, 99),
(350, 'पौवादुङमा गाउँपालिका', 10, 100),
(351, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(352, 'आमचोक गाउँपालिका', 10, 102),
(353, 'हतुवागढी गाउँपालिका', 10, 103),
(354, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(355, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(356, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(357, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(358, 'नेचासल्यान गाउँपालिका', 11, 108),
(359, 'माहाकुलुङ गाउँपालिका', 11, 109),
(360, 'लिखु पिके गाउँपालिका', 11, 110),
(361, 'सोताङ गाउँपालिका', 11, 111),
(362, 'सिद्दिचरण नगरपालिका', 12, 112),
(363, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(364, 'चम्पादेवी गाउँपालिका', 12, 114),
(365, 'चिशंखुगढी गाउँपालिका', 12, 115),
(366, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(367, 'मोलुङ गाउँपालिका', 12, 117),
(368, 'लिखु गाउँपालिका', 12, 118),
(369, 'सुनकोशी गाउँपालिका', 12, 119),
(370, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(371, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(372, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(373, 'रावा बेसी गाउँपालिका', 13, 123),
(374, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(375, 'खोटेहाङ गाउँपालिका', 13, 125),
(376, 'केपिलासगढी गाउँपालिका', 13, 126),
(377, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(378, 'साकेला गाउँपालिका', 13, 128),
(379, 'वराहपोखरी गाउँपालिका', 13, 129),
(380, 'कटारी नगरपालिका', 14, 130),
(381, 'चौदण्डीगढी नगरपालिका', 14, 131),
(382, 'त्रियुगा नगरपालिका', 14, 132),
(383, 'वेलका नगरपालिका', 14, 133),
(384, 'उदयपुरगढी गाउँपालिका', 14, 134),
(385, 'ताप्ली गाउँपालिका', 14, 135),
(386, 'रौतामाई गाउँपालिका', 14, 136),
(387, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(388, 'राजविराज नगरपालिका', 15, 138),
(389, 'कञ्चनरुप नगरपालिका', 15, 139),
(390, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(391, 'बोदेबरसाईन नगरपालिका', 15, 141),
(392, 'खडक नगरपालिका', 15, 142),
(393, 'शम्भुनाथ नगरपालिका', 15, 143),
(394, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(395, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(396, 'सप्तकोशी नगरपालिका', 15, 146),
(397, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(398, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(399, 'महादेवा गाउँपालिका', 15, 149),
(400, 'तिरहुत गाउँपालिका', 15, 150),
(401, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(402, 'रुपनी गाउँपालिका', 15, 152),
(403, 'राजगढ गाउँपालिका', 15, 153),
(404, 'बिष्णुपुर गाउँपालिका', 15, 154),
(405, 'बलान-बिहुल गाउँपालिका', 15, 155),
(406, 'लहान नगरपालिका', 16, 156),
(407, 'धनगढीमाई नगरपालिका', 16, 157),
(408, 'सिरहा नगरपालिका', 16, 158),
(409, 'गोलबजार नगरपालिका', 16, 159),
(410, 'मिर्चैयाँ नगरपालिका', 16, 160),
(411, 'कल्याणपुर नगरपालिका', 16, 161),
(412, 'कर्जन्हा नगरपालिका', 16, 162),
(413, 'सुखीपुर नगरपालिका', 16, 163),
(414, 'भगवानपुर गाउँपालिका', 16, 164),
(415, 'औरही गाउँपालिका', 16, 165),
(416, 'विष्णुपुर गाउँपालिका', 16, 166),
(417, 'बरियारपट्टी गाउँपालिका', 16, 167),
(418, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(419, 'नरहा गाउँपालिका', 16, 169),
(420, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(421, 'अर्नमा गाउँपालिका', 16, 171),
(422, 'नवराजपुर गाउँपालिका', 16, 172),
(423, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(424, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(425, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(426, 'धनुषाधाम नगरपालिका', 17, 176),
(427, 'नगराइन नगरपालिका', 17, 177),
(428, 'विदेह नगरपालिका', 17, 178),
(429, 'मिथिला नगरपालिका', 17, 179),
(430, 'शहीदनगर नगरपालिका', 17, 180),
(431, 'सबैला नगरपालिका', 17, 181),
(432, 'कमला नगरपालिका', 17, 182),
(433, 'मिथिला बिहारी नगरपालिका', 17, 183),
(434, 'हंसपुर नगरपालिका', 17, 184),
(435, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(436, 'बटेश्वर गाउँपालिका', 17, 186),
(437, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(438, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(439, 'औरही गाउँपालिका', 17, 189),
(440, 'धनौजी गाउँपालिका', 17, 190),
(441, 'जलेश्वर नगरपालिका', 18, 191),
(442, 'बर्दिबास नगरपालिका', 18, 192),
(443, 'गौशाला नगरपालिका', 18, 193),
(444, 'लोहरपट्टी नगरपालिका', 18, 194),
(445, 'रामगोपालपुर नगरपालिका', 18, 195),
(446, 'मनरा शिसवा नगरपालिका', 18, 196),
(447, 'मटिहानी नगरपालिका', 18, 197),
(448, 'भँगाहा नगरपालिका', 18, 198),
(449, 'बलवा नगरपालिका', 18, 199),
(450, 'औरही नगरपालिका', 18, 200),
(451, 'एकडारा गाउँपालिका', 18, 201),
(452, 'सोनमा गाउँपालिका', 18, 202),
(453, 'साम्सी गाउँपालिका', 18, 203),
(454, 'महोत्तरी गाउँपालिका', 18, 204),
(455, 'पिपरा गाउँपालिका', 18, 205),
(456, 'ईश्वरपुर नगरपालिका', 19, 206),
(457, 'मलंगवा नगरपालिका', 19, 207),
(458, 'लालबन्दी नगरपालिका', 19, 208),
(459, 'हरिपुर नगरपालिका', 19, 209),
(460, 'हरिपुर्वा नगरपालिका', 19, 210),
(461, 'हरिवन नगरपालिका', 19, 211),
(462, 'बरहथवा नगरपालिका', 19, 212),
(463, 'बलरा नगरपालिका', 19, 213),
(464, 'गोडैटा नगरपालिका', 19, 214),
(465, 'बागमती नगरपालिका', 19, 215),
(466, 'कविलासी नगरपालिका', 19, 216),
(467, 'चक्रघट्टा गाउँपालिका', 19, 217),
(468, 'चन्द्रनगर गाउँपालिका', 19, 218),
(469, 'धनकौल गाउँपालिका', 19, 219),
(470, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(471, 'रामनगर गाउँपालिका', 19, 221),
(472, 'विष्णु गाउँपालिका', 19, 222),
(473, 'कौडेना गाउँपालिका', 19, 223),
(474, 'पर्सा गाउँपालिका', 19, 224),
(475, 'बसबरीया गाउँपालिका', 19, 225),
(476, 'चन्द्रपुर नगरपालिका', 20, 226),
(477, 'गरुडा नगरपालिका', 20, 227),
(478, 'गौर नगरपालिका', 20, 228),
(479, 'बौधीमाई नगरपालिका', 20, 229),
(480, 'बृन्दावन नगरपालिका', 20, 230),
(481, 'देवाही गोनाही नगरपालिका', 20, 231),
(482, 'गढीमाई नगरपालिका', 20, 232),
(483, 'गुजरा नगरपालिका', 20, 233),
(484, 'कटहरिया नगरपालिका', 20, 234),
(485, 'माधव नारायण नगरपालिका', 20, 235),
(486, 'मौलापुर नगरपालिका', 20, 236),
(487, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(488, 'ईशनाथ नगरपालिका', 20, 238),
(489, 'परोहा नगरपालिका', 20, 239),
(490, 'राजपुर नगरपालिका', 20, 240),
(491, 'राजदेवी नगरपालिका', 20, 241),
(492, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(493, 'यमुनामाई गाउँपालिका', 20, 243),
(494, 'कलैया उपमहानगरपालिका', 21, 244),
(495, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(496, 'कोल्हवी नगरपालिका', 21, 246),
(497, 'निजगढ नगरपालिका', 21, 247),
(498, 'महागढीमाई नगरपालिका', 21, 248),
(499, 'सिम्रौनगढ नगरपालिका', 21, 249),
(500, 'पचरौता नगरपालिका', 21, 250),
(501, 'फुङलिङ नगरपालिका', 1, 1),
(502, 'आठराई त्रिवेणी गाउँपालिका', 1, 2),
(503, 'सिदिङ्वा गाउँपालिका', 1, 3),
(504, 'फक्ताङलुङ गाउँपालिका', 1, 4),
(505, 'मिक्वाखोला गाउँपालिका', 1, 5),
(506, 'मेरिङदेन गाउँपालिका', 1, 6),
(507, 'मैवाखोला गाउँपालिका', 1, 7),
(508, 'पाथीभरा याङवरक गाउँपालिका', 1, 8),
(509, 'सिरीजङ्घा गाउँपालिका', 1, 9),
(510, 'फिदिम नगरपालिका', 2, 10),
(511, 'फालेलुङ गाउँपालिका', 2, 11),
(512, 'फाल्गुनन्द गाउँपालिका', 2, 12),
(513, 'हिलिहाङ गाउँपालिका', 2, 13),
(514, 'कुम्मायक गाउँपालिका', 2, 14),
(515, 'मिक्लाजुङ गाउँपालिका', 2, 15),
(516, 'तुम्बेवा गाउँपालिका', 2, 16),
(517, 'याङवरक गाउँपालिका', 2, 17),
(518, 'ईलाम नगरपालिका', 3, 18),
(519, 'देउमाई नगरपालिका', 3, 19),
(520, 'माई नगरपालिका', 3, 20),
(521, 'सूर्योदय नगरपालिका', 3, 21),
(522, 'फाकफोकथुम गाउँपालिका', 3, 22),
(523, 'चुलाचुली गाउँपालिका', 3, 23),
(524, 'माईजोगमाई गाउँपालिका', 3, 24),
(525, 'माङसेबुङ गाउँपालिका', 3, 25),
(526, 'रोङ गाउँपालिका', 3, 26),
(527, 'सन्दकपुर गाउँपालिका', 3, 27),
(528, 'मेचीनगर नगरपालिका', 4, 28),
(529, 'दमक नगरपालिका', 4, 29),
(530, 'कन्काई नगरपालिका', 4, 30),
(531, 'भद्रपुर नगरपालिका', 4, 31),
(532, 'अर्जुनधारा नगरपालिका', 4, 32),
(533, 'शिवशताक्षी नगरपालिका', 4, 33),
(534, 'गौरादह नगरपालिका', 4, 34),
(535, 'विर्तामोड नगरपालिका', 4, 35),
(536, 'कमल गाउँपालिका', 4, 36),
(537, 'गौरीगंज गाउँपालिका', 4, 37),
(538, 'बाह्रदशी गाउँपालिका', 4, 38),
(539, 'झापा गाउँपालिका', 4, 39),
(540, 'बुद्धशान्ति गाउँपालिका', 4, 40),
(541, 'हल्दिवारी गाउँपालिका', 4, 41),
(542, 'कचनकवल गाउँपालिका', 4, 42),
(543, 'विराटनगर महानगरपालिका', 5, 43),
(544, 'बेलवारी नगरपालिका', 5, 44),
(545, 'लेटाङ नगरपालिका', 5, 45),
(546, 'पथरी शनिश्चरे नगरपालिका', 5, 46),
(547, 'रंगेली नगरपालिका', 5, 47),
(548, 'रतुवामाई नगरपालिका', 5, 48),
(549, 'सुनवर्षि नगरपालिका', 5, 49),
(550, 'उर्लावारी नगरपालिका', 5, 50),
(551, 'सुन्दरहरैचा नगरपालिका', 5, 51),
(552, 'बुढीगंगा गाउँपालिका', 5, 52),
(553, 'धनपालथान गाउँपालिका', 5, 53),
(554, 'ग्रामथान गाउँपालिका', 5, 54),
(555, 'जहदा गाउँपालिका', 5, 55),
(556, 'कानेपोखरी गाउँपालिका', 5, 56),
(557, 'कटहरी गाउँपालिका', 5, 57),
(558, 'केरावारी गाउँपालिका', 5, 58),
(559, 'मिक्लाजुङ गाउँपालिका', 5, 59),
(560, 'ईटहरी उपमहानगरपालिका', 6, 60),
(561, 'धरान उपमहानगरपालिका', 6, 61),
(562, 'ईनरुवा नगरपालिका', 6, 62),
(563, 'दुहवी नगरपालिका', 6, 63),
(564, 'रामधुनी नगरपालिका', 6, 64),
(565, 'बराहक्षेत्र नगरपालिका', 6, 65),
(566, 'देवानगञ्ज गाउँपालिका', 6, 66),
(567, 'कोशी गाउँपालिका', 6, 67),
(568, 'गढी गाउँपालिका', 6, 68),
(569, 'बर्जु गाउँपालिका', 6, 69),
(570, 'भोक्राहा नरसिंह गाउँपालिका', 6, 70),
(571, 'हरिनगर गाउँपालिका', 6, 71),
(572, 'पाख्रिबास नगरपालिका', 7, 72),
(573, 'धनकुटा नगरपालिका', 7, 73),
(574, 'महालक्ष्मी नगरपालिका', 7, 74),
(575, 'साँगुरीगढी गाउँपालिका', 7, 75),
(576, 'सहिदभूमि गाउँपालिका', 7, 76),
(577, 'छथर जोरपाटी गाउँपालिका', 7, 77),
(578, 'चौविसे गाउँपालिका', 7, 78),
(579, 'म्याङलुङ नगरपालिका', 8, 79),
(580, 'लालीगुराँस नगरपालिका', 8, 80),
(581, 'आठराई गाउँपालिका', 8, 81),
(582, 'छथर गाउँपालिका', 8, 82),
(583, 'फेदाप गाउँपालिका', 8, 83),
(584, 'मेन्छयायेम गाउँपालिका', 8, 84),
(585, 'चैनपुर नगरपालिका', 9, 85),
(586, 'धर्मदेवी नगरपालिका', 9, 86),
(587, 'खाँदवारी नगरपालिका', 9, 87),
(588, 'मादी नगरपालिका', 9, 88),
(589, 'पाँचखपन नगरपालिका', 9, 89),
(590, 'भोटखोला गाउँपालिका', 9, 90),
(591, 'चिचिला गाउँपालिका', 9, 91),
(592, 'मकालु गाउँपालिका', 9, 92),
(593, 'सभापोखरी गाउँपालिका', 9, 93),
(594, 'सिलीचोङ गाउँपालिका', 9, 94),
(595, 'भोजपुर नगरपालिका', 10, 95),
(596, 'षडानन्द नगरपालिका', 10, 96),
(597, 'टेम्केमैयुङ गाउँपालिका', 10, 97),
(598, 'रामप्रसाद राई गाउँपालिका', 10, 98),
(599, 'अरुण गाउँपालिका', 10, 99),
(600, 'पौवादुङमा गाउँपालिका', 10, 100),
(601, 'साल्पासिलिछो गाउँपालिका', 10, 101),
(602, 'आमचोक गाउँपालिका', 10, 102),
(603, 'हतुवागढी गाउँपालिका', 10, 103),
(604, 'सोलुदुधकुण्ड नगरपालिका', 11, 104),
(605, 'माप्य दुधकोशी गाउँपालिका', 11, 105),
(606, 'खुम्वु पासाङल्हमु गाउँपालिका', 11, 106),
(607, 'थुलुङ दुधकोशी गाउँपालिका', 11, 107),
(608, 'नेचासल्यान गाउँपालिका', 11, 108),
(609, 'माहाकुलुङ गाउँपालिका', 11, 109),
(610, 'लिखु पिके गाउँपालिका', 11, 110),
(611, 'सोताङ गाउँपालिका', 11, 111),
(612, 'सिद्दिचरण नगरपालिका', 12, 112),
(613, 'खिजिदेम्बा गाउँपालिका', 12, 113),
(614, 'चम्पादेवी गाउँपालिका', 12, 114),
(615, 'चिशंखुगढी गाउँपालिका', 12, 115),
(616, 'मानेभञ्याङ गाउँपालिका', 12, 116),
(617, 'मोलुङ गाउँपालिका', 12, 117),
(618, 'लिखु गाउँपालिका', 12, 118),
(619, 'सुनकोशी गाउँपालिका', 12, 119),
(620, 'हलेसी तुवाचुङ नगरपालिका', 13, 120),
(621, 'दिक्तेल रुपाकोट मझुवागढी नगरपालिका', 13, 121),
(622, 'ऐसेलुखर्क गाउँपालिका', 13, 122),
(623, 'रावा बेसी गाउँपालिका', 13, 123),
(624, 'जन्तेढुंगा गाउँपालिका', 13, 124),
(625, 'खोटेहाङ गाउँपालिका', 13, 125),
(626, 'केपिलासगढी गाउँपालिका', 13, 126),
(627, 'दिप्रुङ चुइचुम्मा गाउँपालिका', 13, 127),
(628, 'साकेला गाउँपालिका', 13, 128),
(629, 'वराहपोखरी गाउँपालिका', 13, 129),
(630, 'कटारी नगरपालिका', 14, 130),
(631, 'चौदण्डीगढी नगरपालिका', 14, 131),
(632, 'त्रियुगा नगरपालिका', 14, 132),
(633, 'वेलका नगरपालिका', 14, 133),
(634, 'उदयपुरगढी गाउँपालिका', 14, 134),
(635, 'ताप्ली गाउँपालिका', 14, 135),
(636, 'रौतामाई गाउँपालिका', 14, 136),
(637, 'लिम्चुङ्बुङ गाउँपालिका', 14, 137),
(638, 'राजविराज नगरपालिका', 15, 138),
(639, 'कञ्चनरुप नगरपालिका', 15, 139),
(640, 'डाक्नेश्वरी नगरपालिका', 15, 140),
(641, 'बोदेबरसाईन नगरपालिका', 15, 141),
(642, 'खडक नगरपालिका', 15, 142),
(643, 'शम्भुनाथ नगरपालिका', 15, 143),
(644, 'सुरुङ्‍गा नगरपालिका', 15, 144),
(645, 'हनुमाननगर कङ्‌कालिनी नगरपालिका', 15, 145),
(646, 'सप्तकोशी नगरपालिका', 15, 146),
(647, 'अग्निसाइर कृष्णासरवन गाउँपालिका', 15, 147),
(648, 'छिन्नमस्ता गाउँपालिका', 15, 148),
(649, 'महादेवा गाउँपालिका', 15, 149),
(650, 'तिरहुत गाउँपालिका', 15, 150),
(651, 'तिलाठी कोईलाडी गाउँपालिका', 15, 151),
(652, 'रुपनी गाउँपालिका', 15, 152),
(653, 'राजगढ गाउँपालिका', 15, 153),
(654, 'बिष्णुपुर गाउँपालिका', 15, 154),
(655, 'बलान-बिहुल गाउँपालिका', 15, 155),
(656, 'लहान नगरपालिका', 16, 156),
(657, 'धनगढीमाई नगरपालिका', 16, 157),
(658, 'सिरहा नगरपालिका', 16, 158),
(659, 'गोलबजार नगरपालिका', 16, 159),
(660, 'मिर्चैयाँ नगरपालिका', 16, 160),
(661, 'कल्याणपुर नगरपालिका', 16, 161),
(662, 'कर्जन्हा नगरपालिका', 16, 162),
(663, 'सुखीपुर नगरपालिका', 16, 163),
(664, 'भगवानपुर गाउँपालिका', 16, 164),
(665, 'औरही गाउँपालिका', 16, 165),
(666, 'विष्णुपुर गाउँपालिका', 16, 166),
(667, 'बरियारपट्टी गाउँपालिका', 16, 167),
(668, 'लक्ष्मीपुर पतारी गाउँपालिका', 16, 168),
(669, 'नरहा गाउँपालिका', 16, 169),
(670, 'सखुवानान्कारकट्टी गाउँपालिका', 16, 170),
(671, 'अर्नमा गाउँपालिका', 16, 171),
(672, 'नवराजपुर गाउँपालिका', 16, 172),
(673, 'जनकपुरधाम उपमहानगरपालिका', 17, 173),
(674, 'क्षिरेश्वरनाथ नगरपालिका', 17, 174),
(675, 'गणेशमान चारनाथ नगरपालिका', 17, 175),
(676, 'धनुषाधाम नगरपालिका', 17, 176),
(677, 'नगराइन नगरपालिका', 17, 177),
(678, 'विदेह नगरपालिका', 17, 178),
(679, 'मिथिला नगरपालिका', 17, 179),
(680, 'शहीदनगर नगरपालिका', 17, 180),
(681, 'सबैला नगरपालिका', 17, 181),
(682, 'कमला नगरपालिका', 17, 182),
(683, 'मिथिला बिहारी नगरपालिका', 17, 183),
(684, 'हंसपुर नगरपालिका', 17, 184),
(685, 'जनकनन्दिनी गाउँपालिका', 17, 185),
(686, 'बटेश्वर गाउँपालिका', 17, 186),
(687, 'मुखियापट्टी मुसहरमिया गाउँपालिका', 17, 187),
(688, 'लक्ष्मीनिया गाउँपालिका', 17, 188),
(689, 'औरही गाउँपालिका', 17, 189),
(690, 'धनौजी गाउँपालिका', 17, 190),
(691, 'जलेश्वर नगरपालिका', 18, 191),
(692, 'बर्दिबास नगरपालिका', 18, 192),
(693, 'गौशाला नगरपालिका', 18, 193),
(694, 'लोहरपट्टी नगरपालिका', 18, 194),
(695, 'रामगोपालपुर नगरपालिका', 18, 195),
(696, 'मनरा शिसवा नगरपालिका', 18, 196),
(697, 'मटिहानी नगरपालिका', 18, 197),
(698, 'भँगाहा नगरपालिका', 18, 198),
(699, 'बलवा नगरपालिका', 18, 199),
(700, 'औरही नगरपालिका', 18, 200),
(701, 'एकडारा गाउँपालिका', 18, 201),
(702, 'सोनमा गाउँपालिका', 18, 202),
(703, 'साम्सी गाउँपालिका', 18, 203),
(704, 'महोत्तरी गाउँपालिका', 18, 204),
(705, 'पिपरा गाउँपालिका', 18, 205),
(706, 'ईश्वरपुर नगरपालिका', 19, 206),
(707, 'मलंगवा नगरपालिका', 19, 207),
(708, 'लालबन्दी नगरपालिका', 19, 208),
(709, 'हरिपुर नगरपालिका', 19, 209),
(710, 'हरिपुर्वा नगरपालिका', 19, 210),
(711, 'हरिवन नगरपालिका', 19, 211),
(712, 'बरहथवा नगरपालिका', 19, 212),
(713, 'बलरा नगरपालिका', 19, 213),
(714, 'गोडैटा नगरपालिका', 19, 214),
(715, 'बागमती नगरपालिका', 19, 215),
(716, 'कविलासी नगरपालिका', 19, 216),
(717, 'चक्रघट्टा गाउँपालिका', 19, 217),
(718, 'चन्द्रनगर गाउँपालिका', 19, 218),
(719, 'धनकौल गाउँपालिका', 19, 219),
(720, 'ब्रह्मपुरी गाउँपालिका', 19, 220),
(721, 'रामनगर गाउँपालिका', 19, 221),
(722, 'विष्णु गाउँपालिका', 19, 222),
(723, 'कौडेना गाउँपालिका', 19, 223),
(724, 'पर्सा गाउँपालिका', 19, 224),
(725, 'बसबरीया गाउँपालिका', 19, 225),
(726, 'चन्द्रपुर नगरपालिका', 20, 226),
(727, 'गरुडा नगरपालिका', 20, 227),
(728, 'गौर नगरपालिका', 20, 228),
(729, 'बौधीमाई नगरपालिका', 20, 229),
(730, 'बृन्दावन नगरपालिका', 20, 230),
(731, 'देवाही गोनाही नगरपालिका', 20, 231),
(732, 'गढीमाई नगरपालिका', 20, 232),
(733, 'गुजरा नगरपालिका', 20, 233),
(734, 'कटहरिया नगरपालिका', 20, 234),
(735, 'माधव नारायण नगरपालिका', 20, 235),
(736, 'मौलापुर नगरपालिका', 20, 236),
(737, 'फतुवाबिजयपुर नगरपालिका', 20, 237),
(738, 'ईशनाथ नगरपालिका', 20, 238),
(739, 'परोहा नगरपालिका', 20, 239),
(740, 'राजपुर नगरपालिका', 20, 240),
(741, 'राजदेवी नगरपालिका', 20, 241),
(742, 'दुर्गा भगवती गाउँपालिका', 20, 242),
(743, 'यमुनामाई गाउँपालिका', 20, 243),
(744, 'कलैया उपमहानगरपालिका', 21, 244),
(745, 'जीतपुर सिमरा उपमहानगरपालिका', 21, 245),
(746, 'कोल्हवी नगरपालिका', 21, 246),
(747, 'निजगढ नगरपालिका', 21, 247),
(748, 'महागढीमाई नगरपालिका', 21, 248),
(749, 'सिम्रौनगढ नगरपालिका', 21, 249),
(750, 'पचरौता नगरपालिका', 21, 250),
(751, 'आदर्श कोटवाल गाउँपालिका', 21, 251),
(752, 'करैयामाई गाउँपालिका', 21, 252),
(753, 'देवताल गाउँपालिका', 21, 253),
(754, 'परवानीपुर गाउँपालिका', 21, 254),
(755, 'प्रसौनी गाउँपालिका', 21, 255),
(756, 'फेटा गाउँपालिका', 21, 256),
(757, 'बारागढीगाउँपालिका', 21, 257),
(758, 'सुवर्ण गाउँपालिका', 21, 258),
(759, 'विश्रामपुर गाउँपालिका', 21, 259),
(760, 'बिरगंज महानगरपालिका', 22, 260),
(761, 'पोखरिया नगरपालिका', 22, 261),
(762, 'बहुदरमाई नगरपालिका', 22, 262),
(763, 'पर्सागढी नगरपालिका', 22, 263),
(764, 'ठोरी गाउँपालिका', 22, 264),
(765, 'जगरनाथपुर गाउँपालिका', 22, 265),
(766, 'धोबीनी गाउँपालिका', 22, 266),
(767, 'छिपहरमाई गाउँपालिका', 22, 267),
(768, 'पकाहा मैनपुर गाउँपालिका', 22, 268),
(769, 'बिन्दबासिनी गाउँपालिका', 22, 269),
(770, 'सखुवा प्रसौनी गाउँपालिका', 22, 270),
(771, 'पटेर्वा सुगौली गाउँपालिका', 22, 271),
(772, 'कालिकामाई गाउँपालिका', 22, 272),
(773, 'जिरा भवानी गाउँपालिका', 22, 273),
(774, 'कमलामाई नगरपालिका', 23, 274),
(775, 'दुधौली नगरपालिका', 23, 275),
(776, 'गोलन्जर गाउँपालिका', 23, 276),
(777, 'घ्याङलेख गाउँपालिका', 23, 277),
(778, 'तीनपाटन गाउँपालिका', 23, 278),
(779, 'फिक्कल गाउँपालिका', 23, 279),
(780, 'मरिण गाउँपालिका', 23, 280),
(781, 'सुनकोशी गाउँपालिका', 23, 281),
(782, 'हरिहरपुरगढी गाउँपालिका', 23, 282),
(783, 'मन्थली नगरपालिका', 24, 283),
(784, 'रामेछाप नगरपालिका', 24, 284),
(785, 'उमाकुण्ड गाउँपालिका', 24, 285),
(786, 'खाँडादेवी गाउँपालिका', 24, 286),
(787, 'गोकुलगङ्गा गाउँपालिका', 24, 287),
(788, 'दोरम्बा गाउँपालिका', 24, 288),
(789, 'लिखु तामाकोशी गाउँपालिका', 24, 289),
(790, 'सुनापती गाउँपालिका', 24, 290),
(791, 'जिरी नगरपालिका', 25, 291),
(792, 'भिमेश्वर नगरपालिका', 25, 292),
(793, 'कालिन्चोक गाउँपालिका', 25, 293),
(794, 'गौरीशङ्कर गाउँपालिका', 25, 294),
(795, 'तामाकोशी गाउँपालिका', 25, 295),
(796, 'मेलुङ्ग गाउँपालिका', 25, 296),
(797, 'विगु गाउँपालिका', 25, 297),
(798, 'वैतेश्वर गाउँपालिका', 25, 298),
(799, 'शैलुङ्ग गाउँपालिका', 25, 299),
(800, 'चौतारा साँगाचोकगढी नगरपालिका', 26, 300),
(801, 'बाह्रविसे नगरपालिका', 26, 301),
(802, 'मेलम्ची नगरपालिका', 26, 302),
(803, 'ईन्द्रावती गाउँपालिका', 26, 303),
(804, 'जुगल गाउँपालिका', 26, 304),
(805, 'पाँचपोखरी थाङपाल गाउँपालिका', 26, 305),
(806, 'बलेफी गाउँपालिका', 26, 306),
(807, 'भोटेकोशी गाउँपालिका', 26, 307),
(808, 'लिसङ्खु पाखर गाउँपालिका', 26, 308),
(809, 'सुनकोशी गाउँपालिका', 26, 309),
(810, 'हेलम्बु गाउँपालिका', 26, 310),
(811, 'त्रिपुरासुन्दरी गाउँपालिका', 26, 311),
(812, 'धुलिखेल नगरपालिका', 27, 312),
(813, 'बनेपा नगरपालिका', 27, 313),
(814, 'पनौती नगरपालिका', 27, 314),
(815, 'पाँचखाल नगरपालिका', 27, 315),
(816, 'नमोबुद्ध नगरपालिका', 27, 316),
(817, 'मण्डनदेउपुर नगरपालिका', 27, 317),
(818, 'खानीखोला गाउँपालिका', 27, 318),
(819, 'चौंरीदेउराली गाउँपालिका', 27, 319),
(820, 'तेमाल गाउँपालिका', 27, 320),
(821, 'बेथानचोक गाउँपालिका', 27, 321),
(822, 'भुम्लु गाउँपालिका', 27, 322),
(823, 'महाभारत गाँउपालिका', 27, 323),
(824, 'रोशी गाउँपालिका', 27, 324),
(825, 'ललितपुर महानगरपालिका', 28, 325),
(826, 'गोदावरी नगरपालिका', 28, 326),
(827, 'महालक्ष्मी नगरपालिका', 28, 327),
(828, 'कोन्ज्योसोम गाउँपालिका', 28, 328),
(829, 'बागमती गाउँपालिका', 28, 329),
(830, 'महाङ्काल गाउँपालिका', 28, 330),
(831, 'चाँगुनारायण नगरपालिका', 29, 331),
(832, 'भक्तपुर नगरपालिका', 29, 332),
(833, 'मध्यपुर थिमी नगरपालिका', 29, 333),
(834, 'सूर्यविनायक नगरपालिका', 29, 334),
(835, 'काठमाण्डौं महानगरपालिका', 30, 335),
(836, 'कागेश्वरी मनोहरा नगरपालिका', 30, 336),
(837, 'कीर्तिपुर नगरपालिका', 30, 337),
(838, 'गोकर्णेश्वर नगरपालिका', 30, 338),
(839, 'चन्द्रागिरी नगरपालिका', 30, 339),
(840, 'टोखा नगरपालिका', 30, 340),
(841, 'तारकेश्वर नगरपालिका', 30, 341),
(842, 'दक्षिणकाली नगरपालिका', 30, 342),
(843, 'नागार्जुन नगरपालिका', 30, 343),
(844, 'बुढानिलकण्ठ नगरपालिका', 30, 344),
(845, 'शङ्खरापुर नगरपालिका', 30, 345),
(846, 'विदुर नगरपालिका', 31, 346),
(847, 'बेलकोटगढी नगरपालिका', 31, 347),
(848, 'ककनी गाउँपालिका', 31, 348),
(849, 'किस्पाङ गाउँपालिका', 31, 349),
(850, 'तादी गाउँपालिका', 31, 350),
(851, 'तारकेश्वर गाउँपालिका', 31, 351),
(852, 'दुप्चेश्वर गाउँपालिका', 31, 352),
(853, 'पञ्चकन्या गाउँपालिका', 31, 353),
(854, 'लिखु गाउँपालिका', 31, 354),
(855, 'म्यगङ गाउँपालिका', 31, 355),
(856, 'शिवपुरी गाउँपालिका', 31, 356),
(857, 'सुर्यगढी गाउँपालिका', 31, 357),
(858, 'उत्तरगया गाउँपालिका', 32, 358),
(859, 'कालिका गाउँपालिका', 32, 359),
(860, 'गोसाईकुण्ड गाउँपालिका', 32, 360),
(861, 'नौकुण्ड गाउँपालिका', 32, 361),
(862, 'आमाछोदिङमो गाउँपालिका', 32, 362),
(863, 'धुनीबेंशी नगरपालिका', 33, 363),
(864, 'निलकण्ठ नगरपालिका', 33, 364),
(865, 'खनियाबास गाउँपालिका', 33, 365),
(866, 'गजुरी गाउँपालिका', 33, 366),
(867, 'गल्छी गाउँपालिका', 33, 367),
(868, 'गङ्गाजमुना गाउँपालिका', 33, 368),
(869, 'ज्वालामूखी गाउँपालिका', 33, 369),
(870, 'थाक्रे गाउँपालिका', 33, 370),
(871, 'नेत्रावती डबजोङ गाउँपालिका', 33, 371),
(872, 'बेनीघाट रोराङ्ग गाउँपालिका', 33, 372),
(873, 'रुवी भ्याली गाउँपालिका', 33, 373),
(874, 'सिद्धलेक गाउँपालिका', 33, 374),
(875, 'त्रिपुरासुन्दरी गाउँपालिका', 33, 375),
(876, 'हेटौडा उपमहानगरपालिका', 34, 376),
(877, 'थाहा नगरपालिका', 34, 377),
(878, 'इन्द्रसरोबर गाउँपालिका', 34, 378),
(879, 'कैलाश गाउँपालिका', 34, 379),
(880, 'बकैया गाउँपालिका', 34, 380),
(881, 'बाग्मति गाउँपालिका', 34, 381),
(882, 'भिमफेदी गाउँपालिका', 34, 382),
(883, 'मकवानपुरगढी गाउँपालिका', 34, 383),
(884, 'मनहरी गाउँपालिका', 34, 384),
(885, 'राक्सिराङ्ग गाउँपालिका', 34, 385),
(886, 'भरतपुर महानगरपालिका', 35, 386),
(887, 'कालिका नगरपालिका', 35, 387),
(888, 'खैरहनी नगरपालिका', 35, 388),
(889, 'माडी नगरपालिका', 35, 389),
(890, 'रत्ननगर नगरपालिका', 35, 390),
(891, 'राप्ती नगरपालिका', 35, 391),
(892, 'इच्छाकामना गाउँपालिका', 35, 392),
(893, 'गोरखा नगरपालिका', 36, 393),
(894, 'पालुङटार नगरपालिका', 36, 394),
(895, 'बारपाक सुलिकोट गाउँपालिका', 36, 395),
(896, 'सिरानचोक गाउँपालिका', 36, 396),
(897, 'अजिरकोट गाउँपालिका', 36, 397),
(898, 'आरूघाट गाउँपालिका', 36, 398),
(899, 'गण्डकी गाउँपालिका', 36, 399),
(900, 'चुमनुव्री गाउँपालिका', 36, 400),
(901, 'धार्चे गाउँपालिका', 36, 401),
(902, 'भिमसेनथापा गाउँपालिका', 36, 402),
(903, 'शहिद लखन गाउँपालिका', 36, 403),
(904, 'बेसीशहर नगरपालिका', 37, 404),
(905, 'मध्यनेपाल नगरपालिका', 37, 405),
(906, 'रार्इनास नगरपालिका', 37, 406),
(907, 'सुन्दरबजार नगरपालिका', 37, 407),
(908, 'क्व्होलासोथार गाउँपालिका', 37, 408),
(909, 'दूधपोखरी गाउँपालिका', 37, 409),
(910, 'दोर्दी गाउँपालिका', 37, 410),
(911, 'मर्स्याङदी गाउँपालिका', 37, 411),
(912, 'भानु नगरपालिका', 38, 412),
(913, 'भिमाद नगरपालिका', 38, 413),
(914, 'व्यास नगरपालिका', 38, 414),
(915, 'शुक्लागण्डकी नगरपालिका', 38, 415),
(916, 'आँबुखैरेनी गाउँपालिका', 38, 416),
(917, 'ऋषिङ्ग गाउँपालिका', 38, 417),
(918, 'घिरिङ गाउँपालिका', 38, 418),
(919, 'देवघाट गाउँपालिका', 38, 419),
(920, 'म्याग्दे गाउँपालिका', 38, 420),
(921, 'वन्दिपुर गाउँपालिका', 38, 421),
(922, 'गल्याङ नगरपालिका', 39, 422),
(923, 'चापाकोट नगरपालिका', 39, 423),
(924, 'पुतलीबजार नगरपालिका', 39, 424),
(925, 'भीरकोट नगरपालिका', 39, 425),
(926, 'वालिङ नगरपालिका', 39, 426),
(927, 'अर्जुनचौपारी गाउँपालिका', 39, 427),
(928, 'आँधिखोला गाउँपालिका', 39, 428),
(929, 'कालीगण्डकी गाउँपालिका', 39, 429),
(930, 'फेदीखोला गाउँपालिका', 39, 430),
(931, 'बिरुवा गाउँपालिका', 39, 431),
(932, 'हरिनास गाउँपालिका', 39, 432),
(933, 'पोखरा महानगरपालिका', 40, 433),
(934, 'अन्नपूर्ण गाउँपालिका', 40, 434),
(935, 'माछापुच्छ्रे गाउँपालिका', 40, 435),
(936, 'मादी गाउँपालिका', 40, 436),
(937, 'रूपा गाउँपालिका', 40, 437),
(938, 'चामे गाउँपालिका', 41, 438),
(939, 'नार्पा भूमि गाउँपालिका', 41, 439),
(940, 'नासोँ गाउँपालिका', 41, 440),
(941, 'मनाङ ङिस्याङ गाउँपालिका', 41, 441),
(942, 'घरपझोङ गाउँपालिका', 42, 442),
(943, 'थासाङ गाउँपालिका', 42, 443),
(944, 'लो-घेकर दामोदरकुण्ड गाउँपालिका', 42, 444),
(945, 'लोमन्थाङ गाउँपालिका', 42, 445),
(946, 'वारागुङ मुक्तिक्षेत्र गाउँपालिका', 42, 446),
(947, 'बेनी नगरपालिका', 43, 447),
(948, 'अन्नपुर्ण गाउँपालिका', 43, 448),
(949, 'धवलागिरी गाउँपालिका', 43, 449),
(950, 'मंगला गाउँपालिका', 43, 450),
(951, 'मालिका गाउँपालिका', 43, 451),
(952, 'रघुगंगा गाउँपालिका', 43, 452),
(953, 'कुश्मा नगरपालिका', 44, 453),
(954, 'फलेवास नगरपालिका', 44, 454),
(955, 'जलजला गाउँपालिका', 44, 455),
(956, 'पैयूं गाउँपालिका', 44, 456),
(957, 'महाशिला गाउँपालिका', 44, 457),
(958, 'मोदी गाउँपालिका', 44, 458),
(959, 'विहादी गाउँपालिका', 44, 459),
(960, 'बागलुङ नगरपालिका', 45, 460),
(961, 'गल्कोट नगरपालिका', 45, 461),
(962, 'जैमूनी नगरपालिका', 45, 462),
(963, 'ढोरपाटन नगरपालिका', 45, 463),
(964, 'वरेङ गाउँपालिका', 45, 464),
(965, 'काठेखोला गाउँपालिका', 45, 465),
(966, 'तमानखोला गाउँपालिका', 45, 466),
(967, 'ताराखोला गाउँपालिका', 45, 467),
(968, 'निसीखोला गाउँपालिका', 45, 468),
(969, 'वडिगाड गाउँपालिका', 45, 469),
(970, 'कावासोती नगरपालिका', 46, 470),
(971, 'गैडाकोट नगरपालिका', 46, 471),
(972, 'देवचुली नगरपालिका', 46, 472),
(973, 'मध्यविन्दु नगरपालिका', 46, 473),
(974, 'बौदीकाली गाउँपालिका', 46, 474),
(975, 'बुलिङटार गाउँपालिका', 46, 475),
(976, 'विनयी त्रिवेणी गाउँपालिका', 46, 476),
(977, 'हुप्सेकोट गाउँपालिका', 46, 477),
(978, 'मुसिकोट नगरपालिका', 47, 478),
(979, 'रेसुङ्गा नगरपालिका', 47, 479),
(980, 'ईस्मा गाउँपालिका', 47, 480),
(981, 'कालीगण्डकी गाउँपालिका', 47, 481),
(982, 'गुल्मी दरबार गाउँपालिका', 47, 482),
(983, 'सत्यवती गाउँपालिका', 47, 483),
(984, 'चन्द्रकोट गाउँपालिका', 47, 484),
(985, 'रुरुक्षेत्र गाउँपालिका', 47, 485),
(986, 'छत्रकोट गाउँपालिका', 47, 486),
(987, 'धुर्कोट गाउँपालिका', 47, 487),
(988, 'मदाने गाउँपालिका', 47, 488),
(989, 'मालिका गाउँपालिका', 47, 489),
(990, 'रामपुर नगरपालिका', 48, 490),
(991, 'तानसेन नगरपालिका', 48, 491),
(992, 'निस्दी गाउँपालिका', 48, 492),
(993, 'पूर्वखोला गाउँपालिका', 48, 493),
(994, 'रम्भा गाउँपालिका', 48, 494),
(995, 'माथागढी गाउँपालिका', 48, 495),
(996, 'तिनाउ गाउँपालिका', 48, 496),
(997, 'बगनासकाली गाउँपालिका', 48, 497),
(998, 'रिब्दिकोट गाउँपालिका', 48, 498),
(999, 'रैनादेवी छहरा गाउँपालिका', 48, 499),
(1000, 'बुटवल उपमहानगरपालिका', 49, 500),
(1001, 'देवदह नगरपालिका', 49, 501),
(1002, 'लुम्बिनी सांस्कृतिक नगरपालिका', 49, 502),
(1003, 'सैनामैना नगरपालिका', 49, 503),
(1004, 'सिद्धार्थनगर नगरपालिका', 49, 504),
(1005, 'तिलोत्तमा नगरपालिका', 49, 505),
(1006, 'गैडहवा गाउँपालिका', 49, 506),
(1007, 'कन्चन गाउँपालिका', 49, 507),
(1008, 'कोटहीमाई गाउँपालिका', 49, 508),
(1009, 'मर्चवारी गाउँपालिका', 49, 509),
(1010, 'मायादेवी गाउँपालिका', 49, 510),
(1011, 'ओमसतिया गाउँपालिका', 49, 511),
(1012, 'रोहिणी गाउँपालिका', 49, 512),
(1013, 'सम्मरीमाई गाउँपालिका', 49, 513),
(1014, 'सियारी गाउँपालिका', 49, 514),
(1015, 'शुद्धोधन गाउँपालिका', 49, 515),
(1016, 'कपिलवस्तु नगरपालिका', 50, 516),
(1017, 'बुद्धभुमी नगरपालिका', 50, 517),
(1018, 'शिवराज नगरपालिका', 50, 518),
(1019, 'महाराजगंज नगरपालिका', 50, 519),
(1020, 'कृष्णनगर नगरपालिका', 50, 520),
(1021, 'बाणगंगा नगरपालिका', 50, 521),
(1022, 'मायादेवी गाउँपालिका', 50, 522),
(1023, 'यसोधरा गाउँपालिका', 50, 523),
(1024, 'सुद्धोधन गाउँपालिका', 50, 524),
(1025, 'विजयनगर गाउँपालिका', 50, 525),
(1026, 'सन्धिखर्क नगरपालिका', 51, 526),
(1027, 'शितगंगा नगरपालिका', 51, 527),
(1028, 'भूमिकास्थान नगरपालिका', 51, 528),
(1029, 'छत्रदेव गाउँपालिका', 51, 529),
(1030, 'पाणिनी गाउँपालिका', 51, 530),
(1031, 'मालारानी गाउँपालिका', 51, 531),
(1032, 'प्यूठान नगरपालिका', 52, 532),
(1033, 'स्वर्गद्वारी नगरपालिका', 52, 533),
(1034, 'गौमुखी गाउँपालिका', 52, 534),
(1035, 'माण्डवी गाउँपालिका', 52, 535),
(1036, 'सरुमारानी गाउँपालिका', 52, 536),
(1037, 'मल्लरानी गाउँपालिका', 52, 537),
(1038, 'नौवहिनी गाउँपालिका', 52, 538),
(1039, 'झिमरुक गाउँपालिका', 52, 539),
(1040, 'ऐरावती गाउँपालिका', 52, 540),
(1041, 'रोल्पा नगरपालिका', 53, 541),
(1042, 'त्रिवेणी गाउँपालिका', 53, 542),
(1043, 'परिवर्तन गाउँपालिका', 53, 543),
(1044, 'माडी गाउँपालिका', 53, 544),
(1045, 'रुन्टीगढी गाउँपालिका', 53, 545),
(1046, 'लुङग्री गाउँपालिका', 53, 546),
(1047, 'गंगादेव गाउँपालिका', 53, 547),
(1048, 'सुनछहरी गाउँपालिका', 53, 548),
(1049, 'सुनिल स्मृति गाउँपालिका', 53, 549),
(1050, 'थवाङ गाउँपालिका', 53, 550),
(1051, 'पुथा उत्तरगंगा गाउँपालिका', 54, 551),
(1052, 'भूमे गाउँपालिका', 54, 552),
(1053, 'सिस्ने गाउँपालिका', 54, 553),
(1054, 'तुल्सीपुर उपमहानगरपालिका', 55, 554),
(1055, 'घोराही उपमहानगरपालिका', 55, 555),
(1056, 'लमही नगरपालिका', 55, 556),
(1057, 'बंगलाचुली गाउँपालिका', 55, 557),
(1058, 'दंगीशरण गाउँपालिका', 55, 558),
(1059, 'गढवा गाउँपालिका', 55, 559),
(1060, 'राजपुर गाउँपालिका', 55, 560),
(1061, 'राप्ती गाउँपालिका', 55, 561),
(1062, 'शान्तिनगर गाउँपालिका', 55, 562),
(1063, 'बबई गाउँपालिका', 55, 563),
(1064, 'नेपालगंज उपमहानगरपालिका', 56, 564),
(1065, 'कोहलपुर नगरपालिका', 56, 565),
(1066, 'नरैनापुर गाउँपालिका', 56, 566),
(1067, 'राप्ती सोनारी गाउँपालिका', 56, 567),
(1068, 'बैजनाथ गाउँपालिका', 56, 568),
(1069, 'खजुरा गाउँपालिका', 56, 569),
(1070, 'डुडुवा गाउँपालिका', 56, 570),
(1071, 'जानकी गाउँपालिका', 56, 571),
(1072, 'गुलरिया नगरपालिका', 57, 572),
(1073, 'मधुवन नगरपालिका', 57, 573),
(1074, 'राजापुर नगरपालिका', 57, 574),
(1075, 'ठाकुरबाबा नगरपालिका', 57, 575),
(1076, 'बाँसगढी नगरपालिका', 57, 576),
(1077, 'बारबर्दिया नगरपालिका', 57, 577),
(1078, 'बढैयाताल गाउँपालिका', 57, 578),
(1079, 'गेरुवा गाउँपालिका', 57, 579),
(1080, 'बर्दघाट नगरपालिका', 58, 580),
(1081, 'रामग्राम नगरपालिका', 58, 581),
(1082, 'सुनवल नगरपालिका', 58, 582),
(1083, 'सुस्ता गाउँपालिका', 58, 583),
(1084, 'पाल्हीनन्दन गाउँपालिका', 58, 584),
(1085, 'प्रतापपुर गाउँपालिका', 58, 585),
(1086, 'सरावल गाउँपालिका', 58, 586),
(1087, 'मुसिकोट नगरपालिका', 59, 587),
(1088, 'चौरजहारी नगरपालिका', 59, 588),
(1089, 'आठबिसकोट नगरपालिका', 59, 589),
(1090, 'बाँफिकोट गाउँपालिका', 59, 590),
(1091, 'त्रिवेणी गाउँपालिका', 59, 591),
(1092, 'सानी भेरी गाउँपालिका', 59, 592),
(1093, 'शारदा नगरपालिका', 60, 593),
(1094, 'बागचौर नगरपालिका', 60, 594),
(1095, 'बनगाड कुपिण्डे नगरपालिका', 60, 595),
(1096, 'कालिमाटी गाउँपालिका', 60, 596),
(1097, 'त्रिवेणी गाउँपालिका', 60, 597),
(1098, 'कपुरकोट गाउँपालिका', 60, 598),
(1099, 'छत्रेश्वरी गाउँपालिका', 60, 599),
(1100, 'सिद्ध कुमाख गाउँपालिका', 60, 600),
(1101, 'कुमाख गाउँपालिका', 60, 601),
(1102, 'दार्मा गाउँपालिका', 60, 602),
(1103, 'बीरेन्द्रनगर नगरपालिका', 61, 603),
(1104, 'भेरीगंगा नगरपालिका', 61, 604),
(1105, 'गुर्भाकोट नगरपालिका', 61, 605),
(1106, 'पञ्चपुरी नगरपालिका', 61, 606),
(1107, 'लेकवेशी नगरपालिका', 61, 607),
(1108, 'चौकुने गाउँपालिका', 61, 608),
(1109, 'बराहताल गाउँपालिका', 61, 609),
(1110, 'चिङ्गाड गाउँपालिका', 61, 610),
(1111, 'सिम्ता गाउँपालिका', 61, 611),
(1112, 'नारायण नगरपालिका', 62, 612),
(1113, 'दुल्लु नगरपालिका', 62, 613),
(1114, 'चामुण्डा विन्द्रासैनी नगरपालिका', 62, 614),
(1115, 'आठबीस नगरपालिका', 62, 615),
(1116, 'भगवतीमाई गाउँपालिका', 62, 616),
(1117, 'गुराँस गाउँपालिका', 62, 617),
(1118, 'डुंगेश्वर गाउँपालिका', 62, 618),
(1119, 'नौमुले गाउँपालिका', 62, 619),
(1120, 'महावु गाउँपालिका', 62, 620),
(1121, 'भैरवी गाउँपालिका', 62, 621),
(1122, 'ठाँटीकाँध गाउँपालिका', 62, 622),
(1123, 'भेरी नगरपालिका', 63, 623),
(1124, 'छेडागाड नगरपालिका', 63, 624),
(1125, 'नलगाड नगरपालिका', 63, 625),
(1126, 'बारेकोट गाउँपालिका', 63, 626),
(1127, 'कुसे गाउँपालिका', 63, 627),
(1128, 'जुनीचाँदे गाउँपालिका', 63, 628),
(1129, 'शिवालय गाउँपालिका', 63, 629),
(1130, 'ठूली भेरी नगरपालिका', 64, 630),
(1131, 'त्रिपुरासुन्दरी नगरपालिका', 64, 631),
(1132, 'डोल्पो बुद्ध गाउँपालिका', 64, 632),
(1133, 'शे फोक्सुन्डो गाउँपालिका', 64, 633),
(1134, 'जगदुल्ला गाउँपालिका', 64, 634),
(1135, 'मुड्केचुला गाउँपालिका', 64, 635),
(1136, 'काईके गाउँपालिका', 64, 636),
(1137, 'छार्का ताङसोङ गाउँपालिका', 64, 637),
(1138, 'चन्दननाथ नगरपालिका', 65, 638),
(1139, 'कनकासुन्दरी गाउँपालिका', 65, 639),
(1140, 'सिंजा गाउँपालिका', 65, 640),
(1141, 'हिमा गाउँपालिका', 65, 641),
(1142, 'तिला गाउँपालिका', 65, 642),
(1143, 'गुठिचौर गाउँपालिका', 65, 643),
(1144, 'तातोपानी गाउँपालिका', 65, 644),
(1145, 'पातारासी गाउँपालिका', 65, 645),
(1146, 'खाँडाचक्र नगरपालिका', 66, 646),
(1147, 'रास्कोट नगरपालिका', 66, 647),
(1148, 'तिलागुफा नगरपालिका', 66, 648),
(1149, 'पचालझरना गाउँपालिका', 66, 649),
(1150, 'सान्नी त्रिवेणी गाउँपालिका', 66, 650),
(1151, 'नरहरिनाथ गाउँपालिका', 66, 651),
(1152, 'शुभ कालीका गाउँपालिका', 66, 652),
(1153, 'महावै गाउँपालिका', 66, 653),
(1154, 'पलाता गाउँपालिका', 66, 654),
(1155, 'छायाँनाथ रारा नगरपालिका', 67, 655),
(1156, 'मुगुम कार्मारोंग गाउँपालिका', 67, 656),
(1157, 'सोरु गाउँपालिका', 67, 657),
(1158, 'खत्याड गाउँपालिका', 67, 658),
(1159, 'सिमकोट गाउँपालिका', 68, 659),
(1160, 'नाम्खा गाउँपालिका', 68, 660),
(1161, 'खार्पुनाथ गाउँपालिका', 68, 661),
(1162, 'सर्केगाड गाउँपालिका', 68, 662),
(1163, 'चंखेली गाउँपालिका', 68, 663),
(1164, 'अदानचुली गाउँपालिका', 68, 664),
(1165, 'ताँजाकोट गाउँपालिका', 68, 665),
(1166, 'बडीमालिका नगरपालिका', 69, 666),
(1167, 'त्रिवेणी नगरपालिका', 69, 667),
(1168, 'बुढीगंगा नगरपालिका', 69, 668),
(1169, 'बुढीनन्दा नगरपालिका', 69, 669),
(1170, 'गौमुल गाउँपालिका', 69, 670),
(1171, 'जगन्‍नाथ गाउँपालिका', 69, 671),
(1172, 'स्वामीकार्तिक खापर गाउँपालिका', 69, 672),
(1173, 'खप्तड छेडेदह गाउँपालिका', 69, 673),
(1174, 'हिमाली गाउँपालिका', 69, 674),
(1175, 'जयपृथ्वी नगरपालिका', 70, 675),
(1176, 'बुंगल नगरपालिका', 70, 676),
(1177, 'तलकोट गाउँपालिका', 70, 677),
(1178, 'मष्टा गाउँपालिका', 70, 678),
(1179, 'खप्तडछान्ना गाउँपालिका', 70, 679),
(1180, 'थलारा गाउँपालिका', 70, 680),
(1181, 'वित्थडचिर गाउँपालिका', 70, 681),
(1182, 'सूर्मा गाउँपालिका', 70, 682),
(1183, 'छबिसपाथिभेरा गाउँपालिका', 70, 683),
(1184, 'दुर्गाथली गाउँपालिका', 70, 684),
(1185, 'केदारस्युँ गाउँपालिका', 70, 685),
(1186, 'साइपाल गाउँपालिका', 70, 686),
(1187, 'मंगलसेन नगरपालिका', 71, 687),
(1188, 'कमलबजार नगरपालिका', 71, 688),
(1189, 'साँफेबगर नगरपालिका', 71, 689),
(1190, 'पन्चदेवल विनायक नगरपालिका', 71, 690),
(1191, 'चौरपाटी गाउँपालिका', 71, 691),
(1192, 'मेल्लेख गाउँपालिका', 71, 692),
(1193, 'बान्निगढी जयगढ गाउँपालिका', 71, 693),
(1194, 'रामारोशन गाउँपालिका', 71, 694),
(1195, 'ढकारी गाउँपालिका', 71, 695),
(1196, 'तुर्माखाँद गाउँपालिका', 71, 696),
(1197, 'दिपायल सिलगढी नगरपालिका', 72, 697),
(1198, 'शिखर नगरपालिका', 72, 698),
(1199, 'पूर्वीचौकी गाउँपालिका', 72, 699),
(1200, 'बडीकेदार गाउँपालिका', 72, 700),
(1201, 'जोरायल गाउँपालिका', 72, 701),
(1202, 'सायल गाउँपालिका', 72, 702),
(1203, 'आदर्श गाउँपालिका', 72, 703),
(1204, 'के.आई.सिं. गाउँपालिका', 72, 704),
(1205, 'बोगटान फुड्सिल गाउँपालिका', 72, 705),
(1206, 'धनगढी उपमहानगरपालिका', 73, 706),
(1207, 'टिकापुर नगरपालिका', 73, 707),
(1208, 'घोडाघोडी नगरपालिका', 73, 708),
(1209, 'लम्कीचुहा नगरपालिका', 73, 709),
(1210, 'भजनी नगरपालिका', 73, 710),
(1211, 'गोदावरी नगरपालिका', 73, 711),
(1212, 'गौरीगंगा नगरपालिका', 73, 712),
(1213, 'जानकी गाउँपालिका', 73, 713),
(1214, 'बर्दगोरिया गाउँपालिका', 73, 714),
(1215, 'मोहन्याल गाउँपालिका', 73, 715),
(1216, 'कैलारी गाउँपालिका', 73, 716),
(1217, 'जोशीपुर गाउँपालिका', 73, 717),
(1218, 'चुरे गाउँपालिका', 73, 718),
(1219, 'भीमदत्त नगरपालिका', 74, 719),
(1220, 'पुर्नवास नगरपालिका', 74, 720),
(1221, 'वेदकोट नगरपालिका', 74, 721),
(1222, 'महाकाली नगरपालिका', 74, 722),
(1223, 'शुक्लाफाँटा नगरपालिका', 74, 723),
(1224, 'बेलौरी नगरपालिका', 74, 724),
(1225, 'कृष्णपुर नगरपालिका', 74, 725),
(1226, 'बेलडाडी गाउँपालिका', 74, 726),
(1227, 'लालझाडी गाउँपालिका', 74, 727),
(1228, 'अमरगढी नगरपालिका', 75, 728),
(1229, 'परशुराम नगरपालिका', 75, 729),
(1230, 'आलिताल गाउँपालिका', 75, 730),
(1231, 'भागेश्वर गाउँपालिका', 75, 731),
(1232, 'नवदुर्गा गाउँपालिका', 75, 732),
(1233, 'अजयमेरु गाउँपालिका', 75, 733),
(1234, 'गन्यापधुरा गाउँपालिका', 75, 734),
(1235, 'दशरथचन्द नगरपालिका', 76, 735),
(1236, 'पाटन नगरपालिका', 76, 736),
(1237, 'मेलौली नगरपालिका', 76, 737),
(1238, 'पुर्चौडी नगरपालिका', 76, 738),
(1239, 'सुर्नया गाउँपालिका', 76, 739),
(1240, 'सिगास गाउँपालिका', 76, 740),
(1241, 'शिवनाथ गाउँपालिका', 76, 741),
(1242, 'पञ्चेश्वर गाउँपालिका', 76, 742),
(1243, 'दोगडाकेदार गाउँपालिका', 76, 743),
(1244, 'डीलासैनी गाउँपालिका', 76, 744),
(1245, 'महाकाली नगरपालिका', 77, 745),
(1246, 'शैल्यशिखर नगरपालिका', 77, 746),
(1247, 'मालिकार्जुन गाउँपालिका', 77, 747),
(1248, 'अपिहिमाल गाउँपालिका', 77, 748),
(1249, 'दुहुँ गाउँपालिका', 77, 749),
(1250, 'नौगाड गाउँपालिका', 77, 750),
(1251, 'मार्मा गाउँपालिका', 77, 751),
(1252, 'लेकम गाउँपालिका', 77, 752),
(1253, 'ब्याँस गाउँपालिका', 77, 753);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE `tbl_provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `provincecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_provinces`
--

INSERT INTO `tbl_provinces` (`id`, `name`, `provincecode`) VALUES
(1, 'प्रदेश नं. १', 1),
(2, 'प्रदेश नं. २', 2),
(3, 'बागमती प्रदेश', 3),
(4, 'गण्डकी प्रदेश', 4),
(5, 'लुम्बिन प्रदेश', 5),
(6, 'कर्णाली प्रदेश', 6),
(7, 'सुदुरपस्चिम प्रदेश', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` int(5) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'root@admin.com', '$2y$10$bkfjB.2syJg78umiyDc4ruvL1eZQpAlWni1Tml8AdeGmK33xwPdoa', 8910, 'WGFgbWmfa008STWm7DWcdri7Q8HcJlQYLOym8jKbE3njaGE8099zmNUEaYiU', '2018-06-24 04:33:34', '2018-06-24 04:33:34'),
(5, 'Planetfloorwash', 'sabeen@planetfloorwash.com', '$2y$10$isAhVfY2gCffZI0bjR9o3.dH3ChQgLUlDSreq8ne7tqtI63DMEW7O', 8910, NULL, '2024-02-29 23:50:54', '2024-02-29 23:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'ksfraHmni6Kso9qjP4NN', '2022-06-15 16:02:19', '2022-06-15 16:02:19'),
(2, 2, '14db9RfeHyVNo45KHMO3', '2022-06-16 16:23:38', '2022-06-16 16:23:38'),
(3, 3, '4mi0Gm9maTakSmlpSLsU', '2022-07-04 14:18:32', '2022-07-04 14:18:32'),
(4, 4, 'jVRSDD9RE3AIBNuLw7gZ', '2022-07-04 14:20:30', '2022-07-04 14:20:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_adminmenu_user_user_id_foreign` (`user_id`),
  ADD KEY `cl_adminmenu_user_adminmenu_id_foreign` (`adminmenu_id`);

--
-- Indexes for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_associated_portfolios_portfolio_id_foreign` (`portfolio_id`);

--
-- Indexes for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_banner`
--
ALTER TABLE `cl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_country`
--
ALTER TABLE `cl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_images`
--
ALTER TABLE `cl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_log`
--
ALTER TABLE `cl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_members`
--
ALTER TABLE `cl_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cl_members_email_unique` (`email`);

--
-- Indexes for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_portfolio`
--
ALTER TABLE `cl_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_portfolio_categories`
--
ALTER TABLE `cl_portfolio_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_portfolio`
--
ALTER TABLE `cl_post_portfolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cl_post_portfolio_post_id_foreign` (`post_id`);

--
-- Indexes for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_roles`
--
ALTER TABLE `cl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_settings`
--
ALTER TABLE `cl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_services_rel`
--
ALTER TABLE `contact_us_services_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countrycode`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tbl_districts`
--
ALTER TABLE `tbl_districts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `cl_admin_menu`
--
ALTER TABLE `cl_admin_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `cl_banner`
--
ALTER TABLE `cl_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cl_gallery_images`
--
ALTER TABLE `cl_gallery_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_image_categories`
--
ALTER TABLE `cl_gallery_image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_videos`
--
ALTER TABLE `cl_gallery_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_gallery_video_categories`
--
ALTER TABLE `cl_gallery_video_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_images`
--
ALTER TABLE `cl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_log`
--
ALTER TABLE `cl_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_members`
--
ALTER TABLE `cl_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_banner`
--
ALTER TABLE `cl_multiple_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_document`
--
ALTER TABLE `cl_multiple_document`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cl_multiple_image`
--
ALTER TABLE `cl_multiple_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_multiple_video`
--
ALTER TABLE `cl_multiple_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_portfolio`
--
ALTER TABLE `cl_portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_portfolio_categories`
--
ALTER TABLE `cl_portfolio_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_featured_images`
--
ALTER TABLE `cl_post_featured_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_portfolio`
--
ALTER TABLE `cl_post_portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cl_post_videos`
--
ALTER TABLE `cl_post_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_roles`
--
ALTER TABLE `cl_roles`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_settings`
--
ALTER TABLE `cl_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us_services_rel`
--
ALTER TABLE `contact_us_services_rel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cl_adminmenu_user`
--
ALTER TABLE `cl_adminmenu_user`
  ADD CONSTRAINT `cl_adminmenu_user_adminmenu_id_foreign` FOREIGN KEY (`adminmenu_id`) REFERENCES `cl_admin_menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cl_adminmenu_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cl_associated_portfolios`
--
ALTER TABLE `cl_associated_portfolios`
  ADD CONSTRAINT `cl_associated_portfolios_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `cl_portfolio` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `cl_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
