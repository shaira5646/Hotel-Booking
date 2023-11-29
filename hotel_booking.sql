-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 07:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `own_name` varchar(50) DEFAULT NULL,
  `own_phone_number` varchar(15) DEFAULT NULL,
  `own_email` varchar(50) NOT NULL,
  `own_country` varchar(50) DEFAULT NULL,
  `own_contact_details` varchar(255) DEFAULT NULL,
  `room_id` varchar(20) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `own_name`, `own_phone_number`, `own_email`, `own_country`, `own_contact_details`, `room_id`, `booking_date`) VALUES
(1, 'Johnny Wise', '452-431-7021x42', 'jenniferscott@example.com', 'USA', '0773 Mcmillan Throughway\nNew Mackenzie, MO 19367', '2', '2023-11-28 23:46:58'),
(2, 'Sierra Griffin', '(728)774-1564', 'sroy@example.net', 'USA', '2879 Daniel Crossing\nLewisfort, CT 07083', '4', '2023-11-28 23:46:58'),
(3, 'Angela Wallace', '6728958144', 'joelcooper@example.com', 'USA', '2880 Ayala Mountains Apt. 162\nNorth William, LA 39478', '2', '2023-11-28 23:46:58'),
(4, 'Stanley Osborne', '(403)972-4537', 'fhudson@example.net', 'USA', '49695 Foley Track Suite 699\nAguilarhaven, PA 38279', '10', '2023-11-28 23:46:58'),
(5, 'Adam Wyatt', '633.213.7635', 'melissa45@example.org', 'USA', '630 Robinson Shoals Apt. 581\nMichealstad, WI 09652', '3', '2023-11-28 23:46:58'),
(6, 'Katie Simmons', '488-854-4604x23', 'amandastephens@example.com', 'USA', '56269 Barbara Forges Apt. 057\nNew Michael, KS 55004', '9', '2023-11-28 23:46:58'),
(7, 'Holly Hines', '001-366-530-972', 'juanday@example.net', 'USA', '95594 Lee Garden\nEast Shelbyberg, PR 92929', '2', '2023-11-28 23:46:58'),
(8, 'Michael Kelly', '001-519-994-003', 'paulmitchell@example.com', 'USA', 'USNS Phillips\nFPO AE 21675', '1', '2023-11-28 23:46:58'),
(9, 'Ryan Garcia', '(270)835-9366x0', 'annettekerr@example.net', 'USA', '5732 Cunningham Plaza Suite 869\nKellerburgh, CO 07340', '1', '2023-11-28 23:46:58'),
(10, 'Christopher Grant', '001-849-577-385', 'vickienguyen@example.org', 'USA', '90593 Elizabeth Fort\nNorth Brett, LA 15368', '3', '2023-11-28 23:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `guest_name` varchar(50) DEFAULT NULL,
  `guest_id` varchar(20) DEFAULT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `voucher` varchar(50) DEFAULT NULL,
  `booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(150) NOT NULL,
  `room_type` varchar(150) NOT NULL,
  `room_size` varchar(150) NOT NULL,
  `room_price` int(11) NOT NULL,
  `room_view_images` varchar(150) NOT NULL,
  `room_view_images2` varchar(150) NOT NULL,
  `room_view_images3` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_name`, `room_type`, `room_size`, `room_price`, `room_view_images`, `room_view_images2`, `room_view_images3`) VALUES
