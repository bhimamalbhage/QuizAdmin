-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2019 at 09:10 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_category`
--

CREATE TABLE `t_category` (
  `id` int(100) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_category`
--

INSERT INTO `t_category` (`id`, `cat_name`) VALUES
(1, 'Physics'),
(2, 'Chemistry'),
(3, 'Mathematics');

-- --------------------------------------------------------

--
-- Table structure for table `t_questions`
--

CREATE TABLE `t_questions` (
  `id` int(200) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_questions`
--

INSERT INTO `t_questions` (`id`, `question`, `answer`, `cat_id`) VALUES
(1, 'uploads/1.png', 2, 1),
(2, 'uploads/2.png', 3, 1),
(3, 'uploads/3.png', 3, 1),
(4, 'uploads/31.png', 3, 2),
(5, 'uploads/32.png', 3, 2),
(6, 'uploads/33.png', 3, 2),
(7, 'uploads/61.png', 1, 3),
(8, 'uploads/62.png', 1, 3),
(9, 'uploads/63.png', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_signup`
--

CREATE TABLE `t_signup` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `qno` varchar(1000) DEFAULT NULL,
  `ans` varchar(1000) DEFAULT NULL,
  `saven` varchar(1000) DEFAULT NULL,
  `savem` varchar(1000) DEFAULT NULL,
  `markn` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_signup`
--

INSERT INTO `t_signup` (`id`, `name`, `email`, `pass`, `qno`, `ans`, `saven`, `savem`, `markn`) VALUES
(1, 'bhima', 'bhima', 'bhima', 'a:9:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;}', 'a:9:{i:0;i:2;i:1;i:3;i:2;i:3;i:3;i:3;i:4;i:3;i:5;i:3;i:6;i:1;i:7;i:1;i:8;i:1;}', 'a:9:{i:0;i:0;i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"2\";i:8;s:1:\"1\";}', NULL, NULL),
(2, 'shankar', 'shankar', 'shankar', 'a:9:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;}', 'a:9:{i:0;i:2;i:1;i:3;i:2;i:3;i:3;i:3;i:4;i:3;i:5;i:3;i:6;i:1;i:7;i:1;i:8;i:1;}', 'a:9:{i:0;i:0;i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"4\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"2\";i:8;s:1:\"1\";}', NULL, NULL),
(11, 'kedar', 'kedar', 'kedar', 'a:9:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;i:5;i:6;i:6;i:7;i:7;i:8;i:8;i:9;}', 'a:9:{i:0;i:2;i:1;i:3;i:2;i:3;i:3;i:3;i:4;i:3;i:5;i:3;i:6;i:1;i:7;i:1;i:8;i:1;}', 'a:9:{i:0;i:0;i:1;s:1:\"3\";i:2;s:1:\"3\";i:3;i:0;i:4;s:1:\"1\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;}', 'a:9:{i:0;i:0;i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;i:0;i:4;s:1:\"3\";i:5;i:0;i:6;s:1:\"3\";i:7;i:0;i:8;s:1:\"3\";}', 'a:9:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `qno` varchar(10000) NOT NULL,
  `saven` int(2) NOT NULL,
  `savem` int(2) NOT NULL,
  `markn` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_category`
--
ALTER TABLE `t_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_questions`
--
ALTER TABLE `t_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_signup`
--
ALTER TABLE `t_signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_category`
--
ALTER TABLE `t_category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_questions`
--
ALTER TABLE `t_questions`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_signup`
--
ALTER TABLE `t_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
