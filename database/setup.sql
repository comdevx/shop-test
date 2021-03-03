-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Mar 03, 2021 at 07:31 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'et', 1, '1999-03-20 13:47:46', '1981-10-16 18:27:00'),
(2, 'et', 1, '1988-10-04 19:28:25', '1988-08-21 00:29:15'),
(3, 'optio', 1, '2010-03-30 19:59:31', '2019-02-15 05:17:30'),
(4, 'repudiandae', 0, '1986-05-24 18:51:40', '1981-03-16 17:44:33'),
(5, 'illum', 1, '2005-04-28 04:00:57', '2006-02-11 16:37:19'),
(6, 'perspiciatis', 0, '1974-06-02 11:56:49', '2018-10-22 12:05:50'),
(7, 'aut', 0, '2007-03-26 21:08:47', '1990-08-30 01:09:58'),
(8, 'sint', 1, '1982-07-12 04:22:23', '2019-03-30 22:49:22'),
(9, 'esse', 0, '2011-04-12 17:39:08', '1991-08-06 06:02:08'),
(10, 'vitae', 1, '1977-06-27 18:51:38', '2008-03-13 06:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `price`, `deleted`, `category_id`, `created_at`, `updated_at`) VALUES
(6, 'consequatur', 57, 46, 1, 1, '1975-12-08 13:33:45', '1988-08-25 03:16:15'),
(9, 'illum', 87, 41, 0, 4, '1976-11-27 10:05:11', '2001-03-02 10:42:42'),
(29, 'necessitatibus', 10, 32, 0, 6, '1994-11-03 21:23:50', '1985-03-06 23:26:23'),
(33, 'similique', 51, 21, 0, 8, '2018-09-20 01:41:24', '1990-02-25 04:17:58'),
(45, 'ea', 44, 14, 1, 8, '2003-05-11 09:01:24', '1999-11-24 12:45:06'),
(49, 'nostrum', 25, 11, 0, 4, '1978-01-25 16:58:09', '1989-05-17 12:37:34'),
(53, 'assumenda', 90, 99, 0, 10, '1980-09-07 02:04:00', '1998-05-23 01:50:25'),
(63, 'est', 42, 29, 0, 9, '1999-06-20 14:42:10', '1987-12-07 01:47:51'),
(68, 'accusamus', 46, 96, 0, 1, '1970-01-14 00:53:32', '2020-10-06 16:00:07'),
(80, 'dicta', 29, 84, 0, 10, '2002-10-30 20:09:29', '1985-05-16 07:38:41'),
(81, 'reiciendis', 86, 78, 1, 8, '1970-07-26 07:41:05', '1977-02-04 10:32:33'),
(94, 'dolores', 23, 15, 0, 4, '2008-05-28 07:56:08', '2012-08-20 12:10:40'),
(102, 'laboriosam', 84, 42, 1, 8, '2021-02-19 03:09:41', '2015-04-23 16:27:11'),
(107, 'magni', 52, 58, 0, 1, '1976-12-06 23:08:55', '2018-01-21 03:25:21'),
(108, 'consectetur', 30, 38, 1, 4, '2018-09-02 12:39:29', '2004-12-23 09:21:54'),
(119, 'eos', 72, 100, 0, 9, '1972-10-12 23:22:59', '2014-10-18 23:28:06'),
(126, 'numquam', 28, 20, 0, 3, '1998-04-10 12:34:39', '2002-11-12 22:07:41'),
(127, 'facere', 24, 28, 1, 6, '1979-03-14 01:03:38', '1997-07-28 03:51:55'),
(135, 'sed', 27, 79, 0, 4, '2006-10-09 10:22:45', '1991-12-20 19:11:12'),
(148, 'at', 85, 18, 1, 5, '2003-10-06 05:22:56', '2008-05-28 19:39:27'),
(150, 'earum', 93, 85, 0, 2, '1983-11-17 23:25:12', '1994-08-27 02:59:58'),
(189, 'neque', 82, 85, 1, 1, '2018-03-07 01:15:02', '2009-09-15 17:01:51'),
(190, 'alias', 20, 51, 1, 3, '2000-06-03 14:33:24', '2011-12-26 01:33:45'),
(232, 'excepturi', 29, 69, 1, 6, '2008-10-04 04:41:31', '2017-07-13 11:13:52'),
(244, 'nulla', 72, 47, 0, 7, '1985-10-26 14:45:34', '2007-09-02 21:55:54'),
(249, 'dolorem', 61, 30, 1, 9, '2014-07-21 02:05:06', '1990-01-10 09:30:11'),
(257, 'libero', 86, 100, 1, 9, '1995-08-18 05:20:41', '1990-10-09 16:51:49'),
(267, 'expedita', 82, 93, 0, 2, '2020-01-27 00:38:20', '2011-04-25 03:00:53'),
(269, 'optio', 47, 73, 0, 4, '1970-09-03 08:25:24', '1992-07-12 09:01:15'),
(275, 'quia', 28, 34, 1, 6, '1982-02-27 13:08:37', '2017-02-13 14:22:15'),
(287, 'quo', 28, 79, 0, 9, '1992-10-20 14:06:13', '2000-07-10 15:08:45'),
(296, 'sint', 76, 16, 0, 9, '2008-09-27 04:12:26', '2012-06-07 12:32:12'),
(308, 'aliquid', 13, 10, 1, 6, '2009-06-04 01:00:17', '2010-01-20 11:39:14'),
(324, 'voluptatibus', 86, 40, 0, 7, '1991-05-01 18:47:42', '1981-08-09 07:17:36'),
(327, 'tenetur', 51, 30, 0, 5, '2011-03-23 21:19:17', '2008-01-08 00:21:44'),
(329, 'nobis', 80, 54, 0, 10, '1971-06-13 06:16:50', '1997-07-10 06:49:39'),
(352, 'adipisci', 10, 59, 1, 8, '1995-09-13 19:47:21', '1971-06-13 07:42:34'),
(372, 'dolorum', 100, 32, 0, 10, '2009-05-09 23:16:09', '2008-10-02 23:20:02'),
(384, 'eaque', 20, 16, 0, 1, '1976-01-08 14:17:35', '2016-01-18 09:48:03'),
(386, 'ipsam', 10, 65, 0, 8, '1979-06-14 15:14:18', '2000-09-05 12:18:44'),
(413, 'animi', 34, 98, 0, 6, '1985-11-29 18:53:20', '1971-11-11 22:17:06'),
(442, 'magnam', 41, 57, 1, 2, '2019-07-30 06:48:30', '1987-07-17 08:47:54'),
(476, 'nam', 13, 34, 0, 5, '1999-10-12 12:26:46', '1981-03-25 00:17:23'),
(480, 'et', 34, 75, 1, 5, '2003-06-25 21:17:41', '1983-09-17 09:50:32'),
(481, 'autem', 55, 49, 1, 5, '1977-08-11 13:08:28', '2008-08-29 09:30:12'),
(483, 'modi', 84, 12, 1, 7, '1974-04-25 17:43:34', '2018-06-07 22:59:03'),
(503, 'aspernatur', 50, 34, 1, 10, '2012-12-21 08:06:24', '1982-08-19 21:29:43'),
(510, 'exercitationem', 79, 43, 0, 8, '2005-12-18 15:53:29', '2019-01-24 19:33:41'),
(517, 'dolor', 82, 42, 1, 7, '1992-01-05 08:00:00', '1979-08-15 15:36:26'),
(521, 'ad', 22, 20, 1, 6, '2006-05-31 12:28:13', '2015-08-09 23:50:55'),
(527, 'perspiciatis', 92, 33, 1, 9, '1996-08-25 16:48:02', '1982-11-09 07:17:22'),
(536, 'omnis', 83, 89, 0, 7, '1978-10-25 14:36:27', '2013-05-12 03:34:17'),
(537, 'laudantium', 73, 90, 1, 8, '2000-07-02 01:29:12', '2003-05-23 04:08:27'),
(550, 'iste', 94, 78, 1, 4, '2005-05-11 04:51:34', '1988-03-30 01:10:43'),
(586, 'vel', 22, 89, 0, 3, '1981-05-01 23:23:29', '1970-02-17 15:16:16'),
(587, 'molestiae', 66, 43, 0, 4, '1991-05-21 02:19:16', '2008-04-23 06:46:00'),
(607, 'ipsum', 30, 72, 1, 3, '2016-06-24 12:12:23', '1984-02-26 16:26:00'),
(611, 'beatae', 21, 49, 1, 6, '2002-01-25 22:13:37', '2014-05-06 20:25:52'),
(618, 'id', 34, 47, 1, 1, '1989-12-17 05:16:57', '2016-10-26 05:38:56'),
(621, 'velit', 83, 49, 0, 4, '2003-04-29 17:06:22', '1994-05-13 03:42:53'),
(631, 'ipsa', 54, 51, 1, 10, '2020-09-06 04:21:20', '1994-04-17 15:25:02'),
(641, 'quasi', 72, 68, 1, 8, '1975-06-17 15:24:59', '2003-08-30 22:28:42'),
(662, 'repudiandae', 87, 85, 0, 9, '1976-12-29 16:58:11', '2009-09-30 17:37:55'),
(672, 'molestias', 39, 29, 1, 3, '2008-12-21 09:25:22', '1995-06-06 17:59:29'),
(673, 'qui', 87, 29, 0, 8, '2016-07-12 14:22:08', '1983-04-13 18:17:13'),
(693, 'itaque', 72, 75, 0, 3, '2007-10-12 05:23:44', '1992-07-30 14:52:20'),
(694, 'voluptas', 56, 17, 1, 3, '2014-12-02 00:31:30', '2020-09-08 07:18:50'),
(699, 'facilis', 82, 57, 0, 6, '1974-01-31 17:05:50', '1999-01-24 02:03:07'),
(710, 'fuga', 45, 32, 0, 2, '2001-09-23 15:41:57', '1975-04-29 16:30:42'),
(716, 'impedit', 72, 50, 1, 1, '1977-12-07 17:24:44', '2006-09-04 03:51:10'),
(719, 'quaerat', 56, 21, 1, 1, '2001-11-05 07:08:00', '2015-03-20 14:24:55'),
(740, 'tempore', 16, 85, 1, 10, '2002-12-28 18:41:43', '1987-05-25 14:42:17'),
(753, 'maiores', 100, 91, 0, 3, '1997-09-01 08:42:11', '1990-07-21 09:22:57'),
(754, 'ducimus', 19, 61, 1, 6, '1992-10-01 00:37:31', '1980-10-14 03:36:40'),
(802, 'occaecati', 66, 76, 0, 1, '1992-03-30 15:09:09', '2006-02-27 00:17:03'),
(817, 'reprehenderit', 22, 43, 0, 9, '2001-04-04 19:03:41', '1994-07-17 00:00:21'),
(818, 'aperiam', 70, 41, 0, 7, '1978-09-04 08:26:53', '2008-02-15 09:13:57'),
(821, 'sapiente', 73, 40, 0, 2, '2000-08-19 19:31:27', '1987-12-26 19:15:56'),
(822, 'voluptatem', 86, 73, 0, 9, '1977-10-31 14:45:49', '2005-12-17 16:52:05'),
(827, 'eum', 57, 47, 0, 3, '2019-11-18 07:54:33', '1989-01-31 02:07:31'),
(834, 'repellat', 80, 81, 1, 9, '2016-05-07 02:39:32', '1993-06-06 11:29:42'),
(849, 'aliquam', 75, 23, 0, 9, '2004-12-21 19:20:27', '1976-10-04 16:48:12'),
(850, 'eius', 98, 98, 1, 3, '2010-12-11 17:41:35', '1992-04-12 23:05:15'),
(855, 'odio', 21, 15, 1, 10, '1984-07-08 03:03:27', '2000-08-26 02:35:21'),
(856, 'porro', 28, 39, 0, 9, '1976-12-19 00:19:52', '1999-12-04 18:56:26'),
(866, 'blanditiis', 58, 11, 1, 3, '2015-08-06 02:57:19', '1975-08-04 14:33:54'),
(879, 'officia', 24, 14, 0, 5, '1984-11-22 11:56:38', '1972-02-13 13:43:24'),
(896, 'quas', 59, 33, 0, 3, '2012-07-14 08:12:24', '1987-11-05 02:56:21'),
(901, 'non', 87, 34, 1, 6, '1976-11-26 15:21:24', '1988-03-20 22:00:50'),
(903, 'aut', 56, 34, 0, 8, '2004-02-10 14:19:28', '2016-10-15 13:04:25'),
(922, 'ut', 32, 33, 0, 3, '1983-04-24 13:16:07', '1979-09-26 11:24:37'),
(924, 'corrupti', 88, 61, 0, 9, '1996-07-19 01:47:29', '2021-01-18 14:43:23'),
(935, 'iure', 75, 25, 1, 10, '2006-09-02 19:44:14', '1973-12-31 16:05:07'),
(952, 'nihil', 56, 86, 1, 5, '2010-07-22 14:23:52', '1984-05-07 20:40:53'),
(956, 'saepe', 74, 36, 0, 6, '1995-06-06 07:16:07', '1975-03-23 03:44:31'),
(967, 'explicabo', 52, 91, 1, 6, '1990-02-11 08:10:26', '2010-07-23 14:39:17'),
(968, 'fugit', 70, 94, 0, 7, '1976-12-23 19:00:40', '2017-04-07 04:01:40'),
(982, 'voluptatum', 19, 96, 1, 3, '1970-07-24 11:59:50', '2008-03-10 06:28:55'),
(991, 'sit', 92, 99, 0, 4, '1989-08-25 16:43:31', '1971-07-14 13:18:40'),
(994, 'quam', 60, 42, 0, 1, '1977-12-15 00:39:07', '2004-08-25 09:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Juvenal', 1, '1978-02-24 16:30:44', '1979-06-03 11:37:18'),
(2, 'Devante', 1, '1993-04-02 06:14:35', '1980-02-27 19:03:29'),
(3, 'Milan', 1, '2003-12-12 14:56:14', '1986-12-14 23:36:26'),
(4, 'Stephan', 1, '1997-12-15 11:43:44', '1984-02-06 06:27:13'),
(5, 'Tobin', 1, '1972-10-22 18:56:29', '1997-05-23 12:56:53'),
(6, 'Marlene', 1, '2007-08-23 14:37:57', '2008-01-26 01:11:10'),
(7, 'Kim', 0, '1970-09-25 01:01:29', '1996-09-29 06:34:07'),
(8, 'Dashawn', 1, '2015-09-27 12:21:36', '1986-09-26 08:58:57'),
(9, 'Heather', 0, '1989-02-07 23:41:54', '2001-09-15 10:42:36'),
(10, 'Ricardo', 0, '1986-04-02 10:16:02', '1982-02-25 22:38:28'),
(11, 'Neil', 1, '2004-07-25 17:03:52', '2012-12-17 02:38:26'),
(12, 'Lindsay', 0, '2003-10-30 06:11:56', '1976-10-19 16:30:39'),
(13, 'Sarai', 1, '1974-02-20 10:30:56', '1992-08-24 10:51:53'),
(14, 'Marisa', 1, '2017-12-12 19:33:22', '2014-02-06 15:46:55'),
(15, 'Lula', 1, '1995-08-18 03:47:57', '1991-05-26 07:01:14'),
(16, 'Nya', 1, '1995-03-14 22:31:19', '2014-01-03 08:03:53'),
(17, 'Christophe', 0, '1990-03-23 00:22:32', '1984-09-26 20:45:35'),
(18, 'Cicero', 1, '1973-05-06 02:07:00', '2001-09-28 17:32:52'),
(19, 'Selina', 0, '2003-02-07 17:36:48', '2010-04-17 04:06:10'),
(20, 'Margarett', 1, '1979-07-18 11:53:41', '1985-08-28 09:05:59'),
(21, 'Glennie', 1, '1972-07-16 11:46:26', '1993-01-13 11:52:23'),
(22, 'Jessyca', 0, '2007-03-20 07:02:12', '1987-04-01 00:38:31'),
(23, 'Alessia', 0, '1982-12-05 06:15:32', '1971-04-04 23:09:51'),
(24, 'Stefan', 0, '2018-03-01 23:44:50', '2011-12-16 05:34:24'),
(25, 'Heloise', 1, '1988-08-22 20:10:14', '1997-03-11 07:15:45'),
(26, 'Hortense', 1, '2010-11-12 09:35:50', '2010-06-26 18:51:47'),
(27, 'Holden', 0, '1996-12-09 05:56:27', '2010-03-09 09:47:09'),
(28, 'Laurence', 0, '1994-01-25 04:03:46', '1971-08-10 14:20:09'),
(29, 'Kenyon', 0, '1987-11-01 11:55:06', '1993-04-04 23:30:00'),
(30, 'Gianni', 0, '1996-06-03 06:23:12', '2014-07-23 03:41:33'),
(31, 'Valentina', 0, '1994-08-06 04:06:58', '1984-07-13 10:35:39'),
(32, 'Stefanie', 1, '1973-11-10 09:52:04', '2011-07-13 01:21:19'),
(33, 'Hayden', 0, '2003-01-09 12:51:58', '2010-06-25 08:44:43'),
(34, 'Sage', 0, '1988-10-24 00:04:23', '2001-03-31 22:30:37'),
(35, 'Letha', 0, '1982-12-28 07:29:27', '2009-05-06 09:31:52'),
(36, 'Jewell', 1, '1991-11-08 21:13:39', '1972-08-07 16:32:37'),
(37, 'Ariel', 0, '2003-03-16 17:22:18', '2010-12-25 13:12:46'),
(38, 'Dejuan', 1, '2008-06-14 05:12:05', '2015-02-02 03:45:31'),
(39, 'Sharon', 1, '1993-03-02 23:39:23', '2016-09-19 13:46:54'),
(40, 'Rowan', 0, '2014-10-03 00:16:21', '2002-06-17 14:05:48'),
(41, 'Edwina', 1, '2002-12-25 19:20:01', '1972-10-08 08:12:34'),
(42, 'Margot', 0, '1978-08-09 12:16:30', '2016-06-24 05:08:55'),
(43, 'Hailie', 0, '1975-01-29 12:09:54', '2015-03-16 10:43:08'),
(44, 'Madilyn', 1, '1991-01-11 02:20:57', '2006-04-24 05:29:06'),
(45, 'Dayton', 1, '1999-07-29 11:55:16', '1997-06-27 02:04:54'),
(46, 'Hayden', 1, '2019-07-06 07:15:12', '2000-12-11 01:49:05'),
(47, 'Don', 1, '1976-12-27 02:55:21', '1997-12-02 08:56:57'),
(48, 'Meggie', 0, '1995-12-14 17:24:09', '2005-05-07 03:53:33'),
(49, 'Alene', 1, '2013-10-10 16:49:23', '1999-01-21 05:07:33'),
(50, 'Malachi', 0, '1981-06-15 14:53:01', '2014-05-25 21:07:12'),
(51, 'Aurelia', 1, '1983-02-25 02:09:16', '2001-12-19 14:26:03'),
(52, 'Zackary', 0, '2004-01-24 13:14:34', '1982-10-16 23:02:54'),
(53, 'Fleta', 0, '2019-08-22 07:50:33', '1973-10-19 21:56:30'),
(54, 'Verna', 1, '2003-10-21 15:34:46', '1982-07-25 10:20:03'),
(55, 'Antoinette', 1, '1984-06-21 09:30:18', '1991-11-14 16:48:44'),
(56, 'Lora', 0, '2010-02-08 23:01:51', '2002-12-30 00:55:25'),
(57, 'Nickolas', 1, '1981-05-21 06:39:50', '1993-10-19 16:02:36'),
(58, 'Robbie', 1, '1986-09-07 23:01:47', '1971-10-19 08:13:03'),
(59, 'Hubert', 0, '2013-08-02 22:05:19', '2002-03-27 01:28:05'),
(60, 'Travon', 0, '1980-01-27 08:26:54', '1988-08-02 20:20:42'),
(61, 'Pierre', 0, '1977-11-26 02:50:14', '1979-02-28 12:48:59'),
(62, 'Arjun', 0, '1984-10-03 15:27:19', '2001-01-06 11:05:34'),
(63, 'Angela', 0, '2003-08-20 10:19:41', '1994-08-30 14:07:08'),
(64, 'Randi', 1, '1995-06-18 00:37:12', '1974-07-07 02:52:07'),
(65, 'Nelda', 1, '1974-06-08 07:19:15', '1992-11-15 22:50:26'),
(66, 'Hillary', 0, '1975-01-10 22:11:35', '1999-02-08 01:19:47'),
(67, 'Euna', 1, '2016-06-08 04:36:33', '1987-11-05 10:35:08'),
(68, 'Bailey', 1, '1998-12-13 02:52:10', '2015-08-18 06:17:08'),
(69, 'Boyd', 0, '2015-09-04 11:07:04', '1985-09-24 17:31:57'),
(70, 'Shyann', 0, '1992-04-17 10:10:02', '2007-10-25 17:40:37'),
(71, 'Billy', 0, '1988-11-29 00:16:38', '1978-08-27 01:24:10'),
(72, 'Pearlie', 0, '2017-07-20 00:36:23', '2007-09-01 04:02:00'),
(73, 'Aliya', 0, '2012-01-30 16:32:30', '1999-07-21 13:14:59'),
(74, 'Jade', 1, '1988-12-18 19:58:00', '1997-09-25 16:49:48'),
(75, 'Jackson', 0, '1976-06-05 00:07:55', '1996-07-10 07:09:36'),
(76, 'Jarred', 0, '1997-12-05 21:10:25', '2017-03-07 05:38:40'),
(77, 'Jada', 1, '2017-03-03 21:57:31', '2014-06-03 20:55:51'),
(78, 'Malcolm', 1, '1988-09-17 14:16:58', '2008-05-14 18:35:17'),
(79, 'Victor', 1, '1977-12-31 23:41:26', '1987-08-10 22:58:38'),
(80, 'Kacey', 0, '1985-03-25 05:33:48', '1985-12-13 17:40:20'),
(81, 'Mariana', 0, '2007-04-09 01:53:39', '2000-10-13 10:01:47'),
(82, 'Lamar', 1, '1988-06-19 07:23:33', '2020-08-10 16:39:32'),
(83, 'Blaise', 0, '2010-01-31 14:12:44', '1979-01-24 13:24:11'),
(84, 'Belle', 0, '1973-01-04 15:48:48', '2012-12-03 17:29:26'),
(85, 'Fleta', 0, '1987-06-29 14:40:22', '2017-01-07 23:28:31'),
(86, 'Jessica', 1, '1990-09-27 10:37:25', '2009-07-04 13:21:44'),
(87, 'Betty', 1, '2010-10-20 21:34:21', '1998-03-30 22:49:52'),
(88, 'Kirsten', 1, '2017-08-04 17:02:11', '1986-03-27 11:02:27'),
(89, 'Yadira', 1, '1991-04-04 14:06:34', '1976-01-16 04:02:27'),
(90, 'Lucio', 1, '1970-05-28 07:19:41', '2011-04-28 22:04:06'),
(91, 'Ole', 1, '2013-03-06 07:10:06', '1982-12-07 13:05:01'),
(92, 'Margarett', 0, '1983-01-26 03:58:26', '1988-10-27 03:00:11'),
(93, 'Vida', 1, '2020-07-02 15:06:19', '1992-12-08 06:23:43'),
(94, 'Myra', 0, '2007-07-27 12:22:39', '2007-06-21 05:08:53'),
(95, 'Rosalyn', 1, '2006-12-03 07:42:15', '2015-11-01 03:15:37'),
(96, 'Lilyan', 1, '2000-03-26 01:12:56', '2020-01-29 15:43:31'),
(97, 'Robin', 0, '1973-06-17 13:35:10', '2006-05-29 07:31:18'),
(98, 'Davon', 0, '1977-01-03 15:42:27', '1970-02-06 08:32:01'),
(99, 'Ellie', 1, '1987-02-28 23:23:13', '1979-11-11 23:21:17'),
(100, 'Brock', 1, '2000-02-20 20:31:24', '2021-03-03 17:26:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
