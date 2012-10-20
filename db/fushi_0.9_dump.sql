-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2012 at 04:17 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fushi`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `hates` int(10) unsigned NOT NULL DEFAULT '0',
  `author_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `author_id` (`author_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attributes_names`
--

CREATE TABLE IF NOT EXISTS `attributes_names` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `attributes_names`
--

INSERT INTO `attributes_names` (`_id`, `name`, `is_deleted`) VALUES
(1, 'Boolean', 0),
(2, 'Vowel', 0),
(3, 'Number', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributes_values`
--

CREATE TABLE IF NOT EXISTS `attributes_values` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `name_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `name_id` (`name_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `attributes_values`
--

INSERT INTO `attributes_values` (`_id`, `value`, `is_deleted`, `name_id`) VALUES
(1, 'true', 0, 1),
(2, 'false', 0, 1),
(3, 'A', 0, 2),
(4, 'E', 0, 2),
(5, 'I', 0, 2),
(6, 'O', 0, 2),
(7, 'U', 0, 2),
(8, '1 - one', 0, 3),
(9, '2 - two', 0, 3),
(10, '3 - three', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`_id`, `name`, `is_published`, `is_deleted`) VALUES
(1, 'Uncategorized', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `hates` int(10) unsigned NOT NULL DEFAULT '0',
  `article_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE IF NOT EXISTS `fruits` (
  `_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT 'standard euro (unsigned)',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=384 ;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`_id`, `name`, `price`, `created_at`, `updated_at`, `is_published`, `is_deleted`) VALUES
(1, 'apple', '5.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(2, 'banana', '16.22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'orange', '12.12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(4, 'watermelon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1),
(5, 'kiwi', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'Canary', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'Cantaloupe', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(9, 'Casaba', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(10, 'Crenshaw', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(11, 'Galia', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(12, 'Honeydew', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(13, 'Persian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(14, 'Santa Claus', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(15, 'Sharlyn', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(16, 'Watermelon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(17, 'Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(18, 'Crabapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(19, 'Sugar Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(20, 'Custard Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(21, 'Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(22, 'Apricot', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(23, 'Peach', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(24, 'Nectarine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(25, 'Plum', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(26, 'Cherry ', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(27, 'Blackberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(28, 'Raspberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(29, 'Mulberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(30, 'Strawberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(31, 'Cranberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(32, 'Blueberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(33, 'Jostaberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(34, 'Gooseberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(35, 'Elderberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(36, 'Currant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(37, 'Grapes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(38, 'Kiwi Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(39, 'Papaya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(40, 'Mango', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(41, 'Figs', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(42, 'Dates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(43, 'Olives', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(44, 'Jujubes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(45, 'Pomegranates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(46, 'Lemons', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(47, 'Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(48, 'Key Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(49, 'Mandarin', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(50, 'Orange', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(51, 'Sweet Lime', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(52, 'Tangerine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(53, 'Clementines', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(54, 'Grapefruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(55, 'Satsumas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(56, 'Tangelos', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(57, 'Uglis', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(58, 'Pommelo', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(59, 'Quinces', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(60, 'Prickly Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(61, 'Kumquats', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(62, 'Minneolas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(63, 'Avocado', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(64, 'Guava', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(65, 'Cherry Guavas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(66, 'Lychee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(67, 'Rambutan', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(68, 'Passion Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(69, 'Tomato', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(70, 'Carambola', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(71, 'Banana', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(72, 'Plantain', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(73, 'Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(74, 'Bitter Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(75, 'Cashew Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(76, 'Coconut', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(77, 'Jackfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(78, 'Neem', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(79, 'Okra', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(80, 'Pineapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(81, 'Tamarind', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(82, 'Loquat', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(83, 'Breadfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(84, 'Canistel', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(85, 'Cherimoya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(86, 'Mammea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(87, 'Persimmon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(88, 'Rolinea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(89, 'Sapodilla', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(90, 'Akee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(91, 'Champedak', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(92, 'Durian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(93, 'Cucumber', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(94, 'Eggplant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(95, 'Pepper', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(96, 'Squash', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(97, 'Sapote', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(98, 'Canary', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(99, 'Cantaloupe as', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(100, 'Casaba', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(101, 'Crenshaw', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(102, 'Galia', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(103, 'Honeydew', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(104, 'Persian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(105, 'Santa Claus', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(106, 'Sharlyn', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(107, 'Watermelon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(108, 'Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(109, 'Crabapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(110, 'Sugar Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(111, 'Custard Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(112, 'Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(113, 'Apricot', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(114, 'Peach', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(115, 'Nectarine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(116, 'Plum', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(117, 'Cherry ', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(118, 'Blackberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(119, 'Raspberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(120, 'Mulberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(121, 'Strawberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(122, 'Cranberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(123, 'Blueberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(124, 'Jostaberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(125, 'Gooseberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(126, 'Elderberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(127, 'Currant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(128, 'Grapes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(129, 'Kiwi Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(130, 'Papaya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(131, 'Mango', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(132, 'Figs', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(133, 'Dates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(134, 'Olives', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(135, 'Jujubes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(136, 'Pomegranates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(137, 'Lemons', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(138, 'Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(139, 'Key Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(140, 'Mandarin', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(141, 'Orange', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(142, 'Sweet Lime', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(143, 'Tangerine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(144, 'Clementines', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(145, 'Grapefruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(146, 'Satsumas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(147, 'Tangelos', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(148, 'Uglis', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(149, 'Pommelo', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(150, 'Quinces', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(151, 'Prickly Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(152, 'Kumquats', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(153, 'Minneolas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(154, 'Avocado', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(155, 'Guava', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(156, 'Cherry Guavas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(157, 'Lychee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(158, 'Rambutan', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(159, 'Passion Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(160, 'Tomato', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(161, 'Carambola', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(162, 'Banana', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(163, 'Plantain', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(164, 'Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(165, 'Bitter Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(166, 'Cashew Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(167, 'Coconut', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(168, 'Jackfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(169, 'Neem', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(170, 'Okra', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(171, 'Pineapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(172, 'Tamarind', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(173, 'Loquat', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(174, 'Breadfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(175, 'Canistel', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(176, 'Cherimoya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(177, 'Mammea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(178, 'Persimmon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(179, 'Rolinea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(180, 'Sapodilla', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(181, 'Akee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(182, 'Champedak', '0.01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(183, 'Durian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(184, 'Cucumber', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(185, 'Eggplant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(186, 'Pepper', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(187, 'Squash', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(188, 'Sapote', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(189, 'Canary', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(190, 'Cantaloupe', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(191, 'Casaba', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(192, 'Crenshaw', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(193, 'Galia', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(194, 'Honeydew', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(195, 'Persian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(196, 'Santa Claus', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(197, 'Sharlyn', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(198, 'Watermelon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(199, 'Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(200, 'Crabapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(201, 'Sugar Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(202, 'Custard Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(203, 'Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(204, 'Apricot', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(205, 'Peach', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(206, 'Nectarine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(207, 'Plum', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(208, 'Cherry ', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(209, 'Blackberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(210, 'Raspberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(211, 'Mulberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(212, 'Strawberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(213, 'Cranberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(214, 'Blueberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(215, 'Jostaberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(216, 'Gooseberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(217, 'Elderberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(218, 'Currant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(219, 'Grapes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(220, 'Kiwi Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(221, 'Papaya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(222, 'Mango', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(223, 'Figs', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(224, 'Dates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(225, 'Olives', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(226, 'Jujubes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(227, 'Pomegranates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(228, 'Lemons', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(229, 'Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(230, 'Key Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(231, 'Mandarin', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(232, 'Orange', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(233, 'Sweet Lime', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(234, 'Tangerine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(235, 'Clementines', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(236, 'Grapefruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(237, 'Satsumas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(238, 'Tangelos', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(239, 'Uglis', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(240, 'Pommelo', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(241, 'Quinces', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(242, 'Prickly Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(243, 'Kumquats', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(244, 'Minneolas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(245, 'Avocado', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(246, 'Guava', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(247, 'Cherry Guavas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(248, 'Lychee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(249, 'Rambutan', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(250, 'Passion Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(251, 'Tomato', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(252, 'Carambola', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(253, 'Banana', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(254, 'Plantain', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(255, 'Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(256, 'Bitter Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(257, 'Cashew Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(258, 'Coconut', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(259, 'Jackfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(260, 'Neem', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(261, 'Okra', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(262, 'Pineapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(263, 'Tamarind', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(264, 'Loquat', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(265, 'Breadfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(266, 'Canistel', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(267, 'Cherimoya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(268, 'Mammea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(269, 'Persimmon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(270, 'Rolinea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(271, 'Sapodilla', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(272, 'Akee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(273, 'Champedak', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(274, 'Durian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(275, 'Cucumber', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(276, 'Eggplant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(277, 'Pepper', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(278, 'Squash', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(279, 'Sapote', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(280, 'Canary', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(281, 'Cantaloupe', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(282, 'Casaba', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(283, 'Crenshaw', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(284, 'Galia', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(285, 'Honeydew', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(286, 'Persian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(287, 'Santa Claus', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(288, 'Sharlyn', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(289, 'Watermelon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(290, 'Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(291, 'Crabapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(292, 'Sugar Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(293, 'Custard Apple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(294, 'Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(295, 'Apricot', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(296, 'Peach', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(297, 'Nectarine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(298, 'Plum', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(299, 'Cherry ', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(300, 'Blackberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(301, 'Raspberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(302, 'Mulberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(303, 'Strawberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(304, 'Cranberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(305, 'Blueberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(306, 'Jostaberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(307, 'Gooseberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(308, 'Elderberry', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(309, 'Currant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(310, 'Grapes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(311, 'Kiwi Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(312, 'Papaya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(313, 'Mango', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(314, 'Figs lol', '3.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(315, 'Dates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(316, 'Olives', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(317, 'Jujubes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(318, 'Pomegranates', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(319, 'Lemons', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(320, 'Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(321, 'Key Limes', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(322, 'Mandarin', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(323, 'Orange', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
(324, 'Sweet Lime', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(325, 'Tangerine', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(326, 'Clementines', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(327, 'Grapefruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(328, 'Satsumas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(329, 'Tangelos', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(330, 'Uglis', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(331, 'Pommelo', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(332, 'Quinces', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(333, 'Prickly Pear', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(334, 'Kumquats', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(335, 'Minneolas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(336, 'Avocado', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(337, 'Guava', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(338, 'Cherry Guavas', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(339, 'Lychee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(340, 'Rambutan', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(341, 'Passion Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(342, 'Tomato', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(343, 'Carambola', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(344, 'Banana', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(345, 'Plantain', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(346, 'Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(347, 'Bitter Gourd', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(348, 'Cashew Fruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(349, 'Coconut', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(350, 'Jackfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(351, 'Neem', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(352, 'Okra', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(353, 'Pineapple', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(354, 'Tamarind', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(355, 'Loquat', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(356, 'Breadfruit', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(357, 'Canistel', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(358, 'Cherimoya', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(359, 'Mammea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(360, 'Persimmon', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(361, 'Rolinea', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(362, 'Sapodilla', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(363, 'Akee', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(364, 'Champedak', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(365, 'Durian', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(366, 'Cucumber', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(367, 'Eggplant', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(368, 'Pepper', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(369, 'Squash', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(370, 'Sapote', '0.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sessionId` varchar(40) NOT NULL DEFAULT '0',
  `ipAddress` varchar(16) NOT NULL DEFAULT '0',
  `userAgent` varchar(120) NOT NULL,
  `entryDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastActivity` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`_id`, `user_id`, `sessionId`, `ipAddress`, `userAgent`, `entryDate`, `lastActivity`) VALUES
(128, 1, 'daif3bgj6mcv62het17lat3323', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:18.0) Gecko/18.0 Firefox/18.0', '2012-10-20 17:21:32', 1350747418),
(130, 1, '0gjqd2m5tmi2rr822smmgcscb2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:18.0) Gecko/18.0 Firefox/18.0', '2012-10-20 17:39:27', 1350749668);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  `group` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`_id`, `name`, `value`, `group`, `is_deleted`) VALUES
(1, 'name', 'Fushi PHP Boilerplate', 'site', 0),
(2, 'bool_var', '0', 'examples', 0),
(3, 'int_var', '12', 'examples', 0),
(8, 'last_connected_users', '10', 'backoffice', 0);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `h2` varchar(255) DEFAULT NULL,
  `metaDescription` varchar(255) DEFAULT NULL,
  `metaKeywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`_id`, `name`, `title`, `h1`, `h2`, `metaDescription`, `metaKeywords`) VALUES
(1, 'default', '', 'Hello, World!', 'This is your slogan.', 'This is the default meta description.', 'fushi, default, meta, keywords'),
(3, 'backoffice', '', 'Gestionale', '', '', ''),
(5, 'chi-siamo', 'Chi Siamo', 'Chi Siamo', 'Ecco chi siamo.', 'Scopri ora chi siamo.', 'chi, siamo'),
(6, 'dove-siamo', 'Dove Siamo', 'Dove Siamo', 'Ecco dove siamo.', 'dove siamo.', 'dove, siamo'),
(7, 'servizi', 'Servizi', 'Servizi', 'Ecco i nostri servizi.', 'Descrizione', 'i, nostri, servizi'),
(8, 'contatti', 'Contatti', 'Contattaci', 'Compila il modulo.', 'Contattaci', 'contatti'),
(10, 'prodotti', 'Products', 'Products', 'Here''s a list of our products.', 'description', 'keywords');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `cap` varchar(5) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `bio` text NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `birthday` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `login`, `name`, `surname`, `email`, `password`, `address`, `cap`, `city`, `bio`, `is_admin`, `is_deleted`, `created_at`, `updated_at`, `birthday`) VALUES
(0, 'guest', 'visitatore', '', 'guest@dontdeleteme.com', NULL, NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 'admin', 'Administrator', 'Demo', 'xyzzy@autistici.org', '*C142FB215B6E05B7C134B1A653AD4B455157FD79', '', '06073', 'Perugia', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user', 'pinco', 'pallino', 'pincopallino@email.it', '*033325B717C9347C9FD49BA1F76B0D3D6253ACD9', NULL, NULL, NULL, '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'deleted_user', 'deleted', 'user', 'deleted@user.com', NULL, NULL, NULL, NULL, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'demo', 'John', 'Doe', 'john@doe.com', '*C142FB215B6E05B7C134B1A653AD4B455157FD79', NULL, NULL, 'Atlanta', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
