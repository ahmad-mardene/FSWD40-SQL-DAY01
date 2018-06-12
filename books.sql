-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 10:26 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Title` varchar(55) DEFAULT NULL,
  `Author` varchar(55) DEFAULT NULL,
  `Chapters` tinyint(4) DEFAULT NULL,
  `Pages` smallint(6) DEFAULT NULL,
  `Category` varchar(55) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Buying_Date` date DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `My_Opinion` varchar(100) DEFAULT NULL,
  `Book_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Title`, `Author`, `Chapters`, `Pages`, `Category`, `Description`, `Buying_Date`, `Start_Date`, `End_Date`, `My_Opinion`, `Book_ID`) VALUES
('Lord of the flies', 'Ernest Hemmingway', 10, 200, 'Fantasy', 'Kids on an iland and lives their life without knowing anything about the real world.', '2000-01-01', '2000-01-01', '2000-02-01', 'Nice and I don´t know why the title is called Lord of the flies!', 222),
('Mini and Maxi', 'Astrid Lindgren', 5, 35, 'Jugend', 'Mini und Maxi sind Freund fürs Leben und erleben viele tolle Sachen', '1992-05-05', '0000-00-00', '0000-00-00', 'Excellent for childrens', 1234567890),
('Die Solare Energiewirtschaft', 'Hermann Scheer', 25, 350, 'Fachbuch', 'Pflichtlektüre für Interessierte in Energiewirtschaft', '0000-00-00', '0000-00-00', '0000-00-00', 'Großartig zum Lesen und zum Nachdenken', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