(1, 'Room 75', 'suite', 'single-adult', 15381, 'suite_6.1.jpg', 'suite_6.2.jpg', 'suite_6.3.jpg'),
(2, 'Room 82', 'double', 'single-adult', 9668, 'double_1.3.jpg', 'single_2.4.jpg', ''),
(3, 'Room 10', 'double', 'kids', 9796, 'kids_double_1.1.jpg', 'double_4.3.jpg', ''),
(4, 'Room 48', 'single', 'single-adult', 13861, 'single_1.1.jpg', 'single_1.2.jpg', 'single_2.4.jpg'),
(5, 'Room 56', 'suite', 'single-adult', 8674, 'suite_7.1.jpg', 'suite_7.2.jpg', 'suite_7.3.jpg'),
(6, 'Room 30', 'double', 'kids', 10302, 'kids_double_4.1.jpg', 'twin_double_1.3.jpg', ''),
(7, 'Room 17', 'single', 'single-adult', 11315, 'single_1.1.jpg', 'single_1.2.jpg', 'single_2.4.jpg'),
(8, 'Room 69', 'suite', 'For Couple', 5319, 'suite_1.1.jpg', 'suite_1.2.jpg', 'suite_1.3.jpg'),
(9, 'Room 24', 'suite', 'kids', 8490, 'kids_suite_1.1.jpg', 'double_2.2.jpg', ''),
(10, 'Room 96', 'suite', 'For Couple', 10560, 'suite_2.1.jpg', 'suite_2.2.jpg', 'suite_2.3.jpg'),
(11, 'Room 59', 'double', 'For Couple', 15031, 'double_1.1.jpg', 'double_1.2.jpg', 'double_1.4.jpg'),
(12, 'Room 96', 'suite', 'kids', 12111, 'kids_suite_2.1.jpg', 'double_2.2.jpg', ''),
(13, 'Room 80', 'single', 'kids', 13972, 'kids_single_2.1.jpg', 'single_2.4.jpg', ''),
(14, 'Room 25', 'double', 'single-adult', 7611, 'double_1.1.jpg', 'double_1.2.jpg', ''),
(15, 'Room 6', 'single', 'For Couple', 19803, 'twin_double_1.1.jpg', 'twin_double_1.2.jpg', 'twin_double_1.3.jpg'),
(16, 'Room 3', 'single', 'For Couple', 7455, 'twin_double_1.1.jpg', 'twin_double_1.2.jpg', 'twin_double_1.3.jpg'),
(17, 'Room 9', 'double', 'For Couple', 6081, 'double_2.1.jpg', 'double_2.2.jpg', 'double_2.3.jpg'),
(18, 'Room 93', 'double', 'single-adult', 6542, 'double_4.2.jpg', 'double_4.3.jpg', ''),
(19, 'Room 17', 'single', 'single-adult', 7696, 'single_2.1.jpg', 'single_2.2.jpg', 'single_2.3.jpg'),
(20, 'Room 95', 'single', 'single-adult', 11054, 'single_2.1.jpg', 'single_2.2.jpg', 'single_2.3.jpg'),
(21, 'Room 79', 'single', 'For Couple', 5166, 'twin_double_1.1.jpg', 'twin_double_1.2.jpg', 'twin_double_1.3.jpg'),
(22, 'Room 71', 'suite', 'For Couple', 13621, 'suite_3.1.jpg', 'suite_3.2.jpg', 'suite_1.4.jpg'),
(23, 'Room 42', 'suite', 'single-adult', 9677, 'double_4.1.jpg', 'double_4.2.jpg', 'double_4.3.jpg'),
(24, 'Room 35', 'double', 'For Couple', 18900, 'double_3.1.jpg', 'double_3.2.jpg', 'double_3.4.jpg'),
(25, 'Room 72', 'double', 'For Couple', 18776, 'suite_7.1.jpg', 'suite_7.2.jpg', 'suite_7.3.jpg'),
(26, 'Room 36', 'single', 'kids', 19513, 'kids_single_1.1.jpg', 'double_4.3.jpg', ''),
(27, 'Room 20', 'suite', 'single-adult', 15851, 'suite_6.1.jpg', 'suite_6.2.jpg', 'suite_6.3.jpg'),
(28, 'Room 88', 'double', 'For Couple', 16356, 'double_4.2.jpg', 'double_4.1.jpg', 'double_4.3.jpg'),
(29, 'Room 100', 'suite', 'For Couple', 12821, 'suite_4.1.jpg', 'suite_3.2.jpg', 'suite_4.2.jpg'),
(30, 'Room 54', 'suite ', 'For Couple', 11797, 'suite_5.1.jpg', 'suite_5.2.jpg', 'suite_3.2.jpg'),
(31, 'Room 28', 'single', 'single-adult', 19802, 'single_3.1.jpg', 'single_3.2.jpg', ''),
(32, 'Room 89', 'single', 'kids', 13973, 'kids_single_1.1.jpg', 'double_4.3.jpg', ''),
(33, 'Room 99', 'suite', 'For Couple', 12721, 'suite_8.1.jpg', 'suite_8.2.jpg', 'suite_8.3.jpg'),
(34, 'Room 93', 'double', 'For Couple', 5323, 'double_3.2.jpg', 'double_3.1.jpg', 'double_3.4.jpg'),
(35, 'Room 9', 'suite', 'For Couple', 6472, 'suite_9.1.jpg', 'suite_9.3.jpg', 'suite_9.4.jpg'),
(36, 'Room 83', 'double', 'For Couple', 12816, 'double_2.1.jpg', 'double_2.3.jpg', 'double_2.2.jpg'),
(37, 'Room 62', 'double', 'kids', 7268, 'kids_double_3.1.jpg', 'double_4.3.jpg', ''),
(38, 'Room 83', 'double', 'kids', 6989, 'kids_double_2.1.jpg', 'double_4.3.jpg', ''),
(39, 'Room 9', 'single', 'single-adult', 9836, 'single_3.1.jpg', 'single_3.2.jpg', ''),
(40, 'Room 51', 'suite', 'For Couple', 19377, 'suite_6.1.jpg', 'suite_6.2.jpg', 'suite_6.3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `own_email` (`own_email`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
