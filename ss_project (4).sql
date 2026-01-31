-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2026 at 03:06 AM
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
(16, '', 'Mckee', 'Evelyn', 'Alvin Levy', 'Ginger Andrews', '1986-06-12', 'Hodges', 'Dominique', 'Maggie Mcfarland', 'Joshua Elliott', '1977-10-23', 'Farmer', 'Raya', 'Tanner Schultz', 'Irma Blackburn', '1982-07-11', 'Mcmillan', 'Ira', 'Abra Carney', 'Castor Tyson', '1987-08-26', 'Calderon', 'Branden', 'Joelle Keller', 'Robert Brewer', '1976-07-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'Dawson', 'Oprah', 'Brianna Kramer', 'Cora Chen', '2008-10-22', 'Malone', 'Craig', 'Stuart Cline', 'Margaret Valencia', '2025-07-15', 'Burks', 'Camille', 'Shana Boyer', 'Walker Randolph', '2006-04-07', 'Hammond', 'Jamal', 'Patience Solis', 'Dane Snider', '1995-06-17', 'Roy', 'Raya', 'Fiona Hopkins', 'Martena Barron', '1981-08-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '', 'Shannon', 'Sybil', 'Lamar Manning', 'Sage Koch', '2023-12-30', 'Daugherty', 'Nissim', 'Orlando Kerr', 'Grady Smith', '2025-09-21', 'Peterson', 'Len', 'Tyler Shelton', 'Ross Fields', '1972-09-05', 'Glover', 'Baker', 'Lester York', 'Deirdre Evans', '2011-04-09', 'Potter', 'MacKenzie', 'Sara Jacobson', 'Henry Riley', '2012-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', 'Mckenzie', 'Kirk', 'Wylie Gallegos', 'Colorado Martin', '1972-02-15', 'Merrill', 'Rowan', 'Zephr Carson', 'Marcia Lopez', '2001-10-25', 'Chandler', 'Signe', 'Xyla Coffey', 'Ronan Griffith', '2010-02-11', 'Russell', 'Amena', 'Neil Farmer', 'Erin Hogan', '2015-05-17', 'Obrien', 'Lucas', 'Kyla Buckley', 'Phelan Guthrie', '1972-08-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, 'Slater', 'Wayne', 'Irma Patterson', 'Leonard Stephens', '2004-01-16', 'Harris', 'Brianna', 'Jasper Cabrera', 'Connor Horn', '1973-10-18', 'Contreras', 'Xanthus', 'Galvin Wood', 'Jillian Reynolds', '1998-10-01', 'Reynolds', 'Oscar', 'Petra Holden', 'Chadwick Hopper', '1974-08-23', 'Eaton', 'Geoffrey', 'Randall Tate', 'Alexander Mayer', '1974-04-27', 'Kim', 'Isadora', 'Marvin Roy', 'Victor Owens', 'Labore proident del', '1983-08-21', 'Keith', 'Pandora', 'Caleb Dodson', 'Quemby Allison', 'Anim expedita culpa', '1989-03-22'),
(21, NULL, 'Witt', 'Steven', 'Megan Zamora', 'Cathleen Blackburn', '2001-06-12', 'Coleman', 'Phyllis', 'Yuri Ray', 'Arsenio Pena', '2010-08-10', 'Poole', 'Asher', 'Keiko Edwards', 'Nevada Spencer', '2020-03-30', 'Simon', 'Bryar', 'Zeph Rush', 'Kerry Estrada', '2009-07-21', 'Mcgowan', 'Brittany', 'Sara Walter', 'Ruby Bean', '1971-04-15', 'Summers', 'Bryar', 'MacKensie Whitfield', 'Noble Gonzales', 'Quis ut delectus vo', '1991-01-19', 'Osborne', 'Idona', 'Omar Carver', 'Alec Romero', 'Sint quis et in sint', '2006-10-01'),
(22, NULL, 'Sears', 'Steven', 'Thane Briggs', 'Macy Cooper', '2020-03-27', 'Campos', 'Genevieve', 'Taylor Hale', 'Declan Green', '1996-12-06', 'Vang', 'Blythe', 'Cyrus Montgomery', 'Camilla Roberts', '1986-07-23', 'Fuentes', 'Serina', 'Nathan Roberts', 'Dexter Gillespie', '1997-11-28', 'Tanner', 'Xandra', 'Maite Cline', 'Simone Moore', '1983-10-07', 'Ferguson', 'Keiko', 'Mona Vega', 'Jayme Stuart', 'Illo qui vero evenie', '2002-06-09', 'Pratt', 'Kuame', 'Avye William', 'Ronan Weiss', 'Dignissimos culpa l', '2003-10-22'),
(23, NULL, 'Copeland', 'Kato', 'Pandora Herman', 'Allen Hodges', '1985-03-07', 'Robbins', 'Bradley', 'Colin Lynch', 'Anika Bernard', '2023-06-05', 'Smith', 'Vaughan', 'Yardley Mendez', 'Lila Oliver', '1996-04-06', 'Newton', 'Lois', 'Ralph Griffin', 'Philip Bean', '2009-03-23', 'Good', 'Sigourney', 'Portia Rodriquez', 'Maryam Weber', '1988-08-16', 'Long', 'Brenda', 'Elizabeth Giles', 'Aileen Villarreal', 'Voluptate natus erro', '1996-10-18', 'Finley', 'Madeson', 'Zelda Fry', 'Yoshi Ball', 'Sed et ut aut commod', '2007-07-14'),
(27, NULL, 'Mckenzie', 'Brent', 'Tallulah Burgess', 'May Baird', '1996-09-10', 'Clarke', 'Rahim', 'Miranda Sellers', 'Cheyenne Small', '1983-06-22', 'Hoffman', 'Ahmed', 'Byron Barnett', 'Jackson Noel', '2007-09-05', 'Cantu', 'Arden', 'Maisie Goff', 'Olivia Baxter', '2001-03-17', 'Cochran', 'Keith', 'Zoe Ellis', 'Kylan Humphrey', '1984-12-30', 'Washington', 'Kaden', 'Shana Sutton', 'Sade Farley', 'Consequat Ut et mod', '2013-03-18', 'Williamson', 'Kaden', 'Gil Burris', 'Lars Newman', 'Sequi voluptas exped', '2006-10-14'),
(28, NULL, 'Evans', 'Camille', 'Keely Caldwell', 'Upton Joyce', '1991-07-11', 'Padilla', 'Xavier', 'Cora Odom', 'Vladimir Hamilton', '1994-12-07', 'Ellis', 'Cooper', 'Olympia Sosa', 'Adam Riggs', '2006-05-06', 'Madden', 'Flavia', 'Oleg Mills', 'Maris Allen', '1975-07-30', 'Huffman', 'Hedwig', 'Ethan George', 'Roth Dean', '1980-06-11', 'Bowman', 'Walker', 'Ursula Hopper', 'Cecilia Keller', 'Modi quae harum cupi', '2012-06-17', 'Powers', 'Channing', 'Troy Grimes', 'Shay Potter', 'Nobis debitis ut ear', '1982-05-20'),
(29, NULL, 'Lindsey', 'Marvin', 'Desiree Frederick', 'Vaughan Contreras', '1994-10-02', 'Sampson', 'Breanna', 'Kuame Madden', 'Adrienne Ewing', '2015-06-27', 'Whitfield', 'Cain', 'Stephanie Camacho', 'Lucian Harris', '2009-11-12', 'Gutierrez', 'Kieran', 'Ryder Keller', 'Lucian Higgins', '2001-08-20', 'Peters', 'William', 'Daphne Cooper', 'Ivor Christian', '1986-08-17', 'Vazquez', 'Cheyenne', 'Brielle Farrell', 'Amity Miles', 'Et nostrum ad tempor', '1993-07-21', 'Cooley', 'Ginger', 'Destiny Valentine', 'Dominique Guzman', 'Eius nisi doloremque', '1999-12-11'),
(30, NULL, 'Rogers', 'Alexa', 'Kylee Lane', 'Brittany Hayden', '1979-01-23', 'Lester', 'Gay', 'Jayme Greer', 'Ross Callahan', '2025-04-07', 'Ford', 'Chloe', 'Odessa Ward', 'Clementine Mclean', '1998-06-22', 'Lane', 'Logan', 'Claudia Valentine', 'Kyla Estes', '2018-07-15', 'Myers', 'Hannah', 'Sydney Wagner', 'Elmo Leach', '1984-03-23', 'Nielsen', 'Ursula', 'Warren Velez', 'Lane Griffin', 'Vitae quo ex qui quo', '1996-05-09', 'Fisher', 'Oliver', 'Colby Hodge', 'Marvin Knox', 'Hic distinctio Ulla', '1995-04-11');

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
(16, 'OFW', '1', 'Dolores deleniti vel', '1976-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'OFW', '6', 'Similique quos excep', '2017-06-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'OFW', '10', 'Ex cupidatat repelle', '1998-09-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'OFW', '10', 'Aspernatur fugiat ex', '1971-06-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'OFW', '2', 'Quisquam numquam mag', '1978-02-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Non-Working Spouse', '5', 'In harum incididunt ', '1990-12-10', '2008-07-20', 'Non praesentium est ', 1.00, 'no', '75', 516.00, NULL),
(22, 'Non-Working Spouse', '9', 'Pariatur Voluptate ', '2004-06-11', '1999-09-02', 'Molestias dicta saep', 8.00, 'yes', '67', 564.00, NULL),
(23, 'OFW', '7', 'Debitis dolor eu et ', '2020-11-21', '2015-12-04', 'Perferendis quam rec', 1.00, 'no', '65', 187.00, 'Carlos Frederick'),
(27, 'OFW', '4', 'Nam reiciendis quis ', '2000-10-09', '2004-09-07', 'Sint nulla sint mo', 11.00, 'no', '1', 856.00, 'Fuller Hickman'),
(28, 'OFW', '9', 'Culpa magnam amet ', '2006-12-14', '2000-08-13', 'Cum nulla vel aliqui', 4.00, 'no', '27', 263.00, 'Rudyard Shields'),
(29, 'OFW', '1', 'Incididunt doloremqu', '1993-11-03', '1993-12-07', 'Consequuntur sunt i', 10.00, 'no', '8', 181.00, 'Wanda Oneil'),
(30, 'OFW', '8', 'Ut laboris exercitat', '2022-02-16', '2020-05-12', 'Aperiam optio tempo', 6.00, 'no', '84', 911.00, 'Claire Vaughn');

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
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Tasha Powers', 'Valentine', 'Murphy Parrish', 'Quis aspernatur veli', 'Renee Wynn', 'Evan Moreno', 'Gray Nash', 'Cupiditate ipsum ill', 'Deborah Lloyd', 'Wylie', '', 'Dolor nostrud distin'),
(18, 'Illiana Figueroa', 'Arden', 'Garrison Miles', 'Aut voluptatem id u', 'Alan Fernandez', 'Fallon Rhodes', 'Leslie Daugherty', 'Voluptate atque et s', 'Adam Johns', 'Ryan', '', 'Amet anim in evenie'),
(19, 'Josiah Bray', 'Dillon', 'Cadman Washington', 'Nisi laborum Ad bla', 'Melodie Booth', 'Alden Cohen', 'Driscoll Andrews', 'Mollitia non sunt do', 'Josiah Sloan', 'Clinton', '', 'Recusandae Aliqua '),
(20, 'Sigourney Grant', 'Arthur', 'Stephanie Johnston', 'Eos nulla quibusdam', 'Virginia Mckay', 'Lillian Sherman', 'Beck Mcknight', 'Odit quia eius sunt ', 'Jillian Kane', 'Haley', 'Leo Harmon', 'Non sunt corrupti '),
(21, 'Sarah Huffman', 'Dean', 'Jaden Gill', 'Obcaecati alias laud', 'Uma Velazquez', 'Ciara Logan', 'Serena Todd', 'Itaque quisquam ut c', 'Jillian Fulton', 'Jade', 'Indigo Savage', 'Qui eveniet corrupt'),
(22, 'Rafael Ramsey', 'Garth', 'Germane Robertson', 'Porro facilis error ', 'Lani Hughes', 'Joel Swanson', 'Keely Larson', 'Consectetur sed veni', 'George Burch', 'Zenaida', 'Bevis Hanson', 'Harum nemo dolor par'),
(23, 'Remedios Mckinney', 'Nathan', 'Serina Best', 'Consectetur totam q', 'Madonna Wooten', 'Ainsley Goodman', 'Colby Bonner', 'Omnis dignissimos vo', 'Ariana Ball', 'Brianna', 'Beck Roth', 'Et et sequi vero sit'),
(27, 'Breanna Dillon', 'Sage', 'Belle Hooper', 'Quis corporis sint v', 'Olympia Morrow', 'Mufutau Fulton', 'Lara Fleming', 'Qui fugiat omnis ni', 'Aurora Oliver', 'Hollee', 'Kessie Bolton', 'Aliquip ea ipsam ut '),
(28, 'James Valdez', 'Kai', 'Desiree Hanson', 'Officia autem et nem', 'Flynn Bartlett', 'Gillian Robles', 'Upton Harmon', 'Sint maiores molest', 'Stephen Mendez', 'Danielle', 'Shad Kelley', 'Est praesentium max'),
(29, 'Regan Mays', 'Raphael', 'Harriet Stephenson', 'Maxime fuga Quibusd', 'Nicole Olsen', 'Quinn Douglas', 'Coby Witt', 'Molestias ipsam cons', 'Quyn Martin', 'Britanni', 'Yetta Henson', 'Temporibus ut sapien'),
(30, 'Samson Pierce', 'Cairo', 'Arden Ruiz', 'Sunt reprehenderit', 'Amery Zamora', 'Mikayla Moss', 'Liberty Ball', 'Harum dolore velit o', 'Seth Jackson', 'Palmer', 'Elvis Hewitt', 'Culpa veritatis mole');

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
  `addr_rm_flr` varchar(100) DEFAULT NULL,
  `addr_house_lot` varchar(100) DEFAULT NULL,
  `addr_street` varchar(150) DEFAULT NULL,
  `addr_subdivision` varchar(150) DEFAULT NULL,
  `addr_brgy` varchar(150) DEFAULT NULL,
  `addr_city_muni` varchar(150) DEFAULT NULL,
  `addr_province` varchar(150) DEFAULT NULL,
  `addr_country` varchar(150) DEFAULT NULL,
  `addr_zip` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_data`
--

INSERT INTO `personal_data` (`reg_id`, `lastname`, `firstname`, `middlename`, `suffix`, `dob`, `gender`, `civilstatus`, `civil_status_reason`, `tax_number`, `nationality`, `religion`, `pob_city`, `pob_country`, `addr_rm_flr`, `addr_house_lot`, `addr_street`, `addr_subdivision`, `addr_brgy`, `addr_city_muni`, `addr_province`, `addr_country`, `addr_zip`, `mobile`, `email`) VALUES
(8, 'Arambala', 'Joseph ', 'Anthony', 'D.', '2222-02-22', 'male', 'single', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09456332123', 'josephanthonyarambala1@gmail.com'),
(9, 'Mike ', 'John', 'Bert', 'E.', '2222-02-22', 'male', 'widowed', '', '123456', 'Filipino', 'Roman Catholic', 'Ward 2 Minglanilla Cebu', 'Cebu City', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09786543212', 'josephanthonyarambala1@gmail.com'),
(16, 'Thomas', 'Hakeem', 'Inga Velasquez', 'Debitis velit qui e', '1995-09-13', 'female', 'married', '', '798', 'Consectetur labore e', 'Maiores lorem volupt', 'Dolor nisi qui conse', 'Voluptate nulla laud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32733333345', 'qenat@mailinator.com'),
(17, 'Rasmussen', 'Chester', 'Xyla Wilkinson', 'At facilis dolorem u', '1984-11-02', 'male', 'single', '', '712', 'Et non soluta totam ', 'Sit in quis debitis', 'Ipsa odit ex natus ', 'Elit non quia labor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37856789876', 'qinomypaca@mailinator.com'),
(18, 'Moran', 'Ross', 'Uta Stark', 'Do doloremque dignis', '1996-10-01', 'male', 'single', '', '98', 'Pariatur Perferendi', 'Tempora nulla quae a', 'Commodo sit providen', 'Et sit minima qui d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19545678978', 'bavylotaj@mailinator.com'),
(19, 'Brown', 'Bethany', 'Cooper Gibbs', 'Aut enim ex corporis', '2021-08-30', 'male', 'married', '', '320', 'Dolore qui reiciendi', 'Minus sed ipsa dolo', 'Cumque rerum magni a', 'Est aliqua Archite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '74534567567', 'habocuxev@mailinator.com'),
(20, 'Puckett', 'Phillip', 'Kaden Oneil', 'Praesentium perspici', '2023-08-31', 'male', 'married', '', '824', 'Dolores reprehenderi', 'Mollitia possimus e', 'Est ea magna odit l', 'Modi in quasi vitae ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '90833345678', 'fejite@mailinator.com'),
(21, 'Maddox', 'Gray', 'Germaine Solomon', 'Esse dolore eum eos', '2025-12-24', 'male', 'married', '', '113', 'Error est a exercit', 'Nisi dignissimos con', 'A maiores eligendi l', 'Repudiandae corporis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '732444444444', 'kuvukuw@mailinator.com'),
(22, 'Acosta', 'Zoe', 'Hasad Townsend', 'Est nostrum officia ', '1985-10-13', 'male', 'single', '', '877', 'Deserunt soluta dolo', 'Ad nemo consequat U', 'Sint fuga Et dolore', 'Dolores natus labore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65744456785', 'qanasyh@mailinator.com'),
(23, 'Arnold', 'Aidan', 'Maya Lynch', 'Qui tempore non ill', '1987-01-05', 'male', 'married', '', '929', 'Minus enim at odio e', 'Id ut quia proident', 'Eos et ea quas aute', 'Qui sint et sunt a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45045678987', 'samuzulav@mailinator.com'),
(27, 'Nealzzz', 'Kay', 'Todd Guzman', 'Labore aute aliquam ', '2022-12-06', 'female', 'married', '', '503', 'Enim est veniam cum', 'Rerum sunt rerum as', 'Molestiae rerum elig', 'Eos dolorem error v', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15734567898', 'kuzo@mailinator.com'),
(28, 'Green', 'Garrison', 'Ross Salinas', 'Sint laborum Animi', '2015-09-19', 'male', 'others', 'Labore non quod qui ', '612', 'Laborum error ipsam ', 'Repellendus In volu', 'Nam voluptatem exped', 'Qui reprehenderit di', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '67644456789', 'sowyro@mailinator.com'),
(29, 'Valencia', 'Quin', 'Ian Hatfield', 'Commodo explicabo E', '2020-10-26', 'male', 'married', '', '685', 'Qui dolor eos eos d', 'Reiciendis magna bla', 'Odio quidem iure eum', 'Nostrud laudantium ', 'Molestiae esse dolor', 'Qui labore suscipit ', 'Burton Espinoza', 'Ea molestiae quidem ', 'Accusamus ea deserun', 'Quis aut magni occae', 'Enim dicta sunt iust', 'Non nisi expedita no', '62626', '26633345312', 'vytym@mailinator.com'),
(30, 'Lancaster', 'Shelly', 'Melyssa Clemons', 'Tempor sint velit e', '2014-10-05', 'male', 'widowed', 'Illo itaque ea conse', '905', 'Rerum vitae proident', 'Veniam vero impedit', 'Doloribus veniam qu', 'Omnis dolor quasi ea', 'Nulla dolor aut non ', 'Nemo quasi et simili', 'Felix Copeland', 'Harum velit enim ass', 'Non nisi rerum nihil', 'Consequatur amet eu', 'Doloribus fugit et ', 'Reprehenderit liber', '60051', '54345678987', 'dylykov@mailinator.com');

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
(16, '55', 'Nostrud minus aliqui', '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(17, '67', 'Sint est est obcae', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(18, '15', 'Necessitatibus nostr', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(19, '14', 'Saepe eaque velit s', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(20, '66', 'Adipisicing veniam ', '69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(21, '75', 'Sunt provident ea s', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(22, '67', 'Sit enim repudiandae', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSS System'),
(27, '1', 'Soluta eu suscipit q', '90', 11.00, '2002-03-03', 81.00, 'disapproved', '2017-12-31', '1978-10-09', '1974-01-22', 'SSS System'),
(28, '27', 'Eum quia est amet q', '64', 10.00, '2005-02-09', 19.00, 'approved', '1975-01-01', '2020-02-13', '2022-09-04', 'SSS System'),
(29, '8', 'Vitae odit blanditii', '26', 8.00, '1991-08-11', 83.00, 'disapproved', '2002-02-04', '1992-05-15', '2008-03-26', 'SSS System'),
(30, '84', 'Molestiae ipsum com', '19', 3.00, '1970-07-08', 86.00, 'disapproved', '1989-01-09', '1983-10-27', '2000-11-04', 'SSS System');

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
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
