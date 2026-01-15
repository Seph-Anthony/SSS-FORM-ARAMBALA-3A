-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 15, 2026 at 06:14 PM
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
-- Database: `ss_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `employment_certification`
--

CREATE TABLE `employment_certification` (
  `reg_id` int(11) NOT NULL,
  `employment_type` varchar(100) DEFAULT NULL,
  `monthly_earnings` varchar(50) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `cert_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_certification`
--

INSERT INTO `employment_certification` (`reg_id`, `employment_type`, `monthly_earnings`, `profession`, `cert_date`) VALUES
(1, NULL, '12345', 'ewdsadsa', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employment_certification`
--
ALTER TABLE `employment_certification`
  ADD PRIMARY KEY (`reg_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employment_certification`
--
ALTER TABLE `employment_certification`
  ADD CONSTRAINT `fk_employment` FOREIGN KEY (`reg_id`) REFERENCES `personal_data` (`reg_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
