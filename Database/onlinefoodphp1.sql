-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2023 at 03:32 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '123', 'admin@mail.com', '2023-10-28 10:15:16'),
(2, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:17:49'),
(3, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:18:31'),
(4, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:20:22'),
(5, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:21:10'),
(6, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:21:38'),
(7, 'charuka chdra', 'ddd@gmail.com', '323424', '2023-10-30 15:21:42'),
(8, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(9, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(10, 'charuka chdra', '', '323424', '0000-00-00 00:00:00'),
(11, 'charuka chdra', '', '323424', '0000-00-00 00:00:00'),
(12, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(13, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(14, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(15, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00'),
(16, 'charuka chdra', 'ddd@gmail.com', '323424', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Chicken Rice', 'Hainanese chicken rice is a dish of poached chicken and seasoned rice, served with chilli sauce and usually with cucumber garnishes. ', '18000.00', '62908867a48e4.jpg'),
(2, 1, 'Chicken Kottu', 'Chopped flatbread mixed and mashed together with chicken and vegetables and lots of aromatic spices, this chicken kottu roti recipe is as delicious as it is', '1500.00', 'kotthu.jpeg'),
(3, 1, 'Chicken Noodles', 'up, Chicken Noodle Soup is simply made with egg noodles and bits of chicken cooked in a chicken stock', '700.00', 'ChickenNoodles.jpeg'),
(4, 1, 'Chicken Pasta', 'Chicken penne pasta is a quick and easy dinner that is delicious, creamy, and flavorful. Perfectly seared chicken is sliced and tossed into a creamy white', '800.00', 'ChickenPasta1.webp'),
(5, 2, 'Vegetable Fried Rice\n', 'Rice is fried along with simply vegetables, soy sauce, and occasionally with, in a dish known as vegetable fried rice.', '900.00', 'VegetableFriedRice.jpeg'),
(6, 3, 'Coca Cola', 'Coca Cola 2L', '420.00', 'CocaCola.jpeg.jpg'),
(7, 3, 'Water', '1L Water Bottle', '150.00', 'Water.jpg'),
(8, 2, 'Chicken Samosa', 'Chicken Samosa (3pcs)', '300.00', 'ChickenSamosa.jpeg'),
(9, 2, 'vegetable roti', '1 vegetable roti', '80.00', 'vegetableroti.jpeg'),
(10, 4, 'Fish Roll', 'Fish Roll (3 pcs)\n', '280.00', 'FishRoll.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `dish_category`
--

DROP TABLE IF EXISTS `dish_category`;
CREATE TABLE IF NOT EXISTS `dish_category` (
  `rs_id` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_category`
--

INSERT INTO `dish_category` (`rs_id`, `c_id`, `title`, `image`) VALUES
(1, 1, 'Chicken', 'chickendish.jpg'),
(2, 2, 'Vegetarian ', 'Vegetarian.jpg'),
(3, 3, 'Beverages', 'Beverages.jpeg'),
(4, 4, 'Short Eats', 'mutton_rolls.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `comment` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `comment`) VALUES
(1, 'chrk4.pro@gmail.com', 'bvn');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03'),
(13, 11, '', '', '2023-10-29 08:51:05'),
(14, 11, '', '', '2023-10-29 08:53:00'),
(15, 11, '', '', '2023-10-29 08:53:11'),
(16, 11, '', '', '2023-10-29 08:54:32'),
(17, 11, '', '', '2023-10-29 08:54:39'),
(18, 11, 'in process', 'on the way', '2023-10-29 08:54:53'),
(19, 11, '', '', '2023-10-29 09:06:59'),
(20, 11, '', '', '2023-10-29 09:07:28'),
(21, 11, '', '', '2023-10-29 09:50:01'),
(22, 11, 'closed', 'diliverd', '2023-10-29 09:50:11'),
(23, 11, '', '', '2023-10-29 09:54:54'),
(24, 11, '', '', '2023-10-29 09:56:20'),
(25, 14, '', '', '2023-10-29 09:56:39'),
(26, 14, '', '', '2023-10-29 09:57:08'),
(27, 14, 'in process', 'hh', '2023-10-29 09:57:22'),
(28, 11, '', '', '2023-10-29 09:57:39'),
(29, 11, 'closed', 'jjj', '2023-10-29 09:57:45'),
(30, 11, '', '', '2023-10-29 09:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

DROP TABLE IF EXISTS `tblbookings`;
CREATE TABLE IF NOT EXISTS `tblbookings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emailId` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phoneNumber` bigint DEFAULT NULL,
  `bookingDate` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bookingTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`id`, `fullName`, `emailId`, `phoneNumber`, `bookingDate`, `bookingTime`, `postingDate`) VALUES
(1, 'shakil', 'shakil@gmail.com', 1425362514, '2023-06-10', '14:00:00', '2023-05-26 23:04:18'),
(2, 'readOnlyTest', 'chrk4.pro@gmail.com', 3453534, '10/03/2023', '8 : 32 AM', '2023-10-31 03:04:33'),
(3, 'readOnlyTest', 'chrk4.pro@gmail.com', 3453534, '10/03/2023', '8 : 32 AM', '2023-10-31 03:05:48'),
(4, 'readOnlyTest', 'chrk4.pro@gmail.com', 3453534, '10/03/2023', '8 : 32 AM', '2023-10-31 03:06:51'),
(5, 'readOnlyTest', 'chrk4.pro@gmail.com', 3453534, '10/03/2023', '8 : 32 AM', '2023-10-31 03:07:15'),
(6, 'readOnlyTest', 'chrk4.pro@gmail.com', 3453534, '10/03/2023', '8 : 32 AM', '2023-10-31 03:08:18'),
(7, 'charuka chdra', 'ddd@gmail.com', 32543, '10/10/2023', '8 : 47 PM', '2023-10-31 12:28:04'),
(8, 'charuka chdra', 'ddd@gmail.com', 325434, '10/10/2023', '8 : 47 PM', '2023-10-31 12:28:57'),
(9, 'charuka chdra', 'ddd@gmail.com', 325434, '10/10/2023', '8 : 47 PM', '2023-10-31 12:29:27'),
(10, 'charuka chdra', 'ddd@gmail.com', 11111111111, '10/10/2023', '8 : 47 PM', '2023-10-31 12:29:37'),
(11, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:31:14'),
(12, '', '', 0, '', '', '2023-10-31 12:31:19'),
(13, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:31:51'),
(14, '', '', 0, '', '', '2023-10-31 12:32:22'),
(15, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:47'),
(16, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:48'),
(17, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:49'),
(18, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:49'),
(19, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:49'),
(20, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:50'),
(21, 'charuka chdra', 'ddd@gmail.com', 111122222, '10/10/2023', '8 : 47 PM', '2023-10-31 12:33:50'),
(22, 'charuka chdra', 'ddd@gmail.com', 0, '10/10/2023', '8 : 47 PM', '2023-10-31 12:34:41'),
(23, 'charuka chdra', 'ddd@gmail.com', 0, '10/10/2023', '8 : 47 PM', '2023-10-31 12:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(1, 'charuka', 'charuka', 'chandrsekara', 'charuka@gmial.com', '+94789108524', 'e2fc714c4727ee9395f324cd2e7f331f', 'thalapthptiya', '2023-10-23 03:08:33'),
(2, 'shakill', 'ahamad', 'ahamd', 'shakil@gmail.com', '+940789108523', 'bc28715006af20d0e961afd053a984d9', 'kolluptiya', '2023-10-23 03:08:50'),
(7, 'admin', 'Charuka', 'chandreskara', 'chrk4.pro@gmail.com', '+940789108527', '516a5fb4196ef6953e7a48e7326350b7', 'thalapathpitiya', '2023-10-23 03:07:49'),
(8, 'charu', 'charuka', 'chdra', 'ddd@gmail.com', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', 'colombo', '2023-10-23 04:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(13, 8, 'Chicken Kottu', 1, '1500.00', NULL, '2023-10-23 04:12:43'),
(14, 1, 'Vegetable Fried Rice\n', 1, '900.00', 'in process', '2023-10-29 09:57:22'),
(15, 1, 'Chicken Rice', 1, '18000.00', NULL, '2023-10-29 09:59:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
