-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2019 at 08:09 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_description` text NOT NULL,
  `brand_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_description`, `brand_image`) VALUES
(1, 'Levis', 'Bhot Mehnga', 'saafsgdhyghd');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_description`, `cat_image`) VALUES
(1, 'Clothes', 'safgjfd dswqdfg', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(200) NOT NULL,
  `cust_email` varchar(500) NOT NULL,
  `cust_password` varchar(32) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_contact` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `emp_contact` varchar(22) NOT NULL,
  `emp_email` varchar(500) NOT NULL,
  `emp_address` text NOT NULL,
  `emp_password` varchar(32) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_nic` varchar(17) NOT NULL,
  `emp_salary` int(11) NOT NULL,
  `emp_doj` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_contact`, `emp_email`, `emp_address`, `emp_password`, `emp_designation`, `emp_nic`, `emp_salary`, `emp_doj`) VALUES
(1, 'Dexent Hamza', '3435676543', '', 'Baldia Town', 'dc647eb65e6711e155375218212b3964', 'Manager', '32565587990431', 120000, '13/04/2019'),
(2, 'Mansoor Ali', '09872164344', '', 'Hadiri', '827ccb0eea8a706c4c34a16891f84e7b', 'Accountant', '21334554657', 10000, '3/4/2019'),
(3, 'Nabeel', '03125363723', '', 'Baldia Town', '3b16e4b382f5a0e0d386f6b149891a1a', 'Manager', '3256558799043', 214345, '15/04/2019');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `nav_id` int(11) NOT NULL,
  `nav_name` varchar(50) NOT NULL,
  `nav_title` varchar(150) NOT NULL,
  `nav_description` varchar(500) NOT NULL,
  `nav_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `ord_cust_id` int(11) DEFAULT NULL,
  `ord_date` varchar(20) DEFAULT NULL,
  `ord_status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ord_details`
--

CREATE TABLE `ord_details` (
  `ord_id` int(11) DEFAULT NULL,
  `ord_prd_id` int(11) DEFAULT NULL,
  `ord_quantity` int(11) DEFAULT NULL,
  `ord_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prd_details`
--

CREATE TABLE `prd_details` (
  `prd_id` int(11) DEFAULT NULL,
  `prd_name` varchar(100) DEFAULT NULL,
  `prd_price` int(11) DEFAULT NULL,
  `prd_image` text,
  `prd_description` text,
  `prd_quantity` int(11) DEFAULT NULL,
  `prd_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_details`
--

INSERT INTO `prd_details` (`prd_id`, `prd_name`, `prd_price`, `prd_image`, `prd_description`, `prd_quantity`, `prd_date`) VALUES
(NULL, 'Shoes', 2000, 'safdagdsh', 'adsfgds', 10, NULL),
(22, 'Shoes', 2000, 'safdagdsh', 'adsfgds', 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `prd_cat_id` int(11) DEFAULT NULL,
  `prd_brand_id` int(11) DEFAULT NULL,
  `prd_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `prd_cat_id`, `prd_brand_id`, `prd_status`) VALUES
(1, 1, 1, 'enabled'),
(2, 1, 1, 'enabled'),
(3, 1, 1, 'enabled'),
(4, 1, 1, 'enabled'),
(5, 1, 1, 'enabled'),
(6, 1, 1, 'enabled'),
(7, 1, 1, 'enabled'),
(8, 1, 1, 'enabled'),
(9, 1, 1, 'enabled'),
(10, 1, 1, 'enabled'),
(17, 1, 1, 'enabled'),
(18, 1, 1, 'enabled'),
(19, 1, 1, 'enabled'),
(20, 1, 1, 'enabled'),
(21, 1, 1, 'enabled'),
(22, 1, 1, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `purchase_prd_id` int(11) DEFAULT NULL,
  `purchase_quantity` int(11) DEFAULT NULL,
  `purchase_cost_price` int(11) DEFAULT NULL,
  `purchase_sale_price` int(11) DEFAULT NULL,
  `purchase_date` varchar(35) DEFAULT NULL,
  `purchase_advance` int(11) DEFAULT NULL,
  `purchase_total` int(11) DEFAULT NULL,
  `purchase_balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_return`
--

CREATE TABLE `purchases_return` (
  `purchase_return_id` int(11) NOT NULL,
  `purchase_return_purchase_id` int(11) DEFAULT NULL,
  `purchase_return_quantity` int(11) DEFAULT NULL,
  `purchase_return_date` varchar(35) DEFAULT NULL,
  `purchase_return_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_ord_id` int(11) DEFAULT NULL,
  `sale_mod_payment` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `sale_return_id` int(11) NOT NULL,
  `sale_return_sale_id` int(11) DEFAULT NULL,
  `sale_prd_id` int(11) DEFAULT NULL,
  `sale_return_quantity` int(11) DEFAULT NULL,
  `sale_return_date` varchar(25) DEFAULT NULL,
  `sale_return_cause_return` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(150) NOT NULL,
  `vendor_company` varchar(100) NOT NULL,
  `vendor_company_address` varchar(200) NOT NULL,
  `vendor_email` varchar(300) NOT NULL,
  `vendor_contact` varchar(24) NOT NULL,
  `vendor_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cust_id` (`ord_cust_id`);

--
-- Indexes for table `ord_details`
--
ALTER TABLE `ord_details`
  ADD KEY `ord_id` (`ord_id`),
  ADD KEY `ord_prd_id` (`ord_prd_id`);

--
-- Indexes for table `prd_details`
--
ALTER TABLE `prd_details`
  ADD KEY `prd_id` (`prd_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`),
  ADD KEY `prd_cat_id` (`prd_cat_id`),
  ADD KEY `prd_brand_id` (`prd_brand_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `purchase_prd_id` (`purchase_prd_id`);

--
-- Indexes for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD PRIMARY KEY (`purchase_return_id`),
  ADD KEY `purchase_return_purchase_id` (`purchase_return_purchase_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `sale_ord_id` (`sale_ord_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`sale_return_id`),
  ADD KEY `sale_return_sale_id` (`sale_return_sale_id`),
  ADD KEY `sale_prd_id` (`sale_prd_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_return`
--
ALTER TABLE `purchases_return`
  MODIFY `purchase_return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `sale_return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cust_id`) REFERENCES `customer` (`cust_Id`);

--
-- Constraints for table `ord_details`
--
ALTER TABLE `ord_details`
  ADD CONSTRAINT `ord_details_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `ord_details_ibfk_2` FOREIGN KEY (`ord_prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `prd_details`
--
ALTER TABLE `prd_details`
  ADD CONSTRAINT `prd_details_ibfk_1` FOREIGN KEY (`prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`prd_cat_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`prd_brand_id`) REFERENCES `brand` (`brand_id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`purchase_prd_id`) REFERENCES `product` (`prd_id`);

--
-- Constraints for table `purchases_return`
--
ALTER TABLE `purchases_return`
  ADD CONSTRAINT `purchases_return_ibfk_1` FOREIGN KEY (`purchase_return_purchase_id`) REFERENCES `purchases` (`purchase_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`sale_ord_id`) REFERENCES `orders` (`ord_id`);

--
-- Constraints for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD CONSTRAINT `sales_return_ibfk_1` FOREIGN KEY (`sale_return_sale_id`) REFERENCES `sales` (`sale_id`),
  ADD CONSTRAINT `sales_return_ibfk_2` FOREIGN KEY (`sale_prd_id`) REFERENCES `product` (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
