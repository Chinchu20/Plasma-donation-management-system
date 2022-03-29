-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 05:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plasma_donation_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `donor_blood_group` varchar(100) NOT NULL,
  `donor_id` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `haemoglobin` int(100) NOT NULL,
  `red_blood` int(100) NOT NULL,
  `white_blood` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`donor_blood_group`, `donor_id`, `gender`, `haemoglobin`, `red_blood`, `white_blood`) VALUES
('A+ve', 'D01', 'F', 20000, 230000, 400000),
('B+ve', 'D03', 'M', 230000, 30000, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `covid_affected_or_not`
--

CREATE TABLE `covid_affected_or_not` (
  `patient_id` varchar(100) NOT NULL,
  `covid_affected_or_not` varchar(100) NOT NULL,
  `vaccinated_or_not` varchar(100) NOT NULL,
  `first_dose` varchar(100) NOT NULL,
  `second_dose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `covid_affected_or_not`
--

INSERT INTO `covid_affected_or_not` (`patient_id`, `covid_affected_or_not`, `vaccinated_or_not`, `first_dose`, `second_dose`) VALUES
('P01', 'yes', 'no', 'no', 'no'),
('P02', 'yes', 'yes', 'yes', 'no'),
('P03', 'no', 'yes', 'yes', 'yes'),
('P04', 'yes', 'no', 'yes', 'no'),
('P06', 'no', 'yes', 'yes', 'yes'),
('P07', 'yes', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `donor_medical_history`
--

CREATE TABLE `donor_medical_history` (
  `donor_id` varchar(100) NOT NULL,
  `symptoms_found_during_admission` varchar(100) NOT NULL,
  `symptoms_not_found_during_admission` varchar(100) NOT NULL,
  `date_and_time` varchar(100) NOT NULL,
  `other_medical_history` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_medical_history`
--

INSERT INTO `donor_medical_history` (`donor_id`, `symptoms_found_during_admission`, `symptoms_not_found_during_admission`, `date_and_time`, `other_medical_history`) VALUES
('D01', 'Cold', 'Cough', 'Sun Jan 09 00:00:00 IST 2022', 'NIl'),
('D02', 'Fever', 'Cough', 'Sat Jan 01 00:00:00 IST 2022', 'NIL'),
('D03', 'Rashes', 'Fever', 'Thu Jul 15 00:00:00 IST 2021', 'NIL'),
('D04', 'Fever', '', 'Tue Mar 29 00:00:00 IST 2022', 'nil'),
('D07', 'Cold', 'Cough', 'Tue Mar 29 00:00:00 IST 2022', 'Nil'),
('D08', 'allergy', '', 'Mon Jan 17 00:00:00 IST 2022', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(100) NOT NULL,
  `phone_number` bigint(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `phone_number`, `username`, `password`) VALUES
('chinchu', 9113070813, 'chinchu', 'abc'),
('mansi', 1234567890, 'mansi', 'mansi'),
('Kajol', 3445612100, 'kajol', 'kajol'),
('amisha', 1234567890, 'amisha', 'amisha');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `donor_id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`donor_id`, `action`, `time`) VALUES
(1, 'Inserted', '2022-02-01 20:11:04'),
(3, 'Inserted', '2022-02-01 20:15:18'),
(4, 'Updated', '2022-02-01 20:23:43'),
(5, 'Deleted', '2022-02-01 20:27:05'),
(6, 'Inserted', '2022-02-02 00:44:56'),
(7, 'Inserted', '2022-03-29 14:21:43'),
(8, 'Updated', '2022-03-29 14:22:52'),
(9, 'Updated', '2022-03-29 14:48:32'),
(10, 'Deleted', '2022-03-29 14:48:49'),
(11, 'Inserted', '2022-03-29 14:48:54'),
(12, 'Inserted', '2022-03-29 17:21:59'),
(13, 'Updated', '2022-03-29 17:33:23'),
(14, 'Updated', '2022-03-29 18:47:45'),
(15, 'Updated', '2022-03-29 18:48:15'),
(16, 'Updated', '2022-03-29 19:08:58'),
(17, 'Inserted', '2022-03-29 20:37:57'),
(18, 'Updated', '2022-03-29 20:38:10'),
(19, 'Deleted', '2022-03-29 20:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `plasma_donation_centers`
--

CREATE TABLE `plasma_donation_centers` (
  `donor_blood_group` varchar(100) NOT NULL,
  `plasma_availability` varchar(100) NOT NULL,
  `plasma_active_camp` varchar(100) NOT NULL,
  `active_blood_bank` varchar(100) NOT NULL,
  `near_by_center` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma_donation_centers`
--

INSERT INTO `plasma_donation_centers` (`donor_blood_group`, `plasma_availability`, `plasma_active_camp`, `active_blood_bank`, `near_by_center`) VALUES
('A+ve', 'yes', 'Shimoga', 'St.John', 'Apollo'),
('B+ve', 'yes', 'Coorg', 'Philomena', 'Surya'),
('AB+ve', 'yes', 'Bangalore', 'Astris', 'Apollo');

-- --------------------------------------------------------

--
-- Table structure for table `plasma_donors`
--

CREATE TABLE `plasma_donors` (
  `donor_name` varchar(100) NOT NULL,
  `donor_id` varchar(100) NOT NULL,
  `donor_age` int(100) NOT NULL,
  `donor_phno` bigint(100) NOT NULL,
  `donor_email` varchar(100) NOT NULL,
  `date_and_time` varchar(100) NOT NULL,
  `donor_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma_donors`
--

INSERT INTO `plasma_donors` (`donor_name`, `donor_id`, `donor_age`, `donor_phno`, `donor_email`, `date_and_time`, `donor_address`) VALUES
('Dhanya', 'D01', 20, 1234567890, 'dhanya@gmail.com', 'Tue Feb 01 00:00:00 IST 2022', 'Coorg'),
('Meera', 'D02', 24, 34567890522, 'meera@gmail.com', 'Tue Feb 01 00:00:00 IST 2022', 'Bangalore'),
('Mansi', 'D03', 23, 4567890021, 'mansi@gmail.com', 'Wed Feb 02 00:00:00 IST 2022', 'Chennai'),
('Astha', 'D06', 25, 123455678, 'astha@gmail.com', 'Tue Mar 29 00:00:00 IST 2022', 'Bangalore'),
('Diya', 'D07', 25, 1234567890, 'diya@gmail.com', 'Wed Mar 30 00:00:00 IST 2022', 'Delhi');

--
-- Triggers `plasma_donors`
--
DELIMITER $$
CREATE TRIGGER `deleteLog` BEFORE DELETE ON `plasma_donors` FOR EACH ROW INSERT INTO logs VALUES(OLD.donor_id,"Deleted",NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertLog` AFTER INSERT ON `plasma_donors` FOR EACH ROW INSERT INTO logs VALUES(donor_id,'Inserted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateLog` AFTER UPDATE ON `plasma_donors` FOR EACH ROW insert INTO logs VALUES(NEW.donor_id,"Updated",NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `plasma_requests`
--

CREATE TABLE `plasma_requests` (
  `patient_id` varchar(100) NOT NULL,
  `patient_blood_group` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_age` int(100) NOT NULL,
  `patient_phno` bigint(100) NOT NULL,
  `patient_email` varchar(100) NOT NULL,
  `patient_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plasma_requests`
--

INSERT INTO `plasma_requests` (`patient_id`, `patient_blood_group`, `patient_name`, `patient_age`, `patient_phno`, `patient_email`, `patient_address`) VALUES
('P01', 'A+ve', 'Meera', 23, 1234567890, 'meers@gmail.com', 'Nainital'),
('P02', 'A+ve', 'Simran', 23, 1234567890, 'simran@gmail.com', 'Nainital'),
('P05', 'AB+ve', 'raj', 25, 2345676577, 'rahul@gmail.com', 'Pune');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `covid_affected_or_not`
--
ALTER TABLE `covid_affected_or_not`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `donor_medical_history`
--
ALTER TABLE `donor_medical_history`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `plasma_donors`
--
ALTER TABLE `plasma_donors`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `plasma_requests`
--
ALTER TABLE `plasma_requests`
  ADD PRIMARY KEY (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
