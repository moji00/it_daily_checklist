-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2025 at 03:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it_checklist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `created_by`, `created_at`, `category`) VALUES
(25, 'Facility', 'Is the room locked?', 3, '2025-08-27 05:02:26', 'Security'),
(26, 'Servers', 'Are the servers running?', 3, '2025-08-27 05:04:23', 'Server'),
(27, 'Network Infrastructure', 'Server Room', 3, '2025-08-27 05:09:53', 'Network'),
(29, 'Access Point', 'Are the Access points powered up and working properly?', 3, '2025-08-27 05:14:44', 'Network'),
(30, 'Primary Bizbox Server (172.17.1.22)', 'MSSQL Server service', 3, '2025-08-27 08:00:06', 'Server'),
(31, 'Secondary Bizbox Server (n/S)', 'MSSQL Server service', 3, '2025-08-27 08:01:07', 'Server'),
(32, 'Active Directory 1(172.17.1.10)', 'MSSQL Server service', 3, '2025-08-27 08:02:11', 'Server'),
(33, 'Active Directory 2(172.17.1.11)', 'MSSQL Server service', 3, '2025-08-27 08:03:33', 'Server'),
(34, 'Text connect, power bi, HRIS Server (172.17.1.20)', 'MSSQL Server service', 3, '2025-08-27 08:05:15', 'Server'),
(38, 'Switches', 'test', NULL, '2025-08-28 06:16:12', 'Network'),
(39, 'Test', '123', NULL, '2025-08-29 00:43:18', 'Security');

-- --------------------------------------------------------

--
-- Table structure for table `task_descriptions`
--

