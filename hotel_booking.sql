-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 06:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
(1, 'Maria Walker', '001-903-657-753', 'smithkelly@example.com', 'USA', '9996 Turner Bridge Apt. 432\nFryhaven, HI 25883', '10', '2023-12-12 15:46:49'),
(2, 'Jonathan Sellers', '(352)626-3038', 'martinapril@example.com', 'USA', '9255 Baker Tunnel\nPort Carlaland, CA 66046', '8', '2023-12-12 15:46:49'),
(3, 'Rickey Carr', '989-338-3429x83', 'jnichols@example.org', 'USA', '94638 John Inlet\nJamesmouth, DE 42292', '1', '2023-12-12 15:46:49'),
(4, 'Jeremy Wilson', '(888)728-2521x1', 'jensenmonica@example.com', 'USA', '07326 Dalton Neck Suite 566\nNorth Sarah, UT 61128', '9', '2023-12-12 15:46:49'),
(5, 'Angela Mcmahon', '(882)512-8817x8', 'cweaver@example.org', 'USA', '108 Gabrielle Manor\nEast Brandonborough, OR 35673', '8', '2023-12-12 15:46:49'),
(6, 'Adam Hatfield', '(258)643-2518x6', 'benjaminhuang@example.org', 'USA', '40977 Henson Courts\nNew Natalie, SD 89526', '3', '2023-12-12 15:46:49'),
(7, 'Richard Lambert', '+1-495-447-4447', 'matthewreeves@example.org', 'USA', '810 Cook Circle Apt. 105\nNew Lori, PA 72599', '10', '2023-12-12 15:46:49'),
(8, 'Ronald Cortez', '919-208-7024', 'greenpamela@example.com', 'USA', '1954 Cindy Spring Apt. 081\nLake Allisonshire, RI 95313', '4', '2023-12-12 15:46:49'),
(9, 'Katherine Brown', '379.297.7355x21', 'dennisdavis@example.net', 'USA', '6775 Holt Meadows Apt. 425\nSarafort, RI 16637', '3', '2023-12-12 15:46:49'),
(10, 'Brian Manning', '290-890-1690', 'nguyenjessica@example.org', 'USA', '744 Wilkinson Track\nNorth Robert, IA 51474', '7', '2023-12-12 15:46:49'),
(11, 'Bryan Collins', '910-310-0796', 'lisa27@example.com', 'USA', '097 Hill Center\nLake Tommy, SD 45727', '1', '2023-12-12 15:46:49'),
(12, 'Curtis Gibson', '(448)262-2001x9', 'iford@example.com', 'USA', '1460 Whitney View\nAnthonyberg, AK 24105', '4', '2023-12-12 15:46:49'),
(13, 'Michael Martin', '746.734.5948x83', 'nward@example.net', 'USA', '696 Garcia Court Suite 293\nDonport, DE 84931', '2', '2023-12-12 15:46:49'),
(14, 'Samantha Brown', '918.322.1085x78', 'david46@example.com', 'USA', '55384 Jaime Run\nWest Kellyburgh, NC 56193', '7', '2023-12-12 15:46:49'),
(15, 'David Barrera', '+1-267-691-3529', 'jonesmichael@example.net', 'USA', '910 Colin Spurs Apt. 669\nNew Kelsey, AL 80608', '9', '2023-12-12 15:46:49'),
(16, 'James Bell', '(701)679-3286x3', 'angelawilcox@example.org', 'USA', '974 Anne Motorway Suite 328\nPort Melvinview, NV 80814', '4', '2023-12-12 15:46:49'),
(17, 'Nicholas Harper', '(277)260-5171', 'alexanderwhite@example.net', 'USA', '04064 Dawn Shoal Suite 184\nSouth Erin, CA 08945', '1', '2023-12-12 15:46:49'),
(18, 'Carla Walter', '438.826.0494x99', 'durhamjohn@example.net', 'USA', '4010 Johnson Cape Apt. 287\nWatsonburgh, ME 22150', '6', '2023-12-12 15:46:49'),
(19, 'Stacey Kent DVM', '+1-356-340-1877', 'amandamartinez@example.org', 'USA', '767 Merritt Radial\nJacquelineborough, DE 18798', '9', '2023-12-12 15:46:49'),
(20, 'Nancy Stone', '(847)924-6573x4', 'jonescrystal@example.net', 'USA', '2465 Chris Club Suite 319\nAustinmouth, AZ 25685', '10', '2023-12-12 15:46:49');

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

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `guest_name`, `guest_id`, `booking_id`) VALUES
(1, 'Amy Rivera', '660-91-6430', 6),
(2, 'Joy Webster', '021-96-7175', 8),
(3, 'William Stanton', '097-27-8439', 5),
(4, 'Richard Miller', '818-88-7009', 1),
(5, 'Jordan Welch', '726-66-8294', 5),
(6, 'Sean Williams', '646-43-5639', 9),
(7, 'Kimberly Reyes', '547-27-3943', 9),
(8, 'Kathy Williams', '526-38-7041', 2),
(9, 'Jeffrey Rosario', '843-77-5235', 10),
(10, 'Stephanie Garrett', '078-10-2017', 2);

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
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `room_id`, `guest_id`, `content`, `status`, `created_at`) VALUES
(3, 5, 1, 'blah blah blah', 'Pending', '2023-12-12 16:10:03'),
(4, 1, 1, 'Couple board also structure laugh tell. Smile its meet wish assume full box recently.', 'Pending', '2023-12-12 17:04:07'),
(5, 8, 10, 'Face feeling major summer say three cup. Face billion thing opportunity until upon.', 'Pending', '2023-12-12 17:04:07'),
(6, 8, 3, 'Low newspaper more result art upon difficult value.', 'Pending', '2023-12-12 17:04:07'),
(7, 7, 4, 'Media experience serious crime. Describe such wife either exist heavy during. Above left power once fear move bring.', 'Pending', '2023-12-12 17:04:07'),
(8, 4, 7, 'After very employee mean. Industry or third onto collection charge.', 'Pending', '2023-12-12 17:04:07'),
(9, 8, 8, 'Instead doctor science discussion discussion share program tend. Step leader glass stock doctor rich. Back at plant.', 'Pending', '2023-12-12 17:04:07'),
(10, 5, 8, 'Memory toward open discover risk start both kitchen.', 'Pending', '2023-12-12 17:04:07'),
(11, 4, 5, 'Career ground see get. Represent agree prepare treat agree. That animal give.', 'Pending', '2023-12-12 17:04:07'),
(12, 7, 8, 'Same herself environment exactly special commercial.', 'Pending', '2023-12-12 17:04:07'),
(13, 2, 10, 'Amount both son understand become painting. Growth live avoid affect sure. Single country full room their father quite defense.', 'Pending', '2023-12-12 17:04:07'),
(14, 4, 1, 'Nice', 'Pending', '2023-12-12 17:20:26'),
(15, 8, 1, 'Not big enough', 'Pending', '2023-12-12 17:22:36');

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
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `guest_id` (`guest_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
