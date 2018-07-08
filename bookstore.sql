-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2018 at 08:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amba_business`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(14) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userLevel` enum('0','1') NOT NULL DEFAULT '1',
  `last_login` timestamp NULL DEFAULT NULL,
  `isActive` enum('0','1') DEFAULT '0',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tokenCode` varchar(60) DEFAULT NULL,
  `online` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `firstName`, `lastName`, `email`, `phoneNumber`, `password`, `userLevel`, `last_login`, `isActive`, `date_created`, `tokenCode`, `online`) VALUES
(1, 'Dalin', 'Oluoch', 'mcdalinoluoch@gmail.com', '0715973838', '5f4dcc3b5aa765d61d8327deb882cf99', '0', NULL, '1', '2018-05-14 19:55:55', NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sys_config`
--

CREATE TABLE `tbl_sys_config` (
  `item_id` int(12) NOT NULL,
  `main_url` varchar(200) NOT NULL,
  `system_name` varchar(100) NOT NULL,
  `system_registered_to` varchar(150) NOT NULL,
  `sys_default_ip` varchar(120) NOT NULL,
  `sys_status_enabled` int(12) NOT NULL DEFAULT '1',
  `support_email` varchar(150) NOT NULL,
  `support_phone` varchar(150) NOT NULL,
  `support_website` varchar(150) NOT NULL,
  `deployment_date` varchar(150) NOT NULL,
  `deployed_by` varchar(150) NOT NULL,
  `sys_version` varchar(100) NOT NULL,
  `system_act_status` int(12) NOT NULL DEFAULT '0',
  `termination_date` datetime NOT NULL,
  `isssl` varchar(12) DEFAULT NULL,
  `coop_phone` varchar(16) DEFAULT NULL,
  `coop_website` varchar(255) DEFAULT NULL,
  `companyAddress` text,
  `coop_countyid` int(11) DEFAULT NULL,
  `coop_email` varchar(120) DEFAULT NULL,
  `coop_logo` varchar(600) DEFAULT NULL,
  `coop_status` int(3) DEFAULT '1',
  `companyPIN` varchar(50) DEFAULT NULL,
  `companyName` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sys_config`
--

INSERT INTO `tbl_sys_config` (`item_id`, `main_url`, `system_name`, `system_registered_to`, `sys_default_ip`, `sys_status_enabled`, `support_email`, `support_phone`, `support_website`, `deployment_date`, `deployed_by`, `sys_version`, `system_act_status`, `termination_date`, `isssl`, `coop_phone`, `coop_website`, `companyAddress`, `coop_countyid`, `coop_email`, `coop_logo`, `coop_status`, `companyPIN`, `companyName`) VALUES
(1, 'http://ambabusiness.com', 'Amba Business', 'Amba Business', '127.0.0.1', 1, 'mcdalinoluoch@gmail.com', '', '', '', '', 'VER 1.0.0', 1, '2017-06-01 00:00:00', 'http://', '0720000000', 'www.amababusiness.com', 'Amba Business', 3, 'info@ambabusiness.com', '', 1, 'P051615995Z', 'SME Resource Centre');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phoneNumber` varchar(14) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userLevel` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `isActive` enum('0','1') DEFAULT '0',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tokenCode` varchar(60) DEFAULT NULL,
  `online` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `firstName`, `lastName`, `email`, `phoneNumber`, `password`, `userLevel`, `last_login`, `isActive`, `date_created`, `tokenCode`, `online`) VALUES
(1, 'Dalin', 'Oluoch', 'mcdalinoluoch@gmail.com', '0715973838', '5f4dcc3b5aa765d61d8327deb882cf99', 0, NULL, '1', '2018-05-14 10:53:33', 'a060cf66825d00264e01f919bdfcae19', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `userLevelId` enum('0','1','2','3') NOT NULL,
  `userLevelName` varchar(50) NOT NULL,
  `userLevelDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_sys_config`
--
ALTER TABLE `tbl_sys_config`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD KEY `userLevel` (`userLevel`),
  ADD KEY `userLevel_2` (`userLevel`),
  ADD KEY `userLevel_3` (`userLevel`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`userLevelId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
