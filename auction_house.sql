-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 11:41 AM
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
-- Database: `auction_house`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `Amount` int(11) NOT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`Amount`, `fk_customer_id`, `Date`, `Time`) VALUES
(4000, 123, '2017-05-06', '12:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cust_ID` int(11) NOT NULL,
  `Username` varchar(55) DEFAULT NULL,
  `Password` varchar(55) DEFAULT NULL,
  `CUST_Name` varchar(55) DEFAULT NULL,
  `Email_Address` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_ID`, `Username`, `Password`, `CUST_Name`, `Email_Address`) VALUES
(123, 'KATA', '1234567890', 'KATARINE', 'kata.123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `code` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `Brief_discription` varchar(150) DEFAULT NULL,
  `fk_Catalogue_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`code`, `name`, `Brief_discription`, `fk_Catalogue_num`) VALUES
(456, 'Selection of traditional Kobudo Wappens', 'Traditional Okinawa Kobudo Wappens. Made with passion.', 789);

-- --------------------------------------------------------

--
-- Table structure for table `the_set`
--

CREATE TABLE `the_set` (
  `Catalogue_num` int(11) NOT NULL,
  `fk_amount` int(11) DEFAULT NULL,
  `Start_price` int(11) DEFAULT NULL,
  `Heighest_bid` int(11) DEFAULT NULL,
  `Remaining_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `the_set`
--

INSERT INTO `the_set` (`Catalogue_num`, `fk_amount`, `Start_price`, `Heighest_bid`, `Remaining_Time`) VALUES
(789, 4000, 500, 4000, '2018-01-20 18:30:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`Amount`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cust_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`code`),
  ADD KEY `fk_Catalogue_num` (`fk_Catalogue_num`);

--
-- Indexes for table `the_set`
--
ALTER TABLE `the_set`
  ADD PRIMARY KEY (`Catalogue_num`),
  ADD KEY `fk_amount` (`fk_amount`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`Cust_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`fk_Catalogue_num`) REFERENCES `the_set` (`Catalogue_num`);

--
-- Constraints for table `the_set`
--
ALTER TABLE `the_set`
  ADD CONSTRAINT `the_set_ibfk_1` FOREIGN KEY (`fk_amount`) REFERENCES `bid` (`Amount`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
