-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 12:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbmatics_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_ticketing`
--

CREATE TABLE `add_ticketing` (
  `TICKETING_ID` int(11) NOT NULL,
  `ENTRY_DATE` varchar(20) NOT NULL,
  `DNAME` varchar(50) NOT NULL,
  `CLIENT_NAME` varchar(50) NOT NULL,
  `PROJECT` varchar(50) NOT NULL,
  `ISSUE` varchar(50) NOT NULL,
  `HANDOVERTO` varchar(50) NOT NULL,
  `REMARK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_ticketing`
--

INSERT INTO `add_ticketing` (`TICKETING_ID`, `ENTRY_DATE`, `DNAME`, `CLIENT_NAME`, `PROJECT`, `ISSUE`, `HANDOVERTO`, `REMARK`) VALUES
(1, '24/MAR/2024', 'Production', 'Ford', 'CRM', 'Update', 'Sangita', 'Issue in Progress'),
(2, '16/MAR/2024', 'Production', 'King', 'Ecommerce', 'abc', 'aaaaaaaaaaaaaaaa', 'Issue on Hold'),
(3, '16/MAR/2024', 'Abc', 'King', 'CRM', 'xyz', 'abcd', 'Issue Resolve'),
(4, '24/MAR/2024', 'Abc', 'Ford', 'CRM', 'abc', 'abcd', 'Issue on Hold');

-- --------------------------------------------------------

--
-- Table structure for table `client_enquiry`
--

CREATE TABLE `client_enquiry` (
  `CLIENT_ID` int(11) NOT NULL,
  `CLIENT_ENTRY_DATE` varchar(15) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `PHONENO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PROFESSION` varchar(50) NOT NULL,
  `CLIENT_INFO` varchar(50) NOT NULL,
  `CLIENT_SUGG_PROF` varchar(50) NOT NULL,
  `SELECT_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_enquiry`
--

INSERT INTO `client_enquiry` (`CLIENT_ID`, `CLIENT_ENTRY_DATE`, `FNAME`, `LNAME`, `PHONENO`, `EMAIL`, `PROFESSION`, `CLIENT_INFO`, `CLIENT_SUGG_PROF`, `SELECT_STATUS`) VALUES
(4, '24/MAR/2024', 'Arati', 'Shendge', '1234567890', 'aratishendge217@gmail.com', 'JOB', 'Developer', 'Tester', 'Lead'),
(5, '24/MAR/2024', 'Pooja', 'Joshi', '8989898989', 'poojajoshi123@gmail.com', 'JOB', 'Tester', 'Tester', 'Lead'),
(6, '24/MAR/2024', 'Chetan', 'Kadam', '8877886677', 'chetan@gmail.com', 'JOB', 'Engineer', 'Engineer', 'Lead'),
(7, '25/MAR/2024', 'Akash', 'More', '8877886677', 'ak123@gmail.com', 'JOB', 'Networking', 'Networking', 'FollowUP'),
(8, '1/APR/2024', 'Pratiksha', 'Hadke', '9307890523', 'pratiksha123@gmail.com', 'JOB', 'Pratiksha Hadke, Tester,  Infosys,  Viman Nager', 'xyz', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `client_pay_entry`
--

CREATE TABLE `client_pay_entry` (
  `PAYMENT_ID` int(11) NOT NULL,
  `PAY_DATE` varchar(15) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `PHONENO` varchar(50) NOT NULL,
  `BUSINESS_NATURE` varchar(50) NOT NULL,
  `PAY_AMT` int(10) NOT NULL,
  `PAY_MODE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_pay_entry`
--

INSERT INTO `client_pay_entry` (`PAYMENT_ID`, `PAY_DATE`, `FNAME`, `LNAME`, `PHONENO`, `BUSINESS_NATURE`, `PAY_AMT`, `PAY_MODE`) VALUES
(1, '2/APR/2024', 'Priti', 'Shendge', '1234567890', 'Finance', 40000, 'UPI'),
(2, '2/APR/2024', 'Pooja', 'shendge', '1234567890', 'Manifacturing', 50000, 'By Cheque'),
(3, '2/APR/2024', 'Priya', 'Sharma', '8907654321', 'Development', 90000, 'Netbanking'),
(5, '2/APR/2024', 'Smriti', 'Sharma', '8877886677', 'Manifacturing', 50000, 'UPI'),
(6, '2/APR/2024', 'Sai', 'Joshi', '8456789023', 'Development', 100000, 'By Cheque'),
(7, '2/APR/2024', 'Kriti', 'Lonare', '9595302323', 'Mechanical', 200000, 'Netbanking'),
(8, '2/APR/2024', 'Akash', 'Patil', '8989898909', 'Finance', 400000, 'By Cheque');

-- --------------------------------------------------------

--
-- Table structure for table `client_registration`
--

CREATE TABLE `client_registration` (
  `REG_ID` int(11) NOT NULL,
  `REG_DATE` varchar(15) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `PHONENO` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PROFESSION` varchar(50) NOT NULL,
  `CLIENT_INFO` varchar(50) NOT NULL,
  `COMP_NAME` varchar(50) NOT NULL,
  `COMP_ADD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_registration`
