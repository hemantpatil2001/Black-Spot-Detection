-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 03:37 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `black_spot_detection`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`email`, `password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ps_info`
--

CREATE TABLE IF NOT EXISTS `ps_info` (
  `ps_name` varchar(50) NOT NULL,
  `ps_city` varchar(20) NOT NULL,
  `ps_mob` varchar(20) NOT NULL,
  `ps_email` varchar(20) NOT NULL,
  `ps_pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps_info`
--

INSERT INTO `ps_info` (`ps_name`, `ps_city`, `ps_mob`, `ps_email`, `ps_pwd`) VALUES
('Shirpur Police Station', 'Shirpur', '1122', 'shirpur@gmail.com', '1'),
('Dhule Police Station', 'Dhule', '2233', 'dhule@gmail.com', '1'),
('Mumbai Police Station', 'Mumbai', '3344', 'mumbai@gmail.com', '1'),
('Kolhapur Police Station', 'Kolhapur', '5566', 'kolhapur@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE IF NOT EXISTS `spots` (
  `ps_email` varchar(50) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`ps_email`, `location_name`, `address`, `reason`, `latitude`, `longitude`, `level`, `city`) VALUES
('shirpur@gmail.com', 'Varzadi', 'near Shirpur', 'Accident', '21.2214615', '74.5710253', '0 (Yellow Zone)', 'Shirpur'),
('dhule@gmail.com', 'Naka Road', 'In Dhule', 'Crime', '20.9041649', '74.7531707', '2 (Red Zone)', 'Dhule'),
('mumbai@gmail.com', 'Kaju Wadi', 'Near Andheri', 'Accident', '19.1107502', '72.8554299', '1 (Orange Zone)', 'Mumbai'),
('kolhapur@gmail.com', 'Chandran Menon Road', 'Kolhapur', 'Crime', '16.7018946', '74.2451694', '2 (Red Zone)', 'Kolhapur');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`name`, `email`, `mobile`, `password`, `city`) VALUES
('hemant', 'hemant@gmail.com', '1122', '1', 'Shirpur');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
