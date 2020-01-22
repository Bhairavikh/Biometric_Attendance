-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 06:40 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biometric`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
`s_id` int(11) NOT NULL,
  `ss_id` varchar(11) NOT NULL,
  `ss_avi` varchar(11) NOT NULL,
  `s_dat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`s_id`, `ss_id`, `ss_avi`, `s_dat`) VALUES
(1, '1,gayatri', 'P', '2018-03-29 03:34:30'),
(2, '2,payal', 'P', '2018-03-29 03:34:41'),
(3, '3,bharavi', 'P', '2018-03-29 03:34:52'),
(4, '3,bharavi', 'P', '2018-03-29 03:44:47');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'priya', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
`id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username1` varchar(20) NOT NULL,
  `password1` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `username1`, `password1`) VALUES
(1, '', '', 'lax', '890'),
(2, '', '', 'lax', '12'),
(3, '', '', 'lax', '12'),
(4, '', '', 'lax', '12'),
(5, '', '', 'lax', '12'),
(6, 'laxmi', '', 'lax', '12'),
(7, 'laxmi', 'l@gmail.com', 'lax', '12'),
(8, 'jaya', 'j@gmail.com', '', ''),
(9, 'jaya', 'j@gmail.com', 'jayu', '123'),
(10, 'jaya', 'j@gmail.com', 'jayu', '123'),
(11, 'jaya', 'j@gmail.com', 'jayu', '123'),
(12, 'sid', 's@gmail.com', '', ''),
(13, 'sid', 's@gmail.com', '', ''),
(14, 'sid', 's@gmail.com', '', ''),
(15, 'sid', 's@gmail.com', '', ''),
(16, 'priya', 'p@gmail.com', 'priya', '123'),
(17, 'priya', 'p@gmail.com', 'priya', '123'),
(18, 'laxmi1', 'l@gmail.com', 'lax', '1234'),
(19, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(20, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(21, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(22, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(23, 'supriya', 'supriyamb99@gmail.co', 'smbhalerao', 'chakuli'),
(24, 'Sidd', 'sid@gmail.con', 'Sid', '123'),
(25, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(26, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(27, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123'),
(28, 'vaishnavi', 'Siddharth.scriptode@', 'sidd', '123');

-- --------------------------------------------------------

--
-- Table structure for table `studinfo`
--

CREATE TABLE IF NOT EXISTS `studinfo` (
`id` int(255) NOT NULL,
  `studname` varchar(20) NOT NULL,
  `rollno` int(255) NOT NULL,
  `dpt` varchar(20) NOT NULL,
  `yr` varchar(25) NOT NULL,
  `result` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `studinfo`
--

INSERT INTO `studinfo` (`id`, `studname`, `rollno`, `dpt`, `yr`, `result`) VALUES
(1, 'gayatri', 22, 'Computer', 'Third Year', ''),
(2, 'payal', 23, 'Computer', 'Third Year', ''),
(3, 'bharavi', 26, 'Computer', 'Third Year', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_registration`
--

CREATE TABLE IF NOT EXISTS `teacher_registration` (
`id` int(255) NOT NULL,
  `subname` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `teacher_registration`
--

INSERT INTO `teacher_registration` (`id`, `subname`, `branch`, `semester`) VALUES
(1, '', '', ''),
(2, '', '', ''),
(3, '.php.', '.IT.', '.second.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
 ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studinfo`
--
ALTER TABLE `studinfo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_registration`
--
ALTER TABLE `teacher_registration`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `studinfo`
--
ALTER TABLE `studinfo`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_registration`
--
ALTER TABLE `teacher_registration`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
