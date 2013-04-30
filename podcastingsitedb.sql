-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2013 at 08:25 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `podcastingsitedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryTitle` varchar(30) NOT NULL,
  `categoryDesc` text NOT NULL,
  PRIMARY KEY (`categoryID`),
  UNIQUE KEY `categoryID` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryTitle`, `categoryDesc`) VALUES
(1, 'Movie Reviews', ''),
(2, 'Podcasts', 'Here you''ll find all the original Spill podcasts; they are all unedited and uncensored. This is the home of A Couple of Cold Ones, The League of Extremely Ordinary Gentlemen, Let''s Do This, The Spill Call-In Show, The Loading Bar and all the other special podcasts, such as Spill at Comic-Con or Sundance.');

-- --------------------------------------------------------

--
-- Table structure for table `podcasts`
--

CREATE TABLE IF NOT EXISTS `podcasts` (
  `podcastID` int(11) NOT NULL,
  `podcastTitle` varchar(30) NOT NULL,
  `podcastDesc` text NOT NULL,
  `categoryID` int(11) NOT NULL,
  PRIMARY KEY (`podcastID`),
  UNIQUE KEY `podcastID` (`podcastID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `podcasts`
--

INSERT INTO `podcasts` (`podcastID`, `podcastTitle`, `podcastDesc`, `categoryID`) VALUES
(1, 'Audio Reviews', '', 1),
(2, 'Video Reviews', '', 1),
(3, 'A Couple of Cold Ones', '', 2),
(4, 'Let''s Do This!', '', 2),
(5, 'The Loading Bar', '', 2),
(6, 'The Spill Call-In Show', '', 2),
(7, 'Billy and Korey Show', '', 2),
(8, 'Other Podcasts', '', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
