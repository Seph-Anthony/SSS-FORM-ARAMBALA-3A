-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2026 at 09:49 PM
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
  `other_beneficiaries` text DEFAULT NULL,
  `child_lname1` varchar(255) DEFAULT NULL,
  `child_fname1` varchar(255) DEFAULT NULL,
  `child_mname1` varchar(255) DEFAULT NULL,
  `child_sname1` varchar(255) DEFAULT NULL,
  `child_dob1` date DEFAULT NULL,
  `child_lname2` varchar(255) DEFAULT NULL,
  `child_fname2` varchar(255) DEFAULT NULL,
  `child_mname2` varchar(255) DEFAULT NULL,
  `child_sname2` varchar(255) DEFAULT NULL,
  `child_dob2` date DEFAULT NULL,
  `child_lname3` varchar(255) DEFAULT NULL,
  `child_fname3` varchar(255) DEFAULT NULL,
  `child_mname3` varchar(255) DEFAULT NULL,
  `child_sname3` varchar(255) DEFAULT NULL,
  `child_dob3` date DEFAULT NULL,
  `child_lname4` varchar(255) DEFAULT NULL,
  `child_fname4` varchar(255) DEFAULT NULL,
  `child_mname4` varchar(255) DEFAULT NULL,
  `child_sname4` varchar(255) DEFAULT NULL,
  `child_dob4` date DEFAULT NULL,
  `child_lname5` varchar(255) DEFAULT NULL,
  `child_fname5` varchar(255) DEFAULT NULL,
  `child_mname5` varchar(255) DEFAULT NULL,
  `child_sname5` varchar(255) DEFAULT NULL,
  `child_dob5` date DEFAULT NULL,
  `other_lname1` varchar(255) DEFAULT NULL,
  `other_fname1` varchar(255) DEFAULT NULL,
  `other_mname1` varchar(255) DEFAULT NULL,
  `other_sname1` varchar(255) DEFAULT NULL,
  `other_rel1` varchar(255) DEFAULT NULL,
  `other_dob1` date DEFAULT NULL,
  `other_lname2` varchar(255) DEFAULT NULL,
  `other_fname2` varchar(255) DEFAULT NULL,
  `other_mname2` varchar(255) DEFAULT NULL,
  `other_sname2` varchar(255) DEFAULT NULL,
  `other_rel2` varchar(255) DEFAULT NULL,
  `other_dob2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beneficiaries_data`
--

