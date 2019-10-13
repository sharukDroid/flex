-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2019 at 09:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddims`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `service` varchar(0) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance1`
--

CREATE TABLE `ambulance1` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance2`
--

CREATE TABLE `ambulance2` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance3`
--

CREATE TABLE `ambulance3` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance4`
--

CREATE TABLE `ambulance4` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance5`
--

CREATE TABLE `ambulance5` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance6`
--

CREATE TABLE `ambulance6` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance7`
--

CREATE TABLE `ambulance7` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance8`
--

CREATE TABLE `ambulance8` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance9`
--

CREATE TABLE `ambulance9` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance10`
--

CREATE TABLE `ambulance10` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance11`
--

CREATE TABLE `ambulance11` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance12`
--

CREATE TABLE `ambulance12` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance13`
--

CREATE TABLE `ambulance13` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance14`
--

CREATE TABLE `ambulance14` (
  `id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `a_services`
--

CREATE TABLE `a_services` (
  `id` int(11) NOT NULL,
  `service` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_services`
--

INSERT INTO `a_services` (`id`, `service`, `address`, `phone`) VALUES
(1, 'Zoom Ambulance Service\r\n', 'HOUSE # 2/4, TOLARBAG, MIRPUR 1, DHAKA 1216', '01711306557'),
(2, 'khaled rent a car Ambulance Service\r\n', 'Gulshan,Motijheel', '01933246577'),
(3, 'Haque Ambulance Service', '2/F, Avenue 1, Mirpur 2, Dhaka 1216', '01764-880099'),
(4, 'Jamuna Ambulance Service', 'CNS Tower, 43/r/5-a, west, Panthapath, Dhaka 1215', '01714-360988'),
(5, 'Al Amin Ambulance\r\n ', 'Bir Uttam Kazi Nuruzzaman Rd, Dhaka 1215\r\n', '01720-448666'),
(6, 'Alif Ambulance Service', '76/A, Ahmed Plaza, West Panthapath, Bir Uttam Kazi Nuruzzaman Rd, Dhaka 1215', '01713-205555'),
(7, 'Salman Ambulance Service\r\n', 'House no. 4 Road No 4, Dhanmondi, Dhaka 1205', '01941-354079'),
(8, 'Desh Ambulance Service', '82, East Ahmed Nagor, Mirpur, Dhaka 1216', '01790-509607'),
(9, 'AMBULANCE SERVICE IN DHAKA ', 'Airport Station Over Bridge, Dhaka 1230', '01711-980998'),
(10, 'Dhaka Ambulance', '68/69 Green Rd, Dhaka 1205', '01749-807070'),
(11, 'Ambulance BD Rental', '28/5 Tajmahal Road Dhaka 1207 Tajmahal Rd, Dhaka 1207', '01778-713649'),
(12, 'HASBD', '364, Goran Rd, Dhaka', '01701-777782'),
(13, 'AS Ambulance', 'Dhaka', '01711-060025'),
(14, 'NHFH Ambulance Service', 'Plot-7/2, Section-2, Mirpur, Dhaka 1216', '01712-367859'),
(15, 'Freezing Ambulance', 'Dhaka 1212', '01712-367859'),
(16, 'Al-Islami Ambulance service', '44/F/7/A, Dhaka 1215', '01911-767635'),
(17, 'Mahim Ambulance Service', 'Shahid Shahabuddin Shorok, Dhaka 1207', '01774-983692'),
(18, 'TUBA AMBULANCE SERVICE', 'Sonargaon Janapath, Dhaka 1230', '01711-980998'),
(19, 'Al Sakib Ambulance Service', 'Zoo Road, Dhaka', '01712-367859'),
(20, 'Hakkani Ambulance Service', 'Dhaka 1216', '01919-382537'),
(21, 'M ICU AMBULANCE SERVICE', '61 Green Rd, Dhaka 1205', '01716-269038'),
(22, 'Anjuman Mufidul Islam', '42, Anjuman Mufidul Islam Road, Kakrail, Dhaka 1000', '02-9336611'),
(23, 'Uttara Ambulance Service And Freezer Ambulance', '9 Gareeb-e-Nawaz Ave, Dhaka 1230', '01778-713649'),
(24, 'Ambulance Service Bangladesh', 'Dhaka, Ashulia Hwy, Dhaka 1230', '01711-980998'),
(25, 'Tuba Ambulance Service', 'Road-27, Dhaka 1230', '01711-980998'),
(26, 'HR Ambulance', 'Rd No. 10, Dhaka 1216', '01971-060025'),
(27, 'Ambulance Al boraq', 'Girls School Rd, Dhaka 1215', '01733-458833'),
(28, 'URAL EMS', 'Dhaka', '01969-906555'),
(29, 'M Ambulance', 'Dhaka 1205', '01716-269038'),
(30, 'Ambulance O Lashbahi Freezing', '152/2/K Green Road, Panthapath, Kalabagan, Dhanmondi, Dhaka 1205', '01672-417011'),
(31, 'Dhaka Ambulance Service', '58/ga wrist rajabajar Sara Bangla nogor Dhaka, 1215', '01812-210091'),
(32, 'S.S. Ambulance Service', '19/1, Concord Tower, West Panthpath, Opposite Square Hoapital, Dhaka 1205', '01812-906091'),
(33, 'Yeasin Ambulance Service', '52/a Panthapoth, Dolphin Goli, Dhaka 1205', '01712-244294'),
(34, 'Air ambulance dhaka to singapore', 'Dhaka 1230', '01624-176145'),
(35, 'TUBA AMBULANCES BD', 'Sonargaon Janapath, Dhaka 1230', '01711-980998'),
(36, 'ABC Ambulance', 'sector 3, Uttara, Dhaka 1230', '01735-201528'),
(37, 'Airport Ambulance Rental\r\n', '250/A Airport - Dakshinkhan Rd, Dhaka 1230', '01778-713649'),
(38, 'Fire Service Ambulance	', 'Dhaka', ' 9556666, 9555555'),
(39, 'Anju-Man-e-Mafidul Islam', 'Dhaka', '9336611,7411660'),
(40, 'Al-Markazul lslami Ambulance Service', 'Dhaka', '9127867,8114980'),
(41, 'Apanjon Ambulance Service	 \r\n \r\n', 'Dhaka', '9125420'),
(42, 'BSMMU\r\n \r\n 	 ', 'Dhaka	 ', '9661551-60,8616641'),
(43, 'BARDEM', 'Dhaka	 ', '9661551, 8616641-50'),
(44, 'BNSB.Dhaka Eye Hospital', 'Dhaka	 ', '8014476'),
(45, 'CMH ', 'Dhaka', '9871469'),
(46, 'Day-Night Ambulance Service', 'Dhaka', '9123073, 8122041'),
(47, 'Dhaka Medical College Hospital', 'Dhaka	 ', '8626812'),
(48, 'Dhaka Eye Hospital', 'Dhaka	 ', '8014476'),
(49, 'Heart Hospital', 'Dhaka	 ', '9801874,9803302'),
(50, 'Holy Family Hospital', 'Dhaka', '8311721-25'),
(51, 'ICDDRB (Cholere Hospita)', 'Dhaka', '8811751-60'),
(52, 'IPGMR', 'Dhaka', '8614001-5, 8614545-9'),
(53, 'Medinova Medical Service Ltd.', 'Dhaka ', '8113721,9120288'),
(54, 'Monowara General Hospital', 'Dhaka	 ', '8318135,8319802'),
(55, 'National Heart Institute', 'Dhaka	 ', '9122560-72, 8114806'),
(56, 'Rafa Ambulance Service ', 'Dhaka	 ', '9110663'),
(57, 'Red Crescent Ambulance ', 'Dhaka ', '9330188-89'),
(58, 'Salimullah Medical College ', 'Dhaka	 ', '7319002-6'),
(59, 'Shahid Suhrawardi Hospital', 'Dhaka	 ', '9130800'),
(60, 'Shishu Hospital', 'Dhaka', '8116061-2,8114571-2'),
(61, 'South Asian Hospital', 'Dhaka	 ', '8616565, 9665852'),
(62, 'South Asian Hospital', 'Dhaka	 ', '8616565, 9665852');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `degree` varchar(150) DEFAULT NULL,
  `speciality` varchar(300) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor1`
--

CREATE TABLE `doctor1` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor1`
--

INSERT INTO `doctor1` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'SQUARE Hospitals Ltd.', 'Dr. A.B.M Sarwar-E-Alam', NULL, '+880 2 8159457, 8142431, 8141522, 8144400,8142333 ', 'MBBS, FCPS', 'Internal Medicine', NULL),
(2, 'SQUARE Hospitals Ltd', 'Dr. Abdullah Al Jamil', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333', 'MBBS, FCPS, MD, FCAPSC, Trained in EPS & RFA (AIIMS, India)', 'Cardiology', NULL),
(3, 'SQUARE Hospitals Ltd.', 'Dr. Abdul Kader Shaikh', NULL, '+880-2-8159457, 8142431, 8141522, 8144400,8142333', 'FCPS, MD', 'Neuromedicine', NULL),
(4, 'SQUARE Hospitals Ltd', 'Dr. Abu Reza Mohammad Nooruzzaman', 'drnzaman@squarehospital.com', '+880-2-8159457, 8142431, 8141522, 8144400, 8142333', NULL, 'Internal Medicine', NULL),
(5, 'SQUARE Hospitals Ltd', 'Dr. Ahmed Zahid Hossain', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'MBBS, MS ( Ped. Surgery )', 'Pediatric Surgeon', NULL),
(6, 'SQUARE Hospitals Ltd', 'Professor Dr. Anaware Begum', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', ' MBBS, FCPS ( Gyne & Obs )', 'Gynecology & Obstetrics', NULL),
(7, 'SQUARE Hospitals Ltd', 'Dr. ATM Samdani', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5\r\n', 'MBBS, MD ( Radiology and Imaging from BIRDEM )', 'Urology', NULL),
(8, 'SQUARE Hospitals Ltd.', ' Dr. Hiramoni Sarma', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773\r\n', 'MBBS, DOMS, Fellow Retinal lasers', 'Eye ( Ophthalmology )', NULL),
(9, 'SQUARE Hospitals Ltd.', 'Dr. Jahangir Alam', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333\r\n', 'MBBS, (DMC), MRCP (UK)', 'Internal Medicine', NULL),
(10, ' SQUARE Hospitals Ltd.', 'Dr. Kashefa Nazneen', NULL, ' +880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS, FCPS ( Gyne & Obs )', 'Gynecology & Obstetrics', NULL),
(11, 'SQUARE Hospitals Ltd.', 'Dr. Kazi Ali Hassan', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447\r\n', 'MBBS, M.Phil (EM), MRCP (UK)', 'Diabetes & Endocrine', NULL),
(12, 'SQUARE Hospitals Ltd.', 'Dr. Khaled Mohsin', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333\r\n', 'MBBS(Gold Medalist from DMC),MRCP(Ireland),MD(Cardiology–NICVD/DU),MSc(Diagnostic & Interventional)', 'Cardiology', NULL),
(13, 'SQUARE Hospitals Ltd.', 'Dr. Khaleda Yeasmin Mirza', NULL, '+880 2 8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS, DGO ( Obs & Gyne – Ireland )', 'Gynecology & Obstetrics', NULL),
(14, 'SQUARE Hospitals Ltd.', 'Dr. Khandaker Abu Talha', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5\r\n', 'MBBS, MCPS, MS', 'Neurosurgeon', NULL),
(15, 'SQUARE Hospitals Ltd.', 'Professor Dr. Ko Ninan Chac', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5\r\n', 'MBBS, MS, MCh(Urology), FRCS (Urology)', 'Urology', NULL),
(16, 'SQUARE Hospitals Ltd', 'Dr. M A Wahab Khan', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773', 'MBBS, MD (Nephrology)', 'Kidney ( Nephrology )', NULL),
(17, 'SQUARE Hospitals Ltd.', 'Dr. M. A. Rashid', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS, FCPS ( Physical Medicine ) ', 'Physical Medicine', NULL),
(18, 'SQUARE Hospitals Ltd', 'Dr. M. A. Zulkifl', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS, FCPS, FRCS (England)', 'Urology', NULL),
(19, 'SQUARE Hospitals Ltd', 'Dr. M. Motahar Hossain', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'FCPS ( medicine), MD ( Hepatology )', 'Gastroenterology', NULL),
(20, 'SQUARE Hospitals Ltd', 'Dr. M.H. Shaheel Mohmood', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'MBBS, FCPS, MS', 'ENT – Head & Neck Surgeon', NULL),
(21, 'SQUARE Hospitals Ltd', 'Professor Dr. Mahmud Hasan', NULL, '+880 2 8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'FCPS ( Medicine ) , PhD, FRCP, MBBS', 'Gastroenterology', NULL),
(22, 'SQUARE Hospitals Ltd', 'Dr. Md. Afzalur Rahman', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333', 'MBBS, MD (Card), PhD (Card), FACC (USA), FRCP (Glasgow), FRCP (Edin)', 'Cardiology', NULL),
(23, 'SQUARE Hospitals Ltd', 'Professor Dr. Md. Ahsanul Habib', NULL, '+880-2-8159457, 8142431, 8141522, 8144400,8142333, 01713141447', 'MBBS, FCPS', 'Anesthesiology', NULL),
(24, 'SQUARE Hospitals Ltd.', 'Dr. Md. Amer Wahed', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS (IPGMR), MD (USA), FACP (USA) Diplomate in Internal Medicine (UK)', 'Pathology & Laboratory', NULL),
(25, 'SQUARE Hospitals Ltd', 'Dr. Md. Aminul Islam Khan', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS (DMC), Board Certified in Pathology (AP & CP)', 'Pathology & Laboratory', NULL),
(26, 'SQUARE Hospitals Ltd', 'Dr. Md. Azharul Islam', NULL, '+880-2-8159457, 8142431, 8141522, 8144400,8142333, 01713141447', 'MBBS, FCPS', 'Anesthesiology', NULL),
(27, 'SQUARE Hospitals Ltd', 'Dr. Md. Ismail Chowdhury', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713377773-5', 'MBBS, FCPS (Medicine), MD (Neurology)', 'Neuromedicine', NULL),
(28, 'SQUARE Hospitals Ltd', 'Professor Dr. Md. Kabirul Islam', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'MBBS, MS (Ped. Surgery), FICS (USA) Trained on Pediatric Urology (UK)', 'Pediatric Surgeon', NULL),
(29, 'SQUARE Hospitals Ltd', 'Professor Dr. Md. Khalilur Rahman', NULL, '+880-2-8159457, 8142431, 8141522, 8144400,8142333, 01713141447', 'MBBS, MCPS, FCPS, DA (UK), FFARCS (Ireland)', 'Anesthesiology', NULL),
(30, 'SQUARE Hospitals Ltd', 'Dr. Md. Masudur Rahman', NULL, '+880-2-8159457, 8142431, 8141522, 8144400, 8142333, 01713141447', 'MBBS, MRCP (UK), FCPS (Pediatrics)', 'Child – Pediatric', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor2`
--

CREATE TABLE `doctor2` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor2`
--

INSERT INTO `doctor2` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Ibn Sina Hospital', 'Professor Dr. Md. Lutful Kabir', NULL, NULL, NULL, 'Medicine ', '6PM-9PM(Everyday Open) Room Number:315 '),
(2, 'Ibn Sina Hospital', 'Professor Dr. Mohammad Zohir Uddin', NULL, NULL, NULL, 'Medicine ', '6-9 PM(Thu & Friday Closed) Room Number:309'),
(3, 'Ibn Sina Hospital', 'Dr. Shohael Mahmud Arafat', NULL, NULL, NULL, 'Medicine ', '4.30-9 PM (Tue & Friday Closed) Room Number:415,416'),
(4, 'Ibn Sina Hospital', 'Dr. A.R Khan', NULL, NULL, NULL, 'Medicine ', '10.00-1.00 PM (Friday 6.00pm -8.00PM) Room Number:322'),
(5, 'Ibn Sina Hospital', 'Dr. Md. Ayub Ali Chowdhury', NULL, NULL, NULL, 'Medicine and Nephrology', '4.00-10.00 PM (Friday 9.00 AM-12.00 PM) Room Number:401,402'),
(6, 'Ibn Sina Hospital', 'Dr.Ahmed Manadir Hossain', NULL, NULL, NULL, 'Medicine ', '5.30-8.00PM(Only Friday Open) Room Number:414'),
(7, 'Ibn Sina Hospital', 'Dr. Sakina Anwar', NULL, NULL, NULL, 'Internal Medicine', '7.00-9.00 PM (Only Friday closed) Room Number:303'),
(8, 'Ibn Sina Hospital', 'Prof. Dr. M. Touhidul Haque', NULL, NULL, NULL, 'Cardiology', '5.00-9.00 PM (Friday 11.00 AM-2.00PM) Room Number:402 (IPD)'),
(9, 'Ibn Sina Hospital', 'Col.(Rtd.) Prof.Dr.Zehad Khan', NULL, NULL, NULL, 'Cardiology ', '8.30—9.30 PM (Only Friday Closed) Room Number:316'),
(10, 'Ibn Sina Hospital', 'Dr. Md.Monsurul Haque', NULL, NULL, NULL, 'Cardiology ', '5.00-9.00 PM (Only Friday Closed) Room Number:424'),
(11, 'Ibn Sina Hospital', 'Dr. Sufia Jannat', NULL, NULL, NULL, 'Cardiology ', '6.00-9.00 PM (Friday & Monday Closed) Room Number:414'),
(12, 'Ibn Sina Hospital', 'Prof. Dr. S M. Siddiqur Rahman', NULL, NULL, NULL, 'Interventional & Clinical Cardiology', '6.00-8.30PM  (Wed ,Friday Closed & Govt. Holidays ) Room Number:509'),
(13, 'Ibn Sina Hospital', 'Dr. Md. Shafiqur Rahman Patwary', NULL, NULL, NULL, 'Cardiology & Medicine', '1.30-3.00 PM (Only Friday Closed) Room Number:319'),
(14, 'Ibn Sina Hospital', 'Dr.M. Delwar Hossain', NULL, NULL, NULL, 'Pulmonology & Medicine', '10AM-1PM & 7PM- 9PM (Friday & Saturday Open) Room Number:316'),
(15, 'Ibn Sina Hospital', 'Prof. Dr. Mirza Mohammad Hiron', NULL, NULL, NULL, 'Medicine & Pulmonologist', '7.00-9.00 PM (Thursday 6.00-8.00 PM )(Only Closed Friday) Room Number:422'),
(16, 'Ibn Sina Hospital', 'Professor Dr. Mohammad Rofiqul Islam', NULL, NULL, NULL, 'Chest (Respiratory Medicine)', '6.30-8.30 PM (Only Closed Friday & Govt. Holiday) Room Number:503 (IPD)'),
(17, 'Ibn Sina Hospital', 'Professor Dr. Jhunu Shamsun Nahar', NULL, NULL, NULL, 'Psychiatry & Psychotherapy ', '6.00-9.00 PM (Only Wednesday & Thursday opened) Room Number:321'),
(18, 'Ibn Sina Hospital', 'Prof. Dr. AHM Mustafizur Rahman', NULL, NULL, NULL, 'Psychiatry & Psychotherapy', '11.00AM-1.00PM (Only Thursday & Friday Closed) Room Number:321 '),
(19, 'Ibn Sina Hospital', 'Brig. Gen. Prof. Md. Saidur Rahman (Retd.)', NULL, NULL, NULL, 'General Surgery', '6.00- 8.00 PM (Only Friday Closed) Room Number:417'),
(20, 'Ibn Sina Hospital', 'Let. Gen. (Retd) Prof. Dr. Zafrullah Siddiq', NULL, NULL, NULL, 'General Surgery ', '10.00 AM-1.00 PM ((Only Friday Closed) Room Number:309'),
(21, 'Ibn Sina Hospital', 'Dr. Tahmina Satter', NULL, NULL, NULL, 'General & Plastic Surgery', '4.00-7.00 PM (Only Mon, Thurs & Friday Closed) Room Number:314 '),
(22, 'Ibn Sina Hospital', 'Dr. Wakil Ahmed', NULL, NULL, NULL, 'Orthopaedic Surgery (Arthoscopy & Joint Replacement) ', '7.00-10.00 PM (Only Thursday & Friday Closed) Room Number:401 (IPD)'),
(23, 'Ibn Sina Hospital ', 'Professor Dr. Mainul Haque Sarker', NULL, NULL, NULL, 'Neuro & Spine Surgery', '4.30-6.30 PM (Only Sunday & Tuesday Closed) Room Number:407'),
(24, 'Ibn Sina Hospital', 'Dr. F.H. Chowdhuray (Forhad)', NULL, NULL, NULL, 'Neuro & Spine Surgery', '7.30-9.30 PM (Thursday, Friday & Govt. Holiday Closed)  Room Number:407'),
(25, 'Ibn Sina Hospital', 'Professor Dr. Muhammad Siraj-ul-Islam', NULL, NULL, NULL, 'Orthopedic Surgery', '11.00AM-1.00PM & 5.00 PM-9.00 PM (Only Friday Closed) Room Number:305'),
(26, 'Ibn Sina Hospital', 'Professor Dr. Rafiqul Islam', NULL, NULL, NULL, 'Orthopedic Surgery', '5.00 PM-9.00 PM (Only Sunday & Friday Closed) Room Number:406'),
(27, 'Ibn Sina Hospital', 'Professor Dr. Md. Lutfor Rahman Khan', NULL, NULL, NULL, 'Orthopedic Surgery', '8.30-10.00 PM (Friday Closed & Saturday (On Call)) Room Number:317'),
(28, 'Ibn Sina Hospital', 'Professor Dr. A K M Hamidur Rahman', NULL, NULL, NULL, 'Oncology ', '7.00-9.00 PM (Only Friday Close) Room Number:310 '),
(29, 'Ibn Sina Hospital', 'Dr. Parvin Akhter Banu', NULL, NULL, NULL, 'Oncology ', '5.30-8.00 PM (Only Thursday & Friday Closed) Room Number:409'),
(30, 'Ibn Sina Hospital', 'Professor Dr. M. Fakhrul Islam', NULL, NULL, NULL, 'Urology ', '7.00-9.00 PM (Only Sunday, Tuesday & Thursday Available)'),
(31, 'Ibn Sina Hospital', 'Professor Dr.Md.Golam Mowla Chowdhury', NULL, NULL, NULL, 'Urologist ', '6.30-9.00 PM (Only Saturday, Monday Wednesday & Friday ) Room Number:306 (IPD)'),
(32, 'Ibn Sina Hospital', 'Dr. Mohammad Shofiqur Rahman', NULL, NULL, NULL, 'Laparoscopy Surgeon, Urology & Uro-oncologist', '6.30-8.30 PM (Only Friday Closed) Room Number:304'),
(33, 'Ibn Sina Hospital', 'Dr. Mst. Hosne Ara Nargis (Sumy) ', NULL, NULL, NULL, 'Kidney, Ureter, Urethra and Prostate Specialist & Surgeon ', '6.00-8.00 PM (Only Sun, Tue & Thursday Opened) '),
(34, 'Ibn Sina Hospital', 'Professor Dr. Salma Rouf', NULL, NULL, NULL, 'Gynecology & Obstetrics', '6.00- 9.00 PM (Only Friday Closed) Room Number:308'),
(35, 'Ibn Sina Hospital', 'Dr. Musarrat Sultana (Sumi)', NULL, NULL, NULL, 'Gynecology & Obstetrics', 'Sat & Mon 9.30-10.30PM  Room Number:320 '),
(36, 'Ibn Sina Hospital', 'Dr. Nazlima Nargis', NULL, NULL, NULL, 'Gynecology & Obstetrics', '6.30 PM - 8.30 PM(Monday & Friday Closed ) Room Number:419 '),
(37, 'Ibn Sina Hospital', 'Dr. Rashida Khanom (Ritu)', NULL, NULL, NULL, 'Gynecology & Obstetrics', '6PM - 8PM (Friday 10AM-12PM) Room Number:313'),
(38, 'Ibn Sina Hospital', 'Dr. Shahana Pervin', NULL, NULL, NULL, 'Gynae Oncology', '6.30 PM – 9.00 PM (Only Friday closed) Room Number:301 '),
(39, 'Ibn Sina Hospital', 'Dr. Rushdana Rahman (Toma)', NULL, NULL, NULL, 'Gynecology & Obstetrics ', '6.00 PM -9.00 PM (Thu Closed & Fri Oncall) Room Number:507 '),
(40, 'Ibn Sina Hospital', 'Dr.Sabiha Islam', NULL, NULL, NULL, 'Gynecology & Obstetrics', '5.00-8.30PM (only Friday & Govt. Holidays ) Room Number:403 (IPD)'),
(41, 'Ibn Sina Hospital', 'Dr. Fahmida Zabin', NULL, NULL, NULL, 'Gynecology & Obstetrics', '6.30-9.00 PM (Only Friday & Govt. Holidays) Room Number:407 (IPD)'),
(42, 'Ibn Sina Hospital', 'Professor Suraiya Begum', NULL, NULL, NULL, 'Gynecology & Obstetrics', '5.00-8.30PM (Only Friday closed) Room Number:305 (IPD)'),
(43, 'Ibn Sina Hospital', 'Dr. Naimah Masood', NULL, NULL, NULL, 'Gynecology & Obstetrics', '6.30-8.30 PM Only Friday & Govt. Holidays Room Number:302 (IPD)  '),
(45, 'Ibn Sina Hospital', 'Prof. Dr. M. Ferdous', NULL, NULL, NULL, 'Skin, Allergy & VD Specialist', '11.00- 2.00PM (6.00-8.00PM Sat, Mon) Mon,Wed & Fri Closed  Room Number:317'),
(46, 'Ibn Sina Hospital', 'Professor Dr. Zakir Hossain Galib', NULL, NULL, 'MBBS, MD (Dermatology)', 'Skin, Allergy & VD Specialist', '5.00-9.00 PM Only Friday Closed Room Number:307'),
(47, 'Ibn Sina Hospital', 'Dr.Masuda Khatun', NULL, NULL, NULL, 'Skin, Allergy & VD Specialist', '6.00-9.00 PM Only Friday closed Room Number:206 (IPD)'),
(48, 'Ibn Sina Hospital', 'Prof. Kamrul Hassan Tarafder', NULL, NULL, NULL, 'ENT & Head Neck Surgery ', '9.30-10.30 PM (Only Thu & Fri Closed) Room Number:310'),
(49, 'Ibn Sina Hospital', 'Professor Brig. Gen. (R.) MS Khurshid Alam', '', NULL, NULL, 'ENT & Head Neck Surgery', '11AM-1PM & 7.30-9.00 PM(Only Friday & Govt. Holiday) Room Number:408'),
(50, 'Ibn Sina Hospital', 'Lt. Colonel (Retd) Prof. Dr. Md. Abdullah Hel Kafi', NULL, NULL, NULL, 'Ear Nose Throat & Head Neck Surgery', '4.00-7.00 PM (Only Friday Closed)  Room Number:406 (IPD)'),
(51, 'Ibn Sina Hospital', 'Dr. Md. Arif Hossain Bhuyan', NULL, NULL, NULL, 'ENT & Head Neck Surgery', '5.30-9.00PM (Only Tuesday & Friday Closed)  Room Number:425'),
(52, 'Ibn Sina Hospital', 'Dr. Mahmudul Haque', NULL, NULL, NULL, 'Hormone Specialist', '8.30-9.30 PM (Only Friday Closed ) Room Number:108 (IPD)'),
(53, 'Ibn Sina Hospital', 'Dr. Sultana Marufa Shafin', NULL, NULL, NULL, 'Diabetes, Hormone & Medicine Specialist', '3.30-7.00 PM (Only Thu & Fri Closed) Room Number:405'),
(54, 'Ibn Sina Hospital', 'Dr. M.A Azad', NULL, NULL, NULL, 'Diabetes, Hormone & Medicine Specialist', '8.00AM-2.00 PM (Only Friday & Govt. Holiday) Room Number:108'),
(55, 'Ibn Sina Hospital', 'Professor Dr. Md. Sarwar Ferdous', NULL, NULL, NULL, 'Neonatal - Pediatric Specialist', '5.30 PM -9.00 PM (Only Friday Closed) Room Number:413'),
(56, 'Ibn Sina Hospital', 'Dr. M.A Motin', NULL, NULL, NULL, 'Neonatal and Pediatrics', '11 AM-1.00PM (Friday 5PM-8PM)(Sun, Mon & Thu Closed) Room Number:310 '),
(57, 'Ibn Sina Hospital', '\r\nDr. Maherunnessa Masud', NULL, NULL, NULL, 'Neonatal - Pediatric Specialist ', '6.00-6.30 PM (One call) (Only Friday closed) Room Number:302 (IPD)'),
(58, 'Ibn Sina Hospital', 'Professor Dr. M.S.Alam', NULL, NULL, NULL, 'Pediatric Surgery', '5.00- 7.00 PM (Only Friday Closed) Room Number:317');

-- --------------------------------------------------------

--
-- Table structure for table `doctor3`
--

CREATE TABLE `doctor3` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor3`
--

INSERT INTO `doctor3` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Enam Medical College & Hospital', 'Prof. Dr. Gulshan Ara', NULL, NULL, 'MBBS, FCPS', 'Professor of Gynae & Obs. & Head of the Department', NULL),
(2, 'Enam Medical College & Hospital', 'Dr. Kamrun Nessa', NULL, NULL, 'MBBS, MCPS, FCPS', 'Associate Professor of Gynae & Obs.', NULL),
(3, 'Enam Medical College & Hospital', 'Dr. Kamrun Nessa', NULL, NULL, 'MBBS, MCPS, FCPS', 'Associate Professor of Gynae & Obs.', NULL),
(4, 'Enam Medical College & Hospital', 'Dr. Sheuly Begum', NULL, NULL, 'MBBS, FCPS, MS', 'Associate Professor of Gynae & Obs.', NULL),
(5, 'Enam Medical College & Hospital', 'Dr. Sumia Bari', NULL, NULL, 'MBBS, FCPS', 'Assistant Professor of Gynae & Obs.', NULL),
(6, 'Enam Medical College & Hospital', 'Dr. Tahamina Khanum', NULL, NULL, 'MBBS, FCPS', 'Assistant Professor', NULL),
(7, 'Enam Medical College & Hospital', 'Dr. Sayma Afroz', NULL, NULL, 'MBBS, FCPS', 'Assistant Professor', NULL),
(8, 'Enam Medical College & Hospital', 'Dr. Nasima Begum', NULL, NULL, 'MBBS, FCPS', 'Assistant Professor', NULL),
(9, 'Enam Medical College & Hospital', 'Dr. Farida Haque', NULL, NULL, 'MBBS, DGO', 'Jr. Consultant', NULL),
(10, 'Enam Medical College & Hospital', 'Dr. Ferdowsi Sultana Poly', NULL, NULL, 'MBBS, DGO, MPH', 'Registrar', NULL),
(11, 'Enam Medical College & Hospital', 'Dr. Fahmida Sultana', NULL, NULL, 'MBBS, FCPS', 'Assistant Professor', NULL),
(12, 'Enam Medical College & Hospital', 'Dr. Sumyia Akhter', NULL, NULL, 'MBBS', 'Registrar', NULL),
(13, 'Enam Medical College & Hospital', 'Dr. Humayra Bushra Hossain', '', NULL, 'MBBS', 'Registrar', NULL),
(14, 'Enam Medical College & Hospital\r\n', 'Prof. Dr. Moeen Uddin Ahmed', NULL, NULL, 'MBBS, MD', 'Professor of Cardiology & Chief Interventional Cardiologist', NULL),
(15, 'Enam Medical College & Hospital', 'Dr. Shahidul Alam', NULL, NULL, 'MBBS, DIM, D-Card', 'Associate Professor of Cardiology', NULL),
(16, 'Enam Medical College & Hospital', 'Dr. Solaiman Hossain', NULL, NULL, 'MBBS, MD', 'Associate Professor of Cardiology', NULL),
(17, 'Enam Medical College & Hospital', 'Dr. Mohammad Arifur Rahman', NULL, NULL, 'MBBS, D-Card', 'Assistant Professor of Cardiology', NULL),
(18, 'Enam Medical College & Hospital', 'Dr. Md. Shahimur Parvez', NULL, NULL, 'MBBS, D-Card', 'Assistant Professor of Cardiology', NULL),
(19, 'Enam Medical College & Hospital', 'Dr. Md. Munsurul Hakim', NULL, NULL, 'MBBS, D-Card', 'Assistant Professor of Cardiology', NULL),
(20, 'Enam Medical College & Hospital', 'Dr. Md. Rowsan Masud', NULL, NULL, 'MBBS, D-Card', 'Junior Consultant Cardiology', NULL),
(21, 'Enam Medical College & Hospital', 'Dr. Md. Abdullah Al Manjur', NULL, NULL, 'MBBS, D-Card', 'Junior Consultant Cardiology', NULL),
(22, 'Enam Medical College & Hospital', 'Dr. Mir Mahbubur Rahman', NULL, NULL, 'MBBS', 'Registrar Cardiology', NULL),
(23, 'Enam Medical College & Hospital', 'Dr. Tamal Peter Ghosh', NULL, NULL, 'MBBS', 'Registrar Cardiology', NULL),
(24, 'Enam Medical College & Hospital', 'Dr.Md. Sohail Kabir', NULL, NULL, 'MBBS', 'Registrar Cardiology', NULL),
(25, 'Enam Medical College & Hospital', 'Dr.Md. Safiul Bashar Khan', NULL, NULL, 'MBBS', 'Registrar Cardiology', NULL),
(26, 'Enam Medical College & Hospital', 'Dr. Md. Momenuzzaman Khan\r\n', NULL, NULL, 'MBBS, MD', 'Associate Professor of Neurology', NULL),
(27, 'Enam Medical College & Hospital', 'Dr. Sayeda Shabnam Malik\r\n', NULL, NULL, 'MBBS, MD', 'Assistant Professor of Neurology', NULL),
(28, 'Enam Medical College & Hospital', 'Prof. Dr. Shaheen Akter', NULL, NULL, 'MBBS, MD, FCPS (Paed)', 'Professor of Paediatrics', NULL),
(29, 'Enam Medical College & Hospital', 'Dr. Md. Rezaul Karim', NULL, NULL, 'MBBS, MS', 'Associate Professor of Paediatrics', NULL),
(30, 'Enam Medical College & Hospital', 'Dr. Lazina Sharmin', NULL, NULL, 'MBBS, FCPS (Paed)', 'Assistant Professor of Paediatrics', NULL),
(31, 'Enam Medical College & Hospital', 'Dr. Ismail Hossain', NULL, NULL, 'MBBS, MD', 'Assistant Professor of Neonatology', NULL),
(32, 'Enam Medical College & Hospital', 'Dr. Tanjila Begum', NULL, NULL, 'MBBS, DCH', 'Registrar of Paediatrics', NULL),
(33, 'Enam Medical College & Hospital', 'Dr. Md. Golam Kabir', NULL, NULL, 'MBBS, DCH', 'Registrar of Paediatrics', NULL),
(34, 'Enam Medical College & Hospital', 'Dr. Abdullah-Al-Mamun\r\n', NULL, NULL, 'MBBS', 'Asstt. Registrar of Paediatrics', NULL),
(35, 'Enam Medical College & Hospital', 'Dr. Md. Harun-Or-Rashid', NULL, NULL, 'MBBS', 'Asstt. Registrar of Paediatrics', NULL),
(36, 'Enam Medical College & Hospital', 'Prof. Dr. Md. Ishaq Bhuiyan', NULL, NULL, 'MBBS, D.Ortho, MS Orth.', 'Professor of Orthopaedic', NULL),
(37, 'Enam Medical College & Hospital', 'Dr. Mohammad Asadullah', NULL, NULL, 'MBBS, D.Ortho', 'Associate Professor of Orthopaedic', NULL),
(38, 'Enam Medical College & Hospital', 'Dr. Mahbubul Alam', NULL, NULL, 'MBBS, FCPS', 'Asstt. Professor of Orthopaedic', NULL),
(39, 'Enam Medical College & Hospital', 'Dr. Mofazzalul Haque', NULL, NULL, 'MBBS', 'Registrar of Orthopaedic', NULL),
(40, 'Enam Medical College & Hospital', 'Dr. Md. Mizanur Rahman', NULL, NULL, 'MBBS', 'Registrar of Orthopaedic', NULL),
(41, 'Enam Medical College & Hospital', 'Dr. Samsul Arefin Prodhan', NULL, NULL, 'MBBS', 'Assistant Registrar of Orthopaedic', NULL),
(42, 'Enam Medical College & Hospital', 'Prof. Dr. Kabir Ahmed', NULL, NULL, 'MBBS, DLO, FCPS', 'Professor of ENT', NULL),
(43, 'Enam Medical College & Hospital', 'Dr. Kazi Atikuzzaman', NULL, NULL, 'MBBS, FCPS', 'Associate Professor of ENT', NULL),
(44, 'Enam Medical College & Hospital', 'Dr. Md. Yaehyea Zaman Khokon', NULL, NULL, 'MBBS, DLO', 'Assistant Professor of ENT', NULL),
(45, 'Enam Medical College & Hospital', 'Dr. Md. Rakibul Hasan', NULL, NULL, 'MBBS', 'Assistant Professor of Diabetes, Thyroid & Hormone Specialist ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor4`
--

CREATE TABLE `doctor4` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor4`
--

INSERT INTO `doctor4` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Lt. Col. (Retd) Dr. Md. Hamidur Rahman', 'hamid@ibrahimcardiac.org.bd', NULL, 'MBBS, FCPS', 'Head of the Department & Senior Consultant', NULL),
(2, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Dr. Mohammad Liaquat Ali', 'drliaquat@ibrahimcardiac.org.bd, drliaquat2010@yahoo.com	', NULL, 'MBBS, FCPS, MRCP (UK)', 'Senior Consultant & Professor', NULL),
(3, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Dr. M Maksumul Haq', 'haq@ibrahimcardiac.org.bd', NULL, 'MBBS (DMC), FCPS (BD), FACC (USA), FRCP (Edin)', 'Head of the Department & Senior Consultant', NULL),
(4, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof Dr. Mashhud Zia Chowdhury', NULL, NULL, 'MBBS (CU), DTCD (DU), MD in Cardiology (DU)', 'Professor & Sr. Consultant', NULL),
(5, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Dr. Masoom Siraj', 'siraj@ibrahimcardiac.org.bd', NULL, 'MBBS, FRCS', 'Head of the Department & Senior Consultant', NULL),
(6, 'Ibrahim Cardiac Hospital & Research Institute', 'Assoc. Prof. Dr. Md. Mazibur Rahman', NULL, NULL, 'MBBS (RU), MS (NICVD)', 'Consultant ', NULL),
(7, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Dr. M. H. Millat', 'mhmillat@ibrahimcardiac.org.bd', NULL, 'MBBS, FRCS (Edin)', 'Senior Consultant', NULL),
(8, 'Ibrahim Cardiac Hospital & Research Institute', 'Assoc. Prof. Dr. Nawshin Siraj', 'nausin@ibrahimcardiac.org.bd', NULL, 'MBBS, M. Phil', 'Head of the Department & Consultant ', NULL),
(9, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof. Dr. M. A. Rashid', 'drrashid@ibrahimcardiac.org.bd', NULL, 'MBBS, MPH (HM), DTM, DCARD, F WHO, FACC, FRCP', 'Professor of Cardiology & Senior Consultant', NULL),
(10, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof Lt. Col. (Retd) Dr. Md. Rezaul Karim', 'reza@ibrahimcardiac.org.bd', NULL, 'MBBS, FCPS, FRCP, FACC', 'Senior Consultant', NULL),
(11, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof Dr. Md. Saidur Rahman Khan', NULL, NULL, 'MBBS, MD, Ph.D', 'Professor & Sr. Consultant, Cardiology', NULL),
(12, 'Ibrahim Cardiac Hospital & Research Institute', 'Dr. Md. Saidur Rahman Khan', NULL, NULL, 'MBBS (DMC), MD, PhD (Card.', NULL, NULL),
(13, 'Ibrahim Cardiac Hospital & Research Institute ', 'Prof. Dr. Md. Sharif Hasan', NULL, NULL, 'MBBS (DU), MS (NICVD)', 'Professor & Sr. Consultant', NULL),
(14, 'Ibrahim Cardiac Hospital & Research Institute', 'Prof Dr. Md. Sirajul Islam', NULL, NULL, 'MBBS (DU), DA (DU), MD (BSMMU)', 'Professor & Sr. Consultant', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor5`
--

CREATE TABLE `doctor5` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor5`
--

INSERT INTO `doctor5` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Bangladesh Eye Hospital', 'Dr. Mahbubur Rahman Chowdhury', NULL, NULL, 'MBBS, FCPS', 'Consultant Phaco Surgeon', NULL),
(2, 'Bangladesh Eye Hospital', 'Dr. Niaz Abdur-Rahman', NULL, NULL, 'MBBS, DO, MPH(USA)Fellow Vitreo Retina', 'Consultant Vitreo Retina', NULL),
(3, 'Bangladesh Eye Hospital', 'Dr. Md. Ali Akbar', NULL, NULL, 'MBBS (DMC), D.O. (DU), MCPS (BCPS), FCPS (BCPS)', 'Consultant,\r\nGlaucoma, Cataract/ Phaco Surgery', NULL),
(4, 'Bangladesh Eye Hospital', 'Dr. Kamal Haider Khan', NULL, NULL, 'MBBS, DO, MCPS, MS', 'GLAUCOMA SPECIALIST & PHACO SURGEON', NULL),
(5, 'Bangladesh Eye Hospital', 'Dr. Md. Tauhidur Rahman', NULL, NULL, 'MBBS, DO, MS, MMEd ', 'Oculoplastics, Cataract & Refractive Surgery, Contact Lens ', NULL),
(6, 'Bangladesh Eye Hospital', 'Dr. Kazi Shabbir Anwar', NULL, NULL, 'MBBS, DO ', 'Consultant Children’s Eyecare and Adult Strabismus', NULL),
(7, 'Bangladesh Eye Hospital', 'Dr. Ziaul Ahsan Mukta', NULL, NULL, 'MBBS, DO, MS(Opth.)', 'Consultant,Vitreo-Retina, Cataract & Comprehensive Ophthalmology', NULL),
(8, 'Bangladesh Eye Hospital', 'Dr. Sarwar Jahan Muktafi', NULL, NULL, 'MBBS, ECFMG Certified (USA), MS.', 'Consultant,General Ophthalmology, Cataract, Medical Retina & Oculoplasty', NULL),
(9, 'Bangladesh Eye Hospital', 'Prof. M. Nazrul Islam', NULL, NULL, 'MBBS, D.O., MCPS(Opth.), FCPS(Opth.)', 'Glaucoma Specialist & Phaco Surgeon', NULL),
(10, 'Bangladesh Eye Hospital', 'Dr. Zahangir Alam Mukut', NULL, NULL, 'MBBS, MS.', 'Consultant,Cataract/ Phaco Surgery, General Ophthalmology', NULL),
(11, 'Bangladesh Eye Hospital', 'Dr. Md. Zahedur Rahman', NULL, NULL, 'MBBS, FCPS', 'Consultant Uveitis and Ocular Immunology,\r\nCataract/ Phacosurgeon,( Specially Complicated Cataract)', NULL),
(12, 'Bangladesh Eye Hospital', 'Dr. Md. Mohsin Baig', NULL, NULL, 'MBBS, D.O (DU) M.S (Ophthal)', 'Glaucoma Specialist and Phaco surgeon', NULL),
(13, 'Bangladesh Eye Hospital', 'Dr. Prof. Jalal Ahmed', NULL, NULL, 'MBBS, FCPS, FICS', 'Eye Specialist-Phaco(Laser Cataract), Lasik& Glaucoma Surgeon', NULL),
(14, 'Bangladesh Eye Hospital', 'Prof. (Dr) S.M. Munirul Huq', NULL, NULL, 'D.O (IRE), F.R.C.S. (Glasgow),F.R.C.Ophth(UK) F.A.C.S(USA)', 'Phaco Surgery, Child Specialist, Glaucoma, Neuro-Ophthalmology', NULL),
(15, 'Bangladesh Eye Hospital', 'Dr. Md. Ali Akbar', NULL, NULL, 'MBBS,MCPS,DO,FCPS', 'Phaco & Glaucoma Surgeon', NULL),
(16, 'Bangladesh Eye Hospital', 'Prof. Dr. Syed Maruf Ali', NULL, NULL, 'MBBS, FCPS (EYE)', 'Micro Surgeon & Phaco Surgeon', NULL),
(17, 'Bangladesh Eye Hospital', 'Prof. Dr. Mohammad Arif', NULL, NULL, 'MBBS (Dhaka), DO (DU), FCPS (OPH)', 'Glaucoma ', NULL),
(18, 'Bangladesh Eye Hospital', 'Dr. Afroza Khanam', NULL, NULL, 'MBBS, DO', 'Eye Specialist & Phaco Surgeon', NULL),
(19, 'Bangladesh Eye Hospital', 'Dr. Md. Arifuzzaman', NULL, NULL, 'MBBS, MS', 'Retina & Vitreous and Phaco Surgery', NULL),
(20, 'Bangladesh Eye Hospital', 'Dr. Md. Lutfor Rahman', NULL, NULL, 'MBBS, FCPS (Eye)', 'Neuron-Ophthalmology and EGR, EOG & VEP', NULL),
(21, 'Bangladesh Eye Hospital', 'Dr.Iftekhar Md.Munir', NULL, NULL, 'MBBS, FCPS', 'Glaucoma', NULL),
(22, 'Bangladesh Eye Hospital', 'Dr. Azizur Rahman Alam', '', NULL, 'MBBS, FCPS, FICO (UK)', 'Oculoplastic & Squint', NULL),
(23, 'Bangladesh Eye Hospital', 'Dr. AM Rezaur Rahman Masud (Kabul)', NULL, NULL, 'MBBS,(DMC),D.O.(D.U)', 'Consultant Ophthalmologist', NULL),
(24, 'Bangladesh Eye Hospital', 'Dr. M. A. Masud Hashmee', NULL, NULL, 'MBBS, DO, FICO (UK)', 'Retina & Vitreous ', NULL),
(25, 'Bangladesh Eye Hospital', 'Dr. Salma Parvin', NULL, NULL, 'MBBS, DO, FCPS', 'Phaco Surgery, Glaucoma,\r\nMedical Retina & Laser', NULL),
(26, 'Bangladesh Eye Hospital', 'Dr.M.Shish Rahman', NULL, NULL, 'MBBS (DMC), DO, FCPS', 'Phaco & LASIK Surgeon.', NULL),
(27, 'Bangladesh Eye Hospital', 'Dr.Syed Shahin Iqbal', NULL, NULL, 'MBBS, FCPS, ICO (UK)', 'Phaco & Glaucoma Surgeon', NULL),
(28, 'Bangladesh Eye Hospital', 'Dr. Md. Zan-E-Alam Mridha', NULL, NULL, 'MBBS (SSMC), MCPS(Eye),MS(Eye-BSMMU)', 'Pediatric Opthalmology\r\n& Strabismus', NULL),
(29, 'Bangladesh Eye Hospital', 'Dr. Maliha Sharmin', NULL, NULL, 'MBBS, FCPS', 'Retina & Vitreous\r\nEye Specialist & Phaco Surgeon', NULL),
(30, 'Bangladesh Eye Hospital', 'Dr. Md. Mazaharul Islam', NULL, NULL, 'MBBS, FICO, FCPS', 'Eye Specialist & Surgeon', NULL),
(31, 'Bangladesh Eye Hospital', 'Dr. Md. Sanwar Hossain', NULL, NULL, 'MBBS, FCPS (Eye)', 'Eye Specialist and Phaco Surgeon', NULL),
(32, 'Bangladesh Eye Hospital', 'Dr. Tasnim Khanom', NULL, NULL, 'MBBS, FCPS', 'Retina-Vitreous (IIEI)', NULL),
(33, 'Bangladesh Eye Hospital', 'Dr. Shafiqur Rahman', NULL, NULL, 'MBBS, DO', 'Consultant Vitreo- Retina', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor6`
--

CREATE TABLE `doctor6` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor6`
--

INSERT INTO `doctor6` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Central Hospital', 'Prof. Dr Maliha Rashid', NULL, NULL, 'MBBS(Dhaka), FCPS (Gyane) ', 'Gynecology Department', 'Closed on Friday & Govt. Holiday [ 4.00PM-10.00PM ]'),
(2, 'Central Hospital', 'Prof. Sehereen F. Siddiquqa', NULL, NULL, 'MBBS, FCPS Specialist in Gyane & Obstetrics', 'Gynecology Department', 'Closed on Friday & Govt. Holiday. [ 5.00PM-9.00PM ]\r\n'),
(3, 'Central Hospital', 'Prof. Farhane Dewan', NULL, NULL, 'MBBS, FCPS ', 'Gynecology Department', 'Closed on Friday, Tuesday & Thursday [ 4.00PM-10.00PM ]'),
(4, 'Central Hospital', 'Prof. Dr. Sabera Khatun', NULL, NULL, 'MBBS(Dhaka), FCPS(Obs & Gynae), FICS ', 'Gynecology Department', 'Closed on Friday & Govt. Holiday [ 6.00PM-8.00PM ]'),
(5, 'Central Hospital', 'Prof. Dr. Sabera Khatun', NULL, NULL, 'MBBS(Dhaka), FCPS(Obs & Gynae), FICS', ' Gynecology Department', 'Closed on Friday & Govt. Holiday [ 6.00PM-8.00PM ]'),
(6, 'Central Hospital', 'Dr. Romela Mirza', NULL, NULL, 'MBBS, DGO Obstetrician & Gynaecologist', 'Gynecology Department', 'Everyday  [ 10.00 AM-12.30PM ]'),
(7, 'Central Hospital', 'Dr. Songjukta Saha', '', NULL, 'MBBS, MS (Obs & Gynae)', 'Gynecology Department', 'Closed on Friday [ 6.30PM-9.30PM ]'),
(8, 'Central Hospital', 'Dr. Abida Sultana', NULL, NULL, 'MBBS, FCPS,MS(Obs & Gynae) Consultant Gynaecologinst, Obstetician Specialist & Surgeon.', 'Gynecology Department', 'Closed on Sat,Sun,Tue & Thu[ 6.00-8.00PM On Friday 10.00AM-11.00AM & 6.00PM-8.00PM]'),
(9, 'Central Hospital', 'Dr. Satara Binta Quasem', NULL, NULL, 'MBBS, DGO, MS(Gyane) FCPS (Gyane),Gynaecologinst, Obstetician Specialist & Surgeon', 'Gynecology Department', 'Not mentioned [ 4.00PM-10.00PM ]'),
(10, 'Central Hospital', 'Prof. Sameena Chowdhury', NULL, NULL, 'MBBS,MCPS,FCPS,FICS,FICMCH,DRH(UK),Gynaecologinst & Obstetician. Obstetician Gynaecologinst.', 'Gynecology Department', 'Except Friday [ 5.00PM-7.00PM ]'),
(11, 'Central Hospital', 'Dr. Anjuman Ara Rita', NULL, NULL, 'MBBS. FCPS (Obs & Gyane) Consultant (Gynae) Gynaecologinst, Obstetician Specialist and Surgeon ', 'Gynecology Department', 'Closed on Friday. [ 7.30PM-9.30PM ]'),
(13, 'Central Hospital', 'Dr. Laila Anjumanbanu (Megla)', NULL, NULL, 'MBBS, FCPS', 'Gynecology Department', 'Closed on Friday, Saturday, Monday & Thursday. [6.00PM-8.00PM]'),
(14, 'Central Hospital', 'Dr. Hasna Hena pervin', NULL, NULL, 'MBBS, FCPS (Gynae & Obs) Obs & Gynaecology Specialist & Surgeon ', 'Gynecology Department', 'Everyday  [ 7.00PM-9.00PM ]'),
(15, 'Central Hospital', 'Prof. Dr. M. R. Khan', NULL, NULL, 'ational Professor,MBBS(Cal),DTM &H(Edin) DCH(Lond),FCPS,FRCP(Edin).', 'Pediatrics Department', ' Tuesday [ 2:00 pm to 5:00 pm ]'),
(16, 'Central Hospital', 'Prof. Dr. Khan Nizamuddin', NULL, NULL, 'MBBS, FCPS, Prof of Paediatrics', 'Pediatrics Department', 'Monday to Thursday [ 6:15 pm to 9:00 pm ]\r\n'),
(17, 'Central Hospital', 'Dr. A. F. M Salim', NULL, NULL, 'MD, FCPS, PhD(London) Paediatrics & Child Specialist.', 'Pediatrics Department', 'Closed on Tuesday, Friday & Govt. Holiday. [ 5.30PM-7.30PM ]'),
(18, 'Central Hospital', 'Dr. ABM Sahidul Alam', NULL, NULL, 'MBBS, MCPS, DCH, FCPS Child Specialist', 'Pediatrics Department', ' Everyday  [ 5.00PM-9.00PM ]'),
(19, 'Central Hospital', 'Prof. Dr. Md. Mizanur Rahman', NULL, '01733 576660', 'MBBS, FCPS Child Neurologist', 'Pediatrics Department', '[ 4.00PM-10.00PM ] (serial at 4.00PM -4.30 Pm )'),
(20, 'Central Hospital', 'Dr. M. A. Mannan', NULL, NULL, 'MBBS,MD(Paed),FCPS(Paed),Neonatology.', 'Pediatrics Department', 'Saturday to Thursday [ 3:00 pm to 5:00 pm ]'),
(21, 'Central Hospital', 'Central Hospital', NULL, NULL, 'MBBS, MRCP, DCH. Child Health Specialist.', 'Central Hospital', 'Saturday to Thursday [ 6:00 pm to 9:00 pm ]'),
(22, 'Central Hospital', 'Prof. Dr. Sahin Akther', NULL, NULL, 'MBBS, MD Child Neurologist & Specialist', 'Pediatrics Department', 'Closed on Tuesday, Friday & Govt. Holiday. [ 5.00PM-9.00PM ]\r\n'),
(23, 'Central Hospital', 'Dr. Major Nurun Fatema', NULL, NULL, 'MBBS,FCPS(Paediatric),paediatric Cardiologist,Paediatricial and Intensivist.', 'Pediatrics Department', 'Saturday to Thursday [ 6:15 pm to 8:15pm ]'),
(24, 'Central Hospital', 'Dr. Sujit Kumar Roy', NULL, NULL, 'MBBS. DCH', 'Pediatrics Department', 'Saturday, Sunday, Monday, Tuesday & Thursday [ 05:00 pm to 8:00 pm ]'),
(25, 'Central Hospital', 'Prof. Dr. Shafiqul Hoque', NULL, NULL, 'MBBS, FCPS, FICS, FACS (USA),Paed. Surg. (Japan) Paediatric Surgery.', 'Pediatrics Department', 'except Monday, Thursday & Holidays. [ 7:00 PM to 8:00 PM ]'),
(26, 'Central Hospital', 'Dr. Arifur Rahman', NULL, NULL, 'MBBS, MS Paediatrics Surgeon.', 'Pediatrics Department', 'Saturday to Thursday [ 6.00 PM to 8:00 PM ]'),
(27, 'Central Hospital', 'Dr. Sajal Majumdar', NULL, NULL, 'MBBS MS (Paed Surgery)', 'Pediatrics Department', 'except Friday and Govt. Holidays [ 7PM to 9 PM ]\r\n'),
(28, 'Central Hospital', 'Prof. Dr. Mohd. Zahid Hussain', NULL, NULL, 'MBBS, FCPS(Paediatrics), MD(Paediatrics), MD (Cardiology)', 'Pediatrics Department', 'Closed on Friday [ 4.00PM-6.00PM ]'),
(29, 'Central Hospital', 'Prof. Dr. A. S. M Bazlul Karim', NULL, NULL, 'MBBS, FCPS', 'Pediatrics Department', 'Everyday  [ 4.30PM-6.30PM ]'),
(30, 'Central Hospital', 'Dr. M. S Kabir', NULL, NULL, 'MBBS, DCH (RCP & S, Ireland) Child Specialist & Neonatologist Consultant', 'Neonatal ICU Department', 'Closed on Friday [ 6.00PM-8.30PM ]'),
(31, 'Central Hospital', 'Dr. Sakhawat Alam', NULL, NULL, 'MBBS,FCPS (Neonatologist) Neonatologist & Child Specialist.', 'Neonatal ICU Department', 'Closed on Friday [ 7.00PM-9.00PM ]'),
(32, 'Central Hospital', 'PROF. DR. MD SHAFIQUL ALAM', NULL, NULL, 'FCPS. (EYE). MS (EYE) DO. MBBS (DU) MAMS (Vienna), AFACA (New York)', 'Eye, Contact Lens. Phaco surgery & Glaucoma Specialist', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor7`
--

CREATE TABLE `doctor7` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor7`
--

INSERT INTO `doctor7` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Samorita Hospital', 'Prof Dr. S.M. Khorshed Mazumder', NULL, NULL, 'M.B.B.S. , F.C.P.S. , MS, F.R.C.S', 'ENT & Head – Neck specialist surgeon', NULL),
(2, 'Samorita Hospital', 'Prof. Dr. Kamal Sayeed Ahmed Chowdhury', NULL, NULL, 'M.B.B.S. , F.C.P.S. , M.A.C.P.', 'Specialist in Medicine', NULL),
(3, 'Samorita Hospital', 'DR. P.K. Saha', NULL, NULL, 'M.B.B.S.(Rajshahi Medical College), M.S.(BSMMU), FMAS, DMIS', 'experience in laparoscopic surgery', NULL),
(4, 'Samorita Hospital', 'Prof. Dr. Md. Margub Hossain', NULL, NULL, 'MBBS (Dhaka Medical College), FCPS , BCPS, MHPEd (University of New South Wales, Sydney)', 'General and Laporoscopic surgery', NULL),
(5, 'Samorita Hospital', 'Dr. Mostaque Hossain', NULL, NULL, 'MBBS (Rajshahi Medical College), MD (Internal Medicine)', 'Internal Medicine', NULL),
(6, 'Samorita Hospital', 'Dr. A.T.M. Khaliquzzaman', NULL, NULL, 'MBBS (Dhaka Medical College), D.ORTH (AUST), F.A.O (SWISS)', 'Trauma and Orthopaedics', NULL),
(7, 'Samorita Hospital', 'Dr. Parveen Akther', NULL, NULL, 'MBBS (DMC), DCH (DU), MCPS (BCPS)', 'Child Specialist and Neonatologist', NULL),
(8, 'Samorita Hospital', 'Dr. Mehruba Alam Ananna', NULL, NULL, NULL, 'Medicine, Diabetology, Nephrology', NULL),
(9, 'Samorita Hospital', 'Prof. Dr. Saleha Begum Chowdhury', NULL, NULL, 'MBBS (Chittagong Medical college), FCPS.', 'specialist in gynaecology & obstetrics', NULL),
(10, 'Samorita Hospital', 'Dr. Nargis Murshida Banu', NULL, NULL, 'MBBS (Mymensigh Medical College), MCPS (OBS and Gynae), DGO (OBS and Gynae)', 'Gynae Obstetrics', NULL),
(11, 'Samorita Hospital', 'Dr. Md. Kamrul Alam', NULL, NULL, 'MBBS , MS', NULL, NULL),
(12, 'Samorita Hospital', 'Professor Dr. Md. Mohsen Chowdhury', NULL, NULL, NULL, 'Hepatobiliary Pancreatic Surgeon', NULL),
(13, 'Samorita Hospital', 'PROF. SALIMUR RAHMAN', NULL, NULL, 'Hepatology ', 'Internal Medicine', NULL),
(14, 'Samorita Hospital', 'PROF. MD. ABUL KALAM', NULL, NULL, 'MBBS, FCPS, MD', 'Specializes in the field of Plastic  surgery', NULL),
(23, 'Samorita Hospital', 'Dr. A.K.M. Zahid Hossain', NULL, NULL, 'MBBS (Sylhet Medical College), MS. (Paediatric Surgery)', 'Paediatric surgery and Neonatal Surgery', NULL),
(24, 'Samorita Hospital', 'Dr. Md. Abrar Kaiser', NULL, NULL, NULL, 'consultant Cardiology', NULL),
(25, 'Samorita Hospital', 'Dr. S.A.M. Golam Kibria', NULL, NULL, 'MBBS (Sylhet Medical College), FCPS (Surgery), FCPS (Urology) from Pakistan', NULL, NULL),
(26, 'Samorita Hospital', 'Prof. (Dr.) Md. Mahbubur Rahman', NULL, NULL, 'MBBS, FCPS, FACP', 'Specialist in haemato- Oncology', NULL),
(27, 'Samorita Hospital', 'Dr. F.H. Chowdhury', NULL, NULL, 'MBBS (SSMC), FCPS(Surgery), MS (Neurosurgery)', 'Consultant neurosurgery', NULL),
(28, 'Samorita Hospital', 'DR. MD. Moajjam Hossain Talukder', NULL, NULL, 'M.B.B.S. , MS ( Neurosurgery)', 'neuro surgeon & spinal surgeon', NULL),
(29, 'Samorita Hospital', 'Dr. Supratim Howlader', NULL, NULL, 'M.B.B.S. , MS ( Pediatric Surgery)', 'Specialist in Pediatric Surgery', NULL),
(30, 'Samorita Hospital', 'Dr. Md. Jamal Uddin', NULL, NULL, 'MBBS (Mymensingh Medical College)', 'CEO in the Dialysis', NULL),
(31, 'Samorita Hospital', 'Dr. Md. Zonaid Rahim', NULL, NULL, 'MBBS (Rangpur Medical College), DLO, Post graduate degree in Audiology.', 'consultant Ear, Nose and Throat (ENT)', NULL),
(32, 'Samorita Hospital', 'Dr. Md. Zonaid Rahim', NULL, NULL, 'MBBS (Rangpur Medical College), DLO, Post graduate degree in Audiology.', 'consultant Ear, Nose and Throat (ENT)', NULL),
(33, 'Samorita Hospital', 'Dr. Md. Mafizur Rahman', NULL, NULL, 'MBBS (Chittagong Medical College), MD (Dhaka University)', 'Oncology', NULL),
(34, 'Samorita Hospital', 'Prof. Dr. Sarwar Alam', NULL, NULL, 'MBBS (Rangpur Medical College), DIH (NIPSOM), MPhil (Radiotherapy)', 'consultant of Oncology', NULL),
(35, 'Samorita Hospital', 'Dr. Syed Khalid Hasan', NULL, NULL, 'MB.B.S. Institute of Applied Health Sciences CTG', 'Laparoscopic and Colorectal Surgeon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor8`
--

CREATE TABLE `doctor8` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor8`
--

INSERT INTO `doctor8` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Harun Eye Foundation Hospital', 'Prof. Dr. Sheikh M. A. Mannaf', NULL, '9613930-34, 9663183, 01712111871, 01812158618', 'MBBS, FCPS (Ophth)', 'Phaco, Medical Retina & Glaucoma', 'Saturday to Thursday 5:00PM to 9:00PM'),
(2, 'Harun Eye Foundation Hospital', 'Dr. Md. Kamrul Hasan', NULL, NULL, 'MBBS, MS, DO', 'Phaco, Laser & retina Specialist', NULL),
(3, 'Harun Eye Foundation Hospital', 'Dr. Syed A. Hasan', NULL, NULL, 'MBBS, DO, FCPS, FICO', 'Cornea, Phaco and Lasik Surgeon', NULL),
(4, 'Harun Eye Foundation Hospital', 'Dr. Kibria Alam Kabir', NULL, NULL, 'MBBS, DO', 'Eye Specialist & Surgeon', NULL),
(5, 'Harun Eye Foundation Hospital', 'Dr. Khandoker Ziaul Islam (Zia)', NULL, NULL, 'MBBS, DO, MS', 'Eye Specialist & Surgeon', NULL),
(6, 'Harun Eye Foundation Hospital', 'Md. Abdur Rakib Tushar', NULL, NULL, 'MBBS, DO, FCPS', 'Eye Specialist & Surgeon', NULL),
(7, 'Harun Eye Foundation Hospital', 'Dr. Md. Shawkat Kabir', NULL, NULL, 'MBBS, DO, MS', 'Eye Specialist & Surgeon', NULL),
(8, 'Harun Eye Foundation Hospital', 'Dr. Md. Bazlul Bari Bhuiya', NULL, NULL, 'MBBS, DO, FCPS', 'Laser DCR & Phaco Surgeon', NULL),
(9, 'Harun Eye Foundation Hospital', 'Dr. Quamrul Islam Khan', NULL, NULL, 'MBBS, MS, ICO', 'Glaucoma Specialist', NULL),
(10, 'Harun Eye Foundation Hospital', 'Dr. Md. Shaheen Reza Chowdhury', NULL, NULL, 'MBBS, DO, FCPS', 'Cornea', NULL),
(11, 'Harun Eye Foundation Hospital', 'Saifuddin Ahmed Pintu', NULL, NULL, 'MBBS, DO, MCPS, MS', 'Vetreo-retinal\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor9`
--

CREATE TABLE `doctor9` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor9`
--

INSERT INTO `doctor9` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. N K Datta', NULL, '01788 786380', 'MBBS, D-Orth, MS (Ortho)', 'Bone pairs and crippled diseases specialist', '6PM- 9PM (Friday Off)'),
(2, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. A.K.M Masud', '', '01747-219974', 'MBBS, MS (Ortho)', 'Bone breaking pairs, rheumatic diseases and litter specialists', '6.30PM-9.30PM'),
(3, 'Anwer Khan Modern Hospital Limited', 'Dr. Md. Matiur Rahman', NULL, '01913597059', NULL, 'Rheumatologist', ' serial(8am-9am)'),
(4, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Manisha Banerjee', NULL, '01725 588547', 'MD (Paediatric), MD(Neonatology)', NULL, '5PM-8PM (Monday, Friday & Govt. Holiday arte closed)'),
(5, 'Anwer Khan Modern Hospital Limited', 'Dr. Selina Khanum', NULL, NULL, NULL, 'Pediatricians, Child Specialists.', NULL),
(6, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Md Abdul Wohab Khan', NULL, NULL, NULL, 'Skin And Vd Specialists', NULL),
(7, 'Anwer Khan Modern Hospital Limited', 'Dr. Mohammad Yakub Ali', NULL, NULL, NULL, 'Spine Surgery', NULL),
(8, 'Anwer Khan Modern Hospital Limited', 'Professor Dr. S M Mahbub Alam', NULL, NULL, NULL, 'Urologists.', NULL),
(9, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Md Ekhlasur Rahman', NULL, NULL, NULL, 'Cancer Specialists', NULL),
(10, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Md. Siarajul Islam', NULL, NULL, NULL, 'Cardiologists', NULL),
(11, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. M M A Bari', NULL, NULL, NULL, 'Medicine Specialists', NULL),
(12, NULL, 'Prof. Dr. Syed Ali Ahsan', NULL, '01775 540003', 'MBBS, MD(Cardiology), FICC(India), FACC(USA)', 'Cardiologists', '6PM-9PM ( Thursday and Friday closed)'),
(13, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Fazlur Rahman', NULL, NULL, NULL, 'Cardiologists', NULL),
(14, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Md Saleh Uddin', NULL, NULL, NULL, 'Child Specialists', NULL),
(15, 'Anwer Khan Modern Hospital Limited', 'Prof.(Dr.) Syed Khairul Amin', NULL, '01916 957664', 'DCH (Glasgow), MRCP(UK), FRCP (Edin) FRCP (Glasg)', 'Paediatrics', NULL),
(16, 'Anwer Khan Modern Hospital Limited', 'Dr. Saika Shaheed', NULL, NULL, NULL, 'Gynecologist/ Obstetrician', NULL),
(17, 'Anwer Khan Modern Hospital Limited', 'Dr. Nausher Alam', NULL, NULL, NULL, 'Neurologists/ Pain Specialists', NULL),
(18, 'Anwer Khan Modern Hospital Limited', 'Dr. Sarwar Alam', NULL, NULL, NULL, 'Eye Specialists', NULL),
(19, 'Anwer Khan Modern Hospital Limited', 'Dr. S.m. Khorshed Alam Majumder', NULL, NULL, NULL, 'Ent', NULL),
(20, 'Anwer Khan Modern Hospital Limited', 'Dr. Suha Jesmin', NULL, NULL, NULL, 'Medicine Specialists', NULL),
(21, 'Anwer Khan Modern Hospital Limited', 'Dr. Maruf Siddiqui', NULL, NULL, NULL, 'Infertility/ Reproduction Specialists', NULL),
(22, 'Anwer Khan Modern Hospital Limited', 'Dr. Farzana Deeba', NULL, NULL, NULL, 'Gynecologist/ Obstetrician', NULL),
(23, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Sehereen F. Siddiqua', NULL, '01863 333483,01705 407477,01705 407478', 'MBBS, FCPS', 'Specialist in gynae & Obs. and Laparoscopic Surgeon', '11AM-1PM,(Sunday, Monday & Wednesday) and 4PM-8PM (Saturday to Thursday) serial (9AM-12PM)  '),
(24, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Shisir K. Dutta', NULL, NULL, NULL, 'Medicine Specialists', NULL),
(25, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Hasina Sultana', NULL, NULL, NULL, 'Gynecologist/ Obstetrician', NULL),
(26, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Sehereen F. Siddiqua', NULL, '01863 333483, 01705 407477, 01705 407478', 'MBBS, FCPS', 'Specialist in gynae & Obs. and Laparoscopic Surgeon', '11AM-1PM,(Sunday, Monday & Wednesday) and 4PM-8PM (Saturday to Thursday) serial (9AM-12PM)'),
(27, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Md Rashidul Hassan', NULL, '01552 389896', 'MBBS, MCPS, FCPS, MS( Chest)', 'Medicine Specialists, Asthma/ Chest Specialist', '4.30PM-10.00PM (Friday off)'),
(28, 'Anwer Khan Modern Hospital Limited', 'Dr. Md. Faruque', NULL, NULL, NULL, 'Cardiologists.', '5PM-9PM (Thursday and Friday closed)'),
(29, 'Anwer Khan Modern Hospital Limited', 'PROFESSOR (DR.) MD. MAHTAB UDDIN HASSAN', NULL, '01757-138425', 'MBBS. MCPS (Medicine), FCPS (Medicine)MRCP (UK), FRCP (Edin, UK)', 'Medicine Specialist', '11 AM-1PM & 6PM - 9PM'),
(30, 'Anwer Khan Modern Hospital Limited', 'PROF. DR. MOHAMMAD AHSANUL HABIB', NULL, '0167 592 4222', 'MBBS, FCPS (Psychiatry)', 'Department of Psychiatry', '10 AM to 12 AM & 6 PM to 9 PM (Thursday and Friday are Closed)'),
(31, 'Anwer Khan Modern Hospital Limited', 'Dr. S-K.A. Razzaque', NULL, '01552314586', 'MBBS, FCPS (PAED)', 'Paediatric Cardiologist', '7:00 PM - 10:00PM (Saturday- Thursday) Room-256'),
(32, 'Anwer Khan Modern Hospital Limited', 'Professor Syed Ali Ahsan', NULL, '01775 540003', 'MBBS, MD (Cardiology)FICC (India), FACC (USA)', 'Clinical & Interventional Cardiologist', '6:00PM to 9:00PM Saturday- Wednesday Room-318'),
(33, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. Fazlur Rahman', NULL, '01718 103356', 'MBBS (Dhaka), MCPS (Medicine), D-Card (DU) MD (Cardiology), FACC (USA)', 'Interventional Cardiology', '6.00 PM- 9.00 PM Saturday- Thursday Room-426'),
(34, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. H. I. Lutfur Rahman Khan', NULL, '+88 02 9670295, +88 028613883,+88 028616074', 'MBBS, D.Card, MD (Cardiology), FRCP (Edin), FACC (USA)', 'Clinical & Interventional Cardiologist', '10.00 AM - 1.00 PM Sunday- Thursday  Room-458'),
(35, 'Anwer Khan Modern Hospital Limited', 'PROF. (DR.) MD. FARUQUE', NULL, '88 02 9670295, +88 028613883,  +88 028616074', 'MBBS, MD (Cardiology), FACC, WHO Fellow (USA)', 'Clinical & Intervantional Cardiologist', '10.00 AM - 2.00 PM & 6.00 PM - 9.00 PM Saturday- Wednesday Room-233'),
(36, 'Anwer Khan Modern Hospital Limited', 'Prof. Dr. K.M.H.S. Sirajul Haque', NULL, '+88 02 9670295, +88 028613883, +88 028616074\r\n', 'MBBS, FCPS [BD), FCPS (Pak), FRCP (Edin) FACC', 'Clinical Cardiologist', '10.00 AM - 2.00 PM Sunday- Thursday  Room-350');

-- --------------------------------------------------------

--
-- Table structure for table `doctor10`
--

CREATE TABLE `doctor10` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor11`
--

CREATE TABLE `doctor11` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor12`
--

CREATE TABLE `doctor12` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor13`
--

CREATE TABLE `doctor13` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor14`
--

CREATE TABLE `doctor14` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `speciality` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `degree` varchar(150) DEFAULT NULL,
  `speciality` varchar(300) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `hospital_name`, `name`, `email`, `phone`, `degree`, `speciality`, `time`) VALUES
(1, 'Ahsania Mission General Cancer Hospital ', 'Prof. Dr. A. M. M. Shariful Alam', NULL, NULL, 'MBBS, DIH, FCPS, FICS (USA)', 'Senior Consultant & Head of Clinical Oncology and Pain & Palliative Care, Clinical Oncology, Pain & Palliative Care, Radiation Oncology', 'Saturday to Thursday, 9am to 3pm'),
(2, 'Ahsania Mission General Cancer Hospital ', 'Dr. Samina Jafar Nahin', NULL, NULL, 'MBBS, DMUD (SIHS), ADMS (Canada), Trained in TVS', 'Consultant, Sonology', 'Saturday to Thursday, 9am to 1pm'),
(3, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. K. B. M. Abdur Rahman', NULL, NULL, 'MBBS, IAEA Fellow, Nuclear Medicine (Australia)', 'Consultant,Nuclear Medicine,', 'Saturday to Thursday, 9am to 2pm'),
(4, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. Ehasan Mahmud', NULL, NULL, 'MBBS, PHD, FICS, Prof. of Neurosurgery', 'Senior Consultant, Neurosurgery', 'Sunday, Tuesday & Thursday, 9am to 12pm'),
(5, 'Ahsania Mission General Cancer Hospital', 'Dr. Md. Nazmul Haque Sarker', NULL, NULL, 'MBBS, DDD, MCPS', 'Consultant, Skin, Allergy & Cosmetic Surgery, Dermatology', 'Sunday, Tuesday & Thursday, 3pm to 5pm'),
(6, 'Ahsania Mission General Cancer Hospital', 'Dr. Md. Motiur Rahman', NULL, NULL, 'MBBS, MS (Ortho)', 'Consultant Ortho & Bone, Joint & Spine Surgeo, Orthopedics Oncology', 'Saturday, Monday & Wednesday, 3pm to 5pm'),
(7, 'Ahsania Mission General Cancer Hospital', 'Dr. Farhana Afrin Ferdausi', NULL, NULL, 'MBBS (DU)', 'Registrar, Medicine', 'Saturday to Thursday, 9am to 5pm'),
(8, 'Ahsania Mission General Cancer Hospital', 'Dr. Syed Mohammad Ali Romel', NULL, NULL, 'MBBS, MCPS (Medicine), FCPS (Medicine), MD (Cardiology)', 'Consultant, Cardiology, Medicine', 'Sat to Wed, 3pm to 7pm & Thu 9am to 2 pm'),
(9, 'Ahsania Mission General Cancer Hospital', 'Dr. Farhana Ahmed', NULL, NULL, 'MBBS, BCS, MCPS, FCPS, Special Training in Gynae Oncology', 'Consultant, Gynae & Obs', 'Saturday to Wednesday, 3pm to 7pm'),
(10, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. Fauzia Sobhan', NULL, NULL, 'MBBS, FCPS, DGO (Gynae Obs)', 'Senior Consultant, Gynae Oncology, Gynae & Obs.', 'Sunday, Tuesday & Thursday, 9am to 3pm'),
(11, 'Ahsania Mission General Cancer Hospital', 'Dr. Md. Ismail Khan', NULL, NULL, 'MBBS', 'Resident Surgeon, Surgical Oncology', 'Saturday to Thursday, 9am to 5pm'),
(12, 'Ahsania Mission General Cancer Hospital', 'Dr. Md. Abu Kawsar Sarker', NULL, NULL, 'MBBS (Dhaka), FCPS (Surgery), MS (Surgical Oncology), CCD (Dirdem) Special Traning in Surgical Oncology (India, Austria)', 'Consultant, Surgical Oncology', 'Saturday to Thursday, 3pm to 6pm'),
(13, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. A. F. M. Anwar Hossain', NULL, NULL, 'MBBS, MS (Ortho Surgery), FCPS (Surgery), Prof. of Surgical Oncology, NICRH', 'Senior Consultant, Surgical Oncology', 'Sunday, Tuesday & Thursday, 4pm to 7pm'),
(14, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. A. K. Mostaque', NULL, NULL, 'MBBS, FCPS (Surgery), MS (Pediatric Surgery), General, Laparoscopic, Pediatric & Oncosurgery', 'Senior Consultant, Surgical Oncology', 'Saturday to Thursday, 9am to 5pm'),
(15, 'Ahsania Mission General Cancer Hospital', 'Dr. K.M Babor', NULL, NULL, 'MBBS, MSC (Medicine, London), in Palliative Medicine (TMC, India), Pain and Palliative Medicine, Tata Medical Center (Kolkata, India)', 'RP, Pain & Palliative Care', 'Saturday to Thursday, 9am to 5pm'),
(16, 'Ahsania Mission General Cancer Hospital', 'Dr Md Shah Jalalur Rahman Shahi', NULL, NULL, 'MBBS (DMC) M.Phil (Immunology)', 'Registrar, Radiation Oncology', 'Saturday to Thursday, 9am to 5pm'),
(17, 'Ahsania Mission General Cancer Hospital', 'Dr. Md. Nurunnabi (Roney)', NULL, NULL, 'MBBS, FCPS (Part-II)', 'Senior Registrar, Radiation Oncology', 'Saturday to Thursday, 9am to 5pm'),
(18, 'Ahsania Mission General Cancer Hospital', 'Dr. Shariful Islam Johnny', NULL, NULL, 'MBBS, FCPS, (Radiation Oncology)', 'Junior Consultant, Radiation Oncology', 'Saturday to Thursday, 4pm to 10pm'),
(19, 'Ahsania Mission General Cancer Hospital', 'Major Dr. Nazat Sultana', NULL, NULL, 'MBBS, FCPS (Radiation Oncology), Combined Military Hospital (CMH, Dhaka)', 'Cancer Specialist, Radiation Oncology', 'Saturday, Monday & Wednesday, 5pm to 7pm'),
(20, 'Ahsania Mission General Cancer Hospital', 'Maj. Dr. S.M Rokonuzzaman', NULL, NULL, 'MBBS, FCPS (Radiation Oncology', 'Cancer specialist, Radiation Oncology', 'Saturday, Monday & Wednesday, 5pm to 9pm'),
(21, 'Ahsania Mission General Cancer Hospital', 'Dr. MD. Masudul Hasan Arup', NULL, NULL, 'MBBS, FCPS (Radiotherapy)', 'Cancer Specialist, Radiation Oncology', 'Saturday to Thursday, 4pm to 9pm'),
(22, 'Ahsania Mission General Cancer Hospital', 'Dr. Sadia Sharmin', NULL, NULL, 'MBBS (DMC), FCPS (Radiotherapy), Asst. Prof. Dept. of Oncology (BSMMU)', 'Cancer Specialist, Radiation Oncology', 'Tuesday, 4pm to 8pm'),
(23, 'Ahsania Mission General Cancer Hospital', 'Dr. Rowshan Ara Begum', NULL, NULL, 'MBBS, MPH, DMU, M.Phill, FCPS, Trained in Cancer Treatment for Thailand, Singapur & Japan', 'Cancer Specialist, Radiation Oncology', 'Saturday, Monday & Wednesday, 5pm to 9pm'),
(24, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. Qamruzzaman Chowdhury', NULL, NULL, 'MBBS, FCPS, DMRT', 'Medical Services and Head of Radiation Oncology, Radiation Oncology', 'Saturday to Thursday, 9am to 5pm'),
(25, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. Ahsan Shamim', NULL, NULL, 'MBBS (DMC), DMRT (DU), Viena, Austria, Ex- Prof. & Head, Radiation Oncology, Tumor Specialist', 'Senior Consultant, Radiation Oncology', 'Saturday to Thursday, 9am to 3pm'),
(26, 'Ahsania Mission General Cancer Hospital', 'Prof. Dr. Farhad Haleem (Donar)', NULL, NULL, 'MBBS, M.Phill (Rediotherapy), IAEA Fellow (Thailand, Japan)', 'Senior Consultant, Radiation Oncology', 'Sunday, Tuesday & Thursday, 2pm to 5pm'),
(27, 'Ahsania Mission General Cancer Hospital', 'Col. Dr. Md. Yousuf Ali', NULL, NULL, 'MBBS, FCPS, MACR (USA), Head of the Dept. (Radiation Oncology)', 'Senior Consultant Oncologist, Radiation Oncology', 'Saturday to Thursday, 5pm to 9pm');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service`, `Address`, `phone`) VALUES
(0, 'Haque Ambulance Service', 'Address: 2/F, Avenue 1, Mirpur 2, Dhaka 1216\r\n', ' 01764-880099'),
(1, 'Zoom Ambulance Service', 'HOUSE # 2/4, TOLARBAG, MIRPUR 1, DHAKA 1216', '01711306557'),
(2, 'khaled rent a car Ambulance Service', 'Gulshan,Motijheel', ' 01933246577');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance1`
--
ALTER TABLE `ambulance1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance2`
--
ALTER TABLE `ambulance2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance3`
--
ALTER TABLE `ambulance3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance4`
--
ALTER TABLE `ambulance4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance5`
--
ALTER TABLE `ambulance5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance6`
--
ALTER TABLE `ambulance6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance7`
--
ALTER TABLE `ambulance7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance8`
--
ALTER TABLE `ambulance8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance9`
--
ALTER TABLE `ambulance9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance10`
--
ALTER TABLE `ambulance10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance11`
--
ALTER TABLE `ambulance11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance12`
--
ALTER TABLE `ambulance12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance13`
--
ALTER TABLE `ambulance13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance14`
--
ALTER TABLE `ambulance14`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_services`
--
ALTER TABLE `a_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor1`
--
ALTER TABLE `doctor1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor2`
--
ALTER TABLE `doctor2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor3`
--
ALTER TABLE `doctor3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor4`
--
ALTER TABLE `doctor4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor5`
--
ALTER TABLE `doctor5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor6`
--
ALTER TABLE `doctor6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor7`
--
ALTER TABLE `doctor7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor8`
--
ALTER TABLE `doctor8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor9`
--
ALTER TABLE `doctor9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor10`
--
ALTER TABLE `doctor10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor11`
--
ALTER TABLE `doctor11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor12`
--
ALTER TABLE `doctor12`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor13`
--
ALTER TABLE `doctor13`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor14`
--
ALTER TABLE `doctor14`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambulance1`
--
ALTER TABLE `ambulance1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance2`
--
ALTER TABLE `ambulance2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance3`
--
ALTER TABLE `ambulance3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance4`
--
ALTER TABLE `ambulance4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance5`
--
ALTER TABLE `ambulance5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance6`
--
ALTER TABLE `ambulance6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance7`
--
ALTER TABLE `ambulance7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance8`
--
ALTER TABLE `ambulance8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance9`
--
ALTER TABLE `ambulance9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance10`
--
ALTER TABLE `ambulance10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance11`
--
ALTER TABLE `ambulance11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance12`
--
ALTER TABLE `ambulance12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance13`
--
ALTER TABLE `ambulance13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance14`
--
ALTER TABLE `ambulance14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `a_services`
--
ALTER TABLE `a_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctor1`
--
ALTER TABLE `doctor1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `doctor2`
--
ALTER TABLE `doctor2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `doctor3`
--
ALTER TABLE `doctor3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `doctor4`
--
ALTER TABLE `doctor4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `doctor5`
--
ALTER TABLE `doctor5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `doctor6`
--
ALTER TABLE `doctor6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `doctor7`
--
ALTER TABLE `doctor7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `doctor8`
--
ALTER TABLE `doctor8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `doctor9`
--
ALTER TABLE `doctor9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `doctor10`
--
ALTER TABLE `doctor10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctor11`
--
ALTER TABLE `doctor11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctor12`
--
ALTER TABLE `doctor12`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctor13`
--
ALTER TABLE `doctor13`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctor14`
--
ALTER TABLE `doctor14`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
