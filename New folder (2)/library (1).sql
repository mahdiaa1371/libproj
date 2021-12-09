-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 10:05 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `bookid`
--

CREATE TABLE `bookid` (
  `book_id` int(5) NOT NULL,
  `book_name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `shabak` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `price` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `subject` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `count` varchar(4) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `bookid`
--

INSERT INTO `bookid` (`book_id`, `book_name`, `shabak`, `price`, `subject`, `count`) VALUES
(1, 'دولت و فرزانگی', '11351652', '40000', 'sychological', '2'),
(2, 'le misrable', '1212516', '200000', 'novel', '5'),
(3, 'شاهنامه', '54135131', '500000', ' شعر حماسی', '2'),
(5, 'w&p', '63516', '200000', 'novel', '5');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `mid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `s_date` date NOT NULL,
  `f_date` date NOT NULL,
  `borrow_id` int(11) NOT NULL,
  `situ` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`mid`, `bid`, `s_date`, `f_date`, `borrow_id`, `situ`) VALUES
(1, 1, '2021-12-02', '2021-12-22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mid` int(5) NOT NULL,
  `name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `n_code` int(9) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mid`, `name`, `last_name`, `n_code`, `phone`) VALUES
(1, 'mahdi', 'amirahmady', 15451011, 910200494),
(2, 'farshad', 'asghari', 6256233, 912456541),
(3, 'mashti', 'melon', 54254, 427783),
(4, 'mahdi', 'amirahmaady', 13531, 23513);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookid`
--
ALTER TABLE `bookid`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookid`
--
ALTER TABLE `bookid`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
