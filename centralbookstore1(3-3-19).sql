-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 03:43 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `centralbookstore1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `totalsales` ()  BEGIN
SELECT SUM(totalsales) from tbl_sales;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_administrator`
--

CREATE TABLE `tbl_administrator` (
  `User_type_ID` int(11) NOT NULL,
  `User_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_administrator`
--

INSERT INTO `tbl_administrator` (`User_type_ID`, `User_type`) VALUES
(1, 'Admin'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `Book_Code` int(11) NOT NULL,
  `Book_Title` varchar(50) DEFAULT NULL,
  `Book_Author` varchar(30) DEFAULT NULL,
  `Book_Edition` varchar(30) DEFAULT NULL,
  `Book_year` varchar(30) NOT NULL,
  `Book_quan` int(11) UNSIGNED NOT NULL,
  `Book_price` decimal(11,2) NOT NULL,
  `supplier_ID` int(11) NOT NULL,
  `category_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`Book_Code`, `Book_Title`, `Book_Author`, `Book_Edition`, `Book_year`, `Book_quan`, `Book_price`, `supplier_ID`, `category_ID`) VALUES
(121514, 'Political Tactics', 'SCR', 'None', '2004', 178, '750.00', 1, 1),
(121515, 'Supreme Court Reports Annotated', 'CBSI', 'Vol I', '2000', 100, '1000.00', 1, 1),
(121516, 'Supreme Court Reports Annotated', 'CBSI', 'Vol II', '2001', 100, '1250.00', 1, 11),
(121517, 'Supreme Court Reports Annotated', 'CBSI', 'Vol III', '2002', 100, '1250.00', 1, 11),
(215412, 'Cyber Act.', 'SCR', '4th Ed.', '2015', 90, '400.00', 1, 8),
(1212541, 'Law 1', 'SCR', '1st Ed.', '2001', 55, '350.00', 1, 1),
(1215412, 'Crime 1', 'SCR', '4th Ed.', '2009', 43, '450.00', 1, 4),
(1245152, 'Law 2', 'SCR', '2nd Ed.', '2002', 72, '500.00', 1, 1),
(1542541, 'Crime 2', 'Cirunay', '3rd Ed.', '2000', 50, '1300.00', 1, 4),
(2151145, 'Law 3', 'Joana', '3rd Ed', '2017', 10, '1000.00', 1, 1),
(2154125, 'Phil. Consitution', 'SCR', '1st Ed.', '2018', 171, '2000.00', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashier`
--

CREATE TABLE `tbl_cashier` (
  `cashier_ID` int(8) NOT NULL,
  `First_name` varchar(30) NOT NULL,
  `Last_name` varchar(30) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `status_id` int(8) NOT NULL,
  `User_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cashier`
--

INSERT INTO `tbl_cashier` (`cashier_ID`, `First_name`, `Last_name`, `contact_no`, `user`, `pass`, `status_id`, `User_type_id`) VALUES
(1, 'Mark', 'Suñer', '09772348222', 'admin', 'admin', 1, 1),
(2, 'Jeremias', 'Bazar', '09108703999', 'user', 'pass', 1, 1),
(3, 'administrator', 'administrator', '123456789', 'admin123', 'admin123', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_ID` int(11) NOT NULL,
  `Category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_ID`, `Category`) VALUES
(1, 'Political Law'),
(2, 'Ethical Law'),
(3, 'Jurisprudence'),
(4, 'Criminal Law'),
(5, 'Civil Law'),
(6, 'Commercial Law'),
(7, 'Labor Law'),
(8, 'Legal Ethics'),
(9, 'Remedial Law'),
(10, 'Taxation Law'),
(11, 'SCRA'),
(12, 'Reviewer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_Fname` varchar(30) DEFAULT NULL,
  `customer_Lname` varchar(30) DEFAULT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_Fname`, `customer_Lname`, `contact_no`) VALUES
(1, 'Walk-In', 'None', 1234567),
(2, 'John Merk', 'Sandawa', 123113),
(3, 'Stephen James', 'Sasa', 909092253),
(4, 'Mike Test', 'Obrero', 54125412),
(5, 'Johny Bravo', 'Mintal', 2112541),
(6, 'Paul Blow', 'Roxas', 545415441);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_damagebook`
--

CREATE TABLE `tbl_damagebook` (
  `Dam_id` int(8) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Author` varchar(30) DEFAULT NULL,
  `Edition` varchar(15) DEFAULT NULL,
  `Year` varchar(30) NOT NULL,
  `DBook_Quan` int(11) UNSIGNED NOT NULL,
  `Orig_Price` decimal(11,2) NOT NULL,
  `MarkDown_Price` decimal(11,2) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_damagebook`
--

INSERT INTO `tbl_damagebook` (`Dam_id`, `Title`, `Author`, `Edition`, `Year`, `DBook_Quan`, `Orig_Price`, `MarkDown_Price`, `Remarks`) VALUES
(121514, 'Political Tactics (damage)', 'SCR', 'None', '2004', 10, '750.00', '600.00', 'scratch'),
(121515, 'Supreme Court Reports Annotated(Damaged)', 'CBSI', 'Vol I', '2000', 0, '1000.00', '0.00', 'Damage'),
(121516, 'Supreme Court Reports Annotated(Damaged)', 'CBSI', 'Vol II', '2001', 0, '1250.00', '0.00', 'Damage'),
(121517, 'Supreme Court Reports Annotated(Damaged)', 'CBSI', 'Vol III', '2002', 0, '1250.00', '0.00', 'Damage'),
(215412, 'Cyber Act. (damage)', 'SCR', '4th Ed.', '2015', 10, '400.00', '100.00', 'water damaged'),
(1212541, 'Law 1 (damage)', 'SCR', '1st Ed.', '2001', 0, '350.00', '0.00', ''),
(1215412, 'Crime 1 (damage)', 'SCR', '4th Ed.', '2009', 13, '450.00', '400.00', 'scratch'),
(1245152, 'Law 2 (damage)', 'SCR', '2nd Ed.', '2002', 0, '500.00', '0.00', ''),
(1542541, 'Crime 2 (damage)', 'Cirunay', '3rd Ed.', '2000', 7, '1300.00', '1000.00', 'scratch'),
(2151145, 'Law 3 (damage)', 'Joana', '3rd Ed', '2017', 0, '1000.00', '0.00', ''),
(2154125, 'Phil. Consitution (damage)', 'SCR', '1st Ed.', '2018', 7, '2000.00', '1500.00', 'cover');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prodcontrol`
--

CREATE TABLE `tbl_prodcontrol` (
  `id` int(11) NOT NULL,
  `Book_Code` int(11) NOT NULL,
  `Book_Title` varchar(30) DEFAULT NULL,
  `Book_Author` varchar(30) DEFAULT NULL,
  `Book_Quan` int(11) DEFAULT NULL,
  `Book_Price` decimal(11,2) DEFAULT NULL,
  `Date` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prodcontrol`
--

INSERT INTO `tbl_prodcontrol` (`id`, `Book_Code`, `Book_Title`, `Book_Author`, `Book_Quan`, `Book_Price`, `Date`) VALUES
(1, 121514, 'Political Tactics', 'SCR', 5, '750.00', '2019-02-21'),
(2, 1212541, 'Law 1', 'SCR', 5, '350.00', '2019-02-21'),
(3, 121514, 'Political Tactics', 'SCR', 10, '750.00', '2019-02-21'),
(4, 121514, 'Political Tactics', 'SCR', 5, '750.00', '2019-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `sales_ID` int(11) NOT NULL,
  `Invoice_No` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `TotalSales` decimal(11,2) DEFAULT NULL,
  `sales_date` date NOT NULL,
  `cashier_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`sales_ID`, `Invoice_No`, `customer_id`, `TotalSales`, `sales_date`, `cashier_ID`) VALUES
(1, 1, 1, '10000.00', '2019-02-19', 2),
(2, 2, 3, '850.00', '2019-02-19', 2),
(3, 3, 3, '1700.00', '2019-02-20', 2),
(4, 4, 1, '1250.00', '2019-02-20', 2),
(5, 5, 1, '4200.00', '2019-02-20', 2),
(6, 6, 1, '1450.00', '2019-02-20', 2),
(7, 7, 1, '1300.00', '2019-02-20', 2),
(8, 8, 1, '4300.00', '2019-02-20', 2),
(9, 9, 1, '450.00', '2019-02-20', 2),
(10, 10, 1, '900.00', '2019-02-20', 2),
(11, 11, 1, '900.00', '2019-02-20', 2),
(12, 12, 1, '1800.00', '2019-02-20', 2),
(13, 13, 1, '800.00', '2019-02-20', 2),
(14, 14, 1, '2950.00', '2019-02-20', 2),
(15, 1015, 1, '450.00', '2019-02-20', 2),
(16, 1016, 1, '2600.00', '2019-02-20', 2),
(17, 1017, 1, '1800.00', '2019-02-20', 2),
(18, 1018, 1, '700.00', '2019-02-20', 2),
(19, 1019, 1, '800.00', '2019-02-20', 2),
(20, 1020, 1, '3750.00', '2019-02-20', 2),
(21, 1021, 1, '2350.00', '2019-02-20', 2),
(22, 1022, 6, '4500.00', '2019-02-21', 2),
(23, 1023, 1, '14350.00', '2019-02-21', 2),
(24, 1104, 3, '7300.00', '2019-02-21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_details`
--

CREATE TABLE `tbl_sales_details` (
  `sales_details_ID` int(11) NOT NULL,
  `sales_ID` int(11) NOT NULL,
  `Book_Code` int(11) NOT NULL,
  `Book_Title` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sales_details`
--

INSERT INTO `tbl_sales_details` (`sales_details_ID`, `sales_ID`, `Book_Code`, `Book_Title`, `qty`, `sub_total`) VALUES
(17, 1, 2154125, 'Phil. Consitution', 5, 10000.00),
(18, 2, 1215412, 'Crime 1', 1, 450.00),
(19, 2, 1215412, 'Crime 1 (damage)', 1, 400.00),
(20, 3, 1215412, 'Crime 1 (damage)', 1, 400.00),
(21, 3, 1542541, 'Crime 2', 1, 1300.00),
(22, 4, 1212541, 'Law 1', 1, 350.00),
(23, 4, 1215412, 'Crime 1', 2, 900.00),
(24, 5, 1215412, 'Crime 1', 1, 450.00),
(25, 5, 1215412, 'Crime 1', 1, 450.00),
(26, 5, 1542541, 'Crime 2', 1, 1300.00),
(27, 5, 2154125, 'Phil. Consitution', 1, 2000.00),
(28, 6, 1215412, 'Crime 1', 1, 450.00),
(29, 6, 1245152, 'Law 2', 2, 1000.00),
(30, 7, 1215412, 'Crime 1', 1, 450.00),
(31, 7, 1215412, 'Crime 1', 1, 450.00),
(32, 7, 1215412, 'Crime 1 (damage)', 1, 400.00),
(33, 8, 1215412, 'Crime 1', 1, 450.00),
(34, 8, 1212541, 'Law 1', 1, 350.00),
(35, 8, 2154125, 'Phil. Consitution (damage)', 1, 1500.00),
(36, 8, 2154125, 'Phil. Consitution', 1, 2000.00),
(37, 9, 1215412, 'Crime 1', 1, 450.00),
(38, 10, 1215412, 'Crime 1', 1, 450.00),
(39, 10, 1215412, 'Crime 1', 1, 450.00),
(40, 11, 1215412, 'Crime 1', 1, 450.00),
(41, 11, 1215412, 'Crime 1', 1, 450.00),
(42, 12, 1245152, 'Law 2', 1, 500.00),
(43, 12, 1542541, 'Crime 2', 1, 1300.00),
(44, 13, 1215412, 'Crime 1', 1, 450.00),
(45, 13, 1212541, 'Law 1', 1, 350.00),
(46, 14, 1215412, 'Crime 1', 1, 450.00),
(47, 14, 1245152, 'Law 2', 1, 500.00),
(48, 14, 2154125, 'Phil. Consitution', 1, 2000.00),
(49, 15, 1215412, 'Crime 1', 1, 450.00),
(50, 16, 1542541, 'Crime 2', 2, 2600.00),
(51, 17, 1215412, 'Crime 1', 4, 1800.00),
(52, 18, 1212541, 'Law 1', 2, 700.00),
(53, 19, 1215412, 'Crime 1 (damage)', 2, 800.00),
(54, 20, 1542541, 'Crime 2', 1, 1300.00),
(55, 20, 2154125, 'Phil. Consitution', 1, 2000.00),
(56, 20, 1215412, 'Crime 1', 1, 450.00),
(57, 21, 1215412, 'Crime 1 (damage)', 1, 400.00),
(58, 21, 1542541, 'Crime 2 (damage)', 1, 1000.00),
(59, 21, 1245152, 'Law 2', 1, 500.00),
(60, 21, 1215412, 'Crime 1', 1, 450.00),
(61, 22, 1245152, 'Law 2', 1, 500.00),
(62, 22, 2154125, 'Phil. Consitution', 2, 4000.00),
(63, 23, 1212541, 'Law 1', 1, 350.00),
(64, 23, 2154125, 'Phil. Consitution', 7, 14000.00),
(65, 24, 1212541, 'Law 1', 2, 700.00),
(66, 24, 1542541, 'Crime 2', 2, 2600.00),
(67, 24, 1245152, 'Law 2', 2, 1000.00),
(68, 24, 2154125, 'Phil. Consitution (damage)', 2, 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status`) VALUES
(1, 'Active'),
(2, 'InActive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockindetails`
--

CREATE TABLE `tbl_stockindetails` (
  `stockdetails_ID` int(11) NOT NULL,
  `stockitem_ID` int(11) NOT NULL,
  `stock_ID` int(11) NOT NULL,
  `Book_Code` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `quantity_received` int(11) NOT NULL,
  `Price` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stockindetails`
--

INSERT INTO `tbl_stockindetails` (`stockdetails_ID`, `stockitem_ID`, `stock_ID`, `Book_Code`, `Title`, `quantity_received`, `Price`) VALUES
(15, 1, 1001, 121515, 'Supreme Court Reports Annotated', 100, '1000.00'),
(16, 1, 1001, 121516, 'Supreme Court Reports Annotated', 100, '1250.00'),
(17, 1, 1001, 121517, 'Supreme Court Reports Annotated', 100, '1250.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stockin_items`
--

CREATE TABLE `tbl_stockin_items` (
  `stockin_item_ID` int(11) NOT NULL,
  `stockin_ID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stockin_items`
--

INSERT INTO `tbl_stockin_items` (`stockin_item_ID`, `stockin_ID`, `date`) VALUES
(1, 1001, '2019-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `supplier_ID` int(11) NOT NULL,
  `supplier` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`supplier_ID`, `supplier`) VALUES
(1, 'CBS Main Branch');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_typebook`
--

CREATE TABLE `tbl_typebook` (
  `type_id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_typebook`
--

INSERT INTO `tbl_typebook` (`type_id`, `type`) VALUES
(1, 'Non Damage Book'),
(2, 'Damage Book');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_administrator`
--
ALTER TABLE `tbl_administrator`
  ADD PRIMARY KEY (`User_type_ID`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`Book_Code`),
  ADD KEY `category_ID` (`category_ID`),
  ADD KEY `supplier_ID` (`supplier_ID`);

--
-- Indexes for table `tbl_cashier`
--
ALTER TABLE `tbl_cashier`
  ADD PRIMARY KEY (`cashier_ID`),
  ADD UNIQUE KEY `contact_no` (`contact_no`),
  ADD KEY `User_type_id` (`User_type_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_damagebook`
--
ALTER TABLE `tbl_damagebook`
  ADD PRIMARY KEY (`Dam_id`);

--
-- Indexes for table `tbl_prodcontrol`
--
ALTER TABLE `tbl_prodcontrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`sales_ID`),
  ADD KEY `cashier_ID` (`cashier_ID`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD PRIMARY KEY (`sales_details_ID`),
  ADD KEY `sales_ID` (`sales_ID`),
  ADD KEY `Book_Code` (`Book_Code`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_stockindetails`
--
ALTER TABLE `tbl_stockindetails`
  ADD PRIMARY KEY (`stockdetails_ID`);

--
-- Indexes for table `tbl_stockin_items`
--
ALTER TABLE `tbl_stockin_items`
  ADD PRIMARY KEY (`stockin_item_ID`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`supplier_ID`);

--
-- Indexes for table `tbl_typebook`
--
ALTER TABLE `tbl_typebook`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_administrator`
--
ALTER TABLE `tbl_administrator`
  MODIFY `User_type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cashier`
--
ALTER TABLE `tbl_cashier`
  MODIFY `cashier_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_prodcontrol`
--
ALTER TABLE `tbl_prodcontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sales_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  MODIFY `sales_details_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_stockindetails`
--
ALTER TABLE `tbl_stockindetails`
  MODIFY `stockdetails_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `supplier_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_typebook`
--
ALTER TABLE `tbl_typebook`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD CONSTRAINT `tbl_book_ibfk_1` FOREIGN KEY (`category_ID`) REFERENCES `tbl_category` (`category_ID`),
  ADD CONSTRAINT `tbl_book_ibfk_2` FOREIGN KEY (`supplier_ID`) REFERENCES `tbl_supplier` (`supplier_ID`);

--
-- Constraints for table `tbl_cashier`
--
ALTER TABLE `tbl_cashier`
  ADD CONSTRAINT `tbl_cashier_ibfk_1` FOREIGN KEY (`User_type_id`) REFERENCES `tbl_administrator` (`User_type_ID`),
  ADD CONSTRAINT `tbl_cashier_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`status_id`);

--
-- Constraints for table `tbl_damagebook`
--
ALTER TABLE `tbl_damagebook`
  ADD CONSTRAINT `tbl_damagebook_ibfk_1` FOREIGN KEY (`Dam_id`) REFERENCES `tbl_book` (`Book_Code`);

--
-- Constraints for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD CONSTRAINT `tbl_sales_ibfk_1` FOREIGN KEY (`cashier_ID`) REFERENCES `tbl_cashier` (`cashier_ID`),
  ADD CONSTRAINT `tbl_sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`);

--
-- Constraints for table `tbl_sales_details`
--
ALTER TABLE `tbl_sales_details`
  ADD CONSTRAINT `tbl_sales_details_ibfk_3` FOREIGN KEY (`sales_ID`) REFERENCES `tbl_sales` (`sales_ID`),
  ADD CONSTRAINT `tbl_sales_details_ibfk_4` FOREIGN KEY (`Book_Code`) REFERENCES `tbl_book` (`Book_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
