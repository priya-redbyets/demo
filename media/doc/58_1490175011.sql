-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2017 at 09:10 AM
-- Server version: 5.6.24
-- PHP Version: 5.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolzen`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_section_mapping`
--

CREATE TABLE IF NOT EXISTS `class_section_mapping` (
  `id` int(11) NOT NULL,
  `class_name` int(11) DEFAULT NULL,
  `section_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_section_mapping`
--

INSERT INTO `class_section_mapping` (`id`, `class_name`, `section_name`) VALUES
(21, 17, NULL),
(22, 19, NULL),
(23, 19, NULL),
(24, 17, NULL),
(25, 19, NULL),
(26, 20, NULL),
(27, 22, NULL),
(28, 17, NULL),
(29, 22, NULL),
(30, 19, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_name`),
  ADD KEY `section_id_idx` (`section_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `section_id` FOREIGN KEY (`section_name`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
