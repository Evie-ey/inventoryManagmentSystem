-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2022 at 11:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(15, 'Meats'),
(16, 'Poultry'),
(17, 'Gluten Free'),
(20, 'Vegetarian'),
(22, 'Soft Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `expected_date`, `note`) VALUES
(2, 'Eve Namwoyo', 'South Circular Road', '0892152667', '1', '2022-05-25', 'She only took one package'),
(3, 'Nile Breweries', 'rose@gmail.com', 'Racheal', '1', '2022-05-16', 'Has paid'),
(4, 'Beatrice', 'beat@gmail.com', '0892152667', '10', '2022-05-17', 'Will reufnd'),
(5, 'Erina Enterprises', 'erina@gmail.com', '0892152667', '200', '2022-05-21', 'Good'),
(6, 'Botanicals', 'bots@gmail.com', '0892152667', 'CNOB5E672DE', '2022-05-21', 'jjjj'),
(7, 'Delight Food Supplies', 'delight@gmail.com', '0892152667', 'CNOAC9FF4F8', '2022-05-21', 'Paid'),
(8, 'Chelsea', 'chelsea@gmail.com', '0892152667', 'CNOD92C6632', '2022-05-23', 'Pays on time'),
(11, 'Angella', 'angella@gmail.com', '0987564776', 'CNOE4363C76', '2022-05-22', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(11) DEFAULT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `o_price`, `price`, `profit`, `supplier`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(2, 'RBH-0e7f', 'Dairy', 'Cheese ', '4500', '5000', '500', 'Jessa Diary Products', 8, 80, '2022-05-23', '2022-05-16'),
(3, 'RBH-1622', 'Dairy', 'yorghut', '500', '1000', '500', 'Jessa Diary Products', 8, NULL, '2022-05-23', '2022-05-16'),
(5, 'RBH-9463', 'Vegetarian', 'peanut butter', '9000', '10000', '1000', 'Anothern Food Supplies', -14, NULL, '2022-05-23', '2022-05-16'),
(6, 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '13000', '15000', '2000', 'Delta supplies', -18, 27, '2022-05-23', '2022-05-16'),
(10, 'RBH-1f2c', '', 'Cheese', '600', '400', '-200', '', 9, NULL, '', ''),
(11, 'RBH-cbf6', 'Vegetarian', 'Spinach', '100', '200', '100', 'Anothern Food Supplies', 6, NULL, '2022-05-22', '2022-05-19'),
(12, 'RBH-fbad', 'Meats', 'Sausages', '100', '200', '100', 'Anothern Food Supplies', 0, NULL, '2022-05-29', '2022-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `category`) VALUES
(1, 'RS-0262328', 'Admin', '02/08/18', 'cash', '150', '85', '200', '', ''),
(2, 'RS-233323', 'Admin', '02/08/18', 'cash', '13650', '7735', '14000', '', 'Vegetarian'),
(3, 'RS-0233302', 'Cashier Pharmacy', '02/12/18', 'cash', '150', '85', '100', '', ''),
(4, 'RS-3324732', 'Administrator', '05/17/22', 'cash', '15000', '2000', '10', 'Beatrice', 'Dairy'),
(5, 'RS-09573', 'Administrator', '05/17/22', 'cash', '15000', '2000', '10', 'veronica', ''),
(6, 'RS-03323', 'Administrator', '05/17/22', 'cash', '15000', '2000', '300', 'Beatrice', 'gluten Free'),
(7, 'RS-3303332', 'Administrator', '05/17/22', 'cash', '10000', '1000', '100', 'Beatrice', 'Dairy'),
(8, 'RS-33320823', 'Administrator', '05/17/22', 'cash', '10000', '1000', '100', 'Beatrice', ''),
(9, 'RS-82022022', 'Administrator', '05/17/22', 'cash', '10000', '1000', '200', 'Beatrice', 'Soft Drinks'),
(10, 'RS-40302', 'Administrator', '05/17/22', 'cash', '10000', '1000', '10', 'Rose', ''),
(11, 'RS-2832328', 'Administrator', '05/17/22', 'cash', '5000', '500', '5000', 'Nile Breweries', ''),
(12, 'RS-822042', 'Administrator', '05/17/22', 'cash', '1200', '200', '1000', 'Nile Breweries', 'Alcoholic drinks'),
(13, 'RS-0063323', 'Eve', '05/17/22', 'cash', '400', '-200', '100', 'Kato', ''),
(14, 'RS-223029', 'Eve', '05/17/22', 'cash', '800', '400', '100', 'Erina Enterprises', ''),
(15, 'RS-2223362', 'Eve', '05/18/22', 'cash', '15000', '2000', '700', '3', ''),
(16, 'RS-392920', 'Eve', '05/18/22', 'cash', '5000', '500', '500', '5', ''),
(17, 'RS-0292322', 'Eve', '05/18/22', 'cash', '15000', '2000', '15000', '6', 'Meats'),
(18, 'RS-2323225', 'Eve', '05/18/22', 'cash', '10000', '1000', '200', '3', ''),
(19, 'RS-0832978', 'Eve', '05/18/22', 'cash', '10000', '1000', '200', '2', ''),
(20, 'RS-320220', 'Eve', '05/18/22', 'cash', '11000', '1500', '300', 'Botanicals', ''),
(21, 'RS-0823202', 'Eve', '05/18/22', 'cash', '10000', '1000', '100', 'Erina Enterprises', ''),
(22, 'RS-920308', 'Eve', '05/18/22', 'cash', '10000', '1000', '100', 'Erina Enterprises', ''),
(35, 'RS-33232324', 'Eve', '05/19/22', 'cash', '15000', '2000', '200', 'Beatrice', 'Vegetarian'),
(36, 'RS-2005392', 'Eve', '05/19/22', 'cash', '200', '100', '100', 'Eve Namwoyo', 'Meats'),
(37, 'RS-26236230', 'admin', '05/22/22', 'cash', '1000', '500', '100', 'Chelsea', 'Dairy'),
(38, 'RS-0750202', 'admin', '05/22/22', 'cash', '200', '100', '200', 'Angella', 'Meats'),
(39, 'RS-222026', 'Uli', '05/22/22', 'cash', '200', '100', '200', 'Erina Enterprises', 'Meats');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(2, 'RS-233323', '1', '91', '13650', '7735', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/08/18'),
(3, 'RS-0233302', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/12/18'),
(4, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(5, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(6, 'RS-23332024', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/25/18'),
(7, 'RS-0827', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/16/22'),
(8, 'RS-0827', '7', '5', '1000', '500', 'RBH-319c', 'Soft Drinks', 'Orange smoothie', '200', '', '05/16/22'),
(9, 'RS-2070302', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes ', '15000', '', '05/16/22'),
(10, 'RS-2070302', '5', '2', '20000', '2000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/16/22'),
(11, 'RS-2070302', '6', '2', '30000', '4000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes ', '15000', '', '05/16/22'),
(12, 'RS-20246303', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(13, 'RS-3263', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(14, 'RS-363353', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(15, 'RS-709023', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(16, 'RS-250336', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes ', '15000', '', '05/17/22'),
(17, 'RS-20380', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/17/22'),
(18, 'RS-6023027', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes ', '15000', '', '05/17/22'),
(19, 'RS-6023027', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(20, 'RS-6023027', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(21, 'RS-2230230', '7', '1', '200', '100', 'RBH-319c', 'Soft Drinks', 'Orange smoothie', '200', '', '05/17/22'),
(22, 'RS-3220', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/17/22'),
(23, 'RS-030522', '2', '1', '5000', '500', 'RBH-0e7f', 'Dairy', 'Cheese', '5000', '', '05/17/22'),
(24, 'RS-462232', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(25, 'RS-3202323', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(26, 'RS-3323693', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(27, 'RS-932', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(28, 'RS-932', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(29, 'RS-230003', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(31, 'RS-702342', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/17/22'),
(32, 'RS-40003', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(33, 'RS-323329', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(34, 'RS-632453', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(35, 'RS-2200333', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(36, 'RS-0333223', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(37, 'RS-203432', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(38, 'RS-6703330', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(39, 'RS-7090332', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(40, 'RS-22632037', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/17/22'),
(41, 'RS-2923032', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(42, 'RS-202020', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(43, 'RS-20032023', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(44, 'RS-2322', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(45, 'RS-0333', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(46, 'RS-3332338', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(47, 'RS-3324732', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(48, 'RS-09573', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(49, 'RS-03323', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(50, 'RS-3303332', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(51, 'RS-33320823', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(52, 'RS-82022022', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(53, 'RS-40302', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/17/22'),
(54, 'RS-2832328', '2', '1', '5000', '500', 'RBH-0e7f', 'Dairy', 'Cheese', '5000', '', '05/17/22'),
(55, 'RS-822042', '9', '4', '1200', '200', 'RBH-2c43', 'Vegetarian', 'Bananas', '300', '', '05/17/22'),
(56, 'RS-0063323', '10', '1', '400', '-200', 'RBH-1f2c', '', 'Cheese', '400', '', '05/17/22'),
(58, 'RS-223029', '11', '4', '800', '400', 'RBH-cbf6', 'Vegetarian', 'Spinach', '200', '', '05/17/22'),
(59, 'RS-33303332', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/17/22'),
(60, 'RS-25543223', '9', '1', '300', '50', 'RBH-2c43', 'Vegetarian', 'Bananas   ', '300', '', '05/18/22'),
(61, 'RS-25543223', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/18/22'),
(62, 'RS-25543223', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(63, 'RS-0003306', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(64, 'RS-322620', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/18/22'),
(65, 'RS-2223362', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/18/22'),
(66, 'RS-085302', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(67, 'RS-392920', '2', '1', '5000', '500', 'RBH-0e7f', 'Dairy', 'Cheese', '5000', '', '05/18/22'),
(69, 'RS-0292322', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/18/22'),
(70, 'RS-2323225', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(71, 'RS-0832978', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(72, 'RS-320220', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/18/22'),
(73, 'RS-320220', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(74, 'RS-0300920', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/18/22'),
(75, 'RS-0823202', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(76, 'RS-920308', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(77, 'RS-3329322', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/18/22'),
(78, 'RS-0280693', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(80, 'RS-332223', '9', '1', '300', '50', 'RBH-2c43', 'Vegetarian', 'Bananas   ', '300', '', '05/18/22'),
(82, 'RS-24222283', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/18/22'),
(83, 'RS-23230330', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/18/22'),
(84, '', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/18/22'),
(85, 'RS-238203', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/19/22'),
(86, 'RS-33303630', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/19/22'),
(87, 'RS-9222302', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/19/22'),
(88, 'RS-3202036', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/19/22'),
(89, 'RS-328433', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/19/22'),
(90, 'RS-33232324', '6', '1', '15000', '2000', 'RBH-fc66', 'Vegetarian', 'sweet potatoes   ', '15000', '', '05/19/22'),
(91, 'RS-2005392', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/19/22'),
(92, 'RS-333020', '5', '1', '10000', '1000', 'RBH-9463', 'Vegetarian', 'peanut butter', '10000', '', '05/22/22'),
(93, 'RS-26236230', '3', '1', '1000', '500', 'RBH-1622', 'Dairy', 'yorghut', '1000', '', '05/22/22'),
(94, 'RS-0220000', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/22/22'),
(95, 'RS-0750202', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/22/22'),
(96, 'RS-222026', '12', '1', '200', '100', 'RBH-fbad', 'Meats', 'Sausages', '200', '', '05/22/22');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(5, 'Delta supplies', 'delta@co.ie', 'Rachael', '0876543443', 'Good with supplies'),
(6, 'Jessa Diary Products', 'jessa@co.ug', 'Rose May', '0896787675', 'Good suppliers'),
(7, 'm&m agricultural dealers', 'm&magric@co.uk', 'Uli', '08767854435', 'Good suppliers'),
(8, 'D&S Food Group', 'd&s@foodgroup.co.ie', 'Rose Mary', '08976456788', 'Greate suppliers'),
(12, 'Dembe Supplies', 'demebe@supplies.com', 'Dumba', '0879087665', 'Boo'),
(13, 'M&M', 'm&m@ug.co', 'Alice', '0875678890', 'Delivers on time');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(6, 'eveie@gmail.com', '0854657889', 'Eve Namwoyo', 'Cashier'),
(7, 'beatrice', 'Beatrice', 'Beatrice Grace', 'Cashier'),
(8, 'caio@gmail.com', 'Caio', 'Caio Madina', 'receptionist'),
(9, 'Evie', 'Eve', 'Eve', 'admin'),
(11, 'admin@gmail.com', 'Admin123', 'admin', 'admin'),
(13, 'uli@gmail.com', 'Uli', 'Uli', 'Cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
