-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 01:15 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `exportdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE IF NOT EXISTS `appuser` (
`uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `securitylevel` varchar(50) NOT NULL,
  `sdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `newuser` varchar(50) DEFAULT NULL,
  `fid` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`uid`, `uname`, `pwd`, `username`, `address`, `mobile`, `securitylevel`, `sdate`, `enddate`, `status`, `newuser`, `fid`, `fname`) VALUES
(82, 'sandar', '68c5346c45e90b1', 'SANDAAR', 'aa', '898888', 'ADMIN', '2019-04-01', '2020-03-31', 'ACTIVE', 'OLD', 16, 'SANDAAR AGRO');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add mydestination', 7, 'add_mydestination'),
(26, 'Can change mydestination', 7, 'change_mydestination'),
(27, 'Can delete mydestination', 7, 'delete_mydestination'),
(28, 'Can view mydestination', 7, 'view_mydestination');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE IF NOT EXISTS `bank_master` (
`bankid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `bankname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bankid`, `fid`, `bankname`) VALUES
(4, 47, 'Branch / Divisions'),
(5, 47, 'Capital Account'),
(7, 41, 'Current Assets'),
(9, 41, 'Bank Accounts'),
(10, 41, 'Cash-in-hand'),
(11, 41, 'Deposits (Asset)'),
(13, 41, 'Loans & Advances (Asset)'),
(14, 41, 'Sundry Debtors'),
(15, 41, 'Current Liabilities'),
(16, 41, 'Duties & Taxes'),
(17, 24, 'Provisions'),
(18, 41, 'Sundry Creditors'),
(19, 41, 'Direct Expenses'),
(20, 41, 'Direct Incomes'),
(21, 41, 'Fixed Assets'),
(22, 41, 'Indirect Expenses'),
(23, 41, 'Indirect Incomes'),
(24, 41, 'Investments'),
(25, 41, 'Loans (Liability)'),
(26, 41, 'Bank OD A/c'),
(27, 41, 'Secured Loans'),
(28, 41, 'Unsecured Loans'),
(29, 41, 'Misc. Expenses (ASSET)'),
(30, 41, 'Purchase Accounts'),
(31, 41, 'Sales Accounts'),
(32, 41, 'Suspense A/c'),
(33, 12, 'Share Apllication Money');

-- --------------------------------------------------------

--
-- Table structure for table `brand_name`
--