--

INSERT INTO `client_registration` (`REG_ID`, `REG_DATE`, `FNAME`, `LNAME`, `PHONENO`, `EMAIL`, `PROFESSION`, `CLIENT_INFO`, `COMP_NAME`, `COMP_ADD`) VALUES
(1, '25/MAR/2024', 'Arati', 'Shendge', '1234567890', 'aratishendge217@gmail.com', 'JOB', 'Developer', 'Infosys', 'Hinjewadi');

-- --------------------------------------------------------

--
-- Table structure for table `dayplan_entry`
--

CREATE TABLE `dayplan_entry` (
  `PLAN_ID` int(11) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `DAY` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL,
  `DETAILS` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `REMARK` varchar(50) NOT NULL,
  `PLAN_BY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dayplan_entry`
--

INSERT INTO `dayplan_entry` (`PLAN_ID`, `DATE`, `DAY`, `TIME`, `DETAILS`, `STATUS`, `REMARK`, `PLAN_BY`) VALUES
(1, '19/MAR/2024', 'TUESDAY', '22:33', 'Login Page', 'Not Urgent But Important', 'Task Completed', ''),
(3, '1/APR/2024', 'WEDNESDAY', '11:5', 'Update User', 'Urgent and Important', 'null', 'Chetan'),
(4, '1/APR/2024', 'WEDNESDAY', '11:6', 'Dashboard', 'Not Urgent But Important', 'Task Completed', 'Ram'),
(5, '1/APR/2024', 'WEDNESDAY', '12:45', 'Update User', 'Not Urgent But Important', 'On Hold', 'Rakesh');

-- --------------------------------------------------------

--
-- Table structure for table `employee_pay_entry`
--

CREATE TABLE `employee_pay_entry` (
  `EMP_PAY_ID` int(11) NOT NULL,
  `PAY_DATE` varchar(15) NOT NULL,
  `PAY_TIME` varchar(10) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `PAY_AMT` int(10) NOT NULL,
  `JOB` varchar(50) NOT NULL,
  `PAY_MODE` varchar(50) NOT NULL,
  `INCENTIVE_AMT` varchar(50) NOT NULL,
  `FINAL_AMT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_pay_entry`
--

INSERT INTO `employee_pay_entry` (`EMP_PAY_ID`, `PAY_DATE`, `PAY_TIME`, `FNAME`, `LNAME`, `PAY_AMT`, `JOB`, `PAY_MODE`, `INCENTIVE_AMT`, `FINAL_AMT`) VALUES
(1, '25/MAR/2024', '21:23', 'Pooja', 'Shendge', 40000, 'Manager', 'UPI', '0.02', 40800),
(2, '25/MAR/2024', '19:45', 'Pooja', 'Joshi', 60000, 'Manager', 'UPI', '0', 60000),
(3, '25/MAR/2024', '19:46', 'Narayan', 'Hulge', 100000, 'Manager', 'By Cheque', '0.10', 110000),
(5, '1/APR/2024', '15:32', 'Mohan', 'Devarshi', 50000, 'Manager', 'UPI', '0', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `petty_cash`
--

CREATE TABLE `petty_cash` (
  `PID` int(11) NOT NULL,
  `PURCHASE_DATE` varchar(20) NOT NULL,
  `DNAME` varchar(50) NOT NULL,
  `PRODUCT_NAME` varchar(20) NOT NULL,
  `RATE` int(10) NOT NULL,
  `QUANTITY` int(10) NOT NULL,
  `BILL` int(10) NOT NULL,
  `ENTER_BY` varchar(50) NOT NULL,
  `PURPOSE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petty_cash`
--

INSERT INTO `petty_cash` (`PID`, `PURCHASE_DATE`, `DNAME`, `PRODUCT_NAME`, `RATE`, `QUANTITY`, `BILL`, `ENTER_BY`, `PURPOSE`) VALUES
(1, '24/MAR/2024', 'xyz', 'Laptop', 10000, 3, 30000, 'Ram', 'For event'),
(3, '19/MAR/2024', 'Production', 'software', 500000, 2, 1000000, 'John', 'For event'),
(4, '19/MAR/2024', 'Abc', 'Laptop', 10000, 3, 30000, 'Alex', 'For event'),
(6, '2/APR/2024', 'Marketing', 'Gadget Groove', 30000, 2, 60000, 'Miksha', 'For Work');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERID` int(11) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `PHONENO` varchar(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `UNAME` varchar(50) NOT NULL,
  `PASS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERID`, `FNAME`, `LNAME`, `PHONENO`, `EMAIL`, `UNAME`, `PASS`) VALUES
(3, 'Arati', 'Shendge', '1234567890', 'aratishendge217@gmail.com', 'arati', 'ar@123');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_pay_entry`
--

CREATE TABLE `vendor_pay_entry` (
  `VENDOR_ID` int(11) NOT NULL,
  `PAY_DATE` varchar(15) NOT NULL,
  `VNAME` varchar(50) NOT NULL,
  `PAY_AMT` int(15) NOT NULL,
  `PAY_MODE` varchar(50) NOT NULL,
  `PAY_BY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_pay_entry`
--

INSERT INTO `vendor_pay_entry` (`VENDOR_ID`, `PAY_DATE`, `VNAME`, `PAY_AMT`, `PAY_MODE`, `PAY_BY`) VALUES
(1, '2/APR/2024', 'Pooja', 50000, 'UPI', 'Rahul'),
(2, '2/APR/2024', 'Nisha', 100000, 'Cheque', 'Amruta'),
(5, '2/APR/2024', 'Arati Shendge', 40000, 'Madhuri', 'Cash'),
(6, '2/APR/2024', 'Neha', 200000, 'Pushpa', 'Netbanking'),
(7, '2/APR/2024', 'Smita', 700000, 'Dhruv', 'Cash'),
(8, '2/APR/2024', 'Manisha', 30000, 'Priya', 'Netbanking');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_ticketing`
--
ALTER TABLE `add_ticketing`
  ADD PRIMARY KEY (`TICKETING_ID`);

--
-- Indexes for table `client_enquiry`
--
ALTER TABLE `client_enquiry`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `client_pay_entry`
--
ALTER TABLE `client_pay_entry`
  ADD PRIMARY KEY (`PAYMENT_ID`);

--
-- Indexes for table `client_registration`
--
ALTER TABLE `client_registration`
  ADD PRIMARY KEY (`REG_ID`);

--
-- Indexes for table `dayplan_entry`
--
ALTER TABLE `dayplan_entry`
  ADD PRIMARY KEY (`PLAN_ID`);

--
-- Indexes for table `employee_pay_entry`
--
ALTER TABLE `employee_pay_entry`
  ADD PRIMARY KEY (`EMP_PAY_ID`);

--
-- Indexes for table `petty_cash`
--
ALTER TABLE `petty_cash`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `vendor_pay_entry`
--
ALTER TABLE `vendor_pay_entry`
  ADD PRIMARY KEY (`VENDOR_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_ticketing`
--
ALTER TABLE `add_ticketing`
  MODIFY `TICKETING_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_enquiry`
--
ALTER TABLE `client_enquiry`
  MODIFY `CLIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_pay_entry`
--
ALTER TABLE `client_pay_entry`
  MODIFY `PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_registration`
--
ALTER TABLE `client_registration`
  MODIFY `REG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dayplan_entry`
--
ALTER TABLE `dayplan_entry`
  MODIFY `PLAN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee_pay_entry`
--
ALTER TABLE `employee_pay_entry`
  MODIFY `EMP_PAY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `petty_cash`
--
ALTER TABLE `petty_cash`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendor_pay_entry`
--
ALTER TABLE `vendor_pay_entry`
  MODIFY `VENDOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