INSERT INTO `beneficiaries_data` (`reg_id`, `other_beneficiaries`, `child_lname1`, `child_fname1`, `child_mname1`, `child_sname1`, `child_dob1`, `child_lname2`, `child_fname2`, `child_mname2`, `child_sname2`, `child_dob2`, `child_lname3`, `child_fname3`, `child_mname3`, `child_sname3`, `child_dob3`, `child_lname4`, `child_fname4`, `child_mname4`, `child_sname4`, `child_dob4`, `child_lname5`, `child_fname5`, `child_mname5`, `child_sname5`, `child_dob5`, `other_lname1`, `other_fname1`, `other_mname1`, `other_sname1`, `other_rel1`, `other_dob1`, `other_lname2`, `other_fname2`, `other_mname2`, `other_sname2`, `other_rel2`, `other_dob2`) VALUES
(8, 'NA NA (NA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'WALA WALA (mego ra)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'WALA NA WALA NA (Family)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'Mckee', 'Evelyn', 'Alvin Levy', 'Ginger Andrews', '1986-06-12', 'Hodges', 'Dominique', 'Maggie Mcfarland', 'Joshua Elliott', '1977-10-23', 'Farmer', 'Raya', 'Tanner Schultz', 'Irma Blackburn', '1982-07-11', 'Mcmillan', 'Ira', 'Abra Carney', 'Castor Tyson', '1987-08-26', 'Calderon', 'Branden', 'Joelle Keller', 'Robert Brewer', '1976-07-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'Dawson', 'Oprah', 'Brianna Kramer', 'Cora Chen', '2008-10-22', 'Malone', 'Craig', 'Stuart Cline', 'Margaret Valencia', '2025-07-15', 'Burks', 'Camille', 'Shana Boyer', 'Walker Randolph', '2006-04-07', 'Hammond', 'Jamal', 'Patience Solis', 'Dane Snider', '1995-06-17', 'Roy', 'Raya', 'Fiona Hopkins', 'Martena Barron', '1981-08-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '', 'Shannon', 'Sybil', 'Lamar Manning', 'Sage Koch', '2023-12-30', 'Daugherty', 'Nissim', 'Orlando Kerr', 'Grady Smith', '2025-09-21', 'Peterson', 'Len', 'Tyler Shelton', 'Ross Fields', '1972-09-05', 'Glover', 'Baker', 'Lester York', 'Deirdre Evans', '2011-04-09', 'Potter', 'MacKenzie', 'Sara Jacobson', 'Henry Riley', '2012-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', 'Mckenzie', 'Kirk', 'Wylie Gallegos', 'Colorado Martin', '1972-02-15', 'Merrill', 'Rowan', 'Zephr Carson', 'Marcia Lopez', '2001-10-25', 'Chandler', 'Signe', 'Xyla Coffey', 'Ronan Griffith', '2010-02-11', 'Russell', 'Amena', 'Neil Farmer', 'Erin Hogan', '2015-05-17', 'Obrien', 'Lucas', 'Kyla Buckley', 'Phelan Guthrie', '1972-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'Slater', 'Wayne', 'Irma Patterson', 'Leonard Stephens', '2004-01-16', 'Harris', 'Brianna', 'Jasper Cabrera', 'Connor Horn', '1973-10-18', 'Contreras', 'Xanthus', 'Galvin Wood', 'Jillian Reynolds', '1998-10-01', 'Reynolds', 'Oscar', 'Petra Holden', 'Chadwick Hopper', '1974-08-23', 'Eaton', 'Geoffrey', 'Randall Tate', 'Alexander Mayer', '1974-04-27', 'Kim', 'Isadora', 'Marvin Roy', 'Victor Owens', 'Labore proident del', '1983-08-21', 'Keith', 'Pandora', 'Caleb Dodson', 'Quemby Allison', 'Anim expedita culpa', '1989-03-22'),
(21, NULL, 'Witt', 'Steven', 'Megan Zamora', 'Cathleen Blackburn', '2001-06-12', 'Coleman', 'Phyllis', 'Yuri Ray', 'Arsenio Pena', '2010-08-10', 'Poole', 'Asher', 'Keiko Edwards', 'Nevada Spencer', '2020-03-30', 'Simon', 'Bryar', 'Zeph Rush', 'Kerry Estrada', '2009-07-21', 'Mcgowan', 'Brittany', 'Sara Walter', 'Ruby Bean', '1971-04-15', 'Summers', 'Bryar', 'MacKensie Whitfield', 'Noble Gonzales', 'Quis ut delectus vo', '1991-01-19', 'Osborne', 'Idona', 'Omar Carver', 'Alec Romero', 'Sint quis et in sint', '2006-10-01'),
(22, NULL, 'Sears', 'Steven', 'Thane Briggs', 'Macy Cooper', '2020-03-27', 'Campos', 'Genevieve', 'Taylor Hale', 'Declan Green', '1996-12-06', 'Vang', 'Blythe', 'Cyrus Montgomery', 'Camilla Roberts', '1986-07-23', 'Fuentes', 'Serina', 'Nathan Roberts', 'Dexter Gillespie', '1997-11-28', 'Tanner', 'Xandra', 'Maite Cline', 'Simone Moore', '1983-10-07', 'Ferguson', 'Keiko', 'Mona Vega', 'Jayme Stuart', 'Illo qui vero evenie', '2002-06-09', 'Pratt', 'Kuame', 'Avye William', 'Ronan Weiss', 'Dignissimos culpa l', '2003-10-22'),
(23, NULL, 'Copeland', 'Kato', 'Pandora Herman', 'Allen Hodges', '1985-03-07', 'Robbins', 'Bradley', 'Colin Lynch', 'Anika Bernard', '2023-06-05', 'Smith', 'Vaughan', 'Yardley Mendez', 'Lila Oliver', '1996-04-06', 'Newton', 'Lois', 'Ralph Griffin', 'Philip Bean', '2009-03-23', 'Good', 'Sigourney', 'Portia Rodriquez', 'Maryam Weber', '1988-08-16', 'Long', 'Brenda', 'Elizabeth Giles', 'Aileen Villarreal', 'Voluptate natus erro', '1996-10-18', 'Finley', 'Madeson', 'Zelda Fry', 'Yoshi Ball', 'Sed et ut aut commod', '2007-07-14'),
(27, NULL, 'Mckenzie', 'Brent', 'Tallulah Burgess', 'May Baird', '1996-09-10', 'Clarke', 'Rahim', 'Miranda Sellers', 'Cheyenne Small', '1983-06-22', 'Hoffman', 'Ahmed', 'Byron Barnett', 'Jackson Noel', '2007-09-05', 'Cantu', 'Arden', 'Maisie Goff', 'Olivia Baxter', '2001-03-17', 'Cochran', 'Keith', 'Zoe Ellis', 'Kylan Humphrey', '1984-12-30', 'Washington', 'Kaden', 'Shana Sutton', 'Sade Farley', 'Consequat Ut et mod', '2013-03-18', 'Williamson', 'Kaden', 'Gil Burris', 'Lars Newman', 'Sequi voluptas exped', '2006-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `employment_certification`
--

CREATE TABLE `employment_certification` (
  `reg_id` int(11) NOT NULL,
  `employment_type` varchar(100) DEFAULT NULL,
  `monthly_earnings` varchar(50) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `cert_date` date DEFAULT NULL,
  `year_prof_started` date DEFAULT NULL,
  `foreign_address` varchar(255) DEFAULT NULL,
  `ofw_monthly_earnings` decimal(10,2) DEFAULT NULL,
  `flexifund_membership` varchar(5) DEFAULT NULL,
  `spouse_sss_no` varchar(20) DEFAULT NULL,
  `spouse_monthly_income` decimal(10,2) DEFAULT NULL,
  `printed_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_certification`
--

INSERT INTO `employment_certification` (`reg_id`, `employment_type`, `monthly_earnings`, `profession`, `cert_date`, `year_prof_started`, `foreign_address`, `ofw_monthly_earnings`, `flexifund_membership`, `spouse_sss_no`, `spouse_monthly_income`, `printed_name`) VALUES
(8, 'OFW', '12000', 'NA', '2222-02-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'OFW', '12000', 'ewdsadsa', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'OFW', '12600', 'ewdsadsa', '8888-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'OFW', '1', 'Dolores deleniti vel', '1976-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'OFW', '6', 'Similique quos excep', '2017-06-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'OFW', '10', 'Ex cupidatat repelle', '1998-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'OFW', '10', 'Aspernatur fugiat ex', '1971-06-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'OFW', '2', 'Quisquam numquam mag', '1978-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Non-Working Spouse', '5', 'In harum incididunt ', '1990-12-10', '2008-07-20', 'Non praesentium est ', 1.00, 'no', '75', 516.00, NULL),
(22, 'Non-Working Spouse', '9', 'Pariatur Voluptate ', '2004-06-11', '1999-09-02', 'Molestias dicta saep', 8.00, 'yes', '67', 564.00, NULL),
(23, 'OFW', '7', 'Debitis dolor eu et ', '2020-11-21', '2015-12-04', 'Perferendis quam rec', 1.00, 'no', '65', 187.00, 'Carlos Frederick'),
(27, 'OFW', '4', 'Nam reiciendis quis ', '2000-10-09', '2004-09-07', 'Sint nulla sint mo', 11.00, 'no', '1', 856.00, 'Fuller Hickman');

-- --------------------------------------------------------

--
-- Table structure for table `family_data`
--

CREATE TABLE `family_data` (
  `reg_id` int(11) NOT NULL,
  `father_lname` varchar(255) DEFAULT NULL,
  `father_fname` varchar(255) DEFAULT NULL,
  `father_mname` varchar(255) DEFAULT NULL,
  `father_suffix` varchar(255) DEFAULT NULL,
  `mother_lname` varchar(255) DEFAULT NULL,
  `mother_fname` varchar(255) DEFAULT NULL,
  `mother_mname` varchar(255) DEFAULT NULL,
  `mother_suffix` varchar(255) DEFAULT NULL,
  `spouse_lname` varchar(255) DEFAULT NULL,
  `spouse_fname` varchar(255) DEFAULT NULL,
  `spouse_mname` varchar(255) DEFAULT NULL,
  `spouse_suffix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `family_data`
--

INSERT INTO `family_data` (`reg_id`, `father_lname`, `father_fname`, `father_mname`, `father_suffix`, `mother_lname`, `mother_fname`, `mother_mname`, `mother_suffix`, `spouse_lname`, `spouse_fname`, `spouse_mname`, `spouse_suffix`) VALUES
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Tasha Powers', 'Valentine', 'Murphy Parrish', 'Quis aspernatur veli', 'Renee Wynn', 'Evan Moreno', 'Gray Nash', 'Cupiditate ipsum ill', 'Deborah Lloyd', 'Wylie', '', 'Dolor nostrud distin'),
(18, 'Illiana Figueroa', 'Arden', 'Garrison Miles', 'Aut voluptatem id u', 'Alan Fernandez', 'Fallon Rhodes', 'Leslie Daugherty', 'Voluptate atque et s', 'Adam Johns', 'Ryan', '', 'Amet anim in evenie'),
(19, 'Josiah Bray', 'Dillon', 'Cadman Washington', 'Nisi laborum Ad bla', 'Melodie Booth', 'Alden Cohen', 'Driscoll Andrews', 'Mollitia non sunt do', 'Josiah Sloan', 'Clinton', '', 'Recusandae Aliqua '),
(20, 'Sigourney Grant', 'Arthur', 'Stephanie Johnston', 'Eos nulla quibusdam', 'Virginia Mckay', 'Lillian Sherman', 'Beck Mcknight', 'Odit quia eius sunt ', 'Jillian Kane', 'Haley', 'Leo Harmon', 'Non sunt corrupti '),
(21, 'Sarah Huffman', 'Dean', 'Jaden Gill', 'Obcaecati alias laud', 'Uma Velazquez', 'Ciara Logan', 'Serena Todd', 'Itaque quisquam ut c', 'Jillian Fulton', 'Jade', 'Indigo Savage', 'Qui eveniet corrupt'),
(22, 'Rafael Ramsey', 'Garth', 'Germane Robertson', 'Porro facilis error ', 'Lani Hughes', 'Joel Swanson', 'Keely Larson', 'Consectetur sed veni', 'George Burch', 'Zenaida', 'Bevis Hanson', 'Harum nemo dolor par'),
(23, 'Remedios Mckinney', 'Nathan', 'Serina Best', 'Consectetur totam q', 'Madonna Wooten', 'Ainsley Goodman', 'Colby Bonner', 'Omnis dignissimos vo', 'Ariana Ball', 'Brianna', 'Beck Roth', 'Et et sequi vero sit'),
(27, 'Breanna Dillon', 'Sage', 'Belle Hooper', 'Quis corporis sint v', 'Olympia Morrow', 'Mufutau Fulton', 'Lara Fleming', 'Qui fugiat omnis ni', 'Aurora Oliver', 'Hollee', 'Kessie Bolton', 'Aliquip ea ipsam ut ');

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
(8, 'Arambala', 'Joseph ', 'Anthony', 'D.', '2222-02-22', 'male', 'single', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', 'Ward 2 Minglanilla Cebu', '09456332123', 'josephanthonyarambala1@gmail.com'),
(9, 'Mike ', 'John', 'Bert', 'E.', '2222-02-22', 'male', 'widowed', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', 'Ward 2 Minglanilla Cebu', '09786543212', 'josephanthonyarambala1@gmail.com'),
(10, 'Dela Cruz', 'Joseph ', 'Emnace', 'E.', '2222-02-22', 'male', 'single', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', 'Ward 2 Minglanilla Cebu', '09675456789', 'general@gmail.com'),
(16, 'Thomas', 'Hakeem', 'Inga Velasquez', 'Debitis velit qui e', '1995-09-13', 'female', 'married', '', '798', 'Consectetur labore e', 'Maiores lorem volupt', 'Dolor nisi qui conse', 'Voluptate nulla laud', 'Dolor nisi qui conse', '32733333345', 'qenat@mailinator.com'),
(17, 'Rasmussen', 'Chester', 'Xyla Wilkinson', 'At facilis dolorem u', '1984-11-02', 'male', 'single', '', '712', 'Et non soluta totam ', 'Sit in quis debitis', 'Ipsa odit ex natus ', 'Elit non quia labor', 'Ipsa odit ex natus ', '37856789876', 'qinomypaca@mailinator.com'),
(18, 'Moran', 'Ross', 'Uta Stark', 'Do doloremque dignis', '1996-10-01', 'male', 'single', '', '98', 'Pariatur Perferendi', 'Tempora nulla quae a', 'Commodo sit providen', 'Et sit minima qui d', 'Commodo sit providen', '19545678978', 'bavylotaj@mailinator.com'),
(19, 'Brown', 'Bethany', 'Cooper Gibbs', 'Aut enim ex corporis', '2021-08-30', 'male', 'married', '', '320', 'Dolore qui reiciendi', 'Minus sed ipsa dolo', 'Cumque rerum magni a', 'Est aliqua Archite', 'Cumque rerum magni a', '74534567567', 'habocuxev@mailinator.com'),
(20, 'Puckett', 'Phillip', 'Kaden Oneil', 'Praesentium perspici', '2023-08-31', 'male', 'married', '', '824', 'Dolores reprehenderi', 'Mollitia possimus e', 'Est ea magna odit l', 'Modi in quasi vitae ', 'Enim duis id elit s Dale Wallace Et asperiores commod', '90833345678', 'fejite@mailinator.com'),
(21, 'Maddox', 'Gray', 'Germaine Solomon', 'Esse dolore eum eos', '2025-12-24', 'male', 'married', '', '113', 'Error est a exercit', 'Nisi dignissimos con', 'A maiores eligendi l', 'Repudiandae corporis', 'Quo dolor ipsum qui  Ginger Yang Ex quae repudiandae ', '732444444444', 'kuvukuw@mailinator.com'),
(22, 'Acosta', 'Zoe', 'Hasad Townsend', 'Est nostrum officia ', '1985-10-13', 'male', 'single', '', '877', 'Deserunt soluta dolo', 'Ad nemo consequat U', 'Sint fuga Et dolore', 'Dolores natus labore', 'Sint fuga Et dolore', '65744456785', 'qanasyh@mailinator.com'),
(23, 'Arnold', 'Aidan', 'Maya Lynch', 'Qui tempore non ill', '1987-01-05', 'male', 'married', '', '929', 'Minus enim at odio e', 'Id ut quia proident', 'Eos et ea quas aute', 'Qui sint et sunt a', 'Eos et ea quas aute', '45045678987', 'samuzulav@mailinator.com'),
(27, 'Nealzzz', 'Kay', 'Todd Guzman', 'Labore aute aliquam ', '2022-12-06', 'female', 'married', '', '503', 'Enim est veniam cum', 'Rerum sunt rerum as', 'Molestiae rerum elig', 'Eos dolorem error v', 'Molestiae rerum elig', '15734567898', 'kuzo@mailinator.com');

-- --------------------------------------------------------

--
-- Table structure for table `sss_internal_data`
--

CREATE TABLE `sss_internal_data` (
  `reg_id` int(11) NOT NULL,
  `ss_number` varchar(50) DEFAULT NULL,
  `business_code` varchar(50) DEFAULT NULL,
  `msc_amount` varchar(50) DEFAULT NULL,
  `monthly_ss_contribution` decimal(10,2) DEFAULT NULL,
  `start_of_payment` date DEFAULT NULL,
  `working_spouse_msc` decimal(10,2) DEFAULT NULL,
  `flexi_fund_app` varchar(20) DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `processed_date` date DEFAULT NULL,
  `reviewed_date` date DEFAULT NULL,
  `processed_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sss_internal_data`
--

INSERT INTO `sss_internal_data` (`reg_id`, `ss_number`, `business_code`, `msc_amount`, `monthly_ss_contribution`, `start_of_payment`, `working_spouse_msc`, `flexi_fund_app`, `received_date`, `processed_date`, `reviewed_date`, `processed_by`) VALUES
(8, '123456', '123', '12000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(9, '777777777', '123', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(10, '675849', '123', '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(16, '55', 'Nostrud minus aliqui', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(17, '67', 'Sint est est obcae', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(18, '15', 'Necessitatibus nostr', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(19, '14', 'Saepe eaque velit s', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(20, '66', 'Adipisicing veniam ', '69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(21, '75', 'Sunt provident ea s', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(22, '67', 'Sit enim repudiandae', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(27, '1', 'Soluta eu suscipit q', '90', 11.00, '2002-03-03', 81.00, NULL, '2017-12-31', '1978-10-09', '1974-01-22', 'SSS System');

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
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