CREATE TABLE `task_descriptions` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_descriptions`
--

INSERT INTO `task_descriptions` (`id`, `task_id`, `text`, `created_at`) VALUES
(21, 25, 'Is the ACU 1 running?', '2025-08-27 05:03:51'),
(22, 25, 'Is the ACU 2 running?', '2025-08-27 05:03:51'),
(23, 25, 'Does the room have power supply?', '2025-08-27 05:03:51'),
(24, 25, 'Are the UPS working properly?', '2025-08-27 05:03:51'),
(25, 26, 'Primary Bizbox Server', '2025-08-27 05:07:04'),
(26, 26, 'Secondary Bizbox Server  ( N/S)', '2025-08-27 05:07:04'),
(27, 26, 'Active Directory 1(172.17.1.10)', '2025-08-27 05:07:04'),
(28, 26, 'Active Directory 2(172.17.1.11)', '2025-08-27 05:07:04'),
(29, 26, 'Text connect, power bi, HRIS Server (172.17.1.20)', '2025-08-27 05:07:04'),
(30, 26, 'Bizbox, File back -up / data base back-up (172.17.1.21)', '2025-08-27 05:07:04'),
(31, 26, 'Novarad server 1(172.17.1.30)', '2025-08-27 05:07:04'),
(32, 26, 'Novarad server 2 (back-up)', '2025-08-27 05:07:04'),
(33, 26, 'LIS server Rhumba', '2025-08-27 05:07:04'),
(34, 26, 'LIS server rosche', '2025-08-27 05:07:04'),
(35, 26, 'tmcshared server (172.17.1.12)', '2025-08-27 05:07:04'),
(36, 26, 'Zynology Storage (172.17.1.13)', '2025-08-27 05:07:04'),
(37, 27, 'Are the ISP working properly?', '2025-08-27 05:10:29'),
(38, 27, 'PLDT FIBER 100mbps', '2025-08-27 05:10:29'),
(39, 27, 'PLDT I-Gate', '2025-08-27 05:10:29'),
(40, 29, 'FIRST FLOOR', '2025-08-27 05:15:23'),
(41, 29, '1ST FLR AP #1  (UNIFI)', '2025-08-27 05:15:23'),
(42, 29, '1ST FLR AP #2  (UNIFI)', '2025-08-27 05:16:12'),
(43, 29, '1ST FLR AP #3  (UNIFI)', '2025-08-27 05:16:12'),
(44, 29, '1ST FLR AP #4  (UNIFI)', '2025-08-27 05:16:12'),
(45, 29, '1ST FLR AP #5  (UNIFI)', '2025-08-27 05:17:07'),
(46, 29, '1ST FLR AP #6  (UNIFI)', '2025-08-27 05:17:07'),
(47, 29, '1ST FLR AP #7  (UNIFI)', '2025-08-27 05:17:07'),
(48, 29, 'SECOND FLOOR', '2025-08-27 05:18:52'),
(49, 29, '2ND FLR AP #1  (UNIFI)', '2025-08-27 05:18:52'),
(50, 29, '2ND FLR AP #2  (UNIFI)', '2025-08-27 05:18:52'),
(51, 29, '2ND FLR AP #3  (UNIFI)', '2025-08-27 05:18:52'),
(52, 29, '2ND FLR AP #4  (UNIFI)', '2025-08-27 05:18:52'),
(53, 29, '2ND FLR AP #5 (UNIFI)', '2025-08-27 05:18:52'),
(54, 29, '2ND FLR AP #6 (UNIFI)', '2025-08-27 05:18:52'),
(55, 29, '2ND FLR AP #7 (UNIFI)', '2025-08-27 05:18:52'),
(56, 29, 'THIRD FLOOR', '2025-08-27 05:22:43'),
(57, 29, '3RD FLR AP #1  (UNIFI)', '2025-08-27 05:22:43'),
(58, 29, '3RD FLR AP #2  (UNIFI)', '2025-08-27 05:22:43'),
(59, 29, '3RD FLR AP #3  (UNIFI)', '2025-08-27 05:22:43'),
(60, 29, '3RD FLR AP # 4 (UNIFI)', '2025-08-27 05:22:43'),
(61, 29, '3RD FLR AP #5  (UNIFI)', '2025-08-27 05:22:43'),
(62, 29, '3RD FLR AP #6  (UNIFI)', '2025-08-27 05:22:43'),
(63, 29, '3RD FLR AP #7  (UNIFI)', '2025-08-27 05:22:43'),
(64, 29, '3RD FLR AP #8  (UNIFI)', '2025-08-27 05:22:43'),
(65, 29, '3RD FLR AP #9  (UNIFI)', '2025-08-27 05:22:43'),
(66, 29, '3RD FLR AP #10  (UNIFI)', '2025-08-27 05:22:43'),
(67, 29, 'FOURTH FLOOR', '2025-08-27 05:22:43'),
(68, 29, '4TH FLR AP #1 (UNIFI)', '2025-08-27 05:22:43'),
(69, 29, '4TH FLR AP #2 (UNIFI)', '2025-08-27 05:22:43'),
(70, 29, '4TH FLR AP #3 (UNIFI)', '2025-08-27 05:22:43'),
(71, 29, '4TH FLR AP #4 (UNIFI)', '2025-08-27 05:22:43'),
(72, 29, '4TH FLR AP #5 (UNIFI)', '2025-08-27 05:22:43'),
(73, 29, '4TH FLR AP #6 (UNIFI)', '2025-08-27 05:22:43'),
(74, 29, '4TH FLR AP #7 (UNIFI)', '2025-08-27 05:22:43'),
(75, 29, '4TH FLR AP #8 (UNIFI)', '2025-08-27 05:22:43'),
(76, 29, '4TH FLR AP #9 (UNIFI)', '2025-08-27 05:22:43'),
(77, 29, '4TH FLR AP #10 (UNIFI)', '2025-08-27 05:22:43'),
(78, 29, 'FIFTH FLOOR', '2025-08-27 06:38:42'),
(79, 29, '5TH FLR AP #1 (UNIFI)', '2025-08-27 06:38:42'),
(80, 29, '5TH FLR AP #2 (UNIFI)', '2025-08-27 06:38:42'),
(81, 29, '5TH FLR AP #3 (UNIFI)', '2025-08-27 06:38:42'),
(82, 29, '5TH FLR AP #4 (UNIFI)', '2025-08-27 06:38:42'),
(83, 29, '5TH FLR AP #5 (UNIFI)', '2025-08-27 06:38:42'),
(84, 29, '5TH FLR AP #6 (UNIFI)', '2025-08-27 06:38:42'),
(85, 29, '5TH FLR AP #7 (UNIFI)', '2025-08-27 06:38:42'),
(86, 29, '5TH FLR AP #8 (UNIFI)', '2025-08-27 06:38:42'),
(87, 29, 'SIXTH FLOOR', '2025-08-27 06:38:42'),
(88, 29, '6TH FLR AP #1  (UNIFI)', '2025-08-27 06:38:42'),
(89, 29, '6TH FLR AP #2  (UNIFI)', '2025-08-27 06:38:42'),
(90, 29, '6TH FLR AP #3  (UNIFI)', '2025-08-27 06:38:42'),
(91, 29, '6TH FLR AP #4  (UNIFI)', '2025-08-27 06:38:42'),
(92, 29, '6TH FLR AP #5  (UNIFI)', '2025-08-27 06:38:42'),
(93, 29, '6TH FLR AP #6  (UNIFI)', '2025-08-27 06:38:42'),
(94, 29, '6TH FLR AP #7  (UNIFI)', '2025-08-27 06:38:42'),
(98, 27, 'Are the switches powered up and working properly?', '2025-08-27 07:34:44'),
(99, 30, 'SQL Server Reporting Services', '2025-08-27 08:00:35'),
(100, 30, 'SQL Server Agent', '2025-08-27 08:00:35'),
(101, 31, 'SQL Server Reporting Services', '2025-08-27 08:01:33'),
(102, 31, 'SQL Server Agent', '2025-08-27 08:01:33'),
(103, 32, 'SQL Server Reporting Services', '2025-08-27 08:02:53'),
(104, 32, 'SQL Server Agent', '2025-08-27 08:02:53'),
(105, 32, 'Qme-up', '2025-08-27 08:02:53'),
(106, 32, 'Dhcp server 1', '2025-08-27 08:02:53'),
(107, 33, 'SQL Server Reporting Services', '2025-08-27 08:04:30'),
(108, 33, 'SQL Server Agent', '2025-08-27 08:04:30'),
(109, 33, 'Room monitoring', '2025-08-27 08:04:30'),
(110, 33, 'Machine Utilization', '2025-08-27 08:04:30'),
(111, 33, 'Ticketing System', '2025-08-27 08:04:30'),
(112, 33, 'Dhcp server 2', '2025-08-27 08:04:30'),
(113, 34, 'SQL Server Reporting Services', '2025-08-27 08:06:05'),
(114, 34, 'SQL Server Agent', '2025-08-27 08:06:05'),
(115, 34, 'Power bi', '2025-08-27 08:06:05'),
(116, 34, 'Text connect system', '2025-08-27 08:06:05'),
(117, 34, 'UNIS', '2025-08-27 08:06:05'),
(118, 27, 'Sophos Firewall', '2025-08-28 03:53:09'),
(122, 38, 'a', '2025-08-28 06:16:12'),
(123, 39, 'asas', '2025-08-29 00:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@tmc.com', '$2y$10$3Lr/0hZUfk1HbpOBFPe17.Tl9zjZ.u3tXqEQbKdxXv38Jc7AdMWZS', 'admin', '2025-08-11 06:13:29'),
(3, 'TMC IT', 'it@tmc.com', '$2y$10$5tH31V4XDUFuS5AGLtvqce7qnbDEfQ8RCXxzT3gw5YvswhIUOTvC6', 'user', '2025-08-11 06:40:43'),
(6, 'Paul', 'pmojica@tmc.com', '$2y$10$juV.dZO2yydjCFspR8sitOt9B5oGviMnmsyDZ1OVKU4ppS6PyRP/.', 'user', '2025-08-12 08:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_description_checks`
--

