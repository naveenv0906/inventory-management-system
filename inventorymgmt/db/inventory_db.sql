-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 05:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'new',
  `email` varchar(100) DEFAULT NULL,
  `current_orders` varchar(200) DEFAULT NULL,
  `shipping_address` varchar(300) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers_info`
--

INSERT INTO `customers_info` (`id`, `name`, `type`, `email`, `current_orders`, `shipping_address`, `avatar`) VALUES
(1, 'Priya', 'Regular', 'priya@gmail.com', '15 items', 'No:6/23, Gandhi street, Gujarat.', 'Customers/priya.png'),
(2, 'Fathima', 'New', 'fathima@gmail.com', '7 items', 'No:7/26, Nehru street, Delhi.', 'Customers/fathima.png'),
(3, 'Merlin', 'New', 'merlin@gmail.com', '10 items', 'No:3/41, Lakshmi Nagar, Karnataka.', 'Customers/merlin.png'),
(4, 'Prakash', 'Regular', 'prakash@gmail.com', '13 items', 'No:8/27, Meenakshi amman kovil street, Chennai.', 'Customers/prakash.png'),
(5, 'Vengat', 'new', 'vengat@gmail.com', '10 items', 'No: 3/56, Krishna nagar, Kerala.', 'Customers/vengat.png\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `bought`, `sold`, `image`, `created_at`, `updated_at`) VALUES
(12, 'AloeVera Gel', 59, 14, 'Uploads/aloe-removebg-preview.png', '2021-03-30 13:30:22', '2021-04-10 17:32:22'),
(14, 'Shampoo', 100, 37, 'Uploads/shampoo-removebg-preview.png', '2021-03-27 23:13:25', '2021-03-27 23:13:25'),
(19, 'Honey', 45, 4, 'Uploads/honey-removebg-preview.png', '2021-03-30 13:33:28', '2021-04-09 15:33:28'),
(20, 'Moisturizer', 100, 34, 'Uploads/cream-removebg-preview.png', '2021-03-30 13:34:01', '2021-03-30 13:34:01'),
(22, 'Hand Wash', 250, 130, 'Uploads/hand-removebg-preview.png', '2021-03-30 13:34:45', '2021-03-30 13:34:45'),
(23, 'Milk Powder', 40, 5, 'Uploads/milk-removebg-preview.png', '2021-03-30 13:35:07', '2021-03-30 13:35:07'),
(24, 'Soap Bar', 500, 238, 'Uploads/soap-removebg-preview.png', '2021-03-30 13:38:01', '2021-03-30 13:38:01'),
(28, 'Tooth Paste', 130, 35, 'Uploads/toothpaste-removebg-preview.png', '2021-03-30 15:16:45', '2021-03-30 15:16:45'),
(30, 'Sunscreen', 56, 11, 'Uploads/sun-removebg-preview.png', '2021-03-31 01:32:14', '2021-03-31 01:32:14'),
(31, 'Green Tea', 130, 45, 'Uploads/green-removebg-preview.png', '2021-03-31 01:43:42', '2021-04-08 11:43:42'),
(32, 'Glucose', 234, 43, 'Uploads/glucose-removebg-preview.png', '2021-03-31 01:45:21', '2021-03-31 01:45:21'),
(33, 'Body Lotion', 140, 46, 'Uploads/body-removebg-preview.png', '2021-04-04 23:08:38', '2021-04-04 23:08:38'),
(35, 'Pasta', 300, 120, 'Uploads/pasta-removebg-preview.jpeg', '2022-02-03 19:02:02', '2022-02-03 19:02:02'),
(36, 'Noodles', 200, 36, 'Uploads/noodles-removebg-preview.jpeg', '2022-02-03 19:12:14', '2022-02-03 19:12:14'),
(37, 'Butter', 350, 59, 'Uploads/butter-removebg-preview.jpeg', '2022-02-03 19:13:09', '2022-02-03 19:13:09'),
(38, 'Paneer', 100, 18, 'Uploads/paneer-removebg-preview.jpeg', '2022-02-03 19:14:12', '2022-02-03 19:14:12'),
(39, 'Babies Diaper', 400, 173, 'Uploads/babydiaper-removebg-preview.jpeg', '2022-02-03 19:15:08', '2022-02-03 19:15:08'),
(40, 'Detergent', 550, 341, 'Uploads/detergent-removebg-preview.jpeg', '2022-02-03 19:15:56', '2022-02-03 19:15:56'),
(41, 'Mosquito Repellant', 200, 27, 'Uploads/mosquitorepellant-removebg-preview.jpeg', '2022-02-03 19:17:04', '2022-02-03 19:17:04'),
(43, 'Agarbatti', 200, 47, 'Uploads/agarbatti-removebg-preview.jpeg', '2022-02-03 19:19:54', '2022-02-03 19:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(100) DEFAULT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `name`, `u_name`, `email`, `password`, `is_active`, `is_admin`, `avatar`, `last_login_time`, `created_at`) VALUES
(17, 'Vinoth kumar', 'vinoth', 'vinoth@gmail.com', '577dc75e07355a340ea1c8a57251b192', 1, 1, 'Users/lord ganesha.jpg', '2022-02-12 16:00:49', '2021-10-09 18:22:36'),
(18, 'Raja', 'raj', 'raja@gmail.com', '94de8e93b3b90b647a944e7abcbcf9a1', 1, 0, 'Users/lord krishna.jpg', '2022-02-03 14:29:12', '2022-02-01 20:19:01'),
(19, 'Hari Krishnan', 'hari', 'hari@gmail.com', '077785b96c0ccc38ed1e05def15ae84c', 1, 0, 'Users/poo.jpg', '2022-02-03 14:26:55', '2022-02-01 20:25:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_info`
--
ALTER TABLE `customers_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
