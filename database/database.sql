-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2019 at 11:39 PM
-- Server version: 5.6.45
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `harisfer_sadf`
--
DROP DATABASE IF EXISTS `harisfer_sadf`;
CREATE DATABASE IF NOT EXISTS `harisfer_sadf` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `harisfer_sadf`;

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `idapplication` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `logo` varchar(1000) NOT NULL,
  `sc1` varchar(1000) NOT NULL,
  `sc2` varchar(1000) NOT NULL,
  `sc3` varchar(1000) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `web` varchar(1000) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `uniqueKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idapplication`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`idapplication`, `name`, `description`, `logo`, `sc1`, `sc2`, `sc3`, `category`, `web`, `iduser`, `date`, `uniqueKey`) VALUES
(11, 'Mob App', 'like fb app', '', '', '', '', '', '', 1, '09-06-2019', '5cfcc91482fae'),
(12, 'FBLike', 'Fb like mobile Applicaion', '', '', '', '', '', '', 3, '16-10-2019', '5da6d436e157a'),
(13, 'Whatsapp Like', 'Whatsapp like mobile application', '', '', '', '', '', '', 3, '16-10-2019', '5da6f54783388'),
(14, 'instagram oikee', 'instragram like apps', '', '', '', '', '', '', 3, '16-10-2019', '5da6f6f13236e'),
(15, 'Alphapeeler', 'Alphapeeler', '', '', '', '', '', '', 1, '16-10-2019', '5da6f902ac307'),
(17, 'Haris', 'sdad sadasd sdsd asd dsd sdas dd as das sd as', '6098png', '33025png', '6274png', '85267png', 'Education', 'https://fb.com', 1, '22-11-2019', '5dd8705d4a612'),
(18, 'testappl', 'dasd sd aa das  d asd as', '39034png', '20654png', '17397png', '14870png', 'Education', 'https://fb.com', 1, '03-12-2019', '5de683b9de64d'),
(19, 'qwerty', 'dsdsad', '64823.png', '70748.png', '2621.png', '25949.png', 'Education', 'https://fb.com', 1, '04-12-2019', '5de7939f1b25e'),
(20, 'cvxvxc', 'xvxcv', '71607.png', '51743.png', '22521.png', '66682.png', 'Education', 'https://fb.com', 1, '04-12-2019', '5de794c62bf16');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(400) NOT NULL,
  `idapplication` int(200) NOT NULL,
  `idversion` int(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `deviceid`, `idapplication`, `idversion`, `active`) VALUES
(5, '1', 15, 18, 1),
(6, '2', 15, 18, 1),
(8, '3', 15, 18, 1),
(9, '7a57c43b9a62182b', 15, 18, 1),
(10, '1123123123', 15, 18, 0),
(11, '9dc4bfe63bd4508b', 15, 18, 1),
(12, '446e5d5eafbb2753', 15, 18, 0),
(13, '30d5a4068b3fe23', 15, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `active` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `name`, `email`, `mobile`, `address`, `active`, `username`, `password`, `dob`, `image`) VALUES
(1, 'haris', 'harisferoz@gmail.com', '03145256325', 'test', '1', 'haris1', '123456', '1990-05-25', ''),
(3, 'haris', 'mharisferoz@gmail.com', '034552563', 'safora', '1', 'haris', '123456', '1990-05-25', 'dffdfdffsdfdf.jpg'),
(4, 'zxczcx', 'xc@sada.com', '5555', '4asdsds', '1', 'jjj', '123', '2019-04-20', ''),
(5, 'abcd', 'haris23ka4@gmail.com', '562445', 'jjj', '1', 'haris23ka4', '123456', '2001-06-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE IF NOT EXISTS `versions` (
  `idversions` int(11) NOT NULL AUTO_INCREMENT,
  `versionname` varchar(45) DEFAULT NULL,
  `short` varchar(10000) NOT NULL,
  `version` varchar(45) DEFAULT NULL,
  `idapplication` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `file` varchar(1000) NOT NULL,
  PRIMARY KEY (`idversions`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`idversions`, `versionname`, `short`, `version`, `idapplication`, `iduser`, `file`) VALUES
(8, 'Mob App 4', '', '0.0.4', 11, 1, ''),
(11, 'FBLike', '', '0.0.1', 12, 3, ''),
(12, 'Whatsapp Like.apk', '', '0.0.1', 13, 3, ''),
(13, 'instagram oikee.apk', '', '0.0.1', 14, 3, ''),
(17, '', 'testing 2', '1.0.1', 15, 1, 'app_v1.0.1.apk'),
(18, NULL, 'update', '1.0.3', 15, 1, 'app-debug.apk'),
(22, '', '', '', 11, 1, '2019-12-04-16-43-52.apk');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