CREATE TABLE IF NOT EXISTS `brand_name` (
  `stkid` int(5) NOT NULL,
  `stkname` varchar(50) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
`brand_id` int(5) NOT NULL,
  `fid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_name`
--

INSERT INTO `brand_name` (`stkid`, `stkname`, `brand_name`, `brand_id`, `fid`) VALUES
(1, 'URAD DALL', 'URAD DALL MOGAR BOLD"SS BRAND', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `broker`
--

CREATE TABLE IF NOT EXISTS `broker` (
`brid` int(11) NOT NULL,
  `brokername` varchar(50) NOT NULL,
  `factoryadd` varchar(50) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(10) NOT NULL,
  `contactperson` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `incometaxno` varchar(50) NOT NULL,
  `servicetaxno` varchar(50) NOT NULL,
  `tinno` varchar(50) NOT NULL,
  `bankaccname` varchar(50) NOT NULL,
  `accountno` varchar(50) NOT NULL,
  `brokeragerate` varchar(50) NOT NULL,
  `officeadd` varchar(250) NOT NULL,
  `ocity` varchar(50) NOT NULL,
  `ostate` varchar(50) NOT NULL,
  `opin` int(10) NOT NULL,
  `olandline` varchar(30) NOT NULL,
  `centralenumber` varchar(60) NOT NULL,
  `cstnumber` varchar(60) NOT NULL,
  `acctype` varchar(40) NOT NULL,
  `ifsccode` varchar(20) NOT NULL,
  `brokerageqty` varchar(40) NOT NULL,
  `fid` int(10) NOT NULL,
  `obalance` float NOT NULL,
  `tbalance` varchar(100) NOT NULL,
  `saudadate` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `broker`
--

INSERT INTO `broker` (`brid`, `brokername`, `factoryadd`, `cityname`, `state`, `pin`, `contactperson`, `mobile`, `email`, `incometaxno`, `servicetaxno`, `tinno`, `bankaccname`, `accountno`, `brokeragerate`, `officeadd`, `ocity`, `ostate`, `opin`, `olandline`, `centralenumber`, `cstnumber`, `acctype`, `ifsccode`, `brokerageqty`, `fid`, `obalance`, `tbalance`, `saudadate`) VALUES
(8, 'all  test', 'l', 'l', 'Lakshadweep', 0, 'l', 'l', 'abc@abc.com', 'l', 'l', 'l', 'l', 'l', 'l', 'l', 'l', 'Lakshadweep', 0, 'l', 'l', 'l', 'l', 'l', 'l', 8, 0, 'Dr', '2016-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `commercial_in_main`
--

CREATE TABLE IF NOT EXISTS `commercial_in_main` (
  `consigneeid` int(11) NOT NULL,
  `proforma_inv` varchar(100) NOT NULL,
  `proforma_date` date NOT NULL,
  `export_ref` varchar(100) NOT NULL,
  `buyrefno_date` varchar(200) NOT NULL,
  `cntry_origin` varchar(100) NOT NULL,
  `cntry_final` varchar(100) NOT NULL,
  `pre_carr_by` varchar(100) NOT NULL,
  `place_of_rec_per` varchar(100) NOT NULL,
  `vessel` varchar(100) NOT NULL,
  `port_of_laod` varchar(200) NOT NULL,
  `port_of_dis` varchar(200) NOT NULL,
  `final_dest` varchar(100) NOT NULL,
  `del_terms` text NOT NULL,
  `extra_notes` text NOT NULL,
  `incoterm` varchar(50) NOT NULL,
  `curency` int(11) NOT NULL,
  `bankid` int(11) NOT NULL,
  `shippartyidd` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
`comm_id` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `inv_date` date NOT NULL,
  `com_inv_2` varchar(50) NOT NULL,
  `comm_inv_3` varchar(50) NOT NULL,
  `proforma_id` int(11) NOT NULL,
  `truckno` varchar(100) NOT NULL,
  `ppname` varchar(100) NOT NULL,
  `ppiddd` int(11) NOT NULL,
  `ppgstn` varchar(50) NOT NULL,
  `ppbillno` varchar(100) NOT NULL,
  `ppbilldateee` date NOT NULL,
  `ppqtyyy` varchar(50) NOT NULL,
  `master_conditions` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial_in_main`
--

INSERT INTO `commercial_in_main` (`consigneeid`, `proforma_inv`, `proforma_date`, `export_ref`, `buyrefno_date`, `cntry_origin`, `cntry_final`, `pre_carr_by`, `place_of_rec_per`, `vessel`, `port_of_laod`, `port_of_dis`, `final_dest`, `del_terms`, `extra_notes`, `incoterm`, `curency`, `bankid`, `shippartyidd`, `fid`, `comm_id`, `invoice_no`, `inv_date`, `com_inv_2`, `comm_inv_3`, `proforma_id`, `truckno`, `ppname`, `ppiddd`, `ppgstn`, `ppbillno`, `ppbilldateee`, `ppqtyyy`, `master_conditions`) VALUES
(3020, 'MJ 101', '2020-02-14', 'EXP 101', 'Talk ovre phone on 14/02/2020', 'India', 'Nepal', 'Road', 'p1', 'v1', 'pol1', 'pod1', 'fd1', 'some remarks', 'ex notes', 'EX-WORK', 1, 1, 3020, 16, 3, '1', '2020-02-15', 'STL', 'G/19-20', 18, '', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'MJ 101', '2020-02-14', 'EXP 101', 'Talk ovre phone on 14/02/2020', 'India', 'Nepal', 'Road', 'p1', 'v1', 'pol1', 'pod1', 'fd1', 'some remarks', 'ex notes', 'EX-WORK', 1, 1, 3020, 16, 4, '420', '2020-02-15', 'STL', 'G/19-20', 18, '', '', 0, '', '', '0000-00-00', '', ''),
(3019, 'a', '2020-02-15', 'a', 'a', 'India', '0', 'Road', '0', '0', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3019, 16, 5, '421', '2020-02-15', 'STL', 'G/19-20', 19, '', '', 0, '', '', '0000-00-00', '', ''),
(3022, 'inv 9721045', '2020-02-15', 'some data', 'sss', 'India', 'aaa', 'Road', '0', '0', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 7, '423', '2020-02-15', 'STL', 'G/19-20', 20, '', '', 0, '', '', '0000-00-00', '', ''),
(3019, 'mp041515415', '2020-02-15', 'a', '0', 'India', '0', 'Road', '0', 'AP1054545', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3019, 16, 8, '424', '2020-02-15', 'STL', 'G/19-20', 23, '', '', 0, '', '', '0000-00-00', '', ''),
(3019, 'mp041515415', '2020-02-15', 'a', '0', 'India', '0', 'Road', '0', 'AP1054545', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3019, 16, 10, '426', '2020-02-15', 'STL', 'G/19-20', 23, '', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'UP93q0314', '2020-02-15', 'a', 'as', 'India', 'Nepal', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 3, 1, 3020, 16, 11, '427', '2020-02-15', 'STL', 'G/19-20', 24, '', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'UP93q0314', '2020-02-15', 'a', 'as', 'India', 'Nepal', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 3, 1, 3020, 16, 12, '427', '2020-02-15', 'STL', 'G/19-20', 24, 'AP778787878', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'SAN/2019-2020/15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 13, '2019-2020', '2020-02-17', 'SAN', '15A', 27, '0', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'SAN/2019-2020/15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 14, '15A', '2020-02-17', 'SAN', '2019-2020', 27, '0', '', 0, '', '', '0000-00-00', '', ''),
(3020, 'SAN/2019-2020/15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 15, '15A', '2020-02-17', 'SAN', '2019-2020', 27, '0', 'MOHD AJAHAR', 3021, 'GSTIN880809890', '101', '2020-02-17', '10', ''),
(3020, 'SAN/2019-2020/15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 16, '15A', '2020-02-17', 'SAN', '2019-2020', 27, '0', 'AFTABALI SHAUKATALI', 3020, 'ABGPK2106A', '101', '2020-02-17', '1000', ''),
(3020, 'SAN/2019-2020/15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 17, '15B', '2020-02-17', 'SAN', '2019-2020', 27, '0', 'MOHD AJAHAR', 3021, 'GSTIN880809890', '101', '2020-02-17', '100', ''),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 18, '16E', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'RAMNIWAS LAUTU YADAV', 3022, '0', 'a', '2020-02-18', '100', ''),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 19, '16F', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'RAMNIWAS LAUTU YADAV', 3022, '0', 'a', '2020-02-18', '50', ''),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 20, '16G', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'ABBASH TRANSPORT COMPANY', 3019, '0', '101', '2020-02-18', '100', ''),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 21, '16H', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'RAMNIWAS LAUTU YADAV', 3022, '0', '101', '2020-02-18', '100', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 22, '16I', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'ARVIND EMPORIUM PVT. LTD. NEPAL', 3018, '302922329', '101', '2020-02-18', '100', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 23, '16J', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'DIRECT-CG CEMENT NEPAL', 3023, '0', '10', '2020-02-18', 'aa', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 24, '16K', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'AFTABALI SHAUKATALI', 3020, 'ABGPK2106A', '101', '2020-02-18', '501', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 25, '16L', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'RAMNIWAS LAUTU YADAV', 3022, '0', '101', '2020-02-18', '100', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3022, 'SAN/2019-2020/16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, 26, '16M', '2020-02-18', 'SAN', '2019-2020', 28, '0', 'MOHD AJAHAR', 3021, 'GSTIN880809890', '501', '2020-02-18', '100', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) <b> WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME. </b>'),
(3020, 'SAN/2019-2020/17', '2020-02-18', 'ref no', 'discc', 'India', 'nepal', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, 27, '17A', '2020-02-18', 'SAN', '2019-2020', 29, '0', 'AMBAY STEELS PRIVATE LIMITED', 3066, '302922329', '2525', '2020-02-17', '25.00', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3067, 'SAN/2019-2020/19', '2020-02-18', 'some ref number', 'Phone dicussion on 12/12/2019', 'India', 'Nepal', 'Road', 'India', 'By Truck', 'DURGAPUR, INDIA', 'BHAIRAHAWA, NEPAL VIA CUSTOMS ENTRY POINT IN NEPAL: BHAIRAHAWA CUSTOMS OFFICE, BHAIRAHAWA, NEPAL', 'Nepal', 'EX-WORKS DURGAPUR', '0', 'EX-WORK', 1, 1, 3067, 16, 32, '19B', '2020-02-18', 'SAN', '2019-2020', 31, '0', 'RAIC INTEGRATED SPONGE & POWER PRIVATE LIMITED', 3068, '19AACCB3462A1Z4', 'R250', '2020-02-18', '75', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.'),
(3021, 'SAN/2019-2020/20', '2020-02-21', 'IEC : ABCCS3959G', 'aaa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3021, 16, 33, '20A', '2020-02-24', 'SAN', '2019-2020', 32, 'AP9AY6515', 'CG CEMENT INDUSTRIES PRIVATE LIMITED', 3029, '0', '101', '2020-02-24', '100', 'WE DO HEREBY CERTIFY THAT THE MERCHANDISE ARE OF INDIAN ORIGIN. WE ALSO CERTIFY THAT QUALITY, QUANTITY, RATE, SPECIFICATION OF THE MERCHANDISE ARE STRICTLY IN ACCORDANCE WITH PROFORMA INVOICE.\r\nINDIAN CUSTOMS CLEARANCE THROUGH DUTY DRAWBACK SCHEME (CUSTOMS PORTION ONLY) WE INTEND TO CLAIM REWARDS UNDER MEIS SCHEME.');

-- --------------------------------------------------------

--
-- Table structure for table `comm_inv_conditions`
--

CREATE TABLE IF NOT EXISTS `comm_inv_conditions` (
`auto_id` int(11) NOT NULL,
  `po_1` text NOT NULL,
  `po_2` text NOT NULL,
  `poid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comm_in_items`
--

CREATE TABLE IF NOT EXISTS `comm_in_items` (
  `item_id` int(11) NOT NULL,
  `goods_descr` text NOT NULL,
  `hsncode` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `qty` float NOT NULL,
  `rate` float NOT NULL,
  `amount` double(10,2) NOT NULL,
  `item_details` text NOT NULL,
  `gst` int(11) NOT NULL,
`comm_item_id` int(11) NOT NULL,
  `comm_inv_id` int(11) NOT NULL,
  `bags` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comm_in_items`
--

INSERT INTO `comm_in_items` (`item_id`, `goods_descr`, `hsncode`, `unit`, `qty`, `rate`, `amount`, `item_details`, `gst`, `comm_item_id`, `comm_inv_id`, `bags`) VALUES
(57, 'MS BILLETS', '7207.1920', 'MTS', 50, 50, 2500.00, '(INDUSTRIAL RAW MATERIAL)', 0, 3, 3, 0),
(57, 'MS BILLETS', '7207.1920', 'MTS', 1000, 50, 50000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 4, 4, 0),
(57, 'MS BILLETS', '7207.1920', 'MTS', 20, 10, 236.00, '(INDUSTRIAL RAW MATERIAL)', 18, 5, 5, 70),
(55, 'FLY ASH', '2621', 'MTS', 20, 100, 2000.00, '(DRY FLY ASH)', 0, 6, 5, 1),
(57, 'MS BILLETS', '7207.1920', 'MTS', 20, 100, 2000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 9, 7, 20),
(57, 'MS BILLETS', '7207.1920', 'MTS', 10, 120, 1200.00, '(INDUSTRIAL RAW MATERIAL)', 0, 10, 7, 10),
(57, 'MS BILLETS', '7207.1920', 'MTS', 20, 150, 3000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 11, 8, 0),
(57, 'MS BILLETS', '7207.1920', 'MTS', 20, 150, 3000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 13, 10, 50),
(52, 'COAL', '2701', 'MTS', 5, 105, 525.00, '0', 0, 14, 12, 0),
(52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 15, 13, 0),
(52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 16, 14, 0),
(52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 17, 15, 0),
(52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 18, 16, 0),
(52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 19, 17, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 20, 18, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 21, 19, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 22, 20, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 23, 21, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 24, 22, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 25, 23, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 26, 24, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 27, 25, 0),
(54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 28, 26, 0),
(57, 'MS BILLETS', '7207.1920', 'MTS', 25, 1000, 25000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 29, 27, 85),
(57, 'MS BILLETS', '7207.1920', 'MTS', 75.06, 413, 30999.78, '(INDUSTRIAL RAW MATERIAL)', 0, 34, 32, 162),
(50, 'FLY ASH', '2621', 'MTS', 100, 200, 20000.00, '(DRY FLY ASH)', 0, 35, 33, 10),
(52, 'COAL', '2701', 'MTS', 10, 100, 1000.00, '0', 0, 36, 33, 20);

-- --------------------------------------------------------

--
-- Table structure for table `condition_master`
--

CREATE TABLE IF NOT EXISTS `condition_master` (
`tab_id` int(11) NOT NULL,
  `val1` varchar(100) NOT NULL,
  `val2` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `condition_master`
--

INSERT INTO `condition_master` (`tab_id`, `val1`, `val2`) VALUES
(1, 'Price', 'EXW Durgapur , west Bengal India'),
(2, 'tes2', 'some new conditions');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchangee`
--

CREATE TABLE IF NOT EXISTS `currency_exchangee` (
`tab_auto_id` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `import_ex_rate` float NOT NULL,
  `export_ex_rate` float NOT NULL,
  `notice_num` varchar(50) NOT NULL,
  `notice_date` date NOT NULL,
  `remarks` text NOT NULL,
  `year` varchar(100) NOT NULL,
  `curr_master_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_exchangee`
--

INSERT INTO `currency_exchangee` (`tab_auto_id`, `currencyid`, `startdate`, `enddate`, `import_ex_rate`, `export_ex_rate`, `notice_num`, `notice_date`, `remarks`, `year`, `curr_master_id`) VALUES
(5, 1, '2020-01-01', '2020-01-15', 72, 74, '45', '2020-01-01', 'aaa', '2019-2020', 1),
(6, 1, '2020-01-16', '2020-01-30', 72, 75.6, '45', '2020-01-01', 'aaa', '2019-2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_master`
--

CREATE TABLE IF NOT EXISTS `currency_master` (
`tab_auto_id` int(11) NOT NULL,
  `curr_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_master`
--

INSERT INTO `currency_master` (`tab_auto_id`, `curr_name`) VALUES
(1, 'US $'),
(2, 'INR'),
(3, 'SGD');

-- --------------------------------------------------------

--
-- Table structure for table `curr_exchange_main`
--

CREATE TABLE IF NOT EXISTS `curr_exchange_main` (
`tab_auto_id` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curr_exchange_main`
--

INSERT INTO `curr_exchange_main` (`tab_auto_id`, `remarks`) VALUES
(1, 'USD TO INR --  EXCHANGE RATE');

-- --------------------------------------------------------

--
-- Table structure for table `db_bck`
--

CREATE TABLE IF NOT EXISTS `db_bck` (
  `bck_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_bck`
--

INSERT INTO `db_bck` (`bck_date`) VALUES
('24022020');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'newapp', 'mydestination'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-26 10:18:58.806179'),
(2, 'auth', '0001_initial', '2020-02-26 10:19:00.350743'),
(3, 'admin', '0001_initial', '2020-02-26 10:19:06.968404'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-26 10:19:09.122713'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-26 10:19:09.164761'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-26 10:19:10.150948'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-26 10:19:10.994714'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-26 10:19:11.697849'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-26 10:19:11.744705'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-26 10:19:12.244724'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-26 10:19:12.275975'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-26 10:19:12.338463'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-26 10:19:13.826503'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-26 10:19:14.467958'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-26 10:19:15.182755'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-26 10:19:15.214006'),
(17, 'sessions', '0001_initial', '2020-02-26 10:19:15.464004'),
(18, 'newapp', '0001_initial', '2020-02-26 12:11:33.333936');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expensesregister`
--

CREATE TABLE IF NOT EXISTS `expensesregister` (
`exid` int(10) NOT NULL,
  `expenseshead` varchar(50) NOT NULL,
  `fid` int(10) NOT NULL,
  `acgroup` varchar(100) NOT NULL,
  `obalance` float NOT NULL,
  `tbalance` varchar(100) NOT NULL,
  `saudadate` date DEFAULT NULL,
  `acgrpid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file_up`
--

CREATE TABLE IF NOT EXISTS `file_up` (
`id` int(11) NOT NULL,
  `sbno` varchar(50) NOT NULL,
  `sbdate` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `curr_status` varchar(200) NOT NULL,
  `qry_raised` varchar(50) NOT NULL,
  `qry_replied` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_up`
--

INSERT INTO `file_up` (`id`, `sbno`, `sbdate`, `location`, `curr_status`, `qry_raised`, `qry_replied`) VALUES
(367, '1091988 ', '2020-02-01', 'INJBNB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(368, '1106347 ', '2020-02-01', 'INPTPB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(369, '1094735 ', '2020-02-01', 'INPTPB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(370, '1094973 ', '2020-02-01', 'INPTPB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(371, '1110049 ', '2020-02-02', 'INPTPB ', 'TO BE MARKED ', 'N.A ', 'N.A '),
(372, '1110037 ', '2020-02-02', 'INPTPB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(373, '1113486 ', '2020-02-03', 'INJBNB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(374, '1120239 ', '2020-02-03', 'INJBNB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(375, '1179610 ', '2020-02-05', 'INJBNB ', 'EXAM OVER ', 'N.A ', 'N.A '),
(376, '1173106 ', '2020-02-05', 'INPTPB ', 'TO BE MARKED ', 'N.A ', 'N.A '),
(377, '0', '0000-00-00', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `firmcreation`
--

CREATE TABLE IF NOT EXISTS `firmcreation` (
`fid` int(11) NOT NULL,
  `firmname` varchar(100) NOT NULL,
  `businessfirm` varchar(100) NOT NULL,
  `officeadd` text NOT NULL,
  `shopadd` varchar(250) NOT NULL,
  `phonno` varchar(50) NOT NULL,
  `faxnumber` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `firmtype` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mpvat` varchar(50) NOT NULL,
  `midate` date DEFAULT NULL,
  `mandilicenseno` varchar(50) NOT NULL,
  `mandidate` date DEFAULT NULL,
  `cstno` varchar(50) NOT NULL,
  `cstdate` date DEFAULT NULL,
  `tinno` varchar(50) NOT NULL,
  `tindate` date DEFAULT NULL,
  `fssaino` varchar(50) NOT NULL,
  `fdate` date DEFAULT NULL,
  `otherdoc` varchar(50) NOT NULL,
  `propname` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `contactperson1` varchar(100) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `itnumber` varchar(50) NOT NULL,
  `itndate` date DEFAULT NULL,
  `otherdoc1` varchar(50) NOT NULL,
  `pcontact` varchar(100) NOT NULL,
  `pstatus` varchar(50) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `banktype` varchar(100) NOT NULL,
  `bankaccnumber` varchar(50) NOT NULL,
  `ifsccode` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firmcreation`
--

INSERT INTO `firmcreation` (`fid`, `firmname`, `businessfirm`, `officeadd`, `shopadd`, `phonno`, `faxnumber`, `mobile`, `contactperson`, `firmtype`, `email`, `mpvat`, `midate`, `mandilicenseno`, `mandidate`, `cstno`, `cstdate`, `tinno`, `tindate`, `fssaino`, `fdate`, `otherdoc`, `propname`, `place`, `state`, `contactperson1`, `email1`, `itnumber`, `itndate`, `otherdoc1`, `pcontact`, `pstatus`, `bankname`, `banktype`, `bankaccnumber`, `ifsccode`) VALUES
(16, 'SANDAAR AGRO PRIVATE LIMITED', 'SANDAAR AGRO PRIVATE LIMITED', 'Reg.Office : 20053, Civil Line Infront Of Harijan Thana City : Tikamgarh, \r\n Pin code - 472001 State Madhya Pradesh / Country INDIA </br>\r\nMobile +91 7000615952 9893142537 Tel.: +91 7683-240342 Fax : +91 7683 297329 Email : a9893142537@gmail.com Web.: www.mrpagro.com\r\n </br>\r\n<b>GSTN No. : 23ABCCS3959G1ZA IEC : ABCCS3959G Fedration of indian export Membership no. : MPC/---/2018-2019', 'WARD NO 23 H NO 100 CIVIL LINE FIRST FLOUR TIKAMGARH', '9893142537', '', '9893142537', 'MANISH JAIN DIRECTOR', 'Company', 'info@mrpagro.com', '23AALCM7698A1Z9', '2018-10-26', 'M338', '2018-04-13', 'AD231219000703K  dt 11/12/2019', '2018-04-13', 'U115549MP2018PTC045542', '2018-04-13', '114175100000009', '2018-04-13', 'GST ', 'MANISH KUMAR JAIN', 'TIKAMGARH MP', 'MADHYA PRADESH', 'RAKSHA JAIN DIRETOTR', '', 'AALCM7698A', '2018-04-13', '23AALCM7698A1Z9', '7000615952', 'Director', 'ICICI BANK LIMITED', 'CURRENT', '145005000830', 'ICIC0001450');

-- --------------------------------------------------------

--
-- Table structure for table `firm_bill_seq`
--

CREATE TABLE IF NOT EXISTS `firm_bill_seq` (
  `fid` int(10) NOT NULL,
  `billno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `freight_letter`
--

CREATE TABLE IF NOT EXISTS `freight_letter` (
`id` int(10) NOT NULL,
  `sno` varchar(25) NOT NULL,
  `mesars` int(10) NOT NULL,
  `t_date` date NOT NULL,
  `p_date` date NOT NULL,
  `broker` int(10) NOT NULL,
  `jins` varchar(150) NOT NULL,
  `truckno` varchar(150) NOT NULL,
  `qty` float NOT NULL,
  `truck_fare` float NOT NULL,
  `advance` float NOT NULL,
  `balance` float NOT NULL,
  `billno` varchar(155) NOT NULL,
  `billtyno` varchar(150) NOT NULL,
  `beema_dec` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `godown`
--

CREATE TABLE IF NOT EXISTS `godown` (
`gid` int(10) NOT NULL,
  `gname` varchar(40) NOT NULL,
  `gcontact` varchar(22) NOT NULL,
  `gaddress` varchar(250) NOT NULL,
  `fid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `godown`
--

INSERT INTO `godown` (`gid`, `gname`, `gcontact`, `gaddress`, `fid`) VALUES
(8, 'NTPC FLY ASH', '', 'NTPC FLY ASH - DISPATCH BARHNI CUSTUM BORDER SIDDHATHNAGRA', 16),
(9, 'CUSTUM OFFICE BARHNI BORDER', '', 'CUSTUM OFFICE BARHNI BORDER SIDDHARTHNAGAR UP INDIA', 19);

-- --------------------------------------------------------

--
-- Table structure for table `goodrecieptsnote`
--

CREATE TABLE IF NOT EXISTS `goodrecieptsnote` (
  `fid` int(10) NOT NULL,
  `moisture` int(30) NOT NULL,
  `dust` int(30) NOT NULL,
  `smallseed` int(30) NOT NULL,
  `splitseed` int(20) NOT NULL,
  `oil` int(40) NOT NULL,
  `quantity` int(30) NOT NULL,
  `bag` varchar(30) NOT NULL,
  `packingbag` varchar(100) NOT NULL,
  `suppliername` varchar(200) NOT NULL,
  `brokername` varchar(100) NOT NULL,
  `recieptweight` float NOT NULL,
  `bagquality` varchar(100) NOT NULL,
  `modeofsupply` varchar(30) NOT NULL,
  `transportername` varchar(80) NOT NULL,
  `dateofbillty` date DEFAULT NULL,
  `advance` float NOT NULL,
  `payble` float NOT NULL,
  `vehiclenumber` varchar(40) NOT NULL,
  `supervisiorname` varchar(40) NOT NULL,
  `billno` varchar(30) NOT NULL,
  `gatepassno` varchar(40) NOT NULL,
  `form10` varchar(30) NOT NULL,
  `billtyno` varchar(30) NOT NULL,
  `frieght` float NOT NULL,
  `remark` varchar(255) NOT NULL,
  `entrydate` date NOT NULL,
  `poid` int(10) NOT NULL,
  `weightbridgename` varchar(100) NOT NULL,
  `weightdate` date NOT NULL,
  `kantano` varchar(100) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `grossweight1` float NOT NULL,
  `netweight1` float NOT NULL,
  `tareweight` float NOT NULL,
  `bag1` float NOT NULL,
  `grossweight2` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` float NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` float NOT NULL,
`grid` int(10) NOT NULL,
  `suppid` int(10) NOT NULL,
  `brkid` int(5) NOT NULL,
  `transname` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entrey`
--

CREATE TABLE IF NOT EXISTS `journal_entrey` (
  `jid` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `fid` int(5) NOT NULL,
  `d_total` float NOT NULL,
  `c_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ledger_master`
--

CREATE TABLE IF NOT EXISTS `ledger_master` (
  `leg_name` varchar(100) NOT NULL,
  `fac_addr` varchar(200) NOT NULL,
  `off_addr` varchar(200) NOT NULL,
  `fact_city` varchar(50) NOT NULL,
  `off_city` varchar(50) NOT NULL,
  `fact_state` varchar(50) NOT NULL,
  `off_state` varchar(50) NOT NULL,
  `f_pin` varchar(11) NOT NULL,
  `o_pin` varchar(11) NOT NULL,
  `o_con` varchar(50) NOT NULL,
  `f_contact` varchar(50) NOT NULL,
  `off_email` varchar(50) NOT NULL,
  `inctaxnum` varchar(50) NOT NULL,
  `servicetaxno` varchar(50) NOT NULL,
  `tinno` varchar(50) NOT NULL,
  `centralno` varchar(50) NOT NULL,
  `cstno` varchar(50) NOT NULL,
  `o_date` date NOT NULL,
  `o_bal` float NOT NULL,
  `acc_grp` varchar(50) NOT NULL,
  `dr_cr` varchar(10) NOT NULL,
  `broker` int(1) NOT NULL,
  `transported` int(1) NOT NULL,
  `party` int(1) NOT NULL,
`legid` int(10) NOT NULL,
  `fid` int(5) NOT NULL,
  `firmcontact` varchar(50) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `bank_type` varchar(30) NOT NULL,
  `bank_number` varchar(20) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `brokerage` varchar(20) NOT NULL,
  `brok_qty` varchar(20) NOT NULL,
  `acc_name` varchar(50) NOT NULL,
  `acc_id` int(5) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `statetype` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3069 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ledger_master`
--

INSERT INTO `ledger_master` (`leg_name`, `fac_addr`, `off_addr`, `fact_city`, `off_city`, `fact_state`, `off_state`, `f_pin`, `o_pin`, `o_con`, `f_contact`, `off_email`, `inctaxnum`, `servicetaxno`, `tinno`, `centralno`, `cstno`, `o_date`, `o_bal`, `acc_grp`, `dr_cr`, `broker`, `transported`, `party`, `legid`, `fid`, `firmcontact`, `bankname`, `bank_type`, `bank_number`, `ifsc_code`, `brokerage`, `brok_qty`, `acc_name`, `acc_id`, `gstin`, `aadhar`, `statetype`) VALUES
('ARVIND EMPORIUM PVT. LTD. NEPAL', 'KRISHNA NAGAR-4 KAPILVASTU NEPAL  PAN NO. 302922329', 'KRISHNA NAGAR-4 KAPILVASTU NEPAL  PAN NO. 302922329', 'NEPAL  PAN NO. 302922329', 'NEPAL  PAN NO. 302922329', '--Select State--', '--Select State--', '302922329', '302922329', '', '7320919293', 'ajaygoel1607@gmail.com', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 0, 0, 1, 3018, 16, 'NIKHIL JI', '', '', '', '', '', '', '', 14, '302922329', '', 0),
('ABBASH TRANSPORT COMPANY', 'Reg.Office : Near Verma Sell, Petrol Pump, New Bus stand Road Tikamgarh,', 'Reg.Office : Near Verma Sell, Petrol Pump, New Bus stand Road Tikamgarh,', 'Tikamgarh', 'Tikamgarh', 'Madhya Pradesh', 'Madhya Pradesh', '472001', '472001', '', '9165327042', 'abbash@mrpagro.com', '', '', 'AGWPA7073M', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3019, 16, 'ABDUL ABBASH', '', '', '', '', '', '', '', 14, '', '', 0),
('AFTABALI SHAUKATALI', 'Reg.Office : 48B/24B MINTO ROAD CIVIL LINES ALLHABAD', 'Reg.Office : 48B/24B MINTO ROAD CIVIL LINES ALLHABAD', 'ALLHABAD', 'ALLHABAD', 'Uttar Pradesh', 'Uttar Pradesh', '211001', '211001', '6393968972', '6393968972', 'altafaliallhabad@gmail.com', '', '', 'ABGPK2106A', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3020, 16, 'AFTABALI SHAUKATALI', '', '', '', '', '', '', '', 14, 'ABGPK2106A', '', 0),
('MOHD AJAHAR', 'MOHD AJAHAR REG.OFFICE : RUDAPUR MALAK HARHAR UARHAR PRAYAGRAJ', 'MOHD AJAHARREG.OFFICE : RUDAPUR MALAK HARHAR UARHAR PRAYAGRAJ', 'PRAYAGRAJ', 'PRAYAGRAJ', 'UTTAR PRADESH', 'UTTAR PRADESH', '211013', '211013', '', '7755021818', 'AJHARPRAGRAUP@GMAIL.COM', '', '', 'ASCPA0775G', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3021, 16, 'MOHD AJAHAR', '', '', '', '', '', '', '', 14, 'GSTIN880809890', '', 0),
('RAMNIWAS LAUTU YADAV', 'SHIVAJI NAGAR BALKUM THANE MAHARASTA', 'SHIVAJI NAGAR BALKUM THANE MAHARASTA', 'THANE MUMBAI', 'THANE MUMBAI', 'Maharashtra', 'Maharashtra', '400607', '400607', '', '', '', '', '', 'AHBPY0601K', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3022, 16, 'RAMNIWAS', '', '', '', '', '', '', '', 14, '', '', 0),
('DIRECT-CG CEMENT NEPAL', '', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 1, 0, 0, 3023, 16, '', '', '', '', '', '', '', '', 14, '', '', 0),
('BANTI JI, ARVIND EMPORIYUM NEPAL', '', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 1, 0, 0, 3024, 16, '', '', '', '', '', '', '', '', 14, '', '', 0),
('KALINDI NAMAHA SUPPLIYERS', 'KRISHNANAGAR N P NO 5 KAPILAVASTU NEPAL PAN NO 300241888', 'KRISHNANAGAR N P NO 5 KAPILAVASTU NEPAL PAN NO 300241888', 'KAPILAVASTU  NEPAL', 'KAPILAVASTU  NEPAL', '--Select State--', '--Select State--', 'PAN NO 3002', 'PAN NO 3002', '', '', '', '', '', 'PAN NO 300241888', '', '', '2019-11-09', 0, '', 'DR', 0, 0, 1, 3025, 19, 'K K GUPTA', '', '', '', '', '', '', '', 14, 'PAN NO 300241888', '', 0),
('UMESWAR LAL JAISWAL', 'REGD. OFFICE GOODS CARRIER UNITED INSURENCE PIN CODE 00000', 'REGD. OFFICE GOODS CARRIER UNITED INSURENCE PIN CODE 00000', 'UTTARPADESH', 'UTTARPADESH', 'UTTAR PRADESH', 'UTTAR PRADESH', '000000', '00000', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3026, 19, 'UMESWAR LAL JAISWAL', '', '', '', '', '', '', '', 14, 'N.A.', '', 0),
('MUKESH KUMAR GURJAR', 'NEAR UNITED INDIA INSURENCE CO JAIPUR RAJISTAN', 'NEAR UNITED INDIA INSURENCE CO JAIPUR RAJISTAN', 'JAIPUR', 'JAIPUR', 'Rajasthan', 'Rajasthan', '000000', '000000', '', '', 'mukesgurajar@gmail.com', '', '', 'BIUPM4829C', '', '', '2019-11-10', 0, '', 'DR', 0, 1, 0, 3027, 19, 'MUKESH KUMAR GURJAR', '', '', '', '', '', '', '', 14, 'BIUPM4829C', '', 0),
('KAILASH CHAND JAT', 'NEAR HANUMAN MANDIR MAIN ROAD KEKRI RAJISTHAN', 'NEAR HANUMAN MANDIR MAIN ROAD KEKRI RAJISTHAN', 'KEKRI', 'KEKRI', 'Rajasthan', 'Rajasthan', '305404', '305404', '', '9624982755', 'kailshchand@gmail.com', '', '', 'AYAPS0667F', '', '', '2019-11-12', 0, '', 'DR', 0, 1, 0, 3028, 19, 'KAILSH CHAND JAT', '', '', '', '', '', '', '', 14, '23AYAPS0667FF1ZJ', '', 0),
('CG CEMENT INDUSTRIES PRIVATE LIMITED', 'CG CEMENT INDUSTRIES PRIVATE LIMITED NAWAL TARASI NEPAL', 'INDUSTRIES PRIVATE LIMITED NAWAL TARASI NEPAL', 'NAWAL TARASI NEPAL', 'NAWAL TARASI NEPAL', '--Select State--', '--Select State--', '', '', '', '+977 7841 6167', 'info@chaudharygroup.com', '', '', '', '', '', '2019-11-12', 0, '', 'DR', 0, 0, 1, 3029, 16, 'RAM GOYAL', '', '', '', '', '', '', '', 14, '', '', 0),
('ISWAR LAL JAISWAL', 'GOODS CARRIER UNITED INSURENCE UP', 'GOODS CARRIER UNITED INSURENCE UP', 'ALLHABAD', 'ALLHABAD', 'Uttar Pradesh', 'Uttar Pradesh', '', '', '', '', '', '', '', '', '', '', '2019-11-13', 0, '', 'DR', 0, 1, 0, 3030, 19, '', '', '', '', '', '', '', '', 14, '', '', 0),
('M G TRADING COMPANY', 'RANCHI', 'RANCHI', 'RANCHI', 'RANCHI', 'Jharkhand', 'Jharkhand', '284405', '284405', '', '', '', '', '', '', '', '', '2019-11-18', 0, '', 'DR', 0, 0, 1, 3031, 20, '', '', '', '', '', '', '', '', 14, '', '', 0),
('SMT. KANTA JAT', 'NATIONAL INSURECE CO LTD. 000 RAJISTAN', 'NATIONAL INSURECE CO LTD. 000 RAJISTAN', 'RAJISTAN', 'RAJISTHAN', 'Rajasthan', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '2019-11-20', 0, '', 'DR', 0, 1, 0, 3032, 19, '', '', '', '', '', '', '', '', 14, '', '', 0),
('M/S OM PRAKASH JAT', 'NATIONAL INSURENCE CO. LTD MAIN MARKET  RAJISTAN', 'NATIONAL INSURENCE CO. LTD MAIN MARKET  RAJISTAN', 'RAJISTHAN', 'RAJISTHAN', 'Rajasthan', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '2019-11-20', 0, '', 'DR', 0, 1, 0, 3033, 19, '', '', '', '', '', '', '', '', 14, '', '', 0),
('KINARA ROAD LINES', 'MAIN MARKET JAIPUR', 'MAIN MARKET JAIPUR', 'RAJISTAN', 'RAJISTAN', 'Rajasthan', 'Rajasthan', '', '', '', '', 'kinararoadlines@gmail.com', '', '', '', '', '', '2019-11-30', 0, '', 'DR', 0, 1, 0, 3034, 19, 'RAMESH KUMAR', '', '', '', '', '', '', '', 14, '', '', 0),
('KALINDI NAMAHA SUPPLIYERS', 'KRISHNANAGAR N P NO 5 KAPILAVASTU NEPAL PAN NO 300241888', 'KRISHNANAGAR N P NO 5 KAPILAVASTU NEPAL PAN NO 300241888', 'KAPILAVASTU  NEPAL', 'KAPILAVASTU  NEPAL', '--Select State--', '--Select State--', 'PAN NO 3002', 'PAN NO 3002', '', '', '', '', '', 'PAN NO 300241888', '', '', '2019-11-09', 0, '', 'DR', 0, 0, 1, 3035, 22, 'K K GUPTA', '', '', '', '', '', '', '', 14, 'PAN NO 300241888', '', 0),
('UMESWAR LAL JAISWAL', 'REGD. OFFICE GOODS CARRIER UNITED INSURENCE PIN CODE 00000', 'REGD. OFFICE GOODS CARRIER UNITED INSURENCE PIN CODE 00000', 'UTTARPADESH', 'UTTARPADESH', 'UTTAR PRADESH', 'UTTAR PRADESH', '000000', '00000', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3036, 22, 'UMESWAR LAL JAISWAL', '', '', '', '', '', '', '', 14, 'N.A.', '', 0),
('MUKESH KUMAR GURJAR', 'NEAR UNITED INDIA INSURENCE CO JAIPUR RAJISTAN', 'NEAR UNITED INDIA INSURENCE CO JAIPUR RAJISTAN', 'JAIPUR', 'JAIPUR', 'Rajasthan', 'Rajasthan', '000000', '000000', '', '', 'mukesgurajar@gmail.com', '', '', 'BIUPM4829C', '', '', '2019-11-10', 0, '', 'DR', 0, 1, 0, 3037, 22, 'MUKESH KUMAR GURJAR', '', '', '', '', '', '', '', 14, 'BIUPM4829C', '', 0),
('KAILASH CHAND JAT', 'NEAR HANUMAN MANDIR MAIN ROAD KEKRI RAJISTHAN', 'NEAR HANUMAN MANDIR MAIN ROAD KEKRI RAJISTHAN', 'KEKRI', 'KEKRI', 'Rajasthan', 'Rajasthan', '305404', '305404', '', '9624982755', 'kailshchand@gmail.com', '', '', 'AYAPS0667F', '', '', '2019-11-12', 0, '', 'DR', 0, 1, 0, 3038, 22, 'KAILSH CHAND JAT', '', '', '', '', '', '', '', 14, '23AYAPS0667FF1ZJ', '', 0),
('ISWAR LAL JAISWAL', 'GOODS CARRIER UNITED INSURENCE UP', 'GOODS CARRIER UNITED INSURENCE UP', 'ALLHABAD', 'ALLHABAD', 'Uttar Pradesh', 'Uttar Pradesh', '', '', '', '', '', '', '', '', '', '', '2019-11-13', 0, '', 'DR', 0, 1, 0, 3039, 22, '', '', '', '', '', '', '', '', 14, '', '', 0),
('SMT. KANTA JAT', 'NATIONAL INSURECE CO LTD. 000 RAJISTAN', 'NATIONAL INSURECE CO LTD. 000 RAJISTAN', 'RAJISTAN', 'RAJISTHAN', 'Rajasthan', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '2019-11-20', 0, '', 'DR', 0, 1, 0, 3040, 22, '', '', '', '', '', '', '', '', 14, '', '', 0),
('M/S OM PRAKASH JAT', 'NATIONAL INSURENCE CO. LTD MAIN MARKET  RAJISTAN', 'NATIONAL INSURENCE CO. LTD MAIN MARKET  RAJISTAN', 'RAJISTHAN', 'RAJISTHAN', 'Rajasthan', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '2019-11-20', 0, '', 'DR', 0, 1, 0, 3041, 22, '', '', '', '', '', '', '', '', 14, '', '', 0),
('KINARA ROAD LINES', 'MAIN MARKET JAIPUR', 'MAIN MARKET JAIPUR', 'RAJISTAN', 'RAJISTAN', 'Rajasthan', 'Rajasthan', '', '', '', '', 'kinararoadlines@gmail.com', '', '', '', '', '', '2019-11-30', 0, '', 'DR', 0, 1, 0, 3042, 22, 'RAMESH KUMAR', '', '', '', '', '', '', '', 14, '', '', 0),
('ARVIND EMPORIUM PVT. LTD. NEPAL', 'KRISHNA NAGAR-4 KAPILVASTU NEPAL  PAN NO. 302922329', 'KRISHNA NAGAR-4 KAPILVASTU NEPAL  PAN NO. 302922329', 'NEPAL  PAN NO. 302922329', 'NEPAL  PAN NO. 302922329', '--Select State--', '--Select State--', '302922329', '302922329', '', '7320919293', 'ajaygoel1607@gmail.com', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 0, 0, 1, 3043, 23, 'NIKHIL JI', '', '', '', '', '', '', '', 14, '302922329', '', 0),
('ABBASH TRANSPORT COMPANY', 'Reg.Office : Near Verma Sell, Petrol Pump, New Bus stand Road Tikamgarh,', 'Reg.Office : Near Verma Sell, Petrol Pump, New Bus stand Road Tikamgarh,', 'Tikamgarh', 'Tikamgarh', 'Madhya Pradesh', 'Madhya Pradesh', '472001', '472001', '', '9165327042', 'abbash@mrpagro.com', '', '', 'AGWPA7073M', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3044, 23, 'ABDUL ABBASH', '', '', '', '', '', '', '', 14, '', '', 0),
('AFTABALI SHAUKATALI', 'Reg.Office : 48B/24B MINTO ROAD CIVIL LINES ALLHABAD', 'Reg.Office : 48B/24B MINTO ROAD CIVIL LINES ALLHABAD', 'ALLHABAD', 'ALLHABAD', 'Uttar Pradesh', 'Uttar Pradesh', '211001', '211001', '6393968972', '6393968972', 'altafaliallhabad@gmail.com', '', '', 'ABGPK2106A', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3045, 23, 'AFTABALI SHAUKATALI', '', '', '', '', '', '', '', 14, 'ABGPK2106A', '', 0),
('MOHD AJAHAR', 'MOHD AJAHAR Reg.Office : RUDAPUR MALAK HARHAR UARHAR PRAYAGRAJ', 'MOHD AJAHARReg.Office : RUDAPUR MALAK HARHAR UARHAR PRAYAGRAJ', 'PRAYAGRAJ', 'PRAYAGRAJ', 'Uttar Pradesh', 'Uttar Pradesh', '211013', '211013', '', '7755021818', 'Ajharpragraup@gmail.com', '', '', 'ASCPA0775G', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3046, 23, 'MOHD AJAHAR', '', '', '', '', '', '', '', 14, '', '', 0),
('RAMNIWAS LAUTU YADAV', 'SHIVAJI NAGAR BALKUM THANE MAHARASTA', 'SHIVAJI NAGAR BALKUM THANE MAHARASTA', 'THANE MUMBAI', 'THANE MUMBAI', 'Maharashtra', 'Maharashtra', '400607', '400607', '', '', '', '', '', 'AHBPY0601K', '', '', '2019-11-09', 0, '', 'DR', 0, 1, 0, 3047, 23, 'RAMNIWAS', '', '', '', '', '', '', '', 14, '', '', 0),
('DIRECT-CG CEMENT NEPAL', '', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 1, 0, 0, 3048, 23, '', '', '', '', '', '', '', '', 14, '', '', 0),
('BANTI JI, ARVIND EMPORIYUM NEPAL', '', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-11-09', 0, '', 'DR', 1, 0, 0, 3049, 23, '', '', '', '', '', '', '', '', 14, '', '', 0),
('CG CEMENT INDUSTRIES PRIVATE LIMITED', 'CG CEMENT INDUSTRIES PRIVATE LIMITED NAWAL TARASI NEPAL', 'INDUSTRIES PRIVATE LIMITED NAWAL TARASI NEPAL', 'NAWAL TARASI NEPAL', 'NAWAL TARASI NEPAL', '--Select State--', '--Select State--', '', '', '', '+977 7841 6167', 'info@chaudharygroup.com', '', '', '', '', '', '2019-11-12', 0, '', 'DR', 0, 0, 1, 3050, 23, 'RAM GOYAL', '', '', '', '', '', '', '', 14, '', '', 0),
('KALINDI NAMAHA SUPPLIYERS', 'KRISHNA NAGAR N P NO. 05 KAPILVASTU NEPAL PAN 300241888', 'KRISHNA NAGAR N P NO. 05 KAPILVASTU NEPAL 300241888', 'KAPILVASTU', 'KAPILVASTU', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-12-17', 0, '', 'DR', 0, 0, 1, 3058, 23, 'K K GUPTA', '', '', '', '', '', '', '', 14, '', '', 0),
('M R P AGRO DISTRIBUTORS', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'KRISHNNAGAR NEPAL', 'KRISHNNAGAR NEPAL', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-12-18', 0, '', 'DR', 0, 0, 1, 3059, 23, 'MOHAMAND SAMIM KHA', '', '', '', '', '', '', '', 14, '', '', 0),
('M R P AGRO DISTRIBUTORS', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'KRISHNNAGAR NEPAL', 'KRISHNNAGAR NEPAL', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2019-12-25', 0, '', 'DR', 0, 0, 1, 3060, 19, 'MOHAMMAD. SAMMIM', '', '', '', '', '', '', '', 14, '', '', 0),
('NITESH ROAD LINES', 'G T ROAD RAM BAGAM PO RAJBARI DIST BURDHWAN WB', 'G T ROAD RAM BAGAM PO RAJBARI DIST BURDHWAN WB', 'BURDHMAN', 'BURDHMAN', 'West Bengal', 'West Bengal', '', '', '9332997757', '9332997757', '', '', '', '', '', '', '2020-01-01', 0, '', 'DR', 0, 1, 0, 3061, 23, 'JAIRAM SINGH', '', '', '', '', '', '', '', 14, '', '', 0),
('SAARAN SIWAN DEVRAI LORRY BROKERS', 'KATRAS MORE, JHARIA', 'KATRAS MORE, JHARIA', 'DHANBAAD', 'DHANBAAD', 'JHARKHAND', 'JHARKHAND', '', '', '9431976225', '9431976225', '', '', '', '', '', '', '2020-01-02', 0, '', 'DR', 0, 1, 1, 3062, 23, 'SONU JAIN', '', '', '', '', '', '', '', 14, '', '', 0),
('KHERA GOODS CARRIER', 'GT ROAD PUNJABI MORE NEAR JAISWAL PETROL PUMP RANIGANJ DISTT P B', 'GT ROAD PUNJABI MORE NEAR JAISWAL PETROL PUMP RANIGANJ DISTT P B', 'RANIGANJ', 'RANIGANJ', 'West Bengal', 'West Bengal', '0000000', '000000', '', '', 'a9893142537@gmail.com', '', '', '', '', '', '2020-01-21', 0, '', 'DR', 0, 1, 0, 3063, 23, 'SONU', '', '', '', '', '', '', '', 14, '19BLAPS9388B1Z', '', 0),
('M R P AGRO DISTRIBUTORS', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'WARD NO 5 STREET NAME &#2406;&#2406; KRISHNAGAR NEPAL PAN 612604689 EXIM CODE 6126046890119NP', 'KRISHNAGAR', 'KRISHNAGAR', '--Select State--', '--Select State--', 'PAN 6126046', 'PAN 6126046', '', '', '', '', '', '', '', '', '2020-01-31', 0, '', 'DR', 0, 0, 1, 3064, 22, 'MOHMD. SAMMIM KHAN', '', '', '', '', '', '', '', 14, '', '', 0),
('SAARAN SIWAN DEVRAI LORRY BROKERS', 'KATRAS MORE, JHARIA', 'KATRAS MORE, JHARIA', 'DHANBAAD', 'DHANBAAD', 'Jharkhand', 'Jharkhand', '', '', '9431976225', '9431976225', '', '', '', '', '', '', '2020-01-31', 0, '', 'DR', 0, 1, 0, 3065, 22, 'SONU JAIN', '', '', '', '', '', '', '', 14, '', '', 0),
('AMBAY STEELS PRIVATE LIMITED', 'Roouandehi. NEPAL', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2020-02-10', 0, '', 'DR', 0, 0, 1, 3066, 16, '', '', '', '', '', '', '', '', 14, '', '', 0),
('AMBE STEELS PVT. LTD', 'AMBE COMPLEX 6TH FLOOR, TEKU ROAD,\r\nKATHMANDU, NEPAL. EXIM CODE: 3026009000103NP,\r\nTEL: 00977 14 258128/258129/255551', 'AMBE COMPLEX 6TH FLOOR, TEKU ROAD,\r\nKATHMANDU, NEPAL. EXIM CODE: 3026009000103NP,\r\nTEL: 00977 14 258128/258129/255551', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2020-02-18', 0, '', 'DR', 0, 0, 0, 3067, 16, '', '', '', '', '', '', '', '', 14, '', '', 0),
('RAIC INTEGRATED SPONGE & POWER PRIVATE LIMITED', '19AACCB3462A1Z4', '', '', '', '--Select State--', '--Select State--', '', '', '', '', '', '', '', '', '', '', '2020-02-18', 0, '', 'DR', 0, 0, 0, 3068, 16, '', '', '', '', '', '', '', '', 14, '19AACCB3462A1Z4', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mandi13`
--

CREATE TABLE IF NOT EXISTS `mandi13` (
  `gpid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `suppliername` varchar(76) NOT NULL,
  `stockitem` varchar(76) NOT NULL,
  `msamiti` varchar(100) NOT NULL,
  `gatepassno` varchar(67) NOT NULL,
  `bagqty` float NOT NULL,
  `valueqty` float NOT NULL,
  `goodsvalue` float NOT NULL,
  `inwarddate` date DEFAULT NULL,
  `remark` varchar(255) NOT NULL,
  `suppid` int(10) NOT NULL,
  `stkid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandi13_ref`
--

CREATE TABLE IF NOT EXISTS `mandi13_ref` (
`a13refid` int(10) NOT NULL,
  `depositdate` date NOT NULL,
  `bagqty` float NOT NULL,
  `bagvalue` float NOT NULL,
  `goodsvalue` float NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandi14`
--

CREATE TABLE IF NOT EXISTS `mandi14` (
`a14id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `stockdate` date DEFAULT NULL,
  `stockitem` varchar(56) NOT NULL,
  `outqty` float NOT NULL,
  `outvalue` float NOT NULL,
  `aceevalue` float NOT NULL,
  `accdesc` varchar(15) NOT NULL,
  `stkid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandi15`
--

CREATE TABLE IF NOT EXISTS `mandi15` (
`regid` int(5) NOT NULL,
  `fid` int(10) NOT NULL,
  `debitid` int(10) NOT NULL,
  `debitvalue` float NOT NULL,
  `debitnarrtion` varchar(50) NOT NULL,
  `debitname` varchar(50) NOT NULL,
  `creditid` int(10) NOT NULL,
  `credvalue` float NOT NULL,
  `crdnarration` varchar(50) NOT NULL,
  `crdname` varchar(50) NOT NULL,
  `trans_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia4`
--

CREATE TABLE IF NOT EXISTS `mandia4` (
  `fid` int(10) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `billno` varchar(40) NOT NULL,
  `date` date DEFAULT NULL,
  `bag` float NOT NULL,
  `packing` varchar(40) NOT NULL,
  `grossweight` float NOT NULL,
  `netweight` float NOT NULL,
  `salestaxform` varchar(100) NOT NULL,
  `manditaxform` varchar(100) NOT NULL,
  `entrytaxform` varchar(100) NOT NULL,
  `transportername` varchar(49) NOT NULL,
  `crosingtname` varchar(40) NOT NULL,
  `brokername` varchar(50) NOT NULL,
  `paymentterms` varchar(50) NOT NULL,
  `mandigatepass` varchar(50) NOT NULL,
  `mandisamiti` varchar(40) NOT NULL,
  `truckno` varchar(50) NOT NULL,
  `otherdoc` varchar(50) NOT NULL,
  `entrydate` date NOT NULL,
  `poid` int(10) NOT NULL,
  `bag1` float NOT NULL,
  `grossweight1` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` float NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` float NOT NULL,
  `add1` float NOT NULL,
  `less1` float DEFAULT NULL,
  `remark1` varchar(100) NOT NULL,
  `value2` float NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `billtydate` date DEFAULT NULL,
  `totalfreight` float NOT NULL,
  `advance` float NOT NULL,
  `payble` float NOT NULL,
  `billtyno` varchar(100) NOT NULL,
`a4id` int(10) NOT NULL,
  `remarkless` varchar(60) NOT NULL,
  `ledgername` varchar(100) NOT NULL,
  `suppid` int(10) NOT NULL,
  `ledgername_n` varchar(100) NOT NULL,
  `brkid` int(5) NOT NULL,
  `trkid` int(4) NOT NULL,
  `brokerage_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia5`
--

CREATE TABLE IF NOT EXISTS `mandia5` (
  `supid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `suppliername` varchar(150) NOT NULL,
  `brokername` varchar(100) NOT NULL,
  `moisture` float NOT NULL,
  `dust` float NOT NULL,
  `smallseed` float NOT NULL,
  `splitseed` float NOT NULL,
  `oil` float NOT NULL,
  `quantity` float NOT NULL,
  `bag` varchar(100) NOT NULL,
  `packingterms` varchar(30) NOT NULL,
  `bagquality` varchar(70) NOT NULL,
  `rate` float NOT NULL,
  `deleveryduedate` date DEFAULT NULL,
  `paymentterms` varchar(100) NOT NULL,
  `cashdcond` varchar(100) NOT NULL,
  `modeofsupply` varchar(100) NOT NULL,
  `saudadate` date DEFAULT NULL,
  `stfcondition` varchar(100) NOT NULL,
  `etfcondition` varchar(100) NOT NULL,
  `mtfcondition` varchar(100) NOT NULL,
  `saudashort` varchar(50) NOT NULL,
  `loadedfinal` varchar(50) NOT NULL,
  `entrydate` date NOT NULL,
  `bag1` float NOT NULL,
  `grossweight1` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` float NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` float NOT NULL,
`soid` int(10) NOT NULL,
  `brkid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia6`
--

CREATE TABLE IF NOT EXISTS `mandia6` (
  `fid` int(10) NOT NULL,
  `billno` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `paymentterms` text NOT NULL,
  `truckno` varchar(60) NOT NULL,
  `billtyno` varchar(60) NOT NULL,
  `freighttotal` float NOT NULL,
  `freightadv` float NOT NULL,
  `freightpaid` float NOT NULL,
  `billtydate` date DEFAULT NULL,
  `bag1` float NOT NULL,
  `grossweight2` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` double(10,2) NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` double(10,2) NOT NULL,
`siid` int(10) NOT NULL,
  `supid` int(10) NOT NULL,
  `brkid` int(5) NOT NULL,
  `trid` int(5) NOT NULL,
  `brokerage_type` varchar(10) NOT NULL,
  `contractnumber` varchar(50) NOT NULL,
  `freight_type` int(11) NOT NULL,
  `freight_receivable` float NOT NULL,
  `gst_0` float NOT NULL,
  `gst_5` float NOT NULL,
  `gst_12` float NOT NULL,
  `gst_18` float NOT NULL,
  `gst_28` float NOT NULL,
  `billtype` int(11) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `placesupply` varchar(100) NOT NULL,
  `shippid` int(11) NOT NULL,
  `drivername` varchar(100) NOT NULL,
  `delremarksss` varchar(200) NOT NULL,
  `destinationplace` varchar(100) NOT NULL,
  `exportrefnum` varchar(100) NOT NULL,
  `contryorigion` varchar(100) NOT NULL,
  `cntryfinaldest` varchar(100) NOT NULL,
  `precarbyy` varchar(100) NOT NULL,
  `portdischarge` varchar(200) NOT NULL,
  `placeofrecprecarr` varchar(200) NOT NULL,
  `portloading` varchar(200) NOT NULL,
  `finaldest2` varchar(200) NOT NULL,
  `Incoterm` varchar(100) NOT NULL,
  `bankdetaisl` int(11) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `netweightf` float NOT NULL,
  `packweightf` float NOT NULL,
  `grosswghtf` float NOT NULL,
  `containerno` varchar(100) NOT NULL,
  `esealno` varchar(100) NOT NULL,
  `linesealno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia6_bck`
--

CREATE TABLE IF NOT EXISTS `mandia6_bck` (
  `fid` int(10) NOT NULL,
  `billno` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `paymentterms` varchar(50) NOT NULL,
  `truckno` varchar(60) NOT NULL,
  `billtyno` varchar(60) NOT NULL,
  `freighttotal` float NOT NULL,
  `freightadv` float NOT NULL,
  `freightpaid` float NOT NULL,
  `billtydate` date DEFAULT NULL,
  `bag1` float NOT NULL,
  `grossweight2` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` double(10,2) NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` double(10,2) NOT NULL,
  `siid` int(10) NOT NULL DEFAULT '0',
  `supid` int(10) NOT NULL,
  `brkid` int(5) NOT NULL,
  `trid` int(5) NOT NULL,
  `brokerage_type` varchar(10) NOT NULL,
  `contractnumber` varchar(50) NOT NULL,
  `freight_type` int(11) NOT NULL,
  `freight_receivable` float NOT NULL,
  `gst_0` float NOT NULL,
  `gst_5` float NOT NULL,
  `gst_12` float NOT NULL,
  `gst_18` float NOT NULL,
  `gst_28` float NOT NULL,
  `billtype` int(11) NOT NULL,
  `placesupply` varchar(100) NOT NULL,
  `shippid` int(11) NOT NULL,
  `bck_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
`t_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia7`
--

CREATE TABLE IF NOT EXISTS `mandia7` (
  `supid` int(10) NOT NULL,
  `a4id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `suppliername` varchar(60) NOT NULL,
  `type` varchar(70) NOT NULL,
  `entrydate` date NOT NULL,
  `saudadate` date DEFAULT NULL,
  `amount` float NOT NULL,
  `bankcharges` float NOT NULL,
  `total` float NOT NULL,
`billid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia7_ref`
--

CREATE TABLE IF NOT EXISTS `mandia7_ref` (
  `bankname` varchar(76) NOT NULL,
  `formid` int(10) NOT NULL,
  `branch` varchar(76) NOT NULL,
  `chequeno` varchar(76) NOT NULL,
  `amount` float NOT NULL,
  `bankcharges` float NOT NULL,
  `total` float NOT NULL,
  `modeofpay` varchar(67) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `tempid` varchar(10) NOT NULL,
  `ledger_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia8`
--

CREATE TABLE IF NOT EXISTS `mandia8` (
  `fid` int(10) NOT NULL,
  `siid` int(10) NOT NULL,
  `supid` int(10) NOT NULL,
  `suppliername` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `entrydate` date NOT NULL,
  `saudadate` date DEFAULT NULL,
  `amount` float NOT NULL,
  `bankcharges` float NOT NULL,
  `total` float NOT NULL,
`a8id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia9`
--

CREATE TABLE IF NOT EXISTS `mandia9` (
  `supid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `a4id` int(10) NOT NULL,
  `suppliername` varchar(100) NOT NULL,
  `billno` varchar(50) NOT NULL,
  `billvalue` float NOT NULL,
  `claims` varchar(50) NOT NULL,
  `shortage` float NOT NULL,
  `moisture` float NOT NULL,
  `sand` float NOT NULL,
  `oil` float NOT NULL,
  `kirda` float NOT NULL,
  `labour` varchar(80) NOT NULL,
  `cashdcond` float NOT NULL,
  `brokerage` varchar(40) NOT NULL,
  `postage` float NOT NULL,
  `bardanaclaims` varchar(60) NOT NULL,
  `entrydate` date NOT NULL,
  `bankcharges` float NOT NULL,
  `other` varchar(67) NOT NULL,
  `freight` float NOT NULL,
  `gatepass` float NOT NULL,
  `rated` float NOT NULL,
  `bankc` float NOT NULL,
`debid` int(10) NOT NULL,
  `tclaim` float NOT NULL,
  `tpaid` float NOT NULL,
  `tdate` date DEFAULT NULL,
  `ledgername_n` int(10) NOT NULL,
  `credit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia10`
--

CREATE TABLE IF NOT EXISTS `mandia10` (
  `supid` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `siid` int(10) NOT NULL,
  `suppliername` varchar(70) NOT NULL,
  `billno` varchar(60) NOT NULL,
  `billvalue` float NOT NULL,
  `claims` varchar(50) NOT NULL,
  `shortage` varchar(50) NOT NULL,
  `moisture` float NOT NULL,
  `sand` float NOT NULL,
  `oil` float NOT NULL,
  `kirda` float NOT NULL,
  `labour` varchar(78) NOT NULL,
  `cashdcond` float NOT NULL,
  `brokerage` varchar(87) NOT NULL,
  `postage` float NOT NULL,
  `bardanaclaims` varchar(98) NOT NULL,
  `bankcharges` float NOT NULL,
  `other` varchar(78) NOT NULL,
  `entrydate` date NOT NULL,
  `freight` float NOT NULL,
  `gatepass` float NOT NULL,
  `rated` float NOT NULL,
  `bankc` float NOT NULL,
`cnid` int(10) NOT NULL,
  `tclaim` float NOT NULL,
  `tpaid` float NOT NULL,
  `tdate` date DEFAULT NULL,
  `debit` varchar(100) NOT NULL,
  `ledgername_n` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia11`
--

CREATE TABLE IF NOT EXISTS `mandia11` (
  `fid` int(10) NOT NULL,
  `suppliername` varchar(78) NOT NULL,
  `stockitem` varchar(67) NOT NULL,
  `stockopening` float NOT NULL,
  `stockgatepass` float NOT NULL,
  `bag` varchar(78) NOT NULL,
  `netqty` float NOT NULL,
  `grossqty` float NOT NULL,
  `value` float NOT NULL,
  `transportername` varchar(67) NOT NULL,
  `truckno` varchar(78) NOT NULL,
  `drivername` varchar(67) NOT NULL,
  `mtaxrecieptno` varchar(56) NOT NULL,
  `declaration` varchar(100) NOT NULL,
  `status` varchar(67) NOT NULL,
  `applicationdate` date NOT NULL,
  `entrydate` date NOT NULL,
`mfid` int(10) NOT NULL,
  `balance` float NOT NULL,
  `ledgername_n` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia12m`
--

CREATE TABLE IF NOT EXISTS `mandia12m` (
  `fid` int(10) NOT NULL,
  `entrydate` date NOT NULL,
  `taxtype` varchar(100) NOT NULL,
  `srno` varchar(50) NOT NULL,
  `recieptdate` date DEFAULT NULL,
  `paymentmode` varchar(70) NOT NULL,
  `chequeno` varchar(67) NOT NULL,
  `bankname` varchar(78) NOT NULL,
  `chequedate` date DEFAULT NULL,
  `deposittax` float NOT NULL,
  `qtotal` float NOT NULL,
  `amtotal` float NOT NULL,
  `ratetotal` float NOT NULL,
`mtaxid` int(10) NOT NULL,
  `ledgername_n` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia12n`
--

CREATE TABLE IF NOT EXISTS `mandia12n` (
  `fid` int(10) NOT NULL,
  `entrydate` date NOT NULL,
  `taxtype` varchar(50) NOT NULL,
  `srno` varchar(78) NOT NULL,
  `recieptdate` date DEFAULT NULL,
  `paymentmode` varchar(87) NOT NULL,
  `chequeno` varchar(76) NOT NULL,
  `bankname` varchar(87) NOT NULL,
  `chequedate` date DEFAULT NULL,
  `deposittax` float NOT NULL,
  `qtotal` float NOT NULL,
  `amtotal` float NOT NULL,
  `ratetotal` float NOT NULL,
`ntaxid` int(10) NOT NULL,
  `ledgername_n` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia12_ref`
--

CREATE TABLE IF NOT EXISTS `mandia12_ref` (
  `formidm` int(10) NOT NULL,
  `stockitem` varchar(76) NOT NULL,
  `quantity` float NOT NULL,
  `remark` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `rate` float NOT NULL,
  `tempid` varchar(66) NOT NULL,
  `formidn` int(10) NOT NULL,
  `stkid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia14`
--

CREATE TABLE IF NOT EXISTS `mandia14` (
  `formid` int(10) NOT NULL,
  `tempid` varchar(67) NOT NULL,
  `stockitem` varchar(76) NOT NULL,
  `inputqty` float NOT NULL,
  `inputvalue` float NOT NULL,
  `stkid` int(5) NOT NULL,
  `fid` int(5) NOT NULL,
  `tdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mandia16`
--

CREATE TABLE IF NOT EXISTS `mandia16` (
`adminid` int(100) NOT NULL,
  `adminterate` varchar(67) NOT NULL,
  `subject` varchar(89) NOT NULL,
  `priroty` varchar(78) NOT NULL,
  `querytype` varchar(78) NOT NULL,
  `query` varchar(255) NOT NULL,
  `fid` int(10) NOT NULL,
  `entrydate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manditaxablepurchase`
--

CREATE TABLE IF NOT EXISTS `manditaxablepurchase` (
  `fid` int(10) NOT NULL,
  `paymentno` varchar(100) NOT NULL,
  `paymentdate` date DEFAULT NULL,
  `contact` varchar(50) NOT NULL,
  `farmername` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `villagename` varchar(100) NOT NULL,
  `stockitem` varchar(100) NOT NULL,
  `estimateqty` float NOT NULL,
  `purchaseqtl` float NOT NULL,
  `rate` float NOT NULL,
  `hammali` int(100) NOT NULL,
  `hdenometer` varchar(100) NOT NULL,
  `alock` varchar(100) NOT NULL,
  `entrydate` date NOT NULL,
`mtpid` int(10) NOT NULL,
  `ledgername` varchar(100) NOT NULL,
  `ledgername_n` int(10) NOT NULL,
  `stkid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `max_rec`
--

CREATE TABLE IF NOT EXISTS `max_rec` (
`max_id` int(11) NOT NULL,
  `bno` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `fid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2052 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `max_rec`
--

INSERT INTO `max_rec` (`max_id`, `bno`, `date`, `fid`) VALUES
(1928, '26', '2019-11-09', 16),
(1929, '27', '2019-11-09', 16),
(1930, '28', '2019-11-09', 16),
(1931, '29', '2019-11-09', 16),
(1932, '1', '2019-11-09', 16),
(1933, '2', '2019-08-25', 16),
(1934, '3', '2019-08-28', 16),
(1935, '4', '2019-08-28', 16),
(1936, '5', '2019-09-03', 16),
(1937, '6', '2019-09-03', 16),
(1938, '7', '2019-10-05', 16),
(1939, '8', '2019-11-09', 16),
(1940, '9', '2019-10-09', 16),
(1941, '10', '2019-10-09', 16),
(1942, '11', '2019-11-09', 16),
(1943, '12', '2019-10-09', 16),
(1944, '13', '2019-11-09', 16),
(1945, '14', '2019-10-14', 16),
(1946, '15', '2019-10-14', 16),
(1947, '16', '2019-11-09', 16),
(1948, '17', '2019-10-14', 16),
(1949, '18', '2019-11-09', 16),
(1950, '19', '2019-10-17', 16),
(1951, '20', '2019-10-20', 16),
(1952, '21', '2019-10-20', 16),
(1953, '22', '2019-10-20', 16),
(1954, '23', '2019-11-09', 16),
(1955, '24', '2019-10-29', 16),
(1956, '25', '2019-11-09', 16),
(1957, '101', '2019-11-09', 16),
(1958, '1', '2019-11-09', 19),
(1959, '2', '2019-11-10', 19),
(1960, '4', '2019-11-10', 19),
(1961, '3', '2019-11-10', 19),
(1962, '5', '2019-11-12', 19),
(1963, '1', '2019-11-06', 19),
(1964, '2', '2019-11-13', 19),
(1965, '30', '2019-11-14', 16),
(1966, '1', '2019-11-18', 20),
(1967, '30', '2019-11-18', 16),
(1968, '31', '2019-11-18', 16),
(1969, '32', '2019-11-18', 16),
(1970, '6', '2019-11-20', 19),
(1971, '7', '2019-11-20', 19),
(1972, '33', '2019-11-20', 16),
(1973, '33', '2019-11-21', 16),
(1974, '34', '2019-11-21', 16),
(1975, '35', '2019-11-21', 16),
(1976, '8', '2019-11-30', 19),
(1977, '9', '2019-11-30', 19),
(1978, '36', '2019-12-01', 16),
(1979, '37', '2019-12-01', 16),
(1980, '10', '2019-12-03', 19),
(1981, '11', '2019-12-04', 19),
(1982, '12', '2019-12-04', 19),
(1983, '1', '2019-12-08', 22),
(1984, '2', '2019-12-09', 22),
(1985, '3', '2019-12-09', 22),
(1986, '13', '2019-12-09', 19),
(1987, '14', '2019-12-09', 19),
(1988, '15', '2019-12-11', 19),
(1989, '38', '2019-12-11', 16),
(1990, '39', '2019-12-12', 16),
(1991, '16', '2019-12-14', 19),
(1992, '17', '2019-12-14', 19),
(1993, '18', '2019-12-14', 19),
(1994, '19', '2019-12-14', 19),
(1995, '20', '2019-12-16', 19),
(1996, '21', '2019-12-16', 19),
(1997, '1', '2019-12-17', 23),
(1998, '40', '2019-12-20', 16),
(1999, '41', '2019-12-20', 16),
(2000, '22', '2019-12-25', 19),
(2001, '23', '2019-12-26', 19),
(2002, '24', '2019-12-26', 19),
(2003, '42', '2019-12-27', 16),
(2004, '43', '2019-12-27', 16),
(2005, '44', '2019-12-27', 16),
(2006, '45', '2019-12-27', 16),
(2007, '46', '2019-12-31', 16),
(2008, '47', '2019-12-31', 16),
(2009, '48', '2019-12-31', 16),
(2010, '25', '2020-01-01', 19),
(2011, '26', '2020-01-01', 19),
(2012, '1', '2020-01-01', 23),
(2013, '49', '2020-01-01', 16),
(2014, '2', '2020-01-02', 23),
(2015, '3', '2020-01-02', 23),
(2016, '4', '2020-01-03', 23),
(2017, '50', '2020-01-03', 16),
(2018, '51', '2020-01-04', 16),
(2019, '52', '2020-01-04', 16),
(2020, '27', '2020-01-04', 19),
(2021, '28', '2020-01-04', 19),
(2022, '29', '2020-01-04', 19),
(2023, '5', '2020-01-06', 23),
(2024, '53', '2020-01-10', 16),
(2025, '54', '2020-01-15', 16),
(2026, '55', '2020-01-15', 16),
(2027, '6', '2020-01-15', 23),
(2028, '7', '2020-01-15', 23),
(2029, '1', '2020-01-16', 22),
(2030, '8', '2020-01-16', 23),
(2031, '56', '2020-01-17', 16),
(2032, '9', '2020-01-19', 23),
(2033, '10', '2020-01-20', 23),
(2034, '11', '2020-01-21', 23),
(2035, '12', '2020-01-24', 23),
(2036, '57', '2020-01-25', 16),
(2037, '58', '2020-01-25', 16),
(2038, '59', '2020-01-25', 16),
(2039, '1', '2020-01-31', 22),
(2040, '60', '2020-02-02', 16),
(2041, '61', '2020-02-02', 16),
(2042, '62', '2020-02-02', 16),
(2043, '63', '2020-02-02', 16),
(2044, '2', '2020-02-05', 22),
(2045, '64', '2020-02-06', 16),
(2046, '65', '2020-02-06', 16),
(2047, '66', '2020-02-06', 16),
(2048, '67', '2020-02-07', 16),
(2049, '3', '2020-02-07', 22),
(2050, '68', '2020-02-08', 16),
(2051, '', '2020-02-10', 16);

-- --------------------------------------------------------

--
-- Table structure for table `mybanks`
--

CREATE TABLE IF NOT EXISTS `mybanks` (
`bank_id` int(11) NOT NULL,
  `bnkname` varchar(150) NOT NULL,
  `branchaddr` varchar(200) NOT NULL,
  `accname` varchar(100) NOT NULL,
  `accnum` varchar(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `swidt` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mybanks`
--

INSERT INTO `mybanks` (`bank_id`, `bnkname`, `branchaddr`, `accname`, `accnum`, `ifsc`, `swidt`) VALUES
(1, 'icici bank', 'sipri bajar', 'sudhir', '8098080880', 'icicic676767', 'swift666'),
(2, 'SBI', 'Orchha', 'sudhir shrivastava', '46546465464564', 'ICIIC 678686', 'DBC676'),
(3, '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `m_autoid`
--

CREATE TABLE IF NOT EXISTS `m_autoid` (
  `journalid` int(10) NOT NULL,
  `sellid` int(11) NOT NULL,
  `fid` int(10) NOT NULL,
  `comm_inv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_autoid`
--

INSERT INTO `m_autoid` (`journalid`, `sellid`, `fid`, `comm_inv`) VALUES
(1, 21, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newapp_mydestination`
--

CREATE TABLE IF NOT EXISTS `newapp_mydestination` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `n_stk_red_1`
--

CREATE TABLE IF NOT EXISTS `n_stk_red_1` (
  `date` date NOT NULL,
  `op_qty` float NOT NULL,
  `particular` varchar(50) NOT NULL,
  `goodsmfg` float NOT NULL,
  `mandipurch` float NOT NULL,
  `tdpurcgase` float NOT NULL,
  `totin` float NOT NULL,
  `particul2` varchar(50) NOT NULL,
  `sale` float NOT NULL,
  `issuemfg` float NOT NULL,
  `tot_out` float NOT NULL,
  `close_b` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `n_stk_red_1`
--

INSERT INTO `n_stk_red_1` (`date`, `op_qty`, `particular`, `goodsmfg`, `mandipurch`, `tdpurcgase`, `totin`, `particul2`, `sale`, `issuemfg`, `tot_out`, `close_b`) VALUES
('2017-04-01', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-08-25', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-08-28', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-09-03', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-05', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-09', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-14', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-17', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-20', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-23', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-10-29', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-11-12', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-11-18', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-11-21', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-01', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-11', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-12', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-20', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-27', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2019-12-31', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-01', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-03', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-04', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-10', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-15', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-17', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0),
('2020-01-25', 0, 'PURCHASE', 0, 0, 0, 0, 'SALE', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `po_conditions`
--

CREATE TABLE IF NOT EXISTS `po_conditions` (
`auto_id` int(11) NOT NULL,
  `po_1` text NOT NULL,
  `po_2` text NOT NULL,
  `poid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_conditions`
--

INSERT INTO `po_conditions` (`auto_id`, `po_1`, `po_2`, `poid`) VALUES
(45, 'Price', 'EXW Durgapur , west Bengal India', 30),
(46, 'tes2', 'some new conditions', 30),
(47, 'Price', 'EXW Durgapur , west Bengal India', 31),
(48, 'tes2', 'some new conditions', 31),
(49, 'Price', 'EXW Durgapur , west Bengal India', 32),
(50, 'tes2', 'some new conditions', 32);

-- --------------------------------------------------------

--
-- Table structure for table `proformainv`
--

CREATE TABLE IF NOT EXISTS `proformainv` (
`tab_auto_id` int(11) NOT NULL,
  `consigneeid` int(11) NOT NULL,
  `proforma_inv` varchar(100) NOT NULL,
  `proforma_date` date NOT NULL,
  `export_ref` varchar(100) NOT NULL,
  `buyrefno_date` varchar(200) NOT NULL,
  `cntry_origin` varchar(100) NOT NULL,
  `cntry_final` varchar(100) NOT NULL,
  `pre_carr_by` varchar(100) NOT NULL,
  `place_of_rec_per` varchar(250) NOT NULL,
  `vessel` varchar(100) NOT NULL,
  `port_of_laod` varchar(200) NOT NULL,
  `port_of_dis` varchar(200) NOT NULL,
  `final_dest` varchar(100) NOT NULL,
  `del_terms` text NOT NULL,
  `extra_notes` text NOT NULL,
  `incoterm` varchar(50) NOT NULL,
  `curency` int(11) NOT NULL,
  `bankid` int(11) NOT NULL,
  `shippartyidd` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `piv_2` varchar(50) NOT NULL,
  `piv3` varchar(50) NOT NULL,
  `last_bill_char` varchar(4) NOT NULL DEFAULT 'A'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proformainv`
--

INSERT INTO `proformainv` (`tab_auto_id`, `consigneeid`, `proforma_inv`, `proforma_date`, `export_ref`, `buyrefno_date`, `cntry_origin`, `cntry_final`, `pre_carr_by`, `place_of_rec_per`, `vessel`, `port_of_laod`, `port_of_dis`, `final_dest`, `del_terms`, `extra_notes`, `incoterm`, `curency`, `bankid`, `shippartyidd`, `fid`, `piv_2`, `piv3`, `last_bill_char`) VALUES
(25, 3023, '13', '2020-02-17', 'aa', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3023, 16, '2019-2020', 'SAN', 'M'),
(26, 3021, '14', '2020-02-17', '0', 'aaa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3021, 16, '2019-2020', 'SAN', 'C'),
(27, 3020, '15', '2020-02-17', '0', 'tall', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, '2019-2020', 'SAN', 'C'),
(28, 3022, '16', '2020-02-17', '0', 'aa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 2, 1, 3022, 16, '2019-2020', 'SAN', 'N'),
(29, 3020, '17', '2020-02-18', 'ref no', 'discc', 'India', 'nepal', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, '2019-2020', 'SAN', 'B'),
(30, 3020, '18', '2020-02-18', 'exp', 'discussion on phone', 'India', 'Nepal', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3020, 16, '2019-2020', 'SAN', 'B'),
(31, 3067, '19', '2020-02-18', 'some ref number', 'Phone dicussion on 12/12/2019', 'India', 'Nepal', 'Road', 'India', 'By Truck', 'DURGAPUR, INDIA', 'BHAIRAHAWA, NEPAL VIA CUSTOMS ENTRY POINT IN NEPAL: BHAIRAHAWA CUSTOMS OFFICE, BHAIRAHAWA, NEPAL', 'Nepal', 'EX-WORKS DURGAPUR', '0', 'EX-WORK', 1, 1, 3067, 16, '2019-2020', 'SAN', 'C'),
(32, 3021, '20', '2020-02-21', 'IEC : ABCCS3959G', 'aaa', 'India', '0', 'Road', '0', 'By Truck', '0', '0', '0', '0', '0', 'EX-WORK', 1, 1, 3021, 16, '2019-2020', 'SAN', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `proforma_item`
--

CREATE TABLE IF NOT EXISTS `proforma_item` (
`tab_auto_id` int(11) NOT NULL,
  `proforma_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `goods_descr` text NOT NULL,
  `hsncode` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `qty` float NOT NULL,
  `rate` float NOT NULL,
  `amount` double(10,2) NOT NULL,
  `item_details` text NOT NULL,
  `gst` int(11) NOT NULL,
  `bags` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proforma_item`
--

INSERT INTO `proforma_item` (`tab_auto_id`, `proforma_id`, `item_id`, `goods_descr`, `hsncode`, `unit`, `qty`, `rate`, `amount`, `item_details`, `gst`, `bags`) VALUES
(31, 18, 57, 'MS BILLETS', '7207.1920', 'MTS', 1000, 50, 50000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(33, 19, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 10, 236.00, '(INDUSTRIAL RAW MATERIAL)', 18, 70),
(40, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 100, 2000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(41, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 10, 120, 1200.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(43, 23, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 150, 3000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(45, 24, 52, 'COAL', '2701', 'MTS', 10, 100, 1000.00, '0', 0, 0),
(49, 25, 57, 'MS BILLETS', '7207.1920', 'MTS', 120, 100, 12000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(51, 26, 52, 'COAL', '2701', 'MTS', 10, 5000, 50000.00, '0', 0, 0),
(52, 27, 52, 'COAL', '2701', 'MTS', 10, 50, 500.00, '0', 0, 0),
(54, 28, 54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0, 0),
(55, 29, 57, 'MS BILLETS', '7207.1920', 'MTS', 50, 1000, 50000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(57, 30, 57, 'MS BILLETS', '7207.1920', 'MTS', 200, 200, 40000.00, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(58, 31, 57, 'MS BILLETS', '7207.1920', 'MTS', 75.06, 413, 30999.78, '(INDUSTRIAL RAW MATERIAL)', 0, 0),
(59, 32, 50, 'FLY ASH', '2621', 'MTS', 0, 0, 0.00, '(DRY FLY ASH)', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proforma_item_bck`
--

CREATE TABLE IF NOT EXISTS `proforma_item_bck` (
  `tab_auto_id` int(11) NOT NULL DEFAULT '0',
  `proforma_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `goods_descr` text NOT NULL,
  `hsncode` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `qty` float NOT NULL,
  `rate` float NOT NULL,
  `amount` double(10,2) NOT NULL,
  `item_details` text NOT NULL,
  `gst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proforma_item_bck`
--

INSERT INTO `proforma_item_bck` (`tab_auto_id`, `proforma_id`, `item_id`, `goods_descr`, `hsncode`, `unit`, `qty`, `rate`, `amount`, `item_details`, `gst`) VALUES
(32, 19, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 10, 236.00, '(INDUSTRIAL RAW MATERIAL)', 18),
(34, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 100, 2000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(35, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 10, 120, 1200.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(36, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 100, 2000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(37, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 10, 120, 1200.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(38, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 100, 2000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(39, 20, 57, 'MS BILLETS', '7207.1920', 'MTS', 10, 120, 1200.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(42, 23, 57, 'MS BILLETS', '7207.1920', 'MTS', 20, 150, 3000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(44, 24, 52, 'COAL', '2701', 'MTS', 10, 100, 1000.00, '0', 0),
(46, 25, 57, 'MS BILLETS', '7207.1920', 'MTS', 120, 100, 12000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(47, 25, 57, 'MS BILLETS', '7207.1920', 'MTS', 120, 100, 12000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(48, 25, 57, 'MS BILLETS', '7207.1920', 'MTS', 120, 100, 12000.00, '(INDUSTRIAL RAW MATERIAL)', 0),
(50, 26, 52, 'COAL', '2701', 'MTS', 10, 5000, 50000.00, '0', 0),
(53, 28, 54, 'COAL (JHARKHAND CCL)', '2701', 'MTS', 10, 50, 500.00, 'JHARKHAND COAL', 0),
(56, 30, 57, 'MS BILLETS', '7207.1920', 'MTS', 200, 200, 40000.00, '(INDUSTRIAL RAW MATERIAL)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `proforma_lc_details`
--

CREATE TABLE IF NOT EXISTS `proforma_lc_details` (
`tab_auto_id` int(11) NOT NULL,
  `issue_branch` varchar(200) NOT NULL,
  `date_of_issue` date NOT NULL,
  `lc_date` date NOT NULL,
  `currency` varchar(50) NOT NULL,
  `amt_of_lc` double(10,2) NOT NULL,
  `form_of_lc` varchar(200) NOT NULL,
  `tolerance` varchar(200) NOT NULL,
  `expdate` date NOT NULL,
  `exp_place` varchar(200) NOT NULL,
  `advise_bank` varchar(200) NOT NULL,
  `benefeitiary_details` varchar(200) NOT NULL,
  `othersss` varchar(200) NOT NULL,
  `proforma_id` int(11) NOT NULL,
  `lcnumber` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proforma_lc_details`
--

INSERT INTO `proforma_lc_details` (`tab_auto_id`, `issue_branch`, `date_of_issue`, `lc_date`, `currency`, `amt_of_lc`, `form_of_lc`, `tolerance`, `expdate`, `exp_place`, `advise_bank`, `benefeitiary_details`, `othersss`, `proforma_id`, `lcnumber`) VALUES
(1, 'Sipri bajar jahnsi', '2019-06-01', '2019-06-01', '1', 5000000.00, 'for of lc', 'some tolerence', '2019-06-01', 'Hyderabad', 'Icici bank', 'sudhir shrivastava', 'some othrer detailsd', 30, 'LC959599595'),
(2, 'Sipri bajar jahnsi', '2019-06-01', '2019-06-01', '1', 5000000.00, 'for of lc', 'some tolerence', '2019-06-01', 'Hyderabad', 'Icici bank', 'sudhir shrivastava', 'some othrer detailsd', 30, 'LC9577798'),
(3, 'KATHMANDU, NEPAL.', '2020-01-09', '2020-01-09', '1', 50000.00, 'a', 'a', '2020-01-09', 'Nepal', 'MACHHAPUCHCHHRE BANK LIMITED', 'Manish', '0', 31, 'MBL20KTMIND011');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `fid` int(12) NOT NULL,
  `suppliername` varchar(255) NOT NULL,
  `brokername` varchar(255) NOT NULL,
  `moisture` float NOT NULL,
  `dust` float NOT NULL,
  `smallseed` float NOT NULL,
  `splitseed` float NOT NULL,
  `oil` float NOT NULL,
  `quantity` int(50) NOT NULL,
  `bag` varchar(50) NOT NULL,
  `packingterms` varchar(100) NOT NULL,
  `bagquality` varchar(50) NOT NULL,
  `rate` float NOT NULL,
  `deleveryduedate` date DEFAULT NULL,
  `paymentterms` varchar(100) NOT NULL,
  `cashdcond` varchar(100) NOT NULL,
  `modeofsupply` varchar(100) NOT NULL,
  `saudadate` date DEFAULT NULL,
  `stfcondition` varchar(100) NOT NULL,
  `mtfcondition` varchar(100) NOT NULL,
  `etfcondition` varchar(100) NOT NULL,
  `entrydate` date DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `suppid` int(10) NOT NULL,
  `bag1` float NOT NULL,
  `grossweight1` float NOT NULL,
  `mandigatepass1` float NOT NULL,
  `billweight` float NOT NULL,
  `rateoftax1` float NOT NULL,
  `rateofgoods1` float NOT NULL,
  `value1` float NOT NULL,
  `vattax1` float NOT NULL,
  `billvalue1` float NOT NULL,
`poid` int(10) NOT NULL,
  `brkid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sirname`
--

CREATE TABLE IF NOT EXISTS `sirname` (
`sirid` int(10) NOT NULL,
  `sirname` varchar(50) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sirname`
--

INSERT INTO `sirname` (`sirid`, `sirname`, `fid`) VALUES
(1, 'JAIN', 1),
(2, 'YADAV', 1),
(3, 'SAHU', 1),
(4, 'LODHI', 1),
(5, 'RAJPOOT', 1),
(6, 'SOLANKI', 1),
(7, 'KHAN', 1),
(8, 'PRAJAPATI', 1),
(9, 'BHAGWANI', 1),
(10, 'KHARE', 1),
(11, 'DUBEY', 1),
(12, 'SHARMA', 1),
(13, 'CHATURVEDI', 1),
(14, 'DUVEDI', 1),
(15, 'PAL', 1),
(16, 'ASATI', 1),
(17, 'LODHI', 24),
(20, 'JAIN', 41),
(21, 'YADAV', 41),
(22, 'SAHU', 41),
(23, 'LODHI', 41),
(24, 'SHINGH', 41),
(25, 'TIWARI', 41),
(26, 'MISHRA', 41),
(27, 'KHAN', 41),
(28, 'DUBEY', 41),
(29, 'JAIN', 24),
(30, 'GARG', 24),
(31, 'LODHI', 24),
(32, 'JAIN', 42),
(33, 'SAHU', 42),
(34, 'ASATI', 42),
(35, 'SOLANKI', 42),
(36, 'PATHAK', 42),
(37, 'SHARMA', 42),
(38, 'LODHI', 42),
(39, 'KHAN', 42),
(40, 'SHRIVASTAVA', 42),
(41, 'KHARE', 42),
(42, 'RAKIWAR', 42),
(43, 'DUBEY', 42),
(44, 'MISHRA', 42),
(45, 'RAJPOOT', 42),
(46, 'SAHU', 42),
(47, 'JAIN', 19),
(48, 'SAHU', 19),
(49, 'LODHI', 19),
(50, 'AHIRWAR', 19),
(51, 'NAYAK', 19),
(52, 'ASHATI', 19),
(53, 'AGRAWAL', 19),
(54, 'SHRIVASTAVA', 19),
(55, 'KHARE', 19),
(56, 'RAI', 19),
(57, 'SHARMA', 19),
(58, 'VERMA', 19),
(59, 'JAIN', 100),
(60, 'SAHU', 100),
(61, 'SHRIVASTAVA', 100);

-- --------------------------------------------------------

--
-- Table structure for table `stk_d_mast`
--

CREATE TABLE IF NOT EXISTS `stk_d_mast` (
`brand_id` int(5) NOT NULL,
  `stkid` int(5) NOT NULL,
  `stkname` varchar(50) NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `fid` int(5) NOT NULL,
  `perct` float NOT NULL,
  `sub_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stk_grp`
--

CREATE TABLE IF NOT EXISTS `stk_grp` (
`id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stk_grp`
--

INSERT INTO `stk_grp` (`id`, `name`, `fid`) VALUES
(11, 'URAD', 12),
(13, 'URAD DALL SS', 12),
(15, 'URAD DALL CLASSIC', 12),
(16, 'apple', 12),
(17, 'URAD DALL', 12),
(19, 'URAD GOTA', 12),
(20, 'Freight', 16);

-- --------------------------------------------------------

--
-- Table structure for table `stk_red_1`
--

CREATE TABLE IF NOT EXISTS `stk_red_1` (
  `date` date NOT NULL,
  `op_qty` float NOT NULL,
  `particular` varchar(50) NOT NULL,
  `goodsmfg` float NOT NULL,
  `mandipurch` float NOT NULL,
  `tdpurcgase` float NOT NULL,
  `totin` float NOT NULL,
  `particul2` varchar(50) NOT NULL,
  `sale` float NOT NULL,
  `issuemfg` float NOT NULL,
  `tot_out` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stk_red_1`
--

INSERT INTO `stk_red_1` (`date`, `op_qty`, `particular`, `goodsmfg`, `mandipurch`, `tdpurcgase`, `totin`, `particul2`, `sale`, `issuemfg`, `tot_out`) VALUES
('2017-04-01', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-08-25', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-08-28', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-09-03', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-05', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-09', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-14', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-17', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-20', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-29', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-10-23', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-11-12', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-11-18', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-11-21', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-01', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-11', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-12', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-20', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-27', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2019-12-31', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-01', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-03', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-04', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-10', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-15', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-17', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0),
('2020-01-25', 0, 'goods in', 0, 0, 0, 0, 'sale', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stk_register`
--

CREATE TABLE IF NOT EXISTS `stk_register` (
  `tdate` date NOT NULL,
  `perticular` varchar(50) NOT NULL,
  `q_in` float NOT NULL,
  `q_out` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stockitem`
--

CREATE TABLE IF NOT EXISTS `stockitem` (
`stockid` int(10) NOT NULL,
  `stockitem` varchar(50) NOT NULL,
  `quantitytype` varchar(50) NOT NULL,
  `reportformanditax` varchar(50) NOT NULL,
  `quantityop` int(20) NOT NULL,
  `fid` int(20) NOT NULL,
  `svalue` float NOT NULL,
  `sdate` date DEFAULT NULL,
  `god_id` int(5) NOT NULL,
  `god_name` varchar(50) NOT NULL,
  `stkgrp` int(5) NOT NULL,
  `hsn` varchar(40) NOT NULL,
  `gst` float NOT NULL,
  `i_detail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockitem`
--

INSERT INTO `stockitem` (`stockid`, `stockitem`, `quantitytype`, `reportformanditax`, `quantityop`, `fid`, `svalue`, `sdate`, `god_id`, `god_name`, `stkgrp`, `hsn`, `gst`, `i_detail`) VALUES
(50, 'FLY ASH', 'Metric Tons', 'NO', 0, 16, 0, '2017-04-01', 8, 'None', 0, '2621', 0, '(DRY FLY ASH)'),
(51, 'FRIGHT', 'Metric Tons', 'FREIGHT', 0, 16, 0, '2017-04-01', 8, 'None', 20, '9967', 0, '(TRANSPORTATION)'),
(52, 'COAL', 'Metric Tons', 'NO', 0, 19, 0, '2017-04-01', 9, 'None', 0, '2701', 0, ''),
(53, '', 'Metric Tons', 'YES', 0, 19, 0, '2017-04-01', 9, 'None', 0, '9967', 0, ''),
(54, 'COAL (JHARKHAND CCL)', 'Metric Tons', 'NO', 0, 20, 0, '2017-04-01', 9, 'None', 0, '2701', 5, 'JHARKHAND COAL'),
(55, 'FLY ASH', 'Metric Tons', 'NO', 0, 22, 0, '2017-04-01', 8, 'None', 0, '2621', 0, '(DRY FLY ASH)'),
(56, 'FRIGHT', 'Metric Tons', 'FREIGHT', 0, 22, 0, '2017-04-01', 8, 'None', 20, '9967', 0, '(TRANSPORTATION)'),
(57, 'MS BILLETS', 'Metric Tons', 'NO', 0, 16, 0, '2019-04-01', 9, 'None', 0, '7207.1920', 18, '(INDUSTRIAL RAW MATERIAL)');

-- --------------------------------------------------------

--
-- Table structure for table `stock_ref`
--

CREATE TABLE IF NOT EXISTS `stock_ref` (
  `formid` int(11) NOT NULL,
  `stockid` varchar(100) NOT NULL,
  `bag` int(11) NOT NULL,
  `grswght` float NOT NULL,
  `mandiwght` float NOT NULL,
  `billwght` float NOT NULL,
  `rot` float NOT NULL,
  `rog` float NOT NULL,
  `vale` double(10,2) NOT NULL,
  `vtou` float NOT NULL,
  `bilvalue` double(10,2) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `tempid` varchar(100) NOT NULL,
  `stid` int(5) NOT NULL,
  `party_date` date NOT NULL,
  `fid` int(5) NOT NULL,
  `w_per_bag` int(5) NOT NULL,
  `hsn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_ref_bck`
--

CREATE TABLE IF NOT EXISTS `stock_ref_bck` (
  `formid` int(11) NOT NULL,
  `stockid` varchar(100) NOT NULL,
  `bag` int(11) NOT NULL,
  `grswght` float NOT NULL,
  `mandiwght` float NOT NULL,
  `billwght` float NOT NULL,
  `rot` float NOT NULL,
  `rog` float NOT NULL,
  `vale` double(10,2) NOT NULL,
  `vtou` float NOT NULL,
  `bilvalue` double(10,2) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `tempid` varchar(100) NOT NULL,
  `stid` int(5) NOT NULL,
  `party_date` date NOT NULL,
  `fid` int(5) NOT NULL,
  `w_per_bag` int(5) NOT NULL,
  `hsn` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supid` int(10) NOT NULL,
  `suppliername` varchar(100) NOT NULL,
  `factoryadd` varchar(255) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pin` int(50) NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `incometaxno` varchar(50) NOT NULL,
  `servicetaxno` varchar(50) NOT NULL,
  `tinno` varchar(50) NOT NULL,
  `bankaccname` varchar(100) NOT NULL,
  `accountno` varchar(50) NOT NULL,
  `officeadd` varchar(250) NOT NULL,
  `ocity` varchar(50) NOT NULL,
  `ostate` varchar(50) NOT NULL,
  `opin` int(30) NOT NULL,
  `olandline` varchar(50) NOT NULL,
  `centralenumber` varchar(50) NOT NULL,
  `cstnumber` varchar(50) NOT NULL,
  `acctype` varchar(30) NOT NULL,
  `ifsccode` varchar(30) NOT NULL,
  `fid` int(10) NOT NULL,
  `obalance` float NOT NULL,
  `tbalance` varchar(100) NOT NULL,
  `saudadate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `taxform`
--

CREATE TABLE IF NOT EXISTS `taxform` (
`taxid` int(10) NOT NULL,
  `salestaxform` varchar(255) NOT NULL,
  `entrytaxform` varchar(255) NOT NULL,
  `manditaxform` varchar(255) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxform`
--

INSERT INTO `taxform` (`taxid`, `salestaxform`, `entrytaxform`, `manditaxform`, `fid`) VALUES
(2, 'MP VAT TAX EXAMPTED SALES', 'AGST. ENTRY TAX DICLRATION', 'MANDI TAX PAID AND NIRASRIT TAX PAID', 1),
(3, 'MP VAT TAXABLE GOODS', 'ENTRY TAX PAID SALES', 'MANDI TAX PAID AND NIRASRIT TAX FREE GOODS', 1),
(6, 'SALES AGST H FORM -EXPORT SALES', 'LOCAL GOODS, ENTRY TAX NOT PAID', 'LOCAL PURCHASE - MANDI AND NIRASRIT TAX NOT PAID', 1),
(8, 'SALE AGST. VAT TDS FORM 31A', 'ENTRY TAX EXAMPTED GOODS', 'IMPORT-OUST STATE TAXABLE', 28),
(9, 'SALES AGST. CENTRAL SALES TAX FORM C', '', '', 28),
(16, 'INTERSTATE SALE -TAXFREE GOODS', 'CST SALES - ENTRY TAX NOT APPLICALBE', '', 4),
(17, 'SALES AGST H FORM -EXPORT SALES', '', '', 41);

-- --------------------------------------------------------

--
-- Table structure for table `temp_increment`
--

CREATE TABLE IF NOT EXISTS `temp_increment` (
  `tempid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_increment`
--

INSERT INTO `temp_increment` (`tempid`) VALUES
(37);

-- --------------------------------------------------------

--
-- Table structure for table `transportname`
--

CREATE TABLE IF NOT EXISTS `transportname` (
`trid` int(10) NOT NULL,
  `transportname` varchar(100) NOT NULL,
  `factoryadd` varchar(255) NOT NULL,
  `cityname` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pin` int(50) NOT NULL,
  `contactperson` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `incometaxno` varchar(100) NOT NULL,
  `servicetaxno` varchar(100) NOT NULL,
  `tinno` varchar(100) NOT NULL,
  `officeadd` varchar(250) NOT NULL,
  `ocity` varchar(100) NOT NULL,
  `ostate` varchar(100) NOT NULL,
  `opin` int(20) NOT NULL,
  `olandline` varchar(40) NOT NULL,
  `centralenumber` varchar(50) NOT NULL,
  `cstnumber` varchar(50) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
`tab_auto_id` int(11) NOT NULL,
  `units` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`tab_auto_id`, `units`) VALUES
(1, 'MTS'),
(3, 'Tons'),
(4, 'Quintal');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `uppath` varchar(100) NOT NULL,
  `fid` int(10) NOT NULL,
  `desc1` varchar(200) NOT NULL,
  `fname` varchar(150) NOT NULL,
  `fyear` varchar(100) NOT NULL,
`uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_counter`
--

CREATE TABLE IF NOT EXISTS `upload_counter` (
  `cnt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_counter`
--

INSERT INTO `upload_counter` (`cnt_id`) VALUES
(140);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE IF NOT EXISTS `vehicle_master` (
`auto_id` int(11) NOT NULL,
  `transportid` int(11) NOT NULL,
  `vehicl_num` varchar(100) NOT NULL,
  `drivernum` varchar(100) NOT NULL,
  `registration_img_file` varchar(100) NOT NULL,
  `insurance_img_file` varchar(200) NOT NULL,
  `drlicence_img_file` varchar(200) NOT NULL,
  `aadhar_img_file` varchar(200) NOT NULL,
  `driversign_img_file` varchar(200) NOT NULL,
  `othtefilee_img_file` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`auto_id`, `transportid`, `vehicl_num`, `drivernum`, `registration_img_file`, `insurance_img_file`, `drlicence_img_file`, `aadhar_img_file`, `driversign_img_file`, `othtefilee_img_file`) VALUES
(9, 3021, 'UP70HT3374', 'MOHD AJHAR', 'uploads/9_4480_File_WhatsApp Image 2019-11-18 at 15.19.39.jpeg', '0', '0', '0', '0', '0'),
(10, 3020, 'UP70GT4325', 'AFTABALI SHALIKTALI', '', '', '', '', '', ''),
(11, 3020, 'UP70GT2357', 'AFTABALI SHUKATLI', '', '', '', '', '', ''),
(12, 3020, 'UP70GT4322', 'AFTABALI SHAUKATALI', '', '', '', '', '', ''),
(13, 3020, 'UP70GT2356', 'AFTABALI SHAUKATALI', '', '', '', '', '', ''),
(14, 3022, 'MH04GC2646', 'RAMNIWAS LAUTU YADAV', '', '', '', '', '', ''),
(15, 3026, 'UP53ET0399', 'MUBARAK ALI', '', '', '', '', '', ''),
(16, 3027, 'RJ52GA5176', 'MUKESH KUMAR GURJAR', '', '', '', '', '', ''),
(17, 3027, 'RJ52GA8576', 'MUKESH KUMAR GURJAR', '', '', '', '', '', ''),
(18, 3028, 'RJ48GA2625', 'KAILASH CHAND JAT', '', '', '', '', '', ''),
(19, 3026, 'UP53ET0399', 'MUBARAK ALI', '', '', '', '', '', ''),
(20, 3032, 'RJ48GA2425', 'MRS KANTA JAT', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(21, 3019, 'RJ48GA4425', 'OMPRAKASH JAT', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(22, 3034, 'RJ14GG2360', 'MR. KUMAR JI', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(23, 3034, 'RJ48GA3725', 'MR RAJ KUMAR', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(24, 3034, 'RJ48GA2225', 'RAM KUMAR', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(25, 3034, 'RJ48GA7707', 'MR RAM', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(26, 3034, 'RJ48GA4625', 'KRISHNA', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(27, 3034, 'RJ48GA9513', 'MUKESH KUMAR CHOUDHARY', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(28, 3034, 'RJ05GB4502', 'PRABHU DAYAL', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE'),
(29, 3021, 'UP70HT9737', 'MOHAMMAD AJHAR', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `villagename`
--

CREATE TABLE IF NOT EXISTS `villagename` (
`vid` int(10) NOT NULL,
  `villagename` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `tahseel` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `villagename`
--

INSERT INTO `villagename` (`vid`, `villagename`, `city`, `tahseel`, `state`, `fid`) VALUES
(1, 'TIKAMGARH', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(2, 'KUNDESWAR', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(3, 'KUNWARPURA', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(4, 'KARI', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(5, 'PAHARI TILWARAN', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(6, 'SAMMARA', 'TIKAMGARH', 'TIKAMGAERH', 'MADHYA PRADESH', 1),
(7, 'MAVAI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 4),
(8, 'NAINWARI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 24),
(9, 'MAHRONI', 'LALITPUR', 'MAHRONI', 'UTTARPRADESH', 41),
(11, 'VERMA TAL', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(12, 'AJNOR', 'TIKAMGAH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(13, 'KAKDARI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(14, 'DURGANAGAR', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(15, 'KHERA', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(16, 'MAJNA', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(17, 'KESAVGARH', 'TIKAMGARH', 'MOHANGARH', 'MADHYA PRADESH', 41),
(18, 'PREMPURA', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(19, 'HARPURA', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(20, 'PAPWANI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(21, 'PATHA', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(22, 'BINDARI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(23, 'KANTI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(24, 'KALAGUWAN', 'LALITPUR', 'MAHRONI', 'UTTARPRADESH', 41),
(25, 'BAMOHRI', 'TIKAMGARH', 'TIKAMGARH', 'MADHYA PRADESH', 41),
(26, 'XYZ', 'TIKAMGARH', '445', 'MAN', 24),
(27, 'ATRIYA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(28, 'ANTORA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(29, 'AMARPRU', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(30, 'UMRI', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(31, 'KAKARWAHA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(32, 'BADAGAON DHASHAN', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(33, 'KABRAHATA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(34, 'GANESH GANJ', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(35, 'JAUMUNIYA KHERA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(36, 'DUNDA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(37, 'DIKOLI', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(38, 'DARGUWAN', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(39, 'DARI', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(40, 'NAGRA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(41, 'NANHITEHRI', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(42, 'PURANIYA', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(43, 'PARAUGHAD', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(44, 'PARA KHAS', 'TIKAMGARH', 'TIKAMGARH', 'Madhya Pradesh', 19),
(45, 'KUNDESWAR', 'TIKAMGARH', 'TIKAMGAERH', 'Madhya Pradesh', 100),
(46, 'BRISBHANPURA', 'TIKAMGARH', 'MOHNAGARH', 'Madhya Pradesh', 100);

-- --------------------------------------------------------

--
-- Table structure for table `vouchertype`
--

CREATE TABLE IF NOT EXISTS `vouchertype` (
`voucherid` int(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `fid` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
 ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `brand_name`
--
ALTER TABLE `brand_name`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `broker`
--
ALTER TABLE `broker`
 ADD PRIMARY KEY (`brid`);

--
-- Indexes for table `commercial_in_main`
--
ALTER TABLE `commercial_in_main`
 ADD PRIMARY KEY (`comm_id`);

--
-- Indexes for table `comm_inv_conditions`
--
ALTER TABLE `comm_inv_conditions`
 ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `comm_in_items`
--
ALTER TABLE `comm_in_items`
 ADD PRIMARY KEY (`comm_item_id`);

--
-- Indexes for table `condition_master`
--
ALTER TABLE `condition_master`
 ADD PRIMARY KEY (`tab_id`);

--
-- Indexes for table `currency_exchangee`
--
ALTER TABLE `currency_exchangee`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `currency_master`
--
ALTER TABLE `currency_master`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `curr_exchange_main`
--
ALTER TABLE `curr_exchange_main`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `expensesregister`
--
ALTER TABLE `expensesregister`
 ADD PRIMARY KEY (`exid`);

--
-- Indexes for table `file_up`
--
ALTER TABLE `file_up`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `firmcreation`
--
ALTER TABLE `firmcreation`
 ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `firm_bill_seq`
--
ALTER TABLE `firm_bill_seq`
 ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `freight_letter`
--
ALTER TABLE `freight_letter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `godown`
--
ALTER TABLE `godown`
 ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `goodrecieptsnote`
--
ALTER TABLE `goodrecieptsnote`
 ADD PRIMARY KEY (`grid`);

--
-- Indexes for table `journal_entrey`
--
ALTER TABLE `journal_entrey`
 ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `ledger_master`
--
ALTER TABLE `ledger_master`
 ADD PRIMARY KEY (`legid`);

--
-- Indexes for table `mandi13_ref`
--
ALTER TABLE `mandi13_ref`
 ADD PRIMARY KEY (`a13refid`);

--
-- Indexes for table `mandi14`
--
ALTER TABLE `mandi14`
 ADD PRIMARY KEY (`a14id`);

--
-- Indexes for table `mandi15`
--
ALTER TABLE `mandi15`
 ADD PRIMARY KEY (`regid`);

--
-- Indexes for table `mandia4`
--
ALTER TABLE `mandia4`
 ADD PRIMARY KEY (`a4id`);

--
-- Indexes for table `mandia5`
--
ALTER TABLE `mandia5`
 ADD PRIMARY KEY (`soid`);

--
-- Indexes for table `mandia6`
--
ALTER TABLE `mandia6`
 ADD PRIMARY KEY (`siid`);

--
-- Indexes for table `mandia6_bck`
--
ALTER TABLE `mandia6_bck`
 ADD PRIMARY KEY (`t_uid`);

--
-- Indexes for table `mandia7`
--
ALTER TABLE `mandia7`
 ADD PRIMARY KEY (`billid`);

--
-- Indexes for table `mandia8`
--
ALTER TABLE `mandia8`
 ADD PRIMARY KEY (`a8id`);

--
-- Indexes for table `mandia9`
--
ALTER TABLE `mandia9`
 ADD PRIMARY KEY (`debid`);

--
-- Indexes for table `mandia10`
--
ALTER TABLE `mandia10`
 ADD PRIMARY KEY (`cnid`);

--
-- Indexes for table `mandia11`
--
ALTER TABLE `mandia11`
 ADD PRIMARY KEY (`mfid`);

--
-- Indexes for table `mandia12m`
--
ALTER TABLE `mandia12m`
 ADD PRIMARY KEY (`mtaxid`);

--
-- Indexes for table `mandia12n`
--
ALTER TABLE `mandia12n`
 ADD PRIMARY KEY (`ntaxid`);

--
-- Indexes for table `mandia16`
--
ALTER TABLE `mandia16`
 ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `manditaxablepurchase`
--
ALTER TABLE `manditaxablepurchase`
 ADD PRIMARY KEY (`mtpid`);

--
-- Indexes for table `max_rec`
--
ALTER TABLE `max_rec`
 ADD PRIMARY KEY (`max_id`);

--
-- Indexes for table `mybanks`
--
ALTER TABLE `mybanks`
 ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `m_autoid`
--
ALTER TABLE `m_autoid`
 ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `newapp_mydestination`
--
ALTER TABLE `newapp_mydestination`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_conditions`
--
ALTER TABLE `po_conditions`
 ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `proformainv`
--
ALTER TABLE `proformainv`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `proforma_item`
--
ALTER TABLE `proforma_item`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `proforma_lc_details`
--
ALTER TABLE `proforma_lc_details`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
 ADD PRIMARY KEY (`poid`);

--
-- Indexes for table `sirname`
--
ALTER TABLE `sirname`
 ADD PRIMARY KEY (`sirid`);

--
-- Indexes for table `stk_d_mast`
--
ALTER TABLE `stk_d_mast`
 ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `stk_grp`
--
ALTER TABLE `stk_grp`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockitem`
--
ALTER TABLE `stockitem`
 ADD PRIMARY KEY (`stockid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supid`);

--
-- Indexes for table `taxform`
--
ALTER TABLE `taxform`
 ADD PRIMARY KEY (`taxid`);

--
-- Indexes for table `transportname`
--
ALTER TABLE `transportname`
 ADD PRIMARY KEY (`trid`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
 ADD PRIMARY KEY (`tab_auto_id`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
 ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `villagename`
--
ALTER TABLE `villagename`
 ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `vouchertype`
--
ALTER TABLE `vouchertype`
 ADD PRIMARY KEY (`voucherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
MODIFY `bankid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `brand_name`
--
ALTER TABLE `brand_name`
MODIFY `brand_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `broker`
--
ALTER TABLE `broker`
MODIFY `brid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `commercial_in_main`
--
ALTER TABLE `commercial_in_main`
MODIFY `comm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `comm_inv_conditions`
--
ALTER TABLE `comm_inv_conditions`
MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comm_in_items`
--
ALTER TABLE `comm_in_items`
MODIFY `comm_item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `condition_master`
--
ALTER TABLE `condition_master`
MODIFY `tab_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `currency_exchangee`
--
ALTER TABLE `currency_exchangee`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `currency_master`
--
ALTER TABLE `currency_master`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `curr_exchange_main`
--
ALTER TABLE `curr_exchange_main`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `expensesregister`
--
ALTER TABLE `expensesregister`
MODIFY `exid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `file_up`
--
ALTER TABLE `file_up`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=378;
--
-- AUTO_INCREMENT for table `firmcreation`
--
ALTER TABLE `firmcreation`
MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `freight_letter`
--
ALTER TABLE `freight_letter`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `godown`
--
ALTER TABLE `godown`
MODIFY `gid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `goodrecieptsnote`
--
ALTER TABLE `goodrecieptsnote`
MODIFY `grid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ledger_master`
--
ALTER TABLE `ledger_master`
MODIFY `legid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3069;
--
-- AUTO_INCREMENT for table `mandi13_ref`
--
ALTER TABLE `mandi13_ref`
MODIFY `a13refid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandi14`
--
ALTER TABLE `mandi14`
MODIFY `a14id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandi15`
--
ALTER TABLE `mandi15`
MODIFY `regid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia4`
--
ALTER TABLE `mandia4`
MODIFY `a4id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia5`
--
ALTER TABLE `mandia5`
MODIFY `soid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia6`
--
ALTER TABLE `mandia6`
MODIFY `siid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia6_bck`
--
ALTER TABLE `mandia6_bck`
MODIFY `t_uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia7`
--
ALTER TABLE `mandia7`
MODIFY `billid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia8`
--
ALTER TABLE `mandia8`
MODIFY `a8id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia9`
--
ALTER TABLE `mandia9`
MODIFY `debid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia10`
--
ALTER TABLE `mandia10`
MODIFY `cnid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia11`
--
ALTER TABLE `mandia11`
MODIFY `mfid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia12m`
--
ALTER TABLE `mandia12m`
MODIFY `mtaxid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia12n`
--
ALTER TABLE `mandia12n`
MODIFY `ntaxid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mandia16`
--
ALTER TABLE `mandia16`
MODIFY `adminid` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manditaxablepurchase`
--
ALTER TABLE `manditaxablepurchase`
MODIFY `mtpid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `max_rec`
--
ALTER TABLE `max_rec`
MODIFY `max_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2052;
--
-- AUTO_INCREMENT for table `mybanks`
--
ALTER TABLE `mybanks`
MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `newapp_mydestination`
--
ALTER TABLE `newapp_mydestination`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_conditions`
--
ALTER TABLE `po_conditions`
MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `proformainv`
--
ALTER TABLE `proformainv`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `proforma_item`
--
ALTER TABLE `proforma_item`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `proforma_lc_details`
--
ALTER TABLE `proforma_lc_details`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
MODIFY `poid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sirname`
--
ALTER TABLE `sirname`
MODIFY `sirid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `stk_d_mast`
--
ALTER TABLE `stk_d_mast`
MODIFY `brand_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stk_grp`
--
ALTER TABLE `stk_grp`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `stockitem`
--
ALTER TABLE `stockitem`
MODIFY `stockid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `taxform`
--
ALTER TABLE `taxform`
MODIFY `taxid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `transportname`
--
ALTER TABLE `transportname`
MODIFY `trid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
MODIFY `tab_auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `villagename`
--
ALTER TABLE `villagename`
MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `vouchertype`
--
ALTER TABLE `vouchertype`
MODIFY `voucherid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
