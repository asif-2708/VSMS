-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2022 at 09:38 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsmsdbjsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(120) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `VehicleCat`) VALUES
(8, 'Two Wheeler'),
(9, 'Four Wheeler'),
(10, 'Three Wheeler');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `EnquiryNumber` int(50) DEFAULT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminResponse` varchar(250) DEFAULT NULL,
  `AdminStatus` varchar(11) DEFAULT NULL,
  `AdminRemarkdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `Email`, `EnquiryNumber`, `EnquiryType`, `Description`, `EnquiryDate`, `AdminResponse`, `AdminStatus`, `AdminRemarkdate`) VALUES
(7, 'abhi@gmail.com', 76267558, 'Service Related Enquiry', 'I want to enquiry for service related.', '2022-04-05 06:04:57', 'Your Status has been Update', 'Responded', '2022-04-05 06:04:57'),
(8, 'harish123@gmail.com', 54986408, 'Service Related Enquiry', 'I need home service', '2022-04-05 18:51:42', 'Accepted', 'Responded', '2022-04-05 18:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `enquirytype`
--

CREATE TABLE `enquirytype` (
  `id` int(11) NOT NULL,
  `EnquiryType` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquirytype`
--

INSERT INTO `enquirytype` (`id`, `EnquiryType`) VALUES
(1, 'Service Related Enquiry'),
(2, 'Price Related Enquiry'),
(3, 'Parts Related Enquiry'),
(4, 'Other Enquiry');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `FullName`, `MobileNumber`, `Email`, `Address`) VALUES
(8, 'Rohit Raj', '1234567820', 'rohit@gmail.com', 'Narela Sanakri Bhopal MP'),
(9, 'Prince Kumar', '7485961425', 'prince@gmail.com', 'Narela Sanakri Bhopal'),
(10, 'Rajesh Singh', '8596475810', 'rajesh@gmail.com', 'Indrapuri Bhopal');

-- --------------------------------------------------------

--
-- Table structure for table `servicerequest`
--

CREATE TABLE `servicerequest` (
  `id` int(10) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ServiceNumber` int(50) DEFAULT NULL,
  `Category` varchar(120) DEFAULT NULL,
  `VehicleName` varchar(120) DEFAULT NULL,
  `VehicleModel` varchar(120) DEFAULT NULL,
  `VehicleBrand` varchar(120) DEFAULT NULL,
  `VehicleRegno` varchar(120) DEFAULT NULL,
  `ServiceDate` varchar(100) DEFAULT NULL,
  `ServiceTime` varchar(100) DEFAULT NULL,
  `DeliveryType` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(120) DEFAULT NULL,
  `ServicerequestDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ServiceBy` varchar(120) DEFAULT NULL,
  `ServiceCharge` int(15) DEFAULT NULL,
  `PartsCharge` int(15) DEFAULT NULL,
  `OtherCharge` int(15) DEFAULT NULL,
  `AdminRemark` varchar(120) DEFAULT NULL,
  `AdminStatus` varchar(120) DEFAULT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicerequest`
--

INSERT INTO `servicerequest` (`id`, `Email`, `ServiceNumber`, `Category`, `VehicleName`, `VehicleModel`, `VehicleBrand`, `VehicleRegno`, `ServiceDate`, `ServiceTime`, `DeliveryType`, `PickupAddress`, `ServicerequestDate`, `ServiceBy`, `ServiceCharge`, `PartsCharge`, `OtherCharge`, `AdminRemark`, `AdminStatus`, `AdminRemarkdate`) VALUES
(4, 'abhi@gmail.com', 81580922, 'Four Wheeler', 'Tata Maruti', 'abc', 'Tata', 'MP03 1334', '2022-04-06', '10:00', 'Pickup Service', 'Indrapuri Bhopal', '2022-04-05 10:06:33', 'Rohit Raj', 1000, 350, 150, 'Your Service has been Completed', 'Completed', '2022-04-05 13:01:57'),
(5, 'ankit@gmail.com', 8648591, 'Two Wheeler', 'Pulsar', '220CC', 'Bajaj', 'MP03 1236', '2022-04-06', '00:00', 'Drop Service', '', '2022-04-05 14:07:21', NULL, NULL, NULL, NULL, NULL, 'Rejected', '2022-04-05 17:33:10'),
(6, 'harish123@gmail.com', 49479104, 'Two Wheeler', 'Bajaj Platina', '220 CC', 'Bajaj', 'MP04 7789 ', '2022-04-07', '05:28', 'Pickup Service', 'ABC 303 Indrapuri Bhopal ', '2022-04-05 18:54:23', 'Rohit Raj', 2000, 1000, 500, 'Service Completed', 'Completed', '2022-04-05 19:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNo` varchar(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FullName`, `MobileNo`, `Email`, `Password`, `RegDate`) VALUES
(14, 'Abhishek Pandey', '1425364152', 'abhi@gmail.com', '1234', '2022-04-03 18:33:51'),
(16, 'Ankit Mathur', '9638527410', 'ankit@gmail.com', '1234', '2022-04-05 14:05:34'),
(17, 'Harish Kumar', '9200136383', 'harish123@gmail.com', 'harish', '2022-04-05 18:43:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquirytype`
--
ALTER TABLE `enquirytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicerequest`
--
ALTER TABLE `servicerequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquirytype`
--
ALTER TABLE `enquirytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `servicerequest`
--
ALTER TABLE `servicerequest`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
