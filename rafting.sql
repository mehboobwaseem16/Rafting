-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2019 at 11:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rafting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'mehboob', 'waseem123', '2019-12-05 00:00:00', '2019-12-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET latin1 NOT NULL,
  `email` varchar(256) CHARACTER SET latin1 NOT NULL,
  `address` varchar(256) CHARACTER SET latin1 NOT NULL,
  `city` varchar(256) CHARACTER SET latin1 NOT NULL,
  `state` varchar(256) CHARACTER SET latin1 NOT NULL,
  `zipcode` varchar(256) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `city`, `state`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:26:02', '2019-12-05 04:26:02'),
(2, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:31:29', '2019-12-05 04:31:29'),
(3, 'kamran', 'hhh@gmail,com', 'shggjag1234sjkh', 'quetta', 'baloc', '85411', '2019-12-05 00:00:00', '2019-12-05 00:00:00'),
(4, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:35:19', '2019-12-05 04:35:19'),
(5, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:39:04', '2019-12-05 04:39:04'),
(6, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:41:14', '2019-12-05 04:41:14'),
(7, 'nomi', 'abc@gmail.com', 'shdgdh123465', 'qta', 'baloch', '78300', '2019-12-05 04:46:44', '2019-12-05 04:46:44'),
(8, 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', '2019-12-05 04:49:39', '2019-12-05 04:49:39'),
(9, 'babr', 'hhhh@gmail.com', 'undefined', 'søborg', 'kpk', '2860', '2019-12-05 04:58:36', '2019-12-05 04:58:36'),
(10, 'babr', 'hhhh@gmail.com', 'undefined', 'søborg', 'kpk', '2860', '2019-12-05 05:02:07', '2019-12-05 05:02:07'),
(11, 'babr', 'hhhh@gmail.com', 'Buddinge Hovedgade 142, 2860 Søborg', 'søborg', 'kpk', '2860', '2019-12-05 05:09:11', '2019-12-05 05:09:11'),
(12, 'babr', 'hhhh@gmail.com', 'Buddinge Hovedgade 142, 2860 Søborg', 'søborg', 'kpk', '2860', '2019-12-05 05:52:13', '2019-12-05 05:52:13'),
(13, '', '', '', '', '', '', '2019-12-05 05:56:10', '2019-12-05 05:56:10'),
(14, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 11:48:06', '2019-12-05 11:48:06'),
(15, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 12:17:35', '2019-12-05 12:17:35'),
(16, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 12:50:42', '2019-12-05 12:50:42'),
(17, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 12:52:42', '2019-12-05 12:52:42'),
(18, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 12:55:04', '2019-12-05 12:55:04'),
(19, 'kamran', 'abc@gmail.com', 'rawalpindi 1231', 'quetta', 'punjab', '87300', '2019-12-05 13:07:06', '2019-12-05 13:07:06'),
(20, 'babr', 'hhhh@gmail.com', 'Buddinge Hovedgade 142, 2860 Søborg', 'søborg', 'kpk', '2860', '2019-12-05 13:11:43', '2019-12-05 13:11:43');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
