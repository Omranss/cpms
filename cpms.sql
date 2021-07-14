-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 12:48 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Affiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `University` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `State` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zip_Code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone_Number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email_Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `username`, `active`, `first_name`, `middle_name`, `last_name`, `Affiliation`, `University`, `Department`, `Address`, `City`, `State`, `Zip_Code`, `Phone_Number`, `Email_Address`) VALUES
(30, 'ching.lee', 'Y', 'Ching', 'L', 'Lee', 'alumni', 'university of south florida', 'Art', '4202 E Fowler Avenue', 'Tampa', 'FL', '33620', '813-974-2011', 'ching.lee@usf.edu');

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `paperid` int(255) NOT NULL,
  `authorid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewId` int(255) NOT NULL,
  `paperId` int(255) NOT NULL,
  `reviewerid` int(255) NOT NULL,
  `complete` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overallRating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `or_comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Appropriateness_of_Topic` int(255) NOT NULL,
  `Timeliness_of_Topic` int(255) NOT NULL,
  `Supportive_Evidence` int(255) NOT NULL,
  `Technical_Quality` int(255) NOT NULL,
  `Scope_of_Coverage` int(255) NOT NULL,
  `Citation_of_Previous_Work` int(255) NOT NULL,
  `Originality` int(255) NOT NULL,
  `Organization_of_Paper` int(255) NOT NULL,
  `Clarity_of_Main_Message` int(255) NOT NULL,
  `Mechanics` int(255) NOT NULL,
  `Suitability_for_Presentation` int(255) NOT NULL,
  `Potential_Interest_in_Topic` int(255) NOT NULL,
  `wdcomment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opcomment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewId`, `paperId`, `reviewerid`, `complete`, `overallRating`, `or_comments`, `content_comments`, `Appropriateness_of_Topic`, `Timeliness_of_Topic`, `Supportive_Evidence`, `Technical_Quality`, `Scope_of_Coverage`, `Citation_of_Previous_Work`, `Originality`, `Organization_of_Paper`, `Clarity_of_Main_Message`, `Mechanics`, `Suitability_for_Presentation`, `Potential_Interest_in_Topic`, `wdcomment`, `opcomment`) VALUES
(46, 26, 23, 'Y', '3.5833333333333', 'hehehehe gey', '', 3, 3, 3, 3, 3, 3, 3, 5, 5, 5, 1, 1, '', ''),
(50, 30, 23, 'Y', '3.5833333333333', 'OH MY GOD NO SCOPE!', 'rrgrgrgrgrgr', 3, 3, 3, 3, 3, 3, 3, 5, 5, 5, 1, 1, 'grgrgrr', 'grgrgrgr');

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `reviewer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Affiliation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `University` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `State` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zip_Code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone_Number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email_Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`reviewer_id`, `username`, `active`, `first_name`, `middle_name`, `last_name`, `Affiliation`, `University`, `Department`, `Address`, `City`, `State`, `Zip_Code`, `Phone_Number`, `Email_Address`, `interest_1`, `interest_2`, `interest_3`) VALUES
(24, 'rick_astley', 'Y', 'Rick', 'P', 'Astley', 'student', 'University of Tampa', 'College of Business ', '8789 hill ave', 'Tampa', 'FL', '33647', '813-808-9784', 'rick.astley@gmail.com', 'Analysis of Algorithms', 'Literacy', 'Security');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`, `status`) VALUES
('admin', '1234', 'admin', 'Y'),
('ching.lee', '1234', 'author', 'Y'),
('rick_astley', '1234', 'reviewer', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `Phone_Number` (`Phone_Number`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`paperid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewId`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`reviewer_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `Phone_Number` (`Phone_Number`),
  ADD UNIQUE KEY `Email_Address` (`Email_Address`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`,`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `paper`
--
ALTER TABLE `paper`
  MODIFY `paperid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviewer`
--
ALTER TABLE `reviewer`
  MODIFY `reviewer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
