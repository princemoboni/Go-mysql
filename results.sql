-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 01, 2018 at 08:08 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `Project_Title` varchar(59) DEFAULT NULL,
  `Country` varchar(12) DEFAULT NULL,
  `Project_ID` varchar(7) DEFAULT NULL,
  `Commitment_Amount` varchar(8) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Approval_Date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`Project_Title`, `Country`, `Project_ID`, `Commitment_Amount`, `Status`, `Approval_Date`) VALUES
('Land Bank Financial Intermediation Project', 'South Africa', 'P150008', '93.00', 'Active', '2017-01-23T00:00:00Z'),
('Eskom Investment Support Project', 'South Africa', 'P116410', '3,750.00', 'Active', '2010-04-08T00:00:00Z'),
('Municipal Financial Management Technical Assistance Project', 'South Africa', 'P076901', '15.00', 'Closed', '2002-09-12T00:00:00Z'),
('Industrial Competitiveness and Job Creation Project', 'South Africa', 'P048606', '46.00', 'Closed', '1997-05-29T00:00:00Z'),
('ESCOM Electric Power Project', 'South Africa', 'P037482', '20.00', 'Closed', '1966-07-28T00:00:00Z'),
('Electric Power Development Project', 'South Africa', 'P037480', '14.00', 'Closed', '1961-11-30T00:00:00Z'),
('Expansion of Transport Facilities Project', 'South Africa', 'P037481', '11.00', 'Closed', '1961-11-30T00:00:00Z'),
('Railway Improvement Project', 'South Africa', 'P037479', '11.60', 'Closed', '1959-06-09T00:00:00Z'),
('Railway Improvement Project', 'South Africa', 'P037478', '25.00', 'Closed', '1958-12-01T00:00:00Z'),
('Railway Improvement Project', 'South Africa', 'P037477', '25.00', 'Closed', '1957-09-30T00:00:00Z'),
('Transportation Project', 'South Africa', 'P037476', '25.20', 'Closed', '1955-11-28T00:00:00Z'),
('Power Project', 'South Africa', 'P037474', '30.00', 'Closed', '1953-08-27T00:00:00Z'),
('Transportation Project', 'South Africa', 'P037475', '30.00', 'Closed', '1953-08-27T00:00:00Z'),
('Electric Power Development Project', 'South Africa', 'P037472', '30.00', 'Closed', '1951-01-16T00:00:00Z'),
('Transportation Project', 'South Africa', 'P037473', '20.00', 'Closed', '1951-01-16T00:00:00Z');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
