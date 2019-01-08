-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2019 at 10:31 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `accndetails`
--

CREATE TABLE `accndetails` (
  `accnNumber` int(10) NOT NULL,
  `accnName` varchar(255) NOT NULL,
  `introducerNum` int(10) DEFAULT NULL,
  `beneficiaryNum` int(10) DEFAULT NULL,
  `timeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accndetails`
--

INSERT INTO `accndetails` (`accnNumber`, `accnName`, `introducerNum`, `beneficiaryNum`, `timeStamp`) VALUES
(1, 'aaa', NULL, NULL, '2019-01-08 08:37:50'),
(2, 'bbb', NULL, NULL, '2019-01-08 08:37:50'),
(3, 'ccc', 1, 1, '2019-01-08 08:38:40'),
(4, 'ddd', 2, 2, '2019-01-08 08:38:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accndetails`
--
ALTER TABLE `accndetails`
  ADD PRIMARY KEY (`accnNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accndetails`
--
ALTER TABLE `accndetails`
  MODIFY `accnNumber` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
