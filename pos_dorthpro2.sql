-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 07:14 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_dorthpro2`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `audit_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `transaction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_qty` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`audit_id`, `store`, `item`, `transaction`, `previous_qty`, `quantity`, `posted_by`, `post_date`) VALUES
(9, 0, 12, 'sales', 10, 1, 1, '2023-02-19 14:10:38'),
(10, 0, 16, 'sales', 12, 3, 1, '2023-02-19 14:11:06'),
(11, 0, 15, 'sales', 37, 1, 1, '2023-02-19 14:11:06'),
(12, 0, 14, 'sales', 11, 1, 1, '2023-02-19 14:15:16'),
(13, 0, 18, 'sales', 17, 2, 1, '2023-02-19 14:15:16'),
(14, 0, 16, 'sales', 9, 1, 1, '2023-02-19 14:16:42'),
(15, 0, 12, 'purchase', 9, 5, 1, '2023-02-19 14:26:48'),
(16, 0, 18, 'sales_return', 15, 2, 1, '2023-02-19 14:41:21'),
(17, 0, 12, 'sales_return', 14, 2, 1, '2023-02-19 14:44:18'),
(18, 0, 14, 'sales_return', 10, 1, 1, '2023-02-19 14:55:46'),
(19, 0, 14, 'adjust', 11, 14, 1, '2023-02-18 09:30:17'),
(20, 0, 13, 'remove', 29, 10, 1, '2023-02-18 09:40:50'),
(21, 0, 12, 'sales', 16, 1, 1, '2023-02-26 12:20:18'),
(22, 0, 16, 'sales', 8, 1, 1, '2023-02-26 12:26:28'),
(23, 0, 17, 'sales', 20, 2, 1, '2023-02-26 12:37:13'),
(24, 0, 13, 'sales', 19, 1, 1, '2023-02-26 12:38:00'),
(25, 0, 12, 'sales', 15, 1, 1, '2023-03-02 17:59:22'),
(26, 0, 12, 'sales', 14, 1, 43, '2023-03-06 09:33:09'),
(27, 0, 12, 'sales', 13, 1, 1, '2023-03-07 12:51:25'),
(28, 0, 16, 'sales', 7, 3, 1, '2023-04-17 19:31:44'),
(29, 0, 13, 'sales', 18, 1, 1, '2023-04-17 19:31:57'),
(30, 0, 18, 'sales', 17, 2, 1, '2023-04-17 19:32:12'),
(31, 0, 13, 'sales', 17, 3, 1, '2023-04-17 19:33:04'),
(32, 0, 16, 'sales', 4, 3, 1, '2023-04-17 20:01:35'),
(33, 0, 12, 'sales', 12, 5, 1, '2023-04-23 13:15:41'),
(34, 0, 18, 'sales', 15, 2, 1, '2023-04-23 15:58:02'),
(35, 0, 14, 'sales', 14, 1, 1, '2023-04-28 20:32:33'),
(36, 0, 13, 'sales', 14, 14, 43, '2023-04-29 16:33:11'),
(37, 0, 13, 'sales', 0, 14, 43, '2023-04-29 16:33:21'),
(38, 0, 13, 'remove', -14, -14, 43, '2023-04-29 16:53:15'),
(39, 0, 13, 'sales', 12, 2, 43, '2023-04-29 17:54:11'),
(40, 0, 13, 'sales', 10, 1, 43, '2023-04-29 17:56:26'),
(41, 0, 15, 'sales', 35, 1, 43, '2023-04-29 17:56:27'),
(42, 0, 15, 'sales', 34, 1, 43, '2023-04-29 17:59:03'),
(43, 0, 18, 'sales', 12, 1, 43, '2023-04-29 17:59:03'),
(44, 0, 14, 'sales', 11, 1, 43, '2023-04-29 17:59:04'),
(45, 0, 13, 'sales', 8, 1, 43, '2023-04-29 18:01:08'),
(46, 0, 19, 'sales', 2, 1, 43, '2023-04-29 18:01:08'),
(47, 0, 12, 'sales', 7, 1, 43, '2023-04-29 18:03:31'),
(48, 0, 13, 'sales', 5, 1, 43, '2023-04-29 18:03:31'),
(49, 0, 12, 'sales', 5, 1, 43, '2023-04-29 18:04:13'),
(50, 0, 13, 'sales', 4, 1, 43, '2023-04-29 18:04:13'),
(51, 0, 12, 'sales', 4, 1, 43, '2023-04-29 18:04:39'),
(52, 0, 13, 'sales', 3, 1, 43, '2023-04-29 18:04:39'),
(53, 0, 12, 'sales', 3, 1, 43, '2023-04-29 18:06:09'),
(54, 0, 13, 'sales', 2, 1, 43, '2023-04-29 18:06:09'),
(55, 0, 16, 'adjust', -1, 0, 1, '2023-04-29 18:14:27'),
(56, 0, 12, 'adjust', 2, 20, 1, '2023-05-02 08:52:31'),
(57, 0, 12, 'sales', 20, 1, 1, '2023-05-10 22:04:34'),
(58, 0, 12, 'sales', 19, 1, 1, '2023-05-10 22:05:22'),
(59, 0, 12, 'sales', 18, 1, 1, '2023-05-10 22:06:08'),
(60, 0, 12, 'sales', 17, 1, 1, '2023-05-10 22:07:42'),
(61, 0, 15, 'sales', 31, 1, 1, '2023-05-10 22:07:42'),
(62, 0, 18, 'sales', 10, 1, 1, '2023-05-10 22:09:08'),
(63, 0, 14, 'sales', 10, 1, 1, '2023-05-10 22:09:49'),
(64, 0, 12, 'sales', 16, 1, 1, '2023-05-10 22:17:08'),
(65, 0, 12, 'sales', 15, 1, 1, '2023-05-10 22:20:46'),
(66, 0, 12, 'sales', 14, 1, 1, '2023-05-10 22:22:15'),
(67, 0, 18, 'sales', 9, 1, 1, '2023-05-25 10:52:33'),
(68, 0, 18, 'sales', 8, 1, 1, '2023-05-25 10:53:49'),
(69, 0, 15, 'sales', 30, 3, 1, '2023-05-25 10:55:10'),
(70, 0, 14, 'sales', 9, 1, 1, '2023-05-25 11:15:59'),
(71, 0, 14, 'sales', 9, 1, 1, '2023-05-25 11:34:50'),
(72, 0, 14, 'sales', 9, 1, 1, '2023-05-25 11:37:41'),
(73, 0, 14, 'sales', 8, 1, 1, '2023-05-25 11:58:04'),
(74, 0, 14, 'sales', 7, 1, 1, '2023-05-25 11:59:57'),
(75, 0, 19, 'sales', 1, 1, 1, '2023-05-25 11:59:57'),
(76, 0, 13, 'adjust', 1, 50, 1, '2023-05-25 12:19:18'),
(77, 0, 13, 'sales', 50, 1, 1, '2023-05-25 16:45:41'),
(78, 0, 15, 'sales', 27, 4, 1, '2023-05-25 16:49:15'),
(79, 0, 13, 'sales', 49, 3, 1, '2023-05-25 16:49:57'),
(80, 0, 13, 'sales', 46, 2, 1, '2023-05-25 17:10:28'),
(81, 0, 18, 'purchase', 7, 10, 1, '2023-05-31 15:13:40'),
(82, 0, 18, 'purchase', 7, 10, 1, '2023-05-31 16:37:54'),
(83, 0, 18, 'purchase', 7, 10, 1, '2023-05-31 16:43:25'),
(84, 0, 18, 'purchase', 7, 10, 1, '2023-05-31 16:56:37'),
(85, 2, 16, 'purchase', 0, 24, 43, '2023-06-01 06:18:15'),
(86, 2, 16, 'purchase', 24, 10, 43, '2023-06-01 06:24:43'),
(87, 2, 16, 'purchase', 24, 24, 43, '2023-06-01 09:13:23'),
(88, 2, 16, 'purchase', 24, 24, 43, '2023-06-01 09:15:08'),
(89, 2, 15, 'purchase', 0, 24, 43, '2023-06-01 09:54:42'),
(90, 2, 14, 'purchase', 0, 10, 43, '2023-06-01 09:56:12'),
(91, 2, 15, 'purchase', 24, 2, 43, '2023-06-01 09:56:27'),
(92, 2, 16, 'purchase', 48, 1, 43, '2023-06-01 09:57:10'),
(93, 1, 18, 'purchase', 0, 20, 1, '2023-06-01 15:25:30'),
(94, 1, 14, 'purchase', 0, 5, 1, '2023-06-01 15:25:49'),
(95, 1, 14, 'adjust', 5, 10, 1, '2023-06-01 17:22:23'),
(96, 1, 14, 'remove', 10, 5, 1, '2023-06-01 17:43:01'),
(97, 1, 14, 'remove', 10, 5, 1, '2023-06-01 17:44:26'),
(98, 1, 14, 'remove', 10, 5, 1, '2023-06-01 17:46:19'),
(99, 1, 14, 'remove', 10, 5, 1, '2023-06-01 17:46:52'),
(100, 1, 14, 'remove', 5, 1, 1, '2023-06-01 17:47:20'),
(101, 1, 14, 'adjust', 4, 0, 1, '2023-06-01 17:49:14'),
(102, 1, 14, 'purchase', 0, 10, 1, '2023-06-01 17:50:21'),
(103, 1, 14, 'remove', 10, 5, 1, '2023-06-01 17:50:58'),
(104, 1, 14, 'adjust', 5, 10, 1, '2023-06-01 17:51:09'),
(105, 1, 18, 'transfer', 20, 2, 1, '2023-06-02 09:37:31'),
(106, 1, 18, 'transfer', 18, 2, 1, '2023-06-02 09:38:00'),
(107, 1, 18, 'transfer', 16, 1, 1, '2023-06-02 09:43:27'),
(108, 1, 14, 'transfer', 10, 2, 1, '2023-06-02 09:44:28'),
(109, 1, 18, 'transfer', 15, 1, 1, '2023-06-02 09:53:32'),
(110, 1, 14, 'transfer', 8, 1, 1, '2023-06-02 09:54:49'),
(111, 1, 18, 'transfer', 14, 2, 1, '2023-06-02 10:36:26'),
(112, 1, 14, 'transfer', 7, 1, 1, '2023-06-02 10:38:55'),
(113, 1, 18, 'transfer', 12, 2, 1, '2023-06-02 10:48:38'),
(114, 1, 14, 'transfer', 6, 1, 1, '2023-06-02 10:54:54'),
(115, 1, 18, 'transfer', 10, 1, 1, '2023-06-02 10:55:22'),
(116, 1, 14, 'transfer', 5, 1, 1, '2023-06-02 10:56:45'),
(117, 1, 18, 'transfer', 9, 1, 1, '2023-06-02 10:57:04'),
(118, 1, 18, 'transfer', 8, 1, 1, '2023-06-02 10:57:41'),
(119, 1, 18, 'transfer', 7, 1, 1, '2023-06-02 10:59:59'),
(120, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 11:01:38'),
(121, 1, 18, 'transfer', 6, 1, 1, '2023-06-02 11:04:20'),
(122, 1, 18, 'transfer', 6, 2, 1, '2023-06-02 11:04:35'),
(123, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 11:04:58'),
(124, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 11:05:22'),
(125, 1, 18, 'transfer', 6, 2, 1, '2023-06-02 11:25:17'),
(126, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 11:32:52'),
(127, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 11:34:27'),
(128, 1, 18, 'transfer', 6, 1, 1, '2023-06-02 11:37:59'),
(129, 1, 18, 'transfer', 6, 1, 1, '2023-06-02 11:39:25'),
(130, 1, 18, 'transfer', 6, 1, 1, '2023-06-02 11:40:54'),
(131, 1, 18, 'transfer', 6, 2, 1, '2023-06-02 11:41:11'),
(132, 1, 18, 'transfer', 6, 2, 1, '2023-06-02 11:43:14'),
(133, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 12:16:31'),
(134, 1, 14, 'transfer', 4, 1, 1, '2023-06-02 12:17:16'),
(135, 2, 16, 'purchase', 0, 20, 43, '2023-06-02 15:49:17'),
(136, 2, 19, 'purchase', 0, 10, 43, '2023-06-02 15:49:51'),
(137, 2, 16, 'transfer', 20, 10, 43, '2023-06-02 15:51:42'),
(138, 2, 16, 'transfer', 10, 2, 43, '2023-06-02 15:53:38'),
(139, 2, 19, 'transfer', 10, 2, 43, '2023-06-02 15:53:53'),
(140, 2, 16, 'transfer', 20, 10, 43, '2023-06-02 17:21:59'),
(141, 1, 16, 'accept', 0, 10, 1, '2023-06-02 21:30:43'),
(142, 2, 14, 'accept', 0, 1, 43, '2023-06-02 21:50:43'),
(143, 2, 14, 'transfer', 1, 1, 43, '2023-06-02 21:51:52'),
(144, 2, 19, 'transfer', 10, 2, 43, '2023-06-02 21:56:46'),
(145, 1, 14, 'accept', 3, 1, 1, '2023-06-02 21:58:43'),
(146, 1, 19, 'accept', 0, 2, 1, '2023-06-02 21:58:50'),
(147, 2, 16, 'transfer', 10, 2, 43, '2023-06-02 22:24:34'),
(148, 2, 16, 'accept', 8, 2, 43, '2023-06-02 22:54:45'),
(149, 2, 16, 'transfer', 6, 1, 43, '2023-06-02 22:57:29'),
(150, 2, 16, 'accept', 5, 1, 43, '2023-06-02 22:58:13'),
(151, 1, 18, 'transfer', 6, 2, 1, '2023-06-03 11:38:19'),
(152, 2, 16, 'transfer', 6, 1, 43, '2023-06-03 14:00:33'),
(153, 2, 19, 'transfer', 8, 2, 43, '2023-06-03 14:00:41'),
(154, 2, 18, 'accept', 0, 2, 43, '2023-06-03 14:22:11'),
(155, 1, 16, 'accept', 10, 1, 1, '2023-06-03 15:04:39'),
(156, 1, 19, 'accept', 2, 2, 1, '2023-06-03 15:04:43'),
(157, 1, 16, 'transfer', 11, 1, 1, '2023-06-04 11:04:42'),
(158, 1, 19, 'transfer', 4, 1, 1, '2023-06-04 11:04:55'),
(159, 2, 16, 'accept', 5, 1, 43, '2023-06-04 11:06:38'),
(160, 1, 19, 'accept', 3, 1, 1, '2023-06-04 11:11:18'),
(161, 1, 16, 'transfer', 10, 1, 1, '2023-06-04 11:27:45'),
(162, 1, 19, 'transfer', 4, 1, 1, '2023-06-04 11:27:52'),
(163, 2, 16, 'accept', 6, 1, 43, '2023-06-04 11:35:43'),
(164, 1, 19, 'accept', 3, 1, 1, '2023-06-04 11:36:47'),
(165, 2, 13, 'purchase', 0, 50, 43, '2023-06-04 13:26:20'),
(166, 1, 16, 'adjust', 9, 20, 1, '2023-06-04 13:31:48'),
(167, 2, 16, 'remove', 7, 1, 43, '2023-06-04 13:41:36'),
(168, 1, 18, 'remove', 4, 1, 1, '2023-06-04 13:46:46'),
(169, 1, 16, 'sales', 20, 1, 1, '2023-06-06 18:28:24'),
(170, 1, 16, 'sales', 20, 1, 1, '2023-06-06 18:30:48'),
(171, 1, 16, 'sales', 19, 1, 1, '2023-06-07 12:50:31'),
(172, 1, 19, 'sales', 4, 1, 1, '2023-06-07 13:28:28'),
(173, 2, 13, 'sales', 50, 1, 43, '2023-06-07 13:30:30'),
(174, 1, 19, 'sales_return', 6, 1, 1, '2023-06-07 15:26:42'),
(175, 1, 16, 'sales_return', 18, 1, 1, '2023-06-07 15:37:36'),
(176, 1, 18, 'sales', 3, 1, 1, '2023-06-07 15:42:10'),
(177, 1, 18, 'sales_return', 2, 1, 1, '2023-06-07 15:42:38'),
(178, 1, 16, 'sales', 18, 1, 1, '2023-06-07 15:43:10'),
(179, 1, 16, 'sales_return', 17, 1, 1, '2023-06-07 15:43:33'),
(180, 1, 16, 'sales', 18, 1, 1, '2023-06-07 15:45:05'),
(181, 1, 19, 'sales', 3, 1, 1, '2023-06-09 13:47:12'),
(182, 1, 18, 'sales', 3, 1, 1, '2023-06-09 16:32:53'),
(183, 1, 18, 'adjust', 2, 10, 1, '2023-06-10 13:24:22'),
(184, 1, 14, 'adjust', 2, 21, 1, '2023-06-10 13:24:29'),
(185, 1, 16, 'sales', 17, 1, 1, '2023-06-10 13:34:13'),
(186, 1, 14, 'sales', 21, 1, 1, '2023-06-10 13:34:32'),
(187, 2, 18, 'sales', 2, 1, 43, '2023-06-10 14:02:30'),
(188, 1, 14, 'sales', 20, 2, 1, '2023-06-10 15:04:03'),
(189, 1, 16, 'sales', 16, 3, 1, '2023-06-10 15:21:31'),
(190, 1, 14, 'sales', 18, 2, 1, '2023-06-10 15:21:32'),
(191, 2, 13, 'sales', 49, 1, 43, '2023-06-10 17:01:40'),
(192, 1, 20, 'purchase', 0, 100, 1, '2023-06-10 17:09:05'),
(193, 1, 21, 'purchase', 0, 20, 1, '2023-06-10 17:09:50'),
(194, 1, 21, 'sales', 20, 1, 1, '2023-06-10 17:10:10'),
(195, 1, 20, 'sales', 100, 2, 1, '2023-06-10 17:10:27'),
(196, 1, 14, 'sales_return', 16, 1, 1, '2023-06-10 18:27:52'),
(197, 1, 13, 'purchase', 0, 20, 1, '2023-06-10 19:04:30'),
(198, 1, 20, 'sales', 98, 2, 1, '2023-06-11 08:10:25'),
(199, 1, 13, 'sales', 20, 2, 1, '2023-06-11 08:59:51'),
(200, 1, 13, 'sales_return', 18, 1, 1, '2023-06-11 09:00:21'),
(201, 1, 13, 'sales', 19, 2, 1, '2023-06-11 09:07:57'),
(202, 1, 13, 'sales_return', 17, 1, 1, '2023-06-11 09:08:19'),
(203, 1, 18, 'sales', 10, 1, 1, '2023-06-11 09:16:41'),
(204, 1, 16, 'sales', 13, 3, 1, '2023-06-11 09:17:08'),
(205, 1, 16, 'sales_return', 10, 3, 1, '2023-06-11 09:17:26'),
(206, 1, 16, 'sales', 13, 3, 1, '2023-06-11 09:19:37'),
(207, 1, 16, 'sales_return', 10, 1, 1, '2023-06-11 09:19:51'),
(208, 1, 16, 'sales_return', 11, 1, 1, '2023-06-11 09:21:58'),
(209, 1, 13, 'transfer', 18, 2, 1, '2023-06-11 09:31:51'),
(210, 2, 13, 'accept', 48, 2, 43, '2023-06-11 09:34:24'),
(211, 1, 20, 'sales_return', 96, 2, 1, '2023-06-11 16:10:29'),
(212, 2, 16, 'sales', 6, 1, 43, '2023-06-12 10:04:33'),
(213, 2, 13, 'sales', 50, 1, 43, '2023-06-12 10:04:33'),
(214, 1, 14, 'sales', 17, 2, 1, '2023-06-12 21:05:44'),
(215, 1, 14, 'sales_return', 15, 2, 1, '2023-06-12 21:41:24'),
(216, 1, 14, 'sales', 17, 2, 1, '2023-06-12 21:42:43'),
(217, 1, 14, 'sales_return', 15, 2, 1, '2023-06-12 21:59:44'),
(218, 1, 14, 'sales', 17, 2, 1, '2023-06-12 22:00:09'),
(219, 1, 16, 'sales', 12, 2, 1, '2023-06-15 12:00:37'),
(220, 1, 18, 'sales', 9, 2, 1, '2023-06-15 12:00:37'),
(221, 1, 13, 'transfer', 16, 4, 1, '2023-06-17 22:52:02'),
(222, 1, 14, 'sales', 15, 1, 1, '2023-06-17 22:54:14'),
(223, 1, 18, 'sales', 7, 2, 1, '2023-06-21 18:13:05'),
(224, 1, 13, 'transfer', 12, 3, 1, '2023-06-30 16:22:12'),
(225, 2, 13, 'accept', 49, 3, 43, '2023-06-30 16:25:13'),
(226, 1, 13, 'sales', 9, 3, 1, '2023-06-30 16:36:37'),
(227, 1, 14, 'adjust', 14, 13, 1, '2023-07-04 12:43:16'),
(228, 1, 14, 'remove', 13, 1, 1, '2023-07-04 13:12:37'),
(229, 1, 23, 'purchase', 0, 30, 1, '2023-07-04 13:42:35'),
(230, 1, 23, 'purchase', 30, 1, 1, '2023-07-04 13:45:23'),
(231, 1, 23, 'transfer', 31, 10, 1, '2023-07-04 14:00:27'),
(232, 1, 13, 'accept', 6, 4, 1, '2023-07-04 14:01:53'),
(233, 2, 23, 'accept', 0, 10, 43, '2023-07-04 14:11:36'),
(234, 1, 18, 'sales', 5, 1, 1, '2023-07-07 14:38:54'),
(235, 1, 16, 'sales', 10, 2, 1, '2023-07-07 14:39:59'),
(236, 1, 13, 'sales', 10, 1, 1, '2023-07-18 10:28:46'),
(237, 1, 14, 'sales', 12, 5, 44, '2023-08-03 23:23:45'),
(238, 1, 16, 'sales', 8, 1, 44, '2023-08-03 23:26:21'),
(239, 1, 12, 'purchase', 0, 20, 44, '2023-08-03 23:28:34'),
(240, 1, 15, 'purchase', 0, 12, 44, '2023-08-03 23:28:50'),
(241, 1, 12, 'transfer', 20, 5, 44, '2023-08-03 23:29:37'),
(242, 1, 24, 'purchase', 0, 120, 1, '2023-09-09 11:01:57'),
(243, 1, 13, 'sales', 9, 1, 1, '2023-09-13 22:42:42'),
(244, 1, 14, 'sales', 7, 1, 1, '2023-09-13 22:44:34'),
(245, 1, 16, 'sales', 7, 1, 1, '2023-09-13 23:11:09'),
(246, 1, 13, 'sales_return', 8, 1, 1, '2023-09-13 23:11:41'),
(247, 1, 18, 'sales', 4, 1, 1, '2023-09-13 23:33:26'),
(248, 1, 16, 'transfer', 6, 5, 1, '2023-09-13 23:44:32'),
(249, 1, 16, 'transfer', 10, 4, 1, '2023-09-13 23:48:14'),
(250, 1, 14, 'sales', 6, 1, 1, '2023-09-14 14:21:40'),
(251, 1, 12, 'purchase', 15, 50, 1, '2023-09-14 14:57:51'),
(252, 1, 12, 'transfer', 65, 10, 1, '2023-09-14 14:58:47'),
(253, 2, 12, 'accept', 0, 5, 1, '2023-09-14 14:59:46'),
(254, 2, 12, 'accept', 5, 10, 1, '2023-09-14 14:59:52'),
(255, 1, 12, 'sales', 55, 20, 1, '2023-09-14 18:49:52'),
(256, 1, 16, 'sales', 9, 5, 1, '2023-09-14 18:49:52'),
(257, 1, 15, 'sales', 12, 4, 1, '2023-09-14 18:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bank_id` int(11) NOT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bank_id`, `bank`, `account_number`) VALUES
(1, 'Access Bank', '0030596252'),
(3, 'Opay', '7068897068'),
(4, 'Sterling', '0028432729');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `department`, `category`, `price`) VALUES
(22, '4', 'Supermarket Items', 0),
(23, '5', 'Drugs', 0),
(24, '9', 'Many Data', 0),
(25, '13', 'More', 0);

-- --------------------------------------------------------

--
-- Table structure for table `check_ins`
--

CREATE TABLE `check_ins` (
  `guest_id` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_address` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `amount_due` int(25) NOT NULL,
  `status` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(11) NOT NULL,
  `stay_extended` int(11) NOT NULL,
  `date_extended` datetime NOT NULL,
  `extended_by` int(11) NOT NULL,
  `checked_out` datetime NOT NULL,
  `checked_out_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company`, `logo`, `date_created`) VALUES
(1, 'Demo Supermarket', 'chef pee.png', '2023-04-23 14:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_numbers` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_balance` int(11) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer`, `phone_numbers`, `customer_address`, `customer_email`, `wallet_balance`, `reg_date`) VALUES
(2, 'Onostar Media', '07068897068', '23 Onostar Wary', 'onostarmedia@gmail.com', 5000, '2023-06-07 17:58:31'),
(3, 'Merb Resources', '89089898', 'Merb Way, Warri', 'maerb@mail.com', 0, '2023-06-10 13:23:22'),
(4, 'Applied Macrosystems', '08069114149', '23 Iziegne Stree', 'sales@appliedmacros.com', 0, '2023-06-25 13:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `customer_trail`
--

CREATE TABLE `customer_trail` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `description` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_trail`
--

INSERT INTO `customer_trail` (`id`, `customer`, `description`, `amount`, `store`, `posted_by`, `post_date`) VALUES
(2, 3, 'Credit sales', 10000, 1, 1, '2023-06-12 22:00:09'),
(3, 3, 'Deposit', 10000, 1, 1, '2023-06-13 23:15:14'),
(5, 2, 'Credit sales', 5000, 1, 1, '2023-06-17 22:54:14'),
(6, 2, 'Credit sales', 6000, 1, 1, '2023-07-18 10:28:47'),
(7, 2, 'Credit sales', 5000, 1, 1, '2023-09-14 14:21:40'),
(8, 2, 'Deposit', 10000, 1, 1, '2023-09-14 15:26:25'),
(9, 2, 'Debt payment', 5000, 1, 1, '2023-09-14 15:36:58'),
(10, 3, 'Deposit', 15000, 1, 1, '2023-09-14 15:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `debtors`
--

CREATE TABLE `debtors` (
  `debtor_id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `debt_status` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `debtors`
--

INSERT INTO `debtors` (`debtor_id`, `customer`, `invoice`, `amount`, `store`, `debt_status`, `posted_by`, `post_date`) VALUES
(2, 3, 'WS120623101745661', 10000, 1, 1, 1, '2023-06-12 22:00:09'),
(3, 2, 'WS170623111266251', 5000, 1, 1, 1, '2023-06-17 22:54:14'),
(4, 2, 'WS180723111343911', 6000, 1, 0, 1, '2023-07-18 10:28:47'),
(5, 2, 'WS114092303268831', 5000, 1, 0, 1, '2023-09-14 14:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department`) VALUES
(4, 'Supermarket'),
(5, 'Pharmacy'),
(6, 'Treatment'),
(7, 'Others'),
(8, 'Dema'),
(9, 'Many'),
(13, 'Many More');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `deposit_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`deposit_id`, `store`, `customer`, `amount`, `payment_mode`, `invoice`, `details`, `post_date`, `posted_by`) VALUES
(1, 1, 2, 10000, 'Cash', 'DEP14092304142021', 'Being Deposits For Debt Owed', '2023-09-14 15:26:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `expense_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_date` datetime NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `store`, `posted_by`, `expense_head`, `amount`, `details`, `expense_date`, `post_date`) VALUES
(12, 0, 1, '1', 5000, 'Hjhg Hhjhjkhkh Jjhjk Hjk Jhjkhklh  Hjhjkhklh ', '2023-01-23 00:00:00', '2023-01-24 22:19:53'),
(13, 0, 1, '3', 50000, 'Calling Agents', '2023-01-25 00:00:00', '2023-01-25 00:12:49'),
(14, 0, 1, '1', 2000, 'For Fuel For Generator', '2023-01-27 00:00:00', '2023-01-27 20:43:22'),
(15, 0, 1, '1', 4000, 'Fuel For Gen', '2023-01-30 00:00:00', '2023-01-30 22:30:15'),
(16, 0, 1, '1', 2000, 'Bought Fuel For Generator', '2023-02-05 00:00:00', '2023-02-05 17:33:52'),
(17, 0, 1, '2', 2000, 'Transport To Oka Market', '2023-03-02 00:00:00', '2023-03-02 18:00:14'),
(18, 1, 1, '1', 3000, 'Fuel For The Office Generator', '2023-06-08 00:00:00', '2023-06-10 18:11:17'),
(19, 1, 1, '2', 1000, 'Transport To Buy Fuel', '2023-06-10 00:00:00', '2023-06-10 18:15:14'),
(20, 1, 1, '1', 3000, 'Fuel For Genertaotor', '2023-07-07 00:00:00', '2023-07-07 14:46:59'),
(21, 1, 1, '2', 4000, 'Being Tranasport To Oka Market', '2023-09-14 00:00:00', '2023-09-14 15:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `expense_heads`
--

CREATE TABLE `expense_heads` (
  `exp_head_id` int(11) NOT NULL,
  `expense_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_heads`
--

INSERT INTO `expense_heads` (`exp_head_id`, `expense_head`) VALUES
(1, 'Fuel, Diesel And Lubricants'),
(2, 'Transportation'),
(3, 'Airtime And Calls');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `batch_number` int(11) NOT NULL,
  `expiration_date` date NOT NULL,
  `reorder_level` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `item`, `store`, `cost_price`, `quantity`, `batch_number`, `expiration_date`, `reorder_level`, `post_date`) VALUES
(7, 18, 1, 500, 3, 0, '2023-06-30', 5, '2023-06-01 15:25:31'),
(8, 14, 1, 3200, 5, 0, '2023-10-30', 5, '2023-06-01 15:25:50'),
(9, 16, 2, 100, 5, 0, '2025-12-30', 10, '2023-06-02 15:49:17'),
(10, 19, 2, 500, 6, 0, '2024-03-30', 10, '2023-06-02 15:49:51'),
(11, 16, 1, 100, 4, 0, '2025-12-30', 10, '2023-06-02 21:30:44'),
(12, 14, 2, 3200, 0, 0, '2023-06-02', 5, '2023-06-02 21:50:43'),
(13, 19, 1, 500, 2, 0, '2024-03-30', 10, '2023-06-02 21:58:50'),
(14, 18, 2, 500, 1, 0, '2023-06-30', 5, '2023-06-03 14:22:11'),
(15, 13, 2, 250, 52, 0, '2024-12-30', 10, '2023-06-04 13:26:20'),
(16, 20, 1, 45, 98, 0, '2024-05-30', 10, '2023-06-10 17:09:05'),
(17, 21, 1, 250, 19, 0, '2024-07-30', 10, '2023-06-10 17:09:50'),
(18, 13, 1, 250, 9, 0, '2024-12-30', 10, '2023-06-10 19:04:30'),
(19, 23, 1, 1500, 21, 0, '2026-03-30', 10, '2023-07-04 13:42:35'),
(20, 23, 2, 1500, 10, 0, '2026-03-30', 10, '2023-07-04 14:11:37'),
(21, 12, 1, 450, 35, 0, '2025-12-30', 8, '2023-08-03 23:28:34'),
(22, 15, 1, 100, 8, 0, '2025-12-30', 10, '2023-08-03 23:28:50'),
(23, 24, 1, 100, 120, 0, '2025-12-30', 10, '2023-09-09 11:01:57'),
(24, 12, 2, 450, 15, 0, '2025-12-30', 8, '2023-09-14 14:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` int(255) NOT NULL,
  `sales_price` int(255) NOT NULL,
  `pack_size` int(11) NOT NULL,
  `pack_price` int(11) NOT NULL,
  `wholesale` int(11) NOT NULL,
  `wholesale_pack` int(11) NOT NULL,
  `reorder_level` int(11) NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_status` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `department`, `category`, `item_name`, `cost_price`, `sales_price`, `pack_size`, `pack_price`, `wholesale`, `wholesale_pack`, `reorder_level`, `barcode`, `item_status`, `date_created`) VALUES
(12, '4', 22, 'Heineken', 450, 700, 10, 600, 500, 470, 8, '89000988991', 0, '2023-01-09 21:18:09'),
(13, '5', 23, 'Amlodipine 10mg (teva)', 250, 600, 2, 500, 450, 400, 10, '000', 0, '2023-01-09 21:18:23'),
(14, '4', 22, 'Milo Refill 320kg', 3200, 5000, 1, 5000, 5000, 0, 5, '000', 0, '2023-01-09 21:18:37'),
(15, '4', 22, 'Fanta 33cl', 100, 150, 24, 130, 120, 0, 10, '0000', 0, '2023-01-09 21:18:45'),
(16, '4', 22, 'Coke 33cl', 100, 150, 12, 130, 120, 110, 10, '000', 0, '2023-01-09 21:18:50'),
(17, '4', 22, 'Hollandia Yoghurt 1litre', 750, 1000, 0, 0, 0, 0, 10, '000', 0, '2023-01-09 21:19:03'),
(18, '4', 22, 'Vita Milk', 500, 800, 10, 700, 650, 600, 5, '0000', 0, '2023-01-24 12:46:29'),
(19, '4', 22, 'Peng Wei Yuan Crackers', 500, 800, 0, 0, 700, 0, 10, '6943443500222', 0, '2023-01-24 12:54:04'),
(20, '5', 23, 'Emzor Paracetamol Tab', 45, 100, 8, 80, 70, 60, 10, '0999', 0, '2023-06-10 17:07:34'),
(21, '5', 23, 'Ibuprofen Syrup 30ml', 250, 500, 10, 450, 400, 350, 10, '23444', 0, '2023-06-10 17:07:49'),
(22, '5', 23, 'Emzolyn Syrup', 0, 0, 0, 0, 0, 0, 10, '0', 0, '2023-06-25 13:47:53'),
(23, '4', 22, 'Carotone 250ml Lotion', 1500, 2800, 1, 0, 2500, 0, 10, '0909909', 0, '2023-07-04 13:41:13'),
(24, '4', 22, 'Chelsea Sachet', 100, 150, 12, 120, 130, 120, 10, '00000', 0, '2023-09-09 10:59:02'),
(25, '5', 23, 'Tramadol', 0, 0, 0, 0, 0, 0, 10, '90000', 0, '2023-09-13 22:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `menu`) VALUES
(1, 'Admin menu'),
(2, 'Sales management'),
(3, 'Inventory'),
(4, 'Financial mgt'),
(5, 'Reports'),
(6, 'Financial reports');

-- --------------------------------------------------------

--
-- Table structure for table `multiple_payments`
--

CREATE TABLE `multiple_payments` (
  `id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cash` int(11) NOT NULL,
  `transfer` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `bank` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multiple_payments`
--

INSERT INTO `multiple_payments` (`id`, `store`, `invoice`, `cash`, `transfer`, `pos`, `bank`, `posted_by`, `post_date`) VALUES
(1, 0, 'RT050223044389446', 700, 0, 1000, 1, 43, '2023-02-05 16:25:58'),
(2, 0, 'RT050223044368353', 500, 200, 0, 1, 1, '2023-02-05 17:24:34'),
(3, 0, 'RT080223094367429', 3000, 1000, 1000, 1, 43, '2023-02-08 21:53:17'),
(4, 0, 'RT080223094352415', 1500, 0, 1500, 1, 43, '2023-02-08 21:55:50'),
(5, 0, 'RT080223094363047', 100, 0, 2000, 1, 43, '2023-02-08 21:57:37'),
(6, 0, 'RT10022303176533', 3000, 1000, 1000, 1, 1, '2023-02-10 15:34:13'),
(7, 0, 'RT100223084356771', 3000, 2000, 0, 1, 43, '2023-02-10 20:01:40'),
(8, 0, 'RT100223084315170', 0, 0, 0, 0, 43, '2023-02-10 20:17:38'),
(9, 0, 'RT100223084394065', 0, 0, 0, 0, 43, '2023-02-10 20:43:48'),
(10, 0, 'RT100223084338386', 500, 200, 0, 1, 43, '2023-02-10 20:53:35'),
(11, 0, 'RT25052312185647', 500, 4000, 0, 1, 1, '2023-05-25 11:37:41'),
(12, 0, 'RT25052312187568', 2000, 500, 2000, 1, 1, '2023-05-25 11:58:04'),
(13, 0, 'RT25052312176611', 2000, 2000, 1000, 1, 1, '2023-05-25 11:59:57'),
(14, 0, 'RT25052305190457', 500, 0, 500, 1, 1, '2023-05-25 17:10:28'),
(15, 1, 'RT100623041715881', 450, 5000, 5000, 1, 1, '2023-06-10 15:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `other_payments`
--

CREATE TABLE `other_payments` (
  `payment_id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_payments`
--

INSERT INTO `other_payments` (`payment_id`, `customer`, `invoice`, `amount`, `payment_mode`, `store`, `posted_by`, `post_date`) VALUES
(2, 3, 'WS120623101745661', 10000, 'Cash', 0, 1, '2023-06-13 23:15:14'),
(4, 2, 'WS170623111266251', 5000, 'Wallet', 1, 1, '2023-09-14 15:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `sales_type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` int(11) NOT NULL,
  `amount_due` int(20) NOT NULL,
  `store` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `discount` int(20) NOT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp(),
  `posted_by` int(11) NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `sales_type`, `customer`, `amount_due`, `store`, `amount_paid`, `discount`, `payment_mode`, `bank`, `post_date`, `posted_by`, `invoice`) VALUES
(54, '0', 0, 0, 0, 5300, 0, 'Cash', 0, '2023-01-10 22:25:21', 1, 'RT00183054096'),
(55, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-10 23:29:48', 1, 'RT00152610987'),
(56, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-01-10 23:30:50', 1, 'RT00138432370'),
(57, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-11 06:15:51', 1, 'RT00141424107'),
(58, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-01-11 06:16:51', 1, 'RT00129828284'),
(59, '0', 0, 0, 0, 600, 0, 'Cash', 0, '2023-01-11 06:19:26', 1, 'RT00117710887'),
(60, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-11 06:21:36', 1, 'RT00189093610'),
(61, '0', 0, 0, 0, 700, 0, 'POS', 1, '2023-01-11 06:22:55', 1, 'RT00125233150'),
(62, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-11 06:25:20', 1, 'RT00189605273'),
(63, '0', 0, 0, 0, 300, 0, 'Transfer', 1, '2023-01-11 06:26:37', 1, 'RT00180012971'),
(64, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-11 06:29:30', 1, 'RT00159574719'),
(65, '0', 0, 0, 0, 5900, 0, 'Cash', 0, '2023-01-11 06:30:28', 1, 'RT00117911895'),
(66, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-01-11 06:32:03', 1, 'RT00180914671'),
(67, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-01-11 06:35:38', 1, 'RT00112241174'),
(68, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-11 06:37:31', 1, 'RT00147337985'),
(69, '0', 0, 0, 0, 150, 0, 'Cash', 0, '2023-01-11 06:38:45', 1, 'RT00194093389'),
(70, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-01-11 08:21:08', 1, 'RT00115039708'),
(71, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-01-14 19:48:38', 1, 'RT00131081089'),
(72, '0', 0, 0, 0, 10000, 0, 'POS', 1, '2023-01-14 20:29:55', 43, 'RT004320994613'),
(73, '0', 0, 0, 0, 150, 0, 'Cash', 0, '2023-01-14 20:37:03', 43, 'RT004336494626'),
(74, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-14 20:37:34', 43, 'RT004348490104'),
(75, '0', 0, 0, 0, 1200, 0, 'Cash', 0, '2023-01-15 06:46:40', 43, 'RT004316299294'),
(76, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-01-15 06:46:58', 43, 'RT004342757304'),
(77, '0', 0, 0, 0, 5300, 0, 'Cash', 0, '2023-01-15 13:05:44', 43, 'RT004321122965'),
(78, '0', 0, 0, 0, 600, 0, 'POS', 1, '2023-01-15 13:25:11', 43, 'RT004376889722'),
(79, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-15 13:34:23', 43, 'RT004361354860'),
(80, '0', 0, 0, 0, 2800, 0, 'Cash', 0, '2023-01-15 14:09:33', 43, 'RT004341664945'),
(81, '0', 0, 0, 0, 1350, 0, 'Cash', 0, '2023-01-15 14:10:09', 43, 'RT004375941100'),
(82, '0', 0, 0, 0, 7700, 0, 'POS', 1, '2023-01-16 16:38:08', 1, 'RT00119415311'),
(83, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-16 16:43:17', 1, 'RT00177294714'),
(84, '0', 0, 0, 0, 150, 0, 'Cash', 0, '2023-01-16 16:48:55', 1, 'RT00171305018'),
(85, '0', 0, 0, 0, 150, 0, 'Transfer', 1, '2023-01-16 16:53:09', 1, 'RT00135180813'),
(86, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-23 23:45:55', 1, 'RT23012311122433'),
(87, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-24 05:58:47', 1, 'RT24012305152752'),
(88, '0', 0, 0, 0, 1550, 0, 'POS', 1, '2023-01-24 06:06:08', 1, 'RT24012306174101'),
(89, '0', 0, 0, 0, 300, 0, 'Cash', 0, '2023-01-24 06:33:40', 1, 'RT24012306122908'),
(90, '0', 0, 0, 0, 800, 0, 'Cash', 0, '2023-01-24 22:52:55', 1, 'RT24012310151313'),
(91, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-01-24 22:58:17', 1, 'RT24012310190636'),
(92, '0', 0, 0, 0, 450, 0, 'POS', 1, '2023-01-24 23:18:35', 1, 'RT24012311132426'),
(93, '0', 0, 0, 0, 150, 0, 'Transfer', 1, '2023-01-24 23:21:31', 1, 'RT24012305113141'),
(94, '0', 0, 0, 0, 2100, 0, 'Cash', 0, '2023-01-24 23:24:07', 1, 'RT24012311161659'),
(95, '0', 0, 0, 0, 6400, 0, 'Cash', 0, '2023-01-27 20:41:25', 1, 'RT27012308178969'),
(96, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-01-28 14:40:41', 43, 'RT280123024343546'),
(97, '0', 0, 0, 0, 5000, 0, 'POS', 1, '2023-01-28 14:44:00', 43, 'RT280123024332749'),
(98, '0', 0, 0, 0, 1500, 0, 'Transfer', 1, '2023-01-28 14:45:52', 43, 'RT280123024329375'),
(99, '0', 0, 0, 0, 10000, 0, 'POS', 1, '2023-01-30 22:29:43', 1, 'RT30012310158715'),
(100, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-01-30 22:37:50', 1, 'RT30012310198942'),
(101, '0', 0, 0, 0, 2200, 0, 'Cash', 0, '2023-01-31 09:29:52', 43, 'RT310123094372492'),
(102, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-01-31 09:36:35', 43, 'RT310123094354514'),
(103, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-01-31 21:07:59', 1, 'RT31012309146645'),
(104, '0', 0, 0, 0, 1600, 0, 'Cash', 0, '2023-01-31 21:08:39', 1, 'RT31012309128068'),
(105, '0', 0, 0, 0, 700, 0, 'Transfer', 1, '2023-02-02 19:43:04', 1, 'RT02022307126370'),
(106, '0', 0, 0, 0, 3950, 0, 'POS', 1, '2023-02-02 19:47:12', 43, 'RT020223074332753'),
(107, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-02-04 17:10:57', 43, 'RT040223054312644'),
(108, '0', 0, 0, 0, 5000, 0, 'Multiple', 1, '2023-02-05 16:11:59', 43, 'RT050223044325521'),
(109, '0', 0, 0, 0, 1500, 0, 'Multiple', 1, '2023-02-05 16:16:11', 43, 'RT050223044358253'),
(110, '0', 0, 0, 0, 1700, 0, 'Multiple', 1, '2023-02-05 16:25:58', 43, 'RT050223044389446'),
(111, '0', 0, 0, 0, 700, 0, 'Multiple', 1, '2023-02-05 17:24:34', 1, 'RT050223044368353'),
(113, '0', 0, 0, 0, 5000, 0, 'Multiple', 1, '2023-02-08 21:47:02', 43, 'RT080223094365956'),
(114, '0', 0, 0, 0, 3000, 0, 'Multiple', 1, '2023-02-08 21:53:17', 43, 'RT080223094367429'),
(115, '0', 0, 0, 0, 1000, 0, 'Multiple', 1, '2023-02-08 21:53:17', 43, 'RT080223094367429'),
(116, '0', 0, 0, 0, 1000, 0, 'Multiple', 1, '2023-02-08 21:53:17', 43, 'RT080223094367429'),
(117, '0', 0, 0, 0, 1500, 0, 'Cash', 1, '2023-02-08 21:55:50', 43, 'RT080223094352415'),
(118, '0', 0, 0, 0, 1500, 0, 'POS', 1, '2023-02-08 21:55:50', 43, 'RT080223094352415'),
(119, '0', 0, 0, 0, 0, 0, 'Transfer', 1, '2023-02-08 21:55:50', 43, 'RT080223094352415'),
(120, '0', 0, 0, 0, 100, 0, 'Cash', 1, '2023-02-08 21:57:37', 43, 'RT080223094363047'),
(121, '0', 0, 0, 0, 2000, 0, 'POS', 1, '2023-02-08 21:57:37', 43, 'RT080223094363047'),
(122, '0', 0, 0, 0, 3000, 0, 'Cash', 1, '2023-02-10 15:34:13', 1, 'RT10022303176533'),
(123, '0', 0, 0, 0, 1000, 0, 'POS', 1, '2023-02-10 15:34:13', 1, 'RT10022303176533'),
(124, '0', 0, 0, 0, 1000, 0, 'Transfer', 1, '2023-02-10 15:34:13', 1, 'RT10022303176533'),
(125, '0', 0, 0, 0, 2400, 0, 'Cash', 0, '2023-02-10 15:52:03', 43, 'RT100223034345296'),
(126, '0', 0, 0, 0, 3000, 0, 'Cash', 1, '2023-02-10 20:01:39', 43, 'RT100223084356771'),
(127, '0', 0, 0, 0, 2000, 0, 'Transfer', 1, '2023-02-10 20:01:40', 43, 'RT100223084356771'),
(128, '0', 0, 0, 0, 500, 0, 'Cash', 1, '2023-02-10 20:53:35', 43, 'RT100223084338386'),
(129, '0', 0, 0, 0, 200, 0, 'Transfer', 1, '2023-02-10 20:53:35', 43, 'RT100223084338386'),
(130, '0', 0, 0, 0, -700, 0, 'Cash', 0, '2023-02-19 13:56:11', 1, 'RT19022301173072'),
(131, '0', 0, 0, 0, 700, 0, 'POS', 1, '2023-02-19 13:56:48', 1, 'RT19022301163198'),
(132, '0', 0, 0, 0, 450, 0, 'Cash', 0, '2023-02-19 13:57:35', 1, 'RT19022301151956'),
(133, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-02-19 14:00:26', 1, 'RT19022302111865'),
(134, '0', 0, 0, 0, 600, 0, 'Cash', 0, '2023-02-19 14:01:03', 1, 'RT19022302178630'),
(135, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-02-19 14:10:38', 1, 'RT19022302184799'),
(136, '0', 0, 0, 0, 600, 0, 'Cash', 0, '2023-02-19 14:11:06', 1, 'RT19022302195220'),
(138, '0', 0, 0, 0, 150, 0, 'Cash', 0, '2023-02-19 14:16:42', 1, 'RT19022302140381'),
(139, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-02-26 12:20:18', 1, 'RT26022312134221'),
(140, '0', 0, 0, 0, 150, 0, 'Cash', 0, '2023-02-26 12:26:28', 1, 'RT26022312160913'),
(141, '0', 0, 0, 0, 2000, 0, 'Transfer', 1, '2023-02-26 12:37:13', 1, 'RT26022312149919'),
(142, '0', 0, 0, 0, 600, 0, 'Cash', 0, '2023-02-26 12:38:01', 1, 'RT26022312187237'),
(143, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-03-02 17:59:22', 1, 'RT02032305155673'),
(144, '0', 0, 0, 0, 700, 0, 'POS', 1, '2023-03-06 09:33:10', 43, 'RT060323094369917'),
(145, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-03-07 12:51:25', 1, 'RT07032312132895'),
(146, '0', 0, 0, 0, 450, 0, 'Cash', 0, '2023-04-17 19:31:44', 1, 'RT17042308144317'),
(147, '0', 0, 0, 0, 600, 0, 'Cash', 0, '2023-04-17 19:31:57', 1, 'RT17042308189279'),
(148, '0', 0, 0, 0, 1400, 0, 'Cash', 0, '2023-04-17 19:32:12', 1, 'RT17042308127167'),
(149, '0', 0, 0, 0, 1800, 0, 'Cash', 0, '2023-04-17 19:33:04', 1, 'RT17042308187628'),
(150, '0', 0, 0, 0, 450, 0, 'POS', 1, '2023-04-17 20:01:35', 1, 'RT17042309127654'),
(151, '0', 0, 0, 0, 3500, 0, 'Cash', 0, '2023-04-23 13:15:41', 1, 'RT23042302122518'),
(152, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-04-23 15:58:02', 1, 'RT23042304148310'),
(153, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-04-28 20:32:33', 1, 'RT28042309114491'),
(154, '0', 0, 0, 0, 7000, 0, 'Cash', 0, '2023-04-29 16:33:11', 43, 'RT290423054386208'),
(155, '0', 0, 0, 0, 7000, 0, 'Cash', 0, '2023-04-29 16:33:21', 43, 'RT290423054316388'),
(156, '0', 0, 0, 0, 1350, 0, 'Cash', 0, '2023-04-29 17:54:12', 43, 'RT290423064315751'),
(157, '0', 0, 0, 0, 750, 0, 'Cash', 0, '2023-04-29 17:56:26', 43, 'RT290423064384118'),
(158, '0', 0, 0, 0, 750, 0, 'Cash', 0, '2023-04-29 17:56:27', 43, 'RT290423064384118'),
(159, '0', 0, 0, 0, 5850, 0, 'Cash', 0, '2023-04-29 17:59:03', 43, 'RT290423064386594'),
(160, '0', 0, 0, 0, 5850, 0, 'Cash', 0, '2023-04-29 17:59:03', 43, 'RT290423064386594'),
(161, '0', 0, 0, 0, 5850, 0, 'Cash', 0, '2023-04-29 17:59:04', 43, 'RT290423064386594'),
(162, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-04-29 18:01:08', 43, 'RT290423074354738'),
(163, '0', 0, 0, 0, 1400, 0, 'POS', 1, '2023-04-29 18:01:08', 43, 'RT290423074354738'),
(164, '0', 0, 0, 0, 1300, 0, 'Cash', 0, '2023-04-29 18:03:31', 43, 'RT290423074325042'),
(165, '0', 0, 0, 0, 1300, 0, 'Cash', 0, '2023-04-29 18:03:31', 43, 'RT290423074325042'),
(166, '0', 0, 0, 0, 1300, 0, 'Cash', 0, '2023-04-29 18:04:14', 43, 'RT290423074365099'),
(167, '0', 0, 0, 0, 1300, 0, 'POS', 1, '2023-04-29 18:04:40', 43, 'RT290423074317107'),
(168, '0', 0, 0, 0, 1300, 0, 'Transfer', 1, '2023-04-29 18:06:09', 43, 'RT290423074375146'),
(169, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:04:34', 1, 'RT10052311123076'),
(170, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:05:22', 1, 'RT10052311181647'),
(171, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:06:08', 1, 'RT10052311181604'),
(172, '0', 0, 0, 0, 850, 0, 'Cash', 0, '2023-05-10 22:07:42', 1, 'RT10052311144849'),
(173, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:09:08', 1, 'RT10052311138915'),
(174, '0', 0, 0, 0, 5000, 0, 'Cash', 0, '2023-05-10 22:09:49', 1, 'RT10052311164857'),
(175, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:17:08', 1, 'RT10052311170720'),
(176, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:20:46', 1, 'RT10052311161080'),
(177, '0', 0, 0, 0, 700, 0, 'Cash', 0, '2023-05-10 22:22:15', 1, 'RT10052311111672'),
(178, '0', 0, 700, 0, 700, 0, 'Cash', 0, '2023-05-25 10:52:33', 1, 'RT25052311135372'),
(179, '0', 0, 700, 0, 600, 100, 'Cash', 0, '2023-05-25 10:53:49', 1, 'RT25052311136962'),
(180, '0', 0, 450, 0, 400, 50, 'POS', 1, '2023-05-25 10:55:11', 1, 'RT25052311158698'),
(181, '0', 0, 5000, 0, 500, 500, 'Cash', 1, '2023-05-25 11:37:41', 1, 'RT25052312185647'),
(182, '0', 0, 5000, 0, 4000, 500, 'Transfer', 1, '2023-05-25 11:37:41', 1, 'RT25052312185647'),
(183, '0', 0, 5000, 0, 2000, 500, 'Cash', 1, '2023-05-25 11:58:04', 1, 'RT25052312187568'),
(184, '0', 0, 5000, 0, 2000, 500, 'POS', 1, '2023-05-25 11:58:04', 1, 'RT25052312187568'),
(185, '0', 0, 5000, 0, 500, 500, 'Transfer', 1, '2023-05-25 11:58:04', 1, 'RT25052312187568'),
(186, '0', 0, 5800, 0, 2000, 800, 'Cash', 1, '2023-05-25 11:59:57', 1, 'RT25052312176611'),
(187, '0', 0, 5800, 0, 1000, 800, 'POS', 1, '2023-05-25 11:59:57', 1, 'RT25052312176611'),
(188, '0', 0, 5800, 0, 2000, 800, 'Transfer', 1, '2023-05-25 11:59:57', 1, 'RT25052312176611'),
(189, '0', 0, 600, 0, 600, 0, 'Cash', 0, '2023-05-25 16:45:42', 1, 'RT25052305153041'),
(190, '0', 0, 600, 0, 600, 0, 'Cash', 0, '2023-05-25 16:49:15', 1, 'RT25052305157405'),
(191, '0', 0, 1800, 0, 1600, 200, 'Cash', 0, '2023-05-25 16:49:57', 1, 'RT25052301118987'),
(192, '0', 0, 1200, 0, 500, 200, 'Cash', 1, '2023-05-25 17:10:28', 1, 'RT25052305190457'),
(193, '0', 0, 1200, 0, 500, 200, 'POS', 1, '2023-05-25 17:10:28', 1, 'RT25052305190457'),
(194, '0', 0, 150, 1, 150, 0, 'Cash', 0, '2023-06-06 18:28:24', 1, 'RT060623071740211'),
(195, '0', 0, 150, 1, 150, 0, 'Cash', 0, '2023-06-06 18:30:48', 1, 'RT060623071415151'),
(198, '0', 0, 600, 2, 600, 0, 'Cash', 0, '2023-06-07 13:30:30', 43, 'RT0706230243213622'),
(201, '0', 0, 150, 1, 150, 0, 'Cash', 0, '2023-06-07 15:45:05', 1, 'RT070623041501801'),
(202, 'Retail', 0, 800, 1, 800, 0, 'POS', 1, '2023-06-09 13:47:13', 1, 'RT090623021367321'),
(203, 'Wholesale', 2, 650, 1, 650, 0, 'Cash', 0, '2023-06-09 16:32:53', 1, 'WS090623051292061'),
(204, 'Wholesale', 2, 120, 1, 120, 0, 'Cash', 0, '2023-06-10 13:34:13', 1, 'WS100623021399771'),
(205, 'Wholesale', 3, 5000, 1, 5000, 0, 'POS', 1, '2023-06-10 13:34:32', 1, 'WS100623021969111'),
(206, 'Retail', 0, 800, 2, 800, 0, 'Cash', 0, '2023-06-10 14:02:30', 43, 'RT1006230343156632'),
(207, 'Retail', 0, 10000, 1, 10000, 0, 'Transfer', 1, '2023-06-10 15:04:03', 1, 'RT100623041402131'),
(208, 'Retail', 0, 10450, 1, -4550, 0, 'Cash', 1, '2023-06-10 15:21:32', 1, 'RT100623041715881'),
(209, 'Retail', 0, 10450, 1, -4550, 0, 'POS', 1, '2023-06-10 15:21:32', 1, 'RT100623041715881'),
(210, 'Retail', 0, 10450, 1, -4550, 0, 'Transfer', 1, '2023-06-10 15:21:32', 1, 'RT100623041715881'),
(211, 'Retail', 0, 600, 2, 600, 0, 'POS', 1, '2023-06-10 17:01:40', 43, 'RT1006230643560722'),
(212, 'Retail', 0, 500, 1, 500, 0, 'Cash', 0, '2023-06-10 17:10:10', 1, 'RT100623061918431'),
(213, 'Retail', 0, 200, 1, 200, 0, 'Cash', 0, '2023-06-10 17:10:27', 1, 'RT100623061285061'),
(215, 'Retail', 0, 600, 1, 600, 0, 'Cash', 0, '2023-06-11 08:59:51', 1, 'RT110623091480941'),
(216, 'Wholesale', 3, 450, 1, 450, 0, 'Cash', 0, '2023-06-11 09:07:57', 1, 'WS110623101523301'),
(217, 'Retail', 0, 800, 1, 800, 0, 'POS', 1, '2023-06-11 09:16:41', 1, 'RT110623101902861'),
(219, 'Retail', 0, 150, 1, 150, 0, 'Cash', 0, '2023-06-11 09:19:37', 1, 'RT110623101526521'),
(220, 'Retail', 0, 750, 2, 750, 0, 'Cash', 0, '2023-06-12 10:04:33', 43, 'RT1206231143609122'),
(223, 'Wholesale', 3, 10000, 1, 10000, 0, 'Credit', 0, '2023-06-12 22:00:09', 1, 'WS120623101745661'),
(224, 'Retail', 0, 1900, 1, 1900, 0, 'Cash', 0, '2023-06-15 12:00:38', 1, 'RT150623121446571'),
(225, 'Wholesale', 2, 5000, 1, 5000, 0, 'Credit', 0, '2023-06-17 22:54:14', 1, 'WS170623111266251'),
(226, 'Retail', 0, 1600, 1, 1600, 0, 'Cash', 0, '2023-06-21 18:13:05', 1, 'RT210623071443351'),
(227, 'Retail', 0, 1500, 1, 1200, 300, 'Cash', 0, '2023-06-30 16:36:38', 1, 'RT300623051151441'),
(228, 'Retail', 0, 800, 1, 800, 0, 'Cash', 0, '2023-07-07 14:38:55', 1, 'RT070723031978591'),
(229, 'Retail', 0, 300, 1, 300, 0, 'POS', 1, '2023-07-07 14:39:59', 1, 'RT070723031783281'),
(230, 'Wholesale', 2, 6000, 1, 6000, 0, 'Credit', 0, '2023-07-18 10:28:46', 1, 'WS180723111343911'),
(231, 'Retail', 0, 25000, 1, 24000, 1000, 'POS', 1, '2023-08-03 23:23:45', 44, 'RT0408231244117021'),
(232, 'Retail', 0, 150, 1, 150, 0, 'Cash', 0, '2023-08-03 23:26:21', 44, 'RT0408231244342711'),
(234, 'Retail', 0, 5000, 1, 5000, 0, 'POS', 1, '2023-09-13 22:44:34', 1, 'RT11309231152051'),
(235, 'Retail', 0, 150, 1, 150, 0, 'Cash', 0, '2023-09-13 23:11:09', 1, 'RT140923121292691'),
(236, 'Wholesale', 3, 650, 1, 650, 0, 'POS', 3, '2023-09-13 23:33:26', 1, 'WS114092312332901'),
(237, 'Wholesale', 2, 5000, 1, 0, 0, 'Credit', 0, '2023-09-14 14:21:40', 1, 'WS114092303268831'),
(238, 'Wholesale', 2, 11080, 1, 11080, 0, 'Transfer', 1, '2023-09-14 18:49:52', 1, 'WS114092307027421');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` int(11) NOT NULL,
  `cost_price` int(255) NOT NULL,
  `sales_price` int(255) NOT NULL,
  `vendor` int(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expiration_date` date NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `store`, `invoice`, `item`, `cost_price`, `sales_price`, `vendor`, `quantity`, `expiration_date`, `posted_by`, `post_date`) VALUES
(43, 0, '12345', 13, 250, 600, 3, 30, '2025-12-30', 1, '2023-01-09 21:25:21'),
(44, 0, '12345', 12, 450, 700, 3, 60, '2026-12-30', 1, '2023-01-09 21:25:58'),
(45, 0, '12345', 14, 3200, 5000, 3, 10, '2025-12-03', 1, '2023-01-09 21:26:28'),
(46, 0, '34343', 15, 100, 150, 3, 48, '2025-03-30', 1, '2023-01-09 21:29:01'),
(47, 0, '34343', 16, 100, 150, 3, 72, '2026-05-30', 1, '2023-01-09 21:29:27'),
(48, 0, '6565', 14, 3200, 5000, 1, 2, '2024-12-30', 1, '2023-01-16 13:35:00'),
(49, 0, '78676', 19, 500, 800, 1, 10, '2024-12-30', 1, '2023-01-24 12:54:41'),
(50, 0, '8uu8u', 18, 500, 700, 3, 20, '2025-06-30', 1, '2023-02-02 19:41:44'),
(51, 0, '9889000', 17, 750, 1000, 3, 24, '2027-08-12', 43, '2023-02-02 19:45:59'),
(52, 0, 'h8h8h8', 19, 500, 800, 3, 2, '2024-12-30', 1, '2023-02-11 00:25:27'),
(53, 0, 'h8h8h8', 14, 3200, 5000, 3, 10, '2024-12-30', 1, '2023-02-11 00:26:35'),
(54, 0, 'kkppppe43e', 13, 250, 600, 2, 10, '2025-02-23', 43, '2023-02-11 00:32:24'),
(55, 0, '9899ij', 12, 450, 700, 2, 5, '2025-12-30', 1, '2023-02-19 14:26:48'),
(57, 1, 'testv2', 18, 500, 800, 4, 10, '2025-12-30', 1, '2023-05-31 16:56:37'),
(58, 2, 'testtest', 16, 100, 150, 4, 24, '2024-05-30', 43, '2023-06-01 06:18:15'),
(59, 2, '788896555', 16, 100, 150, 2, 10, '2024-04-30', 43, '2023-06-01 06:24:43'),
(60, 2, '7788888999', 16, 100, 150, 2, 24, '2024-03-28', 43, '2023-06-01 09:13:24'),
(61, 2, '877765rtg', 16, 100, 150, 2, 24, '2024-03-30', 43, '2023-06-01 09:15:08'),
(62, 2, '8j88j8j', 15, 100, 150, 4, 24, '2024-03-28', 43, '2023-06-01 09:54:42'),
(63, 2, '8j88j8j', 14, 3200, 5000, 4, 10, '2025-12-04', 43, '2023-06-01 09:56:12'),
(64, 2, '8j88j8j', 15, 100, 150, 4, 2, '2024-02-28', 43, '2023-06-01 09:56:28'),
(65, 2, 'textsin', 16, 100, 150, 4, 1, '2024-01-30', 43, '2023-06-01 09:57:11'),
(66, 1, '98000', 18, 500, 800, 4, 20, '2025-11-30', 1, '2023-06-01 15:25:31'),
(67, 1, '98000', 14, 3200, 5000, 4, 5, '2024-04-29', 1, '2023-06-01 15:25:50'),
(68, 1, '87897hnnm', 14, 3200, 5000, 4, 10, '2025-12-30', 1, '2023-06-01 17:50:21'),
(69, 2, '8j8h899u', 16, 100, 150, 4, 20, '2025-12-30', 43, '2023-06-02 15:49:18'),
(70, 2, '8j8h899u', 19, 500, 800, 4, 10, '2024-03-30', 43, '2023-06-02 15:49:51'),
(71, 2, 'uhubnjbhs', 13, 250, 600, 3, 50, '2024-08-03', 43, '2023-06-04 13:26:20'),
(72, 1, '677yhhhpara', 20, 45, 100, 4, 100, '2024-05-30', 1, '2023-06-10 17:09:05'),
(73, 1, '677yhhhpara', 21, 250, 500, 4, 20, '2024-07-30', 1, '2023-06-10 17:09:50'),
(74, 1, 'oiiouo', 13, 250, 600, 2, 20, '2024-12-30', 1, '2023-06-10 19:04:30'),
(75, 1, '9juujhhrr', 23, 1500, 2800, 5, 30, '2025-03-25', 1, '2023-07-04 13:42:36'),
(76, 1, 'jehjsdn99', 23, 1500, 2800, 1, 1, '2026-03-30', 1, '2023-07-04 13:45:23'),
(77, 1, 'ijkjlnjn', 12, 450, 700, 2, 20, '2025-12-30', 44, '2023-08-03 23:28:34'),
(78, 1, 'ijkjlnjn', 15, 100, 150, 2, 12, '2025-12-30', 44, '2023-08-03 23:28:50'),
(79, 1, '678765685', 24, 100, 150, 1, 120, '2025-12-30', 1, '2023-09-09 11:01:57'),
(80, 1, '879988', 12, 450, 700, 4, 50, '2025-12-30', 1, '2023-09-14 14:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `remove_items`
--

CREATE TABLE `remove_items` (
  `remove_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `previous_qty` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `removed_by` int(11) NOT NULL,
  `removed_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remove_items`
--

INSERT INTO `remove_items` (`remove_id`, `item`, `store`, `previous_qty`, `quantity`, `reason`, `removed_by`, `removed_date`) VALUES
(5, 14, 1, 10, 5, 'Damages', 1, '2023-06-01 17:50:58'),
(6, 16, 2, 7, 1, 'Damages', 43, '2023-06-04 13:41:37'),
(7, 18, 1, 4, 1, 'Expiration', 1, '2023-06-04 13:46:46'),
(8, 14, 1, 13, 1, 'Expiration', 1, '2023-07-04 13:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `remove_reasons`
--

CREATE TABLE `remove_reasons` (
  `remove_id` int(11) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `remove_reasons`
--

INSERT INTO `remove_reasons` (`remove_id`, `reason`) VALUES
(1, 'Expiration'),
(2, 'Damages');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `right_id` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `sub_menu` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`right_id`, `menu`, `sub_menu`, `user`) VALUES
(1, 1, 1, 43),
(5, 1, 3, 43),
(6, 1, 7, 43),
(10, 1, 8, 43),
(11, 1, 10, 43),
(14, 2, 14, 43),
(15, 3, 18, 43),
(16, 3, 22, 43),
(17, 2, 16, 43),
(18, 5, 49, 43),
(19, 5, 50, 43),
(21, 1, 51, 43),
(22, 3, 19, 43),
(23, 5, 33, 43),
(24, 3, 54, 43),
(25, 3, 53, 43),
(26, 3, 55, 43),
(27, 3, 56, 43),
(28, 5, 57, 43),
(29, 5, 58, 43),
(30, 2, 13, 43),
(31, 6, 41, 43),
(32, 5, 38, 43),
(33, 4, 25, 43),
(35, 2, 12, 46),
(36, 2, 15, 46);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `sales_type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` int(11) NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `sales_status` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `item`, `store`, `sales_type`, `customer`, `invoice`, `quantity`, `price`, `total_amount`, `cost`, `posted_by`, `sales_status`, `post_date`) VALUES
(186, 14, 0, '0', 0, 'RT00183054096', 1, 5000, 5000, 0, 1, 1, '2023-01-10 22:24:39'),
(187, 16, 0, '0', 0, 'RT00183054096', 2, 150, 300, 0, 1, 1, '2023-01-10 22:25:06'),
(188, 16, 0, '0', 0, 'RT00152610987', 2, 150, 300, 0, 1, 1, '2023-01-10 23:29:41'),
(189, 12, 0, '0', 0, 'RT00138432370', 2, 700, 1400, 0, 1, 1, '2023-01-10 23:30:42'),
(190, 12, 0, '0', 0, 'RT00141424107', 1, 700, 700, 0, 1, 1, '2023-01-11 06:15:45'),
(191, 14, 0, '0', 0, 'RT00129828284', 1, 5000, 5000, 0, 1, 1, '2023-01-11 06:16:45'),
(192, 13, 0, '0', 0, 'RT00117710887', 1, 600, 600, 0, 1, 1, '2023-01-11 06:19:19'),
(193, 16, 0, '0', 0, 'RT00189093610', 2, 150, 300, 0, 1, 1, '2023-01-11 06:21:30'),
(194, 12, 0, '0', 0, 'RT00125233150', 1, 700, 700, 0, 1, 1, '2023-01-11 06:22:47'),
(195, 12, 0, '0', 0, 'RT00189605273', 1, 700, 700, 0, 1, 1, '2023-01-11 06:25:15'),
(196, 15, 0, '0', 0, 'RT00180012971', 2, 150, 300, 0, 1, 1, '2023-01-11 06:26:28'),
(197, 12, 0, '0', 0, 'RT00159574719', 1, 700, 700, 0, 1, 1, '2023-01-11 06:29:25'),
(198, 14, 0, '0', 0, 'RT00117911895', 1, 5000, 5000, 0, 1, 1, '2023-01-11 06:30:02'),
(199, 13, 0, '0', 0, 'RT00117911895', 1, 600, 600, 0, 1, 1, '2023-01-11 06:30:06'),
(200, 16, 0, '0', 0, 'RT00117911895', 1, 150, 150, 0, 1, 1, '2023-01-11 06:30:12'),
(201, 15, 0, '0', 0, 'RT00117911895', 1, 150, 150, 0, 1, 1, '2023-01-11 06:30:19'),
(202, 12, 0, '0', 0, 'RT00180914671', 2, 700, 1400, 0, 1, 1, '2023-01-11 06:31:54'),
(203, 14, 0, '0', 0, 'RT00112241174', 1, 5000, 5000, 0, 1, 1, '2023-01-11 06:35:33'),
(204, 12, 0, '0', 0, 'RT00147337985', 1, 700, 700, 0, 1, 1, '2023-01-11 06:37:24'),
(205, 16, 0, '0', 0, 'RT00194093389', 1, 150, 150, 0, 1, 1, '2023-01-11 06:38:39'),
(206, 14, 0, '0', 0, 'RT00115039708', 1, 5000, 5000, 0, 1, 1, '2023-01-11 08:21:02'),
(207, 12, 0, '0', 0, 'RT00156053466', 2, 700, 1400, 0, 1, 0, '2023-01-12 22:16:33'),
(208, 12, 0, '0', 0, 'RT00131081089', 2, 700, 1400, 0, 1, 1, '2023-01-14 19:48:25'),
(209, 14, 0, '0', 0, 'RT004320994613', 2, 5000, 10000, 0, 43, 1, '2023-01-14 20:29:43'),
(210, 16, 0, '0', 0, 'RT004336494626', 1, 150, 150, 0, 43, 1, '2023-01-14 20:36:57'),
(211, 15, 0, '0', 0, 'RT004348490104', 2, 150, 300, 0, 43, 1, '2023-01-14 20:37:28'),
(212, 13, 0, '0', 0, 'RT004316299294', 2, 600, 1200, 0, 43, 1, '2023-01-15 06:46:34'),
(213, 12, 0, '0', 0, 'RT004342757304', 2, 700, 1400, 0, 43, 1, '2023-01-15 06:46:46'),
(214, 14, 0, '0', 0, 'RT004321122965', 1, 5000, 5000, 0, 43, 1, '2023-01-15 13:05:17'),
(215, 16, 0, '0', 0, 'RT004321122965', 2, 150, 300, 0, 43, 1, '2023-01-15 13:05:28'),
(218, 13, 0, '0', 0, 'RT004376889722', 1, 600, 600, 250, 43, 1, '2023-01-15 13:25:01'),
(219, 16, 0, '0', 0, 'RT004361354860', 2, 150, 300, 200, 43, 1, '2023-01-15 13:34:14'),
(220, 12, 0, '0', 0, 'RT004341664945', 4, 700, 2800, 1800, 43, 1, '2023-01-15 13:42:34'),
(221, 13, 0, '0', 0, 'RT004375941100', 2, 600, 1200, 500, 43, 1, '2023-01-15 14:09:41'),
(222, 16, 0, '0', 0, 'RT004375941100', 1, 150, 150, 100, 43, 1, '2023-01-15 14:10:01'),
(224, 12, 0, '0', 0, 'RT00192403184', 1, 700, 700, 450, 1, 1, '2023-01-15 23:58:52'),
(225, 16, 0, '0', 0, 'RT00139967893', 1, 150, 150, 100, 1, 0, '2023-01-16 00:01:41'),
(226, 15, 0, '0', 0, 'RT00163602097', 1, 150, 150, 100, 1, 1, '2023-01-16 12:18:29'),
(227, 15, 0, '0', 0, 'RT00135180813', 1, 150, 150, 100, 1, 2, '2023-01-16 12:34:18'),
(228, 16, 0, '0', 0, 'RT00171305018', 1, 150, 150, 100, 1, 2, '2023-01-16 12:40:12'),
(233, 16, 0, '0', 0, 'RT00142085249', 1, 150, 150, 100, 1, 0, '2023-01-16 13:16:23'),
(234, 16, 0, '0', 0, 'RT00145885116', 1, 150, 150, 100, 1, 0, '2023-01-16 13:17:36'),
(235, 16, 0, '0', 0, 'RT00186917183', 1, 150, 150, 100, 1, 0, '2023-01-16 13:18:16'),
(237, 16, 0, '0', 0, 'RT00177294714', 2, 150, 300, 200, 1, 2, '2023-01-16 13:27:02'),
(243, 12, 0, '0', 0, 'RT00119415311', 3, 700, 2100, 1350, 1, 2, '2023-01-16 14:28:34'),
(244, 14, 0, '0', 0, 'RT00119415311', 1, 5000, 5000, 3200, 1, 2, '2023-01-16 14:28:43'),
(245, 13, 0, '0', 0, 'RT00119415311', 1, 600, 600, 250, 1, 2, '2023-01-16 14:28:50'),
(246, 15, 0, '0', 0, 'RT00116685653', 3, 150, 450, 300, 1, 1, '2023-01-16 20:32:43'),
(249, 12, 0, '0', 0, 'RT23012311122433', 1, 700, 700, 450, 1, 2, '2023-01-23 23:45:45'),
(250, 12, 0, '0', 0, 'RT24012305152752', 1, 700, 700, 450, 1, 2, '2023-01-24 05:58:41'),
(251, 15, 0, '0', 0, 'RT24012305113141', 1, 150, 150, 100, 1, 2, '2023-01-24 05:59:03'),
(252, 15, 0, '0', 0, 'RT24012306122908', 2, 150, 300, 200, 1, 2, '2023-01-24 06:04:03'),
(253, 16, 0, '0', 0, 'RT24012306174101', 1, 150, 150, 100, 1, 2, '2023-01-24 06:04:30'),
(254, 12, 0, '0', 0, 'RT24012306174101', 2, 700, 1400, 900, 1, 2, '2023-01-24 06:04:40'),
(255, 19, 0, '0', 0, 'RT24012312138914', 1, 800, 800, 500, 1, 0, '2023-01-24 12:57:02'),
(257, 19, 0, '0', 0, 'RT24012310151313', 1, 800, 800, 500, 1, 2, '2023-01-24 22:52:43'),
(258, 12, 0, '0', 0, 'RT24012310190636', 1, 700, 700, 450, 1, 2, '2023-01-24 22:58:12'),
(259, 16, 0, '0', 0, 'RT24012311132426', 3, 150, 450, 300, 1, 2, '2023-01-24 23:17:47'),
(260, 12, 0, '0', 0, 'RT24012311161659', 3, 700, 2100, 1350, 1, 2, '2023-01-24 23:23:48'),
(261, 12, 0, '0', 0, 'RT27012308178969', 2, 700, 1400, 900, 1, 2, '2023-01-27 20:40:52'),
(262, 14, 0, '0', 0, 'RT27012308178969', 1, 5000, 5000, 3200, 1, 2, '2023-01-27 20:41:05'),
(263, 12, 0, '0', 0, 'RT280123024343546', 2, 700, 1400, 900, 43, 2, '2023-01-28 14:40:34'),
(264, 14, 0, '0', 0, 'RT280123024332749', 1, 5000, 5000, 3200, 43, 2, '2023-01-28 14:43:49'),
(265, 16, 0, '0', 0, 'RT280123024329375', 10, 150, 1500, 1000, 43, 2, '2023-01-28 14:45:35'),
(266, 14, 0, '0', 0, 'RT30012310158715', 2, 5000, 10000, 6400, 1, 2, '2023-01-30 22:29:32'),
(267, 12, 0, '0', 0, 'RT30012310198942', 2, 700, 1400, 900, 1, 2, '2023-01-30 22:37:43'),
(268, 19, 0, '0', 0, 'RT310123094372492', 2, 800, 1600, 1000, 43, 2, '2023-01-31 09:29:35'),
(269, 13, 0, '0', 0, 'RT310123094372492', 1, 600, 600, 250, 43, 2, '2023-01-31 09:29:43'),
(270, 12, 0, '0', 0, 'RT310123094354514', 2, 700, 1400, 900, 43, 2, '2023-01-31 09:36:26'),
(271, 12, 0, '0', 0, 'RT31012309146645', 2, 700, 1400, 900, 1, 2, '2023-01-31 21:07:54'),
(272, 19, 0, '0', 0, 'RT31012309128068', 2, 800, 1600, 1000, 1, 2, '2023-01-31 21:08:31'),
(273, 18, 0, '0', 0, 'RT02022307126370', 1, 700, 700, 500, 1, 2, '2023-02-02 19:42:48'),
(274, 17, 0, '0', 0, 'RT020223074332753', 3, 1000, 3000, 2250, 43, 2, '2023-02-02 19:46:40'),
(275, 19, 0, '0', 0, 'RT020223074332753', 1, 800, 800, 500, 43, 2, '2023-02-02 19:46:56'),
(276, 16, 0, '0', 0, 'RT020223074332753', 1, 150, 150, 100, 43, 2, '2023-02-02 19:47:03'),
(277, 14, 0, '0', 0, 'RT040223054312644', 1, 5000, 5000, 3200, 43, 2, '2023-02-04 17:09:58'),
(279, 19, 0, '0', 0, 'RT050223124356959', 1, 800, 800, 500, 43, 0, '2023-02-05 12:38:12'),
(280, 12, 0, '0', 0, 'RT050223014383866', 1, 700, 700, 450, 43, 0, '2023-02-05 13:52:55'),
(288, 14, 0, '0', 0, 'RT050223024324496', 1, 5000, 5000, 3200, 43, 0, '2023-02-05 14:24:12'),
(291, 14, 0, '0', 0, 'RT050223044325521', 1, 5000, 5000, 3200, 43, 2, '2023-02-05 16:11:38'),
(292, 19, 0, '0', 0, 'RT050223044358253', 1, 800, 800, 500, 43, 2, '2023-02-05 16:15:47'),
(293, 18, 0, '0', 0, 'RT050223044358253', 1, 700, 700, 500, 43, 2, '2023-02-05 16:15:53'),
(294, 12, 0, '0', 0, 'RT050223044389446', 1, 700, 700, 450, 43, 2, '2023-02-05 16:25:39'),
(295, 17, 0, '0', 0, 'RT050223044389446', 1, 1000, 1000, 750, 43, 2, '2023-02-05 16:25:43'),
(300, 12, 0, '0', 0, 'RT050223044368353', 1, 700, 700, 450, 43, 2, '2023-02-05 16:53:55'),
(308, 16, 0, '0', 0, 'RT050223054318019', 10, 150, 1500, 1000, 43, 0, '2023-02-05 17:42:21'),
(309, 14, 0, '0', 0, 'RT06022305144315', 1, 5000, 5000, 3200, 1, 0, '2023-02-06 05:14:03'),
(311, 14, 0, '0', 0, 'RT08022302197564', 1, 5000, 5000, 3200, 1, 0, '2023-02-08 14:35:18'),
(315, 14, 0, '0', 0, 'RT080223094325150', 1, 5000, 5000, 3200, 43, 0, '2023-02-08 21:09:57'),
(317, 14, 0, '0', 0, 'RT080223094321528', 1, 5000, 5000, 3200, 43, 0, '2023-02-08 21:19:41'),
(322, 14, 0, '0', 0, 'RT080223094365956', 1, 5000, 5000, 3200, 43, 2, '2023-02-08 21:45:54'),
(323, 14, 0, '0', 0, 'RT080223094367429', 1, 5000, 5000, 3200, 43, 2, '2023-02-08 21:52:52'),
(324, 12, 0, '0', 0, 'RT080223094352415', 2, 700, 1400, 900, 43, 2, '2023-02-08 21:55:19'),
(325, 19, 0, '0', 0, 'RT080223094352415', 2, 800, 1600, 1000, 43, 2, '2023-02-08 21:55:28'),
(326, 12, 0, '0', 0, 'RT080223094363047', 3, 700, 2100, 1350, 43, 2, '2023-02-08 21:57:18'),
(327, 14, 0, '0', 0, 'RT10022303176533', 1, 5000, 5000, 3200, 1, 2, '2023-02-10 15:33:00'),
(328, 12, 0, '0', 0, 'RT100223034345296', 3, 700, 2100, 1350, 43, 2, '2023-02-10 15:51:41'),
(329, 16, 0, '0', 0, 'RT100223034345296', 2, 150, 300, 200, 43, 2, '2023-02-10 15:51:49'),
(330, 14, 0, '0', 0, 'RT100223084356771', 1, 5000, 5000, 3200, 43, 2, '2023-02-10 20:01:23'),
(334, 18, 0, '0', 0, 'RT100223084338386', 1, 700, 700, 500, 43, 2, '2023-02-10 20:48:19'),
(339, 12, 0, '0', 0, 'RT10022310193729', 1, 700, 700, 450, 1, 0, '2023-02-10 22:07:47'),
(345, 19, 0, '0', 0, 'RT110223014379616', 1, 800, 800, 500, 43, 0, '2023-02-11 13:19:00'),
(346, 12, 0, '0', 0, 'RT19022301173072', -1, 700, -700, 450, 1, 2, '2023-02-19 13:56:03'),
(347, 12, 0, '0', 0, 'RT19022301163198', 1, 700, 700, 450, 1, 2, '2023-02-19 13:56:41'),
(348, 16, 0, '0', 0, 'RT19022301151956', 2, 150, 300, 200, 1, 2, '2023-02-19 13:57:19'),
(349, 15, 0, '0', 0, 'RT19022301151956', 1, 150, 150, 100, 1, 2, '2023-02-19 13:57:24'),
(350, 12, 0, '0', 0, 'RT19022302111865', 1, 700, 700, 450, 1, 2, '2023-02-19 14:00:22'),
(351, 16, 0, '0', 0, 'RT19022302178630', 3, 150, 450, 300, 1, 2, '2023-02-19 14:00:42'),
(352, 15, 0, '0', 0, 'RT19022302178630', 1, 150, 150, 100, 1, 2, '2023-02-19 14:00:47'),
(353, 12, 0, '0', 0, 'RT19022302184799', 1, 700, 700, 450, 1, 2, '2023-02-19 14:10:34'),
(354, 16, 0, '0', 0, 'RT19022302195220', 3, 150, 450, 300, 1, 2, '2023-02-19 14:10:51'),
(355, 15, 0, '0', 0, 'RT19022302195220', 1, 150, 150, 100, 1, 2, '2023-02-19 14:10:55'),
(358, 16, 0, '0', 0, 'RT19022302140381', 1, 150, 150, 100, 1, 2, '2023-02-19 14:16:38'),
(360, 12, 0, '0', 0, 'RT26022312134221', 1, 700, 700, 450, 1, 2, '2023-02-26 12:11:27'),
(361, 16, 0, '0', 0, 'RT26022312160913', 1, 150, 150, 100, 1, 2, '2023-02-26 12:26:20'),
(362, 18, 0, '0', 0, 'RT26022312125609', 2, 700, 1400, 1000, 1, 1, '2023-02-26 12:32:01'),
(363, 17, 0, '0', 0, 'RT26022312149919', 2, 1000, 2000, 1500, 1, 2, '2023-02-26 12:35:46'),
(364, 13, 0, '0', 0, 'RT26022312187237', 1, 600, 600, 250, 1, 2, '2023-02-26 12:37:55'),
(365, 12, 0, '0', 0, 'RT01032310113397', 1, 700, 700, 450, 1, 0, '2023-03-01 22:13:42'),
(366, 18, 0, '0', 0, 'RT01032310113397', 1, 700, 700, 500, 1, 0, '2023-03-01 22:14:06'),
(368, 12, 0, '0', 0, 'RT010323114316120', 1, 700, 700, 450, 43, 0, '2023-03-01 23:19:44'),
(369, 12, 0, '0', 0, 'RT01032311149175', 1, 700, 700, 450, 1, 0, '2023-03-01 23:20:34'),
(375, 16, 0, '0', 0, 'RT01032311158643', 1, 150, 150, 100, 1, 0, '2023-03-01 23:29:19'),
(378, 19, 0, '0', 0, 'RT01032311127328', 1, 800, 800, 500, 1, 1, '2023-03-01 23:39:09'),
(379, 12, 0, '0', 0, 'RT02032305155673', 1, 700, 700, 450, 1, 2, '2023-03-02 17:58:56'),
(380, 12, 0, '0', 0, 'RT04032307176731', 1, 700, 700, 450, 1, 0, '2023-03-04 19:29:52'),
(381, 12, 0, '0', 0, 'RT04032307129879', 1, 700, 700, 450, 1, 1, '2023-03-04 19:30:54'),
(382, 12, 0, '0', 0, 'RT060323094369917', 1, 700, 700, 450, 43, 2, '2023-03-06 09:31:54'),
(383, 12, 0, '0', 0, 'RT07032312132895', 1, 700, 700, 450, 1, 2, '2023-03-07 12:51:15'),
(384, 12, 0, '0', 0, 'RT07032312162754', 1, 700, 700, 450, 1, 0, '2023-03-07 12:53:19'),
(386, 12, 0, '0', 0, 'RT08032304112061', 1, 700, 700, 450, 1, 0, '2023-03-08 16:24:22'),
(387, 12, 0, '0', 0, 'RT18032302137177', 1, 700, 700, 450, 1, 0, '2023-03-18 14:26:11'),
(388, 16, 0, '0', 0, 'RT17042308144317', 3, 150, 450, 300, 1, 2, '2023-04-17 19:31:24'),
(389, 13, 0, '0', 0, 'RT17042308189279', 1, 600, 600, 250, 1, 2, '2023-04-17 19:31:52'),
(390, 18, 0, '0', 0, 'RT17042308127167', 2, 700, 1400, 1000, 1, 2, '2023-04-17 19:32:04'),
(391, 13, 0, '0', 0, 'RT17042308187628', 3, 600, 1800, 750, 1, 2, '2023-04-17 19:32:56'),
(392, 16, 0, '0', 0, 'RT17042309127654', 3, 150, 450, 300, 1, 2, '2023-04-17 20:01:06'),
(393, 12, 0, '0', 0, 'RT23042302122518', 5, 700, 3500, 2250, 1, 2, '2023-04-23 13:15:27'),
(394, 18, 0, '0', 0, 'RT23042304148310', 2, 700, 1400, 1000, 1, 2, '2023-04-23 15:57:52'),
(397, 13, 0, '0', 0, 'RT24042310157170', 3, 600, 1800, 750, 1, 0, '2023-04-24 21:44:49'),
(398, 14, 0, '0', 0, 'RT28042309114491', 1, 5000, 5000, 3200, 1, 2, '2023-04-28 20:32:13'),
(399, 18, 0, '0', 0, 'RT28042310154751', 1, 700, 700, 500, 1, 0, '2023-04-28 21:30:41'),
(405, 13, 0, '0', 0, 'RT290423054367492', 2, 600, 1200, 500, 43, 0, '2023-04-29 16:13:06'),
(406, 13, 0, '0', 0, 'RT290423054382408', 1, 600, 600, 250, 43, 0, '2023-04-29 16:18:17'),
(408, 13, 0, '0', 0, 'RT290423054345253', 1, 600, 600, 250, 43, 0, '2023-04-29 16:21:36'),
(411, 13, 0, '0', 0, 'RT290423054321482', 12, 600, 7200, 3000, 43, 0, '2023-04-29 16:27:28'),
(413, 13, 0, '0', 0, 'RT290423054316388', 14, 500, 7000, 3500, 43, 2, '2023-04-29 16:32:05'),
(414, 13, 0, '0', 0, 'RT290423054386208', 14, 500, 7000, 3500, 43, 2, '2023-04-29 16:32:49'),
(416, 16, 0, '0', 0, 'RT290423064358883', 1, 150, 150, 100, 43, 0, '2023-04-29 17:49:50'),
(417, 16, 0, '0', 0, 'RT290423064315751', 1, 150, 150, 100, 43, 2, '2023-04-29 17:53:47'),
(418, 13, 0, '0', 0, 'RT290423064315751', 2, 600, 1200, 500, 43, 2, '2023-04-29 17:53:55'),
(419, 13, 0, '0', 0, 'RT290423064384118', 1, 600, 600, 250, 43, 2, '2023-04-29 17:56:18'),
(420, 15, 0, '0', 0, 'RT290423064384118', 1, 150, 150, 100, 43, 2, '2023-04-29 17:56:22'),
(421, 15, 0, '0', 0, 'RT290423064386594', 1, 150, 150, 100, 43, 2, '2023-04-29 17:58:41'),
(422, 18, 0, '0', 0, 'RT290423064386594', 1, 700, 700, 500, 43, 2, '2023-04-29 17:58:47'),
(423, 14, 0, '0', 0, 'RT290423064386594', 1, 5000, 5000, 3200, 43, 2, '2023-04-29 17:58:51'),
(424, 13, 0, '0', 0, 'RT290423074354738', 1, 600, 600, 250, 43, 2, '2023-04-29 18:00:37'),
(425, 19, 0, '0', 0, 'RT290423074354738', 1, 800, 800, 500, 43, 2, '2023-04-29 18:00:42'),
(426, 12, 0, '0', 0, 'RT290423074325042', 1, 700, 700, 450, 43, 2, '2023-04-29 18:03:02'),
(427, 13, 0, '0', 0, 'RT290423074325042', 1, 600, 600, 250, 43, 2, '2023-04-29 18:03:08'),
(428, 12, 0, '0', 0, 'RT290423074365099', 1, 700, 700, 450, 43, 2, '2023-04-29 18:03:58'),
(429, 13, 0, '0', 0, 'RT290423074365099', 1, 600, 600, 250, 43, 2, '2023-04-29 18:04:05'),
(430, 12, 0, '0', 0, 'RT290423074317107', 1, 700, 700, 450, 43, 2, '2023-04-29 18:04:28'),
(431, 13, 0, '0', 0, 'RT290423074317107', 1, 600, 600, 250, 43, 2, '2023-04-29 18:04:33'),
(432, 12, 0, '0', 0, 'RT290423074375146', 1, 700, 700, 450, 43, 2, '2023-04-29 18:05:56'),
(433, 13, 0, '0', 0, 'RT290423074375146', 1, 600, 600, 250, 43, 2, '2023-04-29 18:06:00'),
(434, 18, 0, '0', 0, 'RT30042306151755', 1, 700, 700, 500, 1, 0, '2023-04-30 17:30:04'),
(435, 13, 0, '0', 0, 'RT02052309118776', 1, 600, 600, 250, 1, 0, '2023-05-02 08:50:52'),
(436, 12, 0, '0', 0, 'RT02052309144591', 1, 700, 700, 450, 1, 0, '2023-05-02 08:52:11'),
(440, 12, 0, '0', 0, 'RT10052311123076', 1, 700, 700, 450, 1, 2, '2023-05-10 22:04:20'),
(441, 12, 0, '0', 0, 'RT10052311181647', 1, 700, 700, 450, 1, 2, '2023-05-10 22:05:17'),
(442, 12, 0, '0', 0, 'RT10052311181604', 1, 700, 700, 450, 1, 2, '2023-05-10 22:06:03'),
(443, 12, 0, '0', 0, 'RT10052311144849', 1, 700, 700, 450, 1, 2, '2023-05-10 22:07:31'),
(444, 15, 0, '0', 0, 'RT10052311144849', 1, 150, 150, 100, 1, 2, '2023-05-10 22:07:38'),
(446, 18, 0, '0', 0, 'RT10052311138915', 1, 700, 700, 500, 1, 2, '2023-05-10 22:09:03'),
(447, 14, 0, '0', 0, 'RT10052311164857', 1, 5000, 5000, 3200, 1, 2, '2023-05-10 22:09:45'),
(448, 12, 0, '0', 0, 'RT10052311170720', 1, 700, 700, 450, 1, 2, '2023-05-10 22:17:04'),
(449, 12, 0, '0', 0, 'RT10052311161080', 1, 700, 700, 450, 1, 2, '2023-05-10 22:20:41'),
(450, 12, 0, '0', 0, 'RT10052311111672', 1, 700, 700, 450, 1, 2, '2023-05-10 22:22:11'),
(452, 12, 0, '0', 0, 'RT12052312158401', 1, 700, 700, 450, 1, 0, '2023-05-11 23:55:15'),
(454, 14, 0, '0', 0, 'RT12052312158401', 1, 5000, 5000, 3200, 1, 0, '2023-05-11 23:57:10'),
(456, 13, 0, '0', 0, 'RT24052307168711', 1, 600, 600, 250, 1, 0, '2023-05-24 18:06:47'),
(457, 13, 0, '0', 0, 'RT24052307135769', 1, 600, 600, 250, 1, 0, '2023-05-24 18:14:21'),
(459, 18, 0, '0', 0, 'RT25052311135372', 1, 700, 700, 500, 1, 2, '2023-05-25 10:52:25'),
(460, 18, 0, '0', 0, 'RT25052311136962', 1, 700, 700, 500, 1, 2, '2023-05-25 10:53:32'),
(461, 15, 0, '0', 0, 'RT25052311158698', 3, 150, 450, 300, 1, 2, '2023-05-25 10:54:55'),
(464, 14, 0, '0', 0, 'RT25052312184508', 1, 5000, 5000, 3200, 1, 2, '2023-05-25 11:14:01'),
(465, 14, 0, '0', 0, 'RT25052312183403', 1, 5000, 5000, 3200, 1, 2, '2023-05-25 11:34:23'),
(466, 14, 0, '0', 0, 'RT25052312185647', 1, 5000, 5000, 3200, 1, 2, '2023-05-25 11:37:17'),
(467, 14, 0, '0', 0, 'RT25052312187568', 1, 5000, 5000, 3200, 1, 2, '2023-05-25 11:57:27'),
(468, 14, 0, '0', 0, 'RT25052312176611', 1, 5000, 5000, 3200, 1, 2, '2023-05-25 11:59:32'),
(469, 19, 0, '0', 0, 'RT25052312176611', 1, 800, 800, 500, 1, 2, '2023-05-25 11:59:37'),
(470, 13, 0, '0', 0, 'RT25052301129151', 1, 600, 600, 250, 1, 0, '2023-05-25 12:13:47'),
(471, 13, 0, '0', 0, 'RT25052301115782', 1, 600, 600, 250, 1, 0, '2023-05-25 12:18:21'),
(472, 13, 0, '0', 0, 'RT25052301118987', 3, 600, 1800, 750, 1, 2, '2023-05-25 12:19:39'),
(473, 13, 0, '0', 0, 'RT25052305153041', 1, 600, 600, 250, 1, 2, '2023-05-25 16:45:32'),
(475, 15, 0, '0', 0, 'RT25052305157405', 4, 150, 600, 400, 1, 2, '2023-05-25 16:48:20'),
(476, 13, 0, '0', 0, 'RT25052305190457', 2, 600, 1200, 500, 1, 2, '2023-05-25 16:50:21'),
(477, 14, 0, '0', 0, 'TR010623081353211', 1, 5000, 5000, 3200, 1, 0, '2023-06-01 19:17:48'),
(478, 16, 1, '0', 0, 'RT060623061899381', 2, 150, 300, 200, 1, 0, '2023-06-06 17:33:28'),
(479, 16, 1, '0', 0, 'RT060623071740211', 1, 150, 150, 100, 1, 2, '2023-06-06 18:27:32'),
(480, 16, 1, '0', 0, 'RT060623071415151', 1, 150, 150, 100, 1, 2, '2023-06-06 18:30:43'),
(481, 13, 2, '0', 0, 'RT0606230743669762', 1, 600, 600, 250, 43, 1, '2023-06-06 18:45:21'),
(482, 16, 1, '0', 0, 'RT060623071125101', 1, 150, 150, 100, 1, 1, '2023-06-06 18:47:50'),
(485, 13, 2, '0', 0, 'RT0706230243213622', 1, 600, 600, 250, 43, 2, '2023-06-07 13:29:44'),
(486, 18, 2, '0', 0, 'RT0706230243976842', 1, 800, 800, 500, 43, 1, '2023-06-07 13:34:19'),
(489, 16, 1, '0', 0, 'RT070623041501801', 1, 150, 150, 100, 1, 2, '2023-06-07 15:44:59'),
(490, 19, 1, 'Retail', 0, 'RT090623021367321', 1, 800, 800, 500, 1, 2, '2023-06-09 13:47:06'),
(491, 16, 1, 'Wholesale', 2, 'WS090623031508701', 1, 120, 120, 100, 1, 0, '2023-06-09 14:02:42'),
(492, 19, 1, 'Wholesale', 2, 'WS090623031508701', 1, 700, 700, 500, 1, 0, '2023-06-09 14:03:31'),
(495, 18, 1, 'Retail', 0, 'RT090623041923861', 1, 800, 800, 500, 1, 0, '2023-06-09 15:55:49'),
(496, 18, 1, 'Wholesale', 2, 'WS090623051292061', 1, 650, 650, 500, 1, 2, '2023-06-09 16:32:31'),
(497, 18, 1, 'Retail', 0, 'RT090623051729921', 1, 800, 800, 500, 1, 0, '2023-06-09 16:41:58'),
(498, 18, 1, 'Wholesale', 2, 'WS090623051982631', 1, 650, 650, 500, 1, 0, '2023-06-09 16:42:09'),
(499, 16, 1, 'Wholesale', 2, 'WS100623021806181', 1, 120, 120, 100, 1, 0, '2023-06-10 13:33:06'),
(500, 16, 1, 'Wholesale', 2, 'WS100623021399771', 1, 120, 120, 100, 1, 2, '2023-06-10 13:33:38'),
(501, 14, 1, 'Wholesale', 3, 'WS100623021969111', 1, 5000, 5000, 3200, 1, 2, '2023-06-10 13:33:55'),
(504, 18, 2, 'Retail', 0, 'RT1006230343156632', 1, 800, 800, 500, 43, 2, '2023-06-10 14:02:18'),
(505, 14, 1, 'Retail', 0, 'RT100623041402131', 2, 5000, 10000, 6400, 1, 2, '2023-06-10 15:03:53'),
(506, 16, 1, 'Retail', 0, 'RT100623041715881', 3, 150, 450, 300, 1, 2, '2023-06-10 15:20:33'),
(507, 14, 1, 'Retail', 0, 'RT100623041715881', 1, 5000, 5000, 6400, 1, 2, '2023-06-10 15:20:51'),
(508, 13, 2, 'Retail', 0, 'RT1006230643560722', 1, 600, 600, 250, 43, 2, '2023-06-10 17:01:22'),
(509, 21, 1, 'Retail', 0, 'RT100623061918431', 1, 500, 500, 250, 1, 2, '2023-06-10 17:10:03'),
(510, 20, 1, 'Retail', 0, 'RT100623061285061', 2, 100, 200, 90, 1, 2, '2023-06-10 17:10:17'),
(512, 13, 1, 'Retail', 0, 'RT110623091480941', 1, 600, 600, 500, 1, 2, '2023-06-11 08:59:44'),
(513, 13, 1, 'Wholesale', 3, 'WS110623101523301', 1, 450, 450, 500, 1, 2, '2023-06-11 09:07:43'),
(514, 18, 1, 'Retail', 0, 'RT110623101902861', 1, 800, 800, 500, 1, 2, '2023-06-11 09:16:34'),
(516, 16, 1, 'Retail', 0, 'RT110623101526521', 1, 150, 150, 300, 1, 2, '2023-06-11 09:19:31'),
(517, 16, 2, 'Retail', 0, 'RT1206231143609122', 1, 150, 150, 100, 43, 2, '2023-06-12 10:04:13'),
(518, 13, 2, 'Retail', 0, 'RT1206231143609122', 1, 600, 600, 250, 43, 2, '2023-06-12 10:04:17'),
(521, 14, 1, 'Wholesale', 3, 'WS120623101745661', 2, 5000, 10000, 6400, 1, 2, '2023-06-12 21:59:59'),
(522, 16, 1, 'Retail', 0, 'RT150623121446571', 2, 150, 300, 200, 1, 2, '2023-06-15 11:59:51'),
(523, 18, 1, 'Retail', 0, 'RT150623121446571', 2, 800, 1600, 1000, 1, 2, '2023-06-15 12:00:27'),
(524, 13, 1, 'Retail', 0, 'RT150623011846881', 1, 600, 600, 250, 1, 0, '2023-06-15 12:35:08'),
(525, 14, 1, 'Wholesale', 2, 'WS170623111266251', 1, 5000, 5000, 3200, 1, 2, '2023-06-17 22:53:38'),
(526, 18, 1, 'Retail', 0, 'RT210623071443351', 2, 800, 1600, 1000, 1, 2, '2023-06-21 18:10:06'),
(527, 16, 1, 'Wholesale', 3, 'WS210623071235661', 1, 120, 120, 100, 1, 0, '2023-06-21 18:14:10'),
(528, 13, 1, 'Retail', 0, 'RT300623051151441', 3, 500, 1500, 750, 1, 2, '2023-06-30 16:35:33'),
(529, 18, 1, 'Retail', 0, 'RT070723031978591', 1, 800, 800, 500, 1, 2, '2023-07-07 14:37:24'),
(530, 16, 1, 'Retail', 0, 'RT070723031783281', 2, 150, 300, 200, 1, 2, '2023-07-07 14:39:29'),
(531, 13, 1, 'Wholesale', 2, 'WS180723111343911', 1, 6000, 6000, 250, 1, 2, '2023-07-18 10:27:29'),
(532, 14, 1, 'Retail', 0, 'RT180723111435181', 1, 5000, 5000, 3200, 1, 0, '2023-07-18 10:32:55'),
(533, 13, 1, 'Retail', 0, 'RT180723111984001', 1, 600, 600, 250, 1, 0, '2023-07-18 10:40:41'),
(534, 14, 1, 'Retail', 0, 'RT0408231244117021', 5, 5000, 25000, 16000, 44, 2, '2023-08-03 23:22:01'),
(538, 16, 1, 'Retail', 0, 'RT0408231244342711', 1, 150, 150, 100, 44, 2, '2023-08-03 23:25:13'),
(539, 24, 1, 'Retail', 0, 'RT090923121209471', 24, 120, 2880, 2400, 1, 0, '2023-09-09 11:02:31'),
(540, 19, 1, 'Retail', 0, 'RT130923111916581', 1, 800, 800, 500, 1, 0, '2023-09-13 22:32:18'),
(542, 14, 1, 'Retail', 0, 'RT11309231152051', 1, 5000, 5000, 3200, 1, 2, '2023-09-13 22:44:23'),
(543, 15, 1, 'Retail', 0, 'RT140923121639941', 1, 150, 150, 100, 1, 1, '2023-09-13 23:01:21'),
(544, 16, 1, 'Retail', 0, 'RT140923121292691', 1, 150, 150, 100, 1, 2, '2023-09-13 23:10:16'),
(545, 18, 1, 'Wholesale', 3, 'WS114092312332901', 1, 650, 650, 500, 1, 2, '2023-09-13 23:33:09'),
(547, 14, 1, 'Wholesale', 2, 'WS114092303268831', 1, 5000, 5000, 3200, 1, 2, '2023-09-14 14:21:16'),
(548, 12, 1, 'Wholesale', 2, 'WS114092307027421', 20, 500, 10000, 9000, 1, 2, '2023-09-14 18:48:36'),
(549, 16, 1, 'Wholesale', 2, 'WS114092307027421', 5, 120, 600, 500, 1, 2, '2023-09-14 18:48:49'),
(550, 15, 1, 'Wholesale', 2, 'WS114092307027421', 4, 120, 480, 400, 1, 2, '2023-09-14 18:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `return_id` int(11) NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returned_by` int(11) NOT NULL,
  `return_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_returns`
--

INSERT INTO `sales_returns` (`return_id`, `invoice`, `store`, `item`, `quantity`, `amount`, `reason`, `returned_by`, `return_date`) VALUES
(7, '', 0, 12, 2, 1400, '', 1, '2023-01-09 22:49:40'),
(8, '', 0, 12, 1, 700, '', 1, '2023-01-09 22:51:20'),
(15, '', 0, 12, 1, 700, '', 1, '2023-01-09 23:10:13'),
(16, '', 0, 12, 1, 700, '', 1, '2023-01-09 23:11:39'),
(17, '', 0, 16, 2, 300, 'Wrong Input', 1, '2023-01-09 23:33:57'),
(18, 'RT00135633250', 0, 15, 1, 150, 'Item Testing', 1, '2023-01-10 21:12:07'),
(19, 'RT00135633250', 0, 15, 1, 150, 'Just Testing', 1, '2023-01-10 21:15:35'),
(20, 'RT05022305187144', 0, 14, 1, 5000, 'Test', 1, '2023-02-05 17:28:40'),
(21, 'RT100223084315170', 0, 12, 2, 1400, 'Wrong Entry', 43, '2023-02-10 20:30:05'),
(22, 'RT100223084394065', 0, 12, 1, 700, 'Www', 43, '2023-02-10 20:45:47'),
(23, 'RT19022302139761', 0, 18, 2, 1400, '3', 1, '2023-02-19 14:41:21'),
(24, 'RT19022301173072', 0, 12, 2, 1400, 'Test', 1, '2023-02-19 14:44:18'),
(25, 'RT19022302139761', 0, 14, 1, 5000, '2', 1, '2023-02-19 14:55:46'),
(26, 'RT070623021495121', 1, 19, 1, 800, 'Wrong Entry', 1, '2023-06-07 15:26:42'),
(27, 'RT070623011378641', 1, 16, 1, 150, 'Test', 1, '2023-06-07 15:37:36'),
(28, 'RT070623041266461', 1, 18, 1, 800, 'Testing Again', 1, '2023-06-07 15:42:39'),
(29, 'RT070623041816971', 1, 16, 1, 150, 'Yetyughjb', 1, '2023-06-07 15:43:33'),
(30, 'RT100623041715881', 1, 14, 1, 5000, 'Mistake', 1, '2023-06-10 18:27:52'),
(31, 'RT110623091480941', 1, 13, 1, 600, 'Test', 1, '2023-06-11 09:00:21'),
(32, 'WS110623101523301', 1, 13, 1, 450, 'Test Again', 1, '2023-06-11 09:08:19'),
(33, 'RT110623101131631', 1, 16, 3, 450, '1', 1, '2023-06-11 09:17:26'),
(34, 'RT110623101526521', 1, 16, 1, 150, 'Reddff', 1, '2023-06-11 09:19:51'),
(35, 'RT110623101526521', 1, 16, 1, 150, 'Jhjhjhk', 1, '2023-06-11 09:21:58'),
(36, 'RT110623091197451', 1, 20, 2, 200, '1', 1, '2023-06-11 16:10:30'),
(37, 'WS120623101546801', 1, 14, 2, 10000, 'Hghjggh', 1, '2023-06-12 21:41:24'),
(38, 'WS120623101285691', 1, 14, 2, 10000, '2hjk', 1, '2023-06-12 21:59:44'),
(39, 'RT11309231195401', 1, 13, 1, 600, '1', 1, '2023-09-13 23:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `staff_name`, `phone_number`, `home_address`, `created`) VALUES
(1, 'Paul Ikpefua', '08035716496', '23 Sapele Road', '2022-12-12 13:23:51'),
(2, 'Jerome Boateng', '0807766609090', '24 Sapele Road', '2022-12-12 13:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `adjust_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `adjusted_by` int(11) NOT NULL,
  `previous_qty` int(11) NOT NULL,
  `new_qty` int(11) NOT NULL,
  `adjust_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_adjustments`
--

INSERT INTO `stock_adjustments` (`adjust_id`, `item`, `store`, `adjusted_by`, `previous_qty`, `new_qty`, `adjust_date`) VALUES
(6, 14, 1, 1, 5, 10, '2023-06-01 17:22:23'),
(7, 14, 1, 1, 4, 0, '2023-06-01 17:49:14'),
(8, 14, 1, 1, 5, 10, '2023-06-01 17:51:09'),
(9, 16, 1, 1, 9, 20, '2023-06-04 13:31:49'),
(10, 18, 1, 1, 2, 10, '2023-06-10 13:24:22'),
(11, 14, 1, 1, 2, 21, '2023-06-10 13:24:29'),
(12, 14, 1, 1, 14, 13, '2023-07-04 12:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `store` varchar(124) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `company`, `store`, `store_address`, `phone_number`, `date_created`) VALUES
(1, 1, 'Sales Store', '42 Pz road, off sapele road, Benin city', '07068897068, 07057456881', '2023-04-23 15:36:25'),
(2, 1, 'Warehouse', '23 test street benin', '09889000', '2023-05-30 19:54:43'),
(3, 1, 'PZ Road', '38 PZ road, Besides Verofy Schools, Off Sapel road', '07033348221', '2023-06-25 13:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `sub_menu_id` int(11) NOT NULL,
  `menu` int(11) NOT NULL,
  `sub_menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`sub_menu_id`, `menu`, `sub_menu`, `url`) VALUES
(1, 1, 'Add Users', 'add_user'),
(2, 1, 'Disable User', 'disable_user'),
(3, 1, 'Activate User', 'activate_user'),
(4, 1, 'Reset Password', 'reset_password'),
(5, 1, 'Add Category', 'add_department'),
(6, 1, 'Add Sub-category', 'add_category'),
(7, 1, 'Add Items', 'add_item'),
(8, 1, 'Modify Item Name', 'modify_item'),
(9, 1, 'Add Bank', 'add_bank'),
(10, 1, 'Manage Item Prices', 'item_price'),
(11, 1, 'Add Remove Reasons', 'add_remove_reasons'),
(12, 2, 'Direct Sales', 'direct_sales'),
(13, 2, 'Sales Order', 'sales_order'),
(14, 2, 'Post Sales Order', 'post_sales_order'),
(15, 2, 'Sales Return', 'sales_return'),
(16, 2, 'Reprint Receipt', 'print_receipt'),
(17, 3, 'Set Reorder Level', 'reorder_level'),
(18, 3, 'Stock Balance', 'stock_balance'),
(19, 3, 'Stockin Purchases', 'stockin_purchase'),
(20, 3, 'Add Supplier', 'add_vendor'),
(21, 3, 'Adjust Quantity', 'stock_adjustment'),
(22, 3, 'Remove Item', 'remove_item'),
(23, 3, 'Adjust Expiration', 'adjust_expiration'),
(24, 4, 'Add Expense Head', 'add_exp_head'),
(25, 4, 'Post Expense', 'post_expense'),
(26, 5, 'Item List', 'item_list'),
(27, 5, 'Bank List', 'bank_list'),
(28, 5, 'List Of Suppliers', 'vendor_list'),
(29, 5, 'Sales Return Report', 'sales_return_report'),
(30, 5, 'Stock Adjustment Report', 'stock_adjustment_report'),
(31, 5, 'Item Removed Report', 'item_removed_report'),
(33, 5, 'Purchase Reports', 'purchase_reports'),
(34, 5, 'Out Of Stock', 'out_of_stock'),
(35, 5, 'Soon To Expire', 'expire_soon'),
(36, 5, 'Expired Items', 'expired_items'),
(37, 5, 'Reached Reorder Level', 'reached_reorder'),
(38, 5, 'Item History', 'item_history'),
(39, 5, 'Purchase By Item', 'purchase_by_item'),
(40, 5, 'Purchase Per Vendor', 'purchase_per_vendor'),
(41, 6, 'Sales Report', 'revenue_report'),
(42, 6, 'Cash Sales List', 'cash_list'),
(43, 6, 'POS Sales List', 'pos_list'),
(44, 6, 'Transfer Sales List', 'transfer_list'),
(45, 6, 'Cashier Report', 'cashier_report'),
(46, 6, 'Revenue By Category', 'revenue_by_category'),
(47, 6, 'Profit And Loss Statement', 'profit_and_loss'),
(48, 6, 'Expense Report', 'expense_report'),
(49, 5, 'Highest Selling Items', 'highest_selling'),
(50, 5, 'Fast Selling Items', 'fast_selling'),
(51, 1, 'Change Category', 'change_category'),
(52, 1, 'Update Item Barcode', 'update_barcode'),
(53, 3, 'Transfer Items', 'transfer_item'),
(54, 3, 'Pending Transfer', 'pending_transfer'),
(55, 3, 'Accept Items', 'accept_items'),
(56, 3, 'Returned Transfer', 'returned_transfer'),
(57, 5, 'Transferred Items Report', 'transfer_report'),
(58, 5, 'Accept Items Report', 'accept_report'),
(59, 3, 'All Store Balance', 'all_store_balance'),
(60, 2, 'Wholesale', 'wholesale'),
(61, 2, 'Wholesale Order', 'wholesale_order'),
(62, 1, 'Add Customer', 'add_customer'),
(63, 5, 'Customer List', 'customer_list'),
(64, 6, 'Retail Sales', 'retail_sales'),
(65, 6, 'Wholesale Report', 'wholesale_report'),
(66, 6, 'Customer Statement', 'customer_statement'),
(67, 6, 'Credit Sales List', 'credit_sales_list'),
(68, 6, 'Debtors Report', 'debtors_list'),
(69, 4, 'Pay Debt', 'pay_debt'),
(70, 6, 'Debt Payment Report', 'debt_payment_report'),
(71, 1, 'Add menu', 'add_menu'),
(72, 1, 'Add sub-menu', 'add_sub_menu'),
(73, 1, 'Edit Sub Menu', 'edit_sub_menu'),
(74, 1, 'Manage Profile', 'manage_profile'),
(75, 1, 'Add Store', 'add_store'),
(76, 1, 'Update Store Details', 'update_store'),
(77, 1, 'Add User Rights', 'add_rights'),
(78, 1, 'Delete Rights', 'delete_right'),
(79, 1, 'Edit Customer Info', 'edit_customer_info'),
(80, 4, 'Fund Wallet', 'fund_wallet'),
(81, 4, 'Reverse Deposit', 'reverse_deposit');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `transfer_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `from_store` int(11) NOT NULL,
  `to_store` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `expiration` date NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `accept_by` int(11) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`transfer_id`, `item`, `from_store`, `to_store`, `invoice`, `quantity`, `cost_price`, `expiration`, `transfer_status`, `posted_by`, `accept_by`, `post_date`) VALUES
(42, 16, 1, 2, 'TR04062312273193411', 1, 100, '2025-12-30', 2, 1, 43, '2023-06-04 11:27:46'),
(43, 19, 1, 2, 'TR04062312273193411', 1, 500, '2024-03-30', -2, 1, 1, '2023-06-04 11:27:52'),
(44, 13, 1, 2, 'TR11062310315466411', 2, 250, '2024-12-30', 2, 1, 43, '2023-06-11 09:31:51'),
(45, 13, 1, 2, 'TR17062311515012911', 4, 250, '2024-12-30', -2, 1, 1, '2023-06-17 22:52:03'),
(46, 13, 1, 2, 'TR30062305215245411', 3, 250, '2024-12-30', 2, 1, 43, '2023-06-30 16:22:13'),
(47, 23, 1, 2, 'TR04072303004901011', 10, 1500, '2026-03-30', 2, 1, 43, '2023-07-04 14:00:27'),
(48, 12, 1, 2, 'TR040823122938564144', 5, 450, '2025-12-30', 2, 44, 1, '2023-08-03 23:29:37'),
(51, 12, 1, 2, 'TR75809114092303581', 10, 450, '2025-12-30', 2, 1, 1, '2023-09-14 14:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `username`, `user_role`, `user_password`, `status`, `store`, `reg_date`) VALUES
(1, 'Administrator', 'Sysadmin', 'Admin', '$2y$10$dcUrnR/.PvfK7XeYcP60hOyW2qnPSSvEq/Wxee6lv5DETW8pbGXYu', 1, 1, '2022-09-27 13:47:21'),
(43, 'Kelly Ikpefua', 'Onostar', 'Cashier', '$2y$10$/E7gAsBvDMR.j.ctjI3tR.0Q2pRhOvpGzE/vGKqnptbArT4bEh.Gy', 0, 2, '2022-12-06 09:13:06'),
(44, 'User', 'User', 'Admin', '$2y$10$X0vbmCJmOIbhMgRKoZ4QbueRbR0AcmFkAGa.UIJH0LYoeyTHwwFyK', 0, 1, '2023-03-07 23:19:22'),
(45, 'Gazelle Classics', 'Gazelle', 'Sales Rep', '123', 0, 2, '2023-05-30 19:55:34'),
(46, 'Kenneth Okhuakhua', 'Ken', 'Cashier', '123', 0, 3, '2023-06-25 13:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor`, `contact_person`, `phone`, `email_address`, `created_date`) VALUES
(1, 'Oswin Supermarket', 'Mr Oswin', '07057456881', 'oswin@mail.com', '2022-12-10 11:20:54'),
(2, 'Druccicare Pharmacy', 'Pharm Chris Oisakede', '08076765445', 'druci@mail.com', '2022-12-10 11:26:07'),
(3, 'Anambra Supermarket', 'Anambra', '09000', 'ma@mail.com', '2023-01-09 21:24:12'),
(4, 'Initial Stock', 'Nil', '090909', 'nil', '2023-05-31 12:39:18'),
(5, 'K And K Enterprise', 'Kk Dwon', '090989878878', 'kmail@gmail.com', '2023-06-25 21:56:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `check_ins`
--
ALTER TABLE `check_ins`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_trail`
--
ALTER TABLE `customer_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debtors`
--
ALTER TABLE `debtors`
  ADD PRIMARY KEY (`debtor_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`deposit_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD PRIMARY KEY (`exp_head_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `multiple_payments`
--
ALTER TABLE `multiple_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_payments`
--
ALTER TABLE `other_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `remove_items`
--
ALTER TABLE `remove_items`
  ADD PRIMARY KEY (`remove_id`);

--
-- Indexes for table `remove_reasons`
--
ALTER TABLE `remove_reasons`
  ADD PRIMARY KEY (`remove_id`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`right_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`adjust_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`sub_menu_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `check_ins`
--
ALTER TABLE `check_ins`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_trail`
--
ALTER TABLE `customer_trail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `debtors`
--
ALTER TABLE `debtors`
  MODIFY `debtor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `deposit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `expense_heads`
--
ALTER TABLE `expense_heads`
  MODIFY `exp_head_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `multiple_payments`
--
ALTER TABLE `multiple_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `other_payments`
--
ALTER TABLE `other_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `remove_items`
--
ALTER TABLE `remove_items`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `remove_reasons`
--
ALTER TABLE `remove_reasons`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `right_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `adjust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `sub_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