CREATE TABLE `user_description_checks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_description_id` int(11) NOT NULL,
  `check_date` date NOT NULL,
  `status` enum('pending','completed') NOT NULL DEFAULT 'pending',
  `completed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_description_checks`
--

INSERT INTO `user_description_checks` (`id`, `user_id`, `task_description_id`, `check_date`, `status`, `completed_at`) VALUES
(258, 3, 40, '2025-08-27', 'completed', '2025-08-27 14:39:42'),
(260, 3, 25, '2025-08-27', 'completed', '2025-08-27 14:39:04'),
(261, 3, 26, '2025-08-27', 'completed', '2025-08-27 14:39:05'),
(262, 3, 27, '2025-08-27', 'completed', '2025-08-27 14:39:06'),
(263, 3, 28, '2025-08-27', 'completed', '2025-08-27 14:39:09'),
(264, 3, 29, '2025-08-27', 'completed', '2025-08-27 14:39:10'),
(265, 3, 30, '2025-08-27', 'completed', '2025-08-27 14:39:11'),
(266, 3, 31, '2025-08-27', 'completed', '2025-08-27 14:39:12'),
(267, 3, 32, '2025-08-27', 'completed', '2025-08-27 14:39:16'),
(268, 3, 33, '2025-08-27', 'completed', '2025-08-27 14:39:17'),
(269, 3, 34, '2025-08-27', 'completed', '2025-08-27 14:39:18'),
(270, 3, 35, '2025-08-27', 'completed', '2025-08-27 14:39:19'),
(271, 3, 36, '2025-08-27', 'completed', '2025-08-27 14:39:21'),
(272, 3, 21, '2025-08-27', 'completed', '2025-08-27 14:39:27'),
(273, 3, 22, '2025-08-27', 'completed', '2025-08-27 14:39:28'),
(274, 3, 23, '2025-08-27', 'completed', '2025-08-27 14:39:29'),
(275, 3, 24, '2025-08-27', 'completed', '2025-08-27 14:39:30'),
(276, 3, 37, '2025-08-27', 'completed', '2025-08-27 14:39:34'),
(277, 3, 38, '2025-08-27', 'completed', '2025-08-27 14:39:36'),
(278, 3, 39, '2025-08-27', 'completed', '2025-08-27 14:39:37'),
(280, 3, 41, '2025-08-27', 'completed', '2025-08-27 14:39:43'),
(281, 3, 42, '2025-08-27', 'completed', '2025-08-27 14:39:46'),
(282, 3, 43, '2025-08-27', 'completed', '2025-08-27 14:39:47'),
(283, 3, 44, '2025-08-27', 'completed', '2025-08-27 14:39:48'),
(284, 3, 45, '2025-08-27', 'completed', '2025-08-27 14:39:49'),
(285, 3, 46, '2025-08-27', 'completed', '2025-08-27 14:39:50'),
(286, 3, 47, '2025-08-27', 'completed', '2025-08-27 14:39:52'),
(287, 3, 48, '2025-08-27', 'completed', '2025-08-27 14:39:56'),
(288, 3, 49, '2025-08-27', 'completed', '2025-08-27 14:39:58'),
(289, 3, 50, '2025-08-27', 'completed', '2025-08-27 14:40:00'),
(290, 3, 51, '2025-08-27', 'completed', '2025-08-27 14:40:01'),
(291, 3, 52, '2025-08-27', 'completed', '2025-08-27 14:40:02'),
(292, 3, 53, '2025-08-27', 'completed', '2025-08-27 14:40:04'),
(293, 3, 54, '2025-08-27', 'completed', '2025-08-27 14:40:05'),
(294, 3, 55, '2025-08-27', 'completed', '2025-08-27 14:40:06'),
(295, 3, 56, '2025-08-27', 'completed', '2025-08-27 14:40:07'),
(296, 3, 57, '2025-08-27', 'completed', '2025-08-27 14:40:09'),
(297, 3, 58, '2025-08-27', 'completed', '2025-08-27 14:40:11'),
(298, 3, 59, '2025-08-27', 'completed', '2025-08-27 14:40:12'),
(299, 3, 60, '2025-08-27', 'completed', '2025-08-27 14:40:15'),
(300, 3, 61, '2025-08-27', 'completed', '2025-08-27 14:40:16'),
(301, 3, 62, '2025-08-27', 'completed', '2025-08-27 14:40:17'),
(302, 3, 63, '2025-08-27', 'completed', '2025-08-27 14:40:19'),
(303, 3, 64, '2025-08-27', 'completed', '2025-08-27 14:40:20'),
(304, 3, 65, '2025-08-27', 'completed', '2025-08-27 14:40:21'),
(305, 3, 66, '2025-08-27', 'completed', '2025-08-27 14:40:23'),
(306, 3, 67, '2025-08-27', 'completed', '2025-08-27 14:40:24'),
(307, 3, 68, '2025-08-27', 'completed', '2025-08-27 14:40:25'),
(308, 3, 69, '2025-08-27', 'completed', '2025-08-27 14:40:26'),
(309, 3, 70, '2025-08-27', 'completed', '2025-08-27 14:40:27'),
(310, 3, 71, '2025-08-27', 'completed', '2025-08-27 14:40:33'),
(311, 3, 72, '2025-08-27', 'completed', '2025-08-27 14:40:34'),
(312, 3, 74, '2025-08-27', 'completed', '2025-08-27 14:40:36'),
(313, 3, 73, '2025-08-27', 'completed', '2025-08-27 14:40:37'),
(314, 3, 75, '2025-08-27', 'completed', '2025-08-27 14:40:39'),
(315, 3, 76, '2025-08-27', 'completed', '2025-08-27 14:40:40'),
(316, 3, 77, '2025-08-27', 'completed', '2025-08-27 14:40:41'),
(317, 3, 78, '2025-08-27', 'completed', '2025-08-27 14:40:42'),
(318, 3, 79, '2025-08-27', 'completed', '2025-08-27 14:40:43'),
(319, 3, 80, '2025-08-27', 'completed', '2025-08-27 14:40:47'),
(320, 3, 81, '2025-08-27', 'completed', '2025-08-27 14:40:48'),
(321, 3, 82, '2025-08-27', 'completed', '2025-08-27 14:40:49'),
(322, 3, 83, '2025-08-27', 'completed', '2025-08-27 14:40:50'),
(323, 3, 84, '2025-08-27', 'completed', '2025-08-27 14:40:51'),
(324, 3, 85, '2025-08-27', 'completed', '2025-08-27 14:40:53'),
(325, 3, 86, '2025-08-27', 'completed', '2025-08-27 14:40:54'),
(326, 3, 87, '2025-08-27', 'completed', '2025-08-27 14:40:55'),
(327, 3, 88, '2025-08-27', 'completed', '2025-08-27 14:40:56'),
(328, 3, 89, '2025-08-27', 'completed', '2025-08-27 14:40:57'),
(329, 3, 90, '2025-08-27', 'completed', '2025-08-27 14:40:58'),
(330, 3, 91, '2025-08-27', 'completed', '2025-08-27 14:40:59'),
(331, 3, 92, '2025-08-27', 'completed', '2025-08-27 14:41:00'),
(332, 3, 93, '2025-08-27', 'completed', '2025-08-27 14:41:05'),
(333, 3, 94, '2025-08-27', 'completed', '2025-08-27 14:41:07'),
(337, 3, 98, '2025-08-27', 'completed', '2025-08-27 15:34:55'),
(338, 3, 99, '2025-08-27', 'completed', '2025-08-27 16:06:17'),
(339, 3, 100, '2025-08-27', 'completed', '2025-08-27 16:06:18'),
(340, 3, 101, '2025-08-27', 'completed', '2025-08-27 16:06:21'),
(341, 3, 102, '2025-08-27', 'completed', '2025-08-27 16:06:24'),
(342, 3, 103, '2025-08-27', 'completed', '2025-08-27 16:06:28'),
(343, 3, 104, '2025-08-27', 'completed', '2025-08-27 16:06:29'),
(344, 3, 105, '2025-08-27', 'completed', '2025-08-27 16:06:30'),
(345, 3, 106, '2025-08-27', 'completed', '2025-08-27 16:06:32'),
(346, 3, 107, '2025-08-27', 'completed', '2025-08-27 16:06:37'),
(347, 3, 108, '2025-08-27', 'completed', '2025-08-27 16:06:38'),
(348, 3, 109, '2025-08-27', 'completed', '2025-08-27 16:06:39'),
(349, 3, 110, '2025-08-27', 'completed', '2025-08-27 16:06:40'),
(350, 3, 111, '2025-08-27', 'completed', '2025-08-27 16:06:43'),
(351, 3, 112, '2025-08-27', 'completed', '2025-08-27 16:06:44'),
(352, 3, 113, '2025-08-27', 'completed', '2025-08-27 16:06:48'),
(353, 3, 114, '2025-08-27', 'completed', '2025-08-27 16:06:48'),
(354, 3, 115, '2025-08-27', 'completed', '2025-08-27 16:06:50'),
(355, 3, 116, '2025-08-27', 'completed', '2025-08-27 16:06:51'),
(356, 3, 117, '2025-08-27', 'completed', '2025-08-27 16:06:52'),
(357, 3, 25, '2025-08-29', 'completed', '2025-08-29 08:37:22'),
(358, 3, 26, '2025-08-29', 'completed', '2025-08-29 08:37:24'),
(359, 3, 27, '2025-08-29', 'completed', '2025-08-29 08:37:25'),
(360, 3, 28, '2025-08-29', 'completed', '2025-08-29 08:37:26'),
(361, 3, 29, '2025-08-29', 'completed', '2025-08-29 08:37:27'),
(362, 3, 30, '2025-08-29', 'completed', '2025-08-29 08:37:28'),
(363, 3, 31, '2025-08-29', 'completed', '2025-08-29 08:37:29'),
(364, 3, 32, '2025-08-29', 'completed', '2025-08-29 08:37:30'),
(365, 3, 33, '2025-08-29', 'completed', '2025-08-29 08:37:31'),
(366, 3, 34, '2025-08-29', 'completed', '2025-08-29 08:37:32'),
(367, 3, 35, '2025-08-29', 'completed', '2025-08-29 08:37:33'),
(368, 3, 36, '2025-08-29', 'completed', '2025-08-29 08:37:34'),
(369, 3, 99, '2025-08-29', 'completed', '2025-08-29 08:37:38'),
(370, 3, 100, '2025-08-29', 'completed', '2025-08-29 08:37:39'),
(371, 3, 101, '2025-08-29', 'completed', '2025-08-29 08:37:42'),
(372, 3, 102, '2025-08-29', 'completed', '2025-08-29 08:37:43'),
(373, 3, 103, '2025-08-29', 'completed', '2025-08-29 08:37:46'),
(374, 3, 104, '2025-08-29', 'completed', '2025-08-29 08:37:47'),
(375, 3, 105, '2025-08-29', 'completed', '2025-08-29 08:37:48'),
(376, 3, 106, '2025-08-29', 'completed', '2025-08-29 08:37:48'),
(377, 3, 107, '2025-08-29', 'completed', '2025-08-29 08:37:51'),
(378, 3, 108, '2025-08-29', 'completed', '2025-08-29 08:37:52'),
(379, 3, 109, '2025-08-29', 'completed', '2025-08-29 08:37:53'),
(380, 3, 110, '2025-08-29', 'completed', '2025-08-29 08:37:55'),
(381, 3, 111, '2025-08-29', 'completed', '2025-08-29 08:37:56'),
(382, 3, 112, '2025-08-29', 'completed', '2025-08-29 08:37:57'),
(383, 3, 113, '2025-08-29', 'completed', '2025-08-29 08:38:00'),
(384, 3, 114, '2025-08-29', 'completed', '2025-08-29 08:38:01'),
(385, 3, 115, '2025-08-29', 'completed', '2025-08-29 08:38:02'),
(386, 3, 116, '2025-08-29', 'completed', '2025-08-29 08:38:04'),
(387, 3, 117, '2025-08-29', 'completed', '2025-08-29 08:38:05'),
(388, 3, 21, '2025-08-29', 'completed', '2025-08-29 08:38:08'),
(389, 3, 22, '2025-08-29', 'completed', '2025-08-29 08:38:09'),
(390, 3, 23, '2025-08-29', 'completed', '2025-08-29 08:38:11'),
(391, 3, 24, '2025-08-29', 'completed', '2025-08-29 08:38:26'),
(392, 3, 37, '2025-08-29', 'completed', '2025-08-29 08:38:30'),
(393, 3, 38, '2025-08-29', 'completed', '2025-08-29 08:38:31'),
(394, 3, 39, '2025-08-29', 'completed', '2025-08-29 08:38:32'),
(395, 3, 98, '2025-08-29', 'completed', '2025-08-29 08:38:33'),
(396, 3, 118, '2025-08-29', 'completed', '2025-08-29 08:38:34'),
(397, 3, 40, '2025-08-29', 'completed', '2025-08-29 08:38:37'),
(398, 3, 41, '2025-08-29', 'completed', '2025-08-29 08:38:45'),
(399, 3, 42, '2025-08-29', 'completed', '2025-08-29 08:38:47'),
(400, 3, 43, '2025-08-29', 'completed', '2025-08-29 08:38:49'),
(401, 3, 44, '2025-08-29', 'completed', '2025-08-29 08:38:51'),
(402, 3, 45, '2025-08-29', 'completed', '2025-08-29 08:38:52'),
(403, 3, 46, '2025-08-29', 'completed', '2025-08-29 08:38:54'),
(404, 3, 47, '2025-08-29', 'completed', '2025-08-29 08:38:55'),
(405, 3, 48, '2025-08-29', 'completed', '2025-08-29 08:38:56'),
(406, 3, 49, '2025-08-29', 'completed', '2025-08-29 08:38:57'),
(407, 3, 50, '2025-08-29', 'completed', '2025-08-29 08:38:58'),
(408, 3, 51, '2025-08-29', 'completed', '2025-08-29 08:38:58'),
(409, 3, 52, '2025-08-29', 'completed', '2025-08-29 08:38:59'),
(410, 3, 53, '2025-08-29', 'completed', '2025-08-29 08:39:00'),
(411, 3, 54, '2025-08-29', 'completed', '2025-08-29 08:39:03'),
(412, 3, 55, '2025-08-29', 'completed', '2025-08-29 08:39:05'),
(413, 3, 56, '2025-08-29', 'completed', '2025-08-29 08:39:05'),
(414, 3, 57, '2025-08-29', 'completed', '2025-08-29 08:39:06'),
(415, 3, 58, '2025-08-29', 'completed', '2025-08-29 08:39:07'),
(416, 3, 59, '2025-08-29', 'completed', '2025-08-29 08:39:08'),
(417, 3, 60, '2025-08-29', 'completed', '2025-08-29 08:39:09'),
(418, 3, 61, '2025-08-29', 'completed', '2025-08-29 08:39:10'),
(419, 3, 62, '2025-08-29', 'completed', '2025-08-29 08:39:11'),
(420, 3, 63, '2025-08-29', 'completed', '2025-08-29 08:39:13'),
(421, 3, 64, '2025-08-29', 'completed', '2025-08-29 08:39:14'),
(422, 3, 65, '2025-08-29', 'completed', '2025-08-29 08:39:15'),
(423, 3, 66, '2025-08-29', 'completed', '2025-08-29 08:39:15'),
(424, 3, 67, '2025-08-29', 'completed', '2025-08-29 08:39:17'),
(425, 3, 68, '2025-08-29', 'completed', '2025-08-29 08:39:19'),
(426, 3, 69, '2025-08-29', 'completed', '2025-08-29 08:39:20'),
(427, 3, 70, '2025-08-29', 'completed', '2025-08-29 08:39:22'),
(428, 3, 71, '2025-08-29', 'completed', '2025-08-29 08:39:24'),
(429, 3, 72, '2025-08-29', 'completed', '2025-08-29 08:39:24'),
(430, 3, 73, '2025-08-29', 'completed', '2025-08-29 08:39:25'),
(431, 3, 74, '2025-08-29', 'completed', '2025-08-29 08:39:26'),
(432, 3, 75, '2025-08-29', 'completed', '2025-08-29 08:39:27'),
(433, 3, 76, '2025-08-29', 'completed', '2025-08-29 08:39:29'),
(434, 3, 77, '2025-08-29', 'completed', '2025-08-29 08:39:30'),
(435, 3, 78, '2025-08-29', 'completed', '2025-08-29 08:39:31'),
(436, 3, 79, '2025-08-29', 'completed', '2025-08-29 08:39:32'),
(437, 3, 80, '2025-08-29', 'completed', '2025-08-29 08:39:33'),
(438, 3, 81, '2025-08-29', 'completed', '2025-08-29 08:39:34'),
(439, 3, 82, '2025-08-29', 'completed', '2025-08-29 08:39:35'),
(440, 3, 83, '2025-08-29', 'completed', '2025-08-29 08:39:36'),
(441, 3, 84, '2025-08-29', 'completed', '2025-08-29 08:39:39'),
(442, 3, 85, '2025-08-29', 'completed', '2025-08-29 08:39:40'),
(443, 3, 86, '2025-08-29', 'completed', '2025-08-29 08:39:41'),
(444, 3, 87, '2025-08-29', 'completed', '2025-08-29 08:39:42'),
(445, 3, 88, '2025-08-29', 'completed', '2025-08-29 08:39:45'),
(446, 3, 89, '2025-08-29', 'completed', '2025-08-29 08:39:46'),
(447, 3, 90, '2025-08-29', 'completed', '2025-08-29 08:39:48'),
(448, 3, 91, '2025-08-29', 'completed', '2025-08-29 08:39:49'),
(449, 3, 92, '2025-08-29', 'completed', '2025-08-29 08:39:50'),
(450, 3, 93, '2025-08-29', 'completed', '2025-08-29 08:39:51'),
(451, 3, 94, '2025-08-29', 'completed', '2025-08-29 08:39:54'),
(452, 3, 122, '2025-08-29', 'completed', '2025-08-29 08:39:57'),
(453, 3, 123, '2025-08-29', 'completed', '2025-08-29 08:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_tasks`
--

CREATE TABLE `user_tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `task_date` date NOT NULL,
  `status` enum('pending','in_progress','completed') DEFAULT 'pending',
  `completed_at` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_tasks`
--

INSERT INTO `user_tasks` (`id`, `user_id`, `task_id`, `task_date`, `status`, `completed_at`, `remarks`, `updated_at`) VALUES
(4956, 3, 25, '2025-08-27', 'completed', '2025-08-27 14:39:26', NULL, '2025-08-27 06:39:26'),
(4958, 3, 26, '2025-08-27', 'completed', '2025-08-27 16:16:41', NULL, '2025-08-27 08:16:41'),
(4964, 3, 27, '2025-08-27', 'completed', '2025-08-27 14:39:33', NULL, '2025-08-27 06:39:33'),
(4976, 3, 29, '2025-08-27', 'completed', '2025-08-27 14:39:40', NULL, '2025-08-27 06:39:40'),
(5479, 3, 30, '2025-08-27', 'completed', '2025-08-27 16:06:15', NULL, '2025-08-27 08:06:15'),
(5490, 3, 31, '2025-08-27', 'completed', '2025-08-27 16:06:20', NULL, '2025-08-27 08:06:20'),
(5503, 3, 32, '2025-08-27', 'completed', '2025-08-27 16:06:26', NULL, '2025-08-27 08:06:26'),
(5518, 3, 33, '2025-08-27', 'completed', '2025-08-27 16:06:35', NULL, '2025-08-27 08:06:35'),
(5535, 3, 34, '2025-08-27', 'completed', '2025-08-27 16:06:47', NULL, '2025-08-27 08:06:47'),
(5863, 3, 26, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5864, 3, 30, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5865, 3, 31, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5866, 3, 32, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5867, 3, 33, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5868, 3, 34, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5869, 3, 25, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5870, 3, 27, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5871, 3, 29, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:39:44'),
(5881, 1, 26, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5882, 1, 30, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5883, 1, 31, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5884, 1, 32, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5885, 1, 33, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5886, 1, 34, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5887, 1, 25, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5888, 1, 27, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(5889, 1, 29, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 01:58:45'),
(6418, 1, 38, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 06:16:12'),
(6419, 3, 38, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 06:16:12'),
(6420, 6, 38, '2025-08-28', 'pending', NULL, NULL, '2025-08-28 06:16:12'),
(6471, 1, 26, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6472, 1, 30, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6473, 1, 31, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6474, 1, 32, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6475, 1, 33, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6476, 1, 34, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6477, 1, 25, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6478, 1, 27, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6479, 1, 29, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6480, 1, 38, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:21:18'),
(6481, 3, 26, '2025-08-29', 'completed', '2025-08-29 08:37:20', NULL, '2025-08-29 00:37:20'),
(6482, 3, 30, '2025-08-29', 'completed', '2025-08-29 08:37:37', NULL, '2025-08-29 00:37:37'),
(6483, 3, 31, '2025-08-29', 'completed', '2025-08-29 08:37:41', NULL, '2025-08-29 00:37:41'),
(6484, 3, 32, '2025-08-29', 'completed', '2025-08-29 08:37:45', NULL, '2025-08-29 00:37:45'),
(6485, 3, 33, '2025-08-29', 'completed', '2025-08-29 08:37:50', NULL, '2025-08-29 00:37:50'),
(6486, 3, 34, '2025-08-29', 'completed', '2025-08-29 08:37:59', NULL, '2025-08-29 00:37:59'),
(6487, 3, 25, '2025-08-29', 'completed', '2025-08-29 08:38:07', NULL, '2025-08-29 00:38:07'),
(6488, 3, 27, '2025-08-29', 'completed', '2025-08-29 08:38:29', NULL, '2025-08-29 00:38:29'),
(6489, 3, 29, '2025-08-29', 'completed', '2025-08-29 08:38:37', NULL, '2025-08-29 00:38:37'),
(6490, 3, 38, '2025-08-29', 'completed', '2025-08-29 08:39:56', NULL, '2025-08-29 00:39:56'),
(6531, 6, 26, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6532, 6, 30, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6533, 6, 31, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6534, 6, 32, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6535, 6, 33, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6536, 6, 34, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6537, 6, 25, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6538, 6, 27, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6539, 6, 29, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(6540, 6, 38, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:29:51'),
(7701, 1, 39, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:43:18'),
(7702, 3, 39, '2025-08-29', 'completed', '2025-08-29 08:47:04', NULL, '2025-08-29 00:47:04'),
(7703, 6, 39, '2025-08-29', 'pending', NULL, NULL, '2025-08-29 00:43:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_descriptions`
--
ALTER TABLE `task_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_description_checks`
--
ALTER TABLE `user_description_checks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_user_desc_date` (`user_id`,`task_description_id`,`check_date`),
  ADD KEY `task_description_id` (`task_description_id`);

--
-- Indexes for table `user_tasks`
--
ALTER TABLE `user_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_task_date` (`user_id`,`task_id`,`task_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `task_descriptions`
--
ALTER TABLE `task_descriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_description_checks`
--
ALTER TABLE `user_description_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `user_tasks`
--
ALTER TABLE `user_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7825;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `task_descriptions`
--
ALTER TABLE `task_descriptions`
  ADD CONSTRAINT `task_descriptions_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_description_checks`
--
ALTER TABLE `user_description_checks`
  ADD CONSTRAINT `user_description_checks_ibfk_1` FOREIGN KEY (`task_description_id`) REFERENCES `task_descriptions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
