-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 18, 2026 at 07:15 PM
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
-- Table structure for table `beneficiaries_data`
--

CREATE TABLE `beneficiaries_data` (
  `reg_id` int(11) NOT NULL,
  `children_info` text DEFAULT NULL,
  `other_beneficiaries` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiaries_data`
--

INSERT INTO `beneficiaries_data` (`reg_id`, `children_info`, `other_beneficiaries`) VALUES
(8, 'Child 1: Jeven Arambala; Child 2: Nile Arambala; Child 3: Peter Arambala; Child 4: Christian Arambala; Child 5: CJ Arambala; ', 'NA NA (NA)');

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
(8, 'OFW', '12000', 'NA', '2222-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `family_data`
--

CREATE TABLE `family_data` (
  `reg_id` int(11) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `spouse_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_data`
--

INSERT INTO `family_data` (`reg_id`, `father_name`, `mother_name`, `spouse_name`) VALUES
(8, 'Jeffree Arambala', 'Amelita  delacalzada', 'Zennia Requillo');

-- --------------------------------------------------------

--
-- Table structure for table `personal_data`
--

CREATE TABLE `personal_data` (
  `reg_id` int(11) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `suffix` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `civilstatus` varchar(20) DEFAULT NULL,
  `civil_status_reason` varchar(255) DEFAULT NULL,
  `tax_number` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `pob_city` varchar(255) DEFAULT NULL,
  `pob_country` varchar(255) DEFAULT NULL,
  `home_address` text DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`reg_id`, `lastname`, `firstname`, `middlename`, `suffix`, `dob`, `gender`, `civilstatus`, `civil_status_reason`, `tax_number`, `nationality`, `religion`, `pob_city`, `pob_country`, `home_address`, `mobile`, `email`) VALUES
(8, 'Arambala', 'Joseph ', 'Anthony', 'D.', '2222-02-22', 'male', 'single', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', 'Ward 2 Minglanilla Cebu', '09456332123', 'josephanthonyarambala1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sss_internal_data`
--

CREATE TABLE `sss_internal_data` (
  `reg_id` int(11) NOT NULL,
  `ss_number` varchar(50) DEFAULT NULL,
  `business_code` varchar(50) DEFAULT NULL,
  `msc_amount` varchar(50) DEFAULT NULL,
  `processed_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sss_internal_data`
--

INSERT INTO `sss_internal_data` (`reg_id`, `ss_number`, `business_code`, `msc_amount`, `processed_by`) VALUES
(8, '123456', '123', '12000', 'SSS System');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiaries_data`
--
ALTER TABLE `beneficiaries_data`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `employment_certification`
--
ALTER TABLE `employment_certification`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `family_data`
--
ALTER TABLE `family_data`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `personal_data`
--
ALTER TABLE `personal_data`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `sss_internal_data`
--
ALTER TABLE `sss_internal_data`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personal_data`
--
ALTER TABLE `personal_data`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beneficiaries_data`
--
ALTER TABLE `beneficiaries_data`
  ADD CONSTRAINT `fk_beneficiaries` FOREIGN KEY (`reg_id`) REFERENCES `personal_data` (`reg_id`) ON DELETE CASCADE;

--
-- Constraints for table `employment_certification`
--
ALTER TABLE `employment_certification`
  ADD CONSTRAINT `fk_employment` FOREIGN KEY (`reg_id`) REFERENCES `personal_data` (`reg_id`) ON DELETE CASCADE;

--
-- Constraints for table `family_data`
--
ALTER TABLE `family_data`
  ADD CONSTRAINT `fk_family` FOREIGN KEY (`reg_id`) REFERENCES `personal_data` (`reg_id`) ON DELETE CASCADE;

--
-- Constraints for table `sss_internal_data`
--
ALTER TABLE `sss_internal_data`
  ADD CONSTRAINT `fk_sss` FOREIGN KEY (`reg_id`) REFERENCES `personal_data` (`reg_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
