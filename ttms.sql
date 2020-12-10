-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 06:06 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` char(3) NOT NULL,
  `class_name` char(25) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `strength`) VALUES
('A', 'XXXX', 1),
('B', 'YYYY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(20) NOT NULL,
  `course_name` char(40) DEFAULT NULL,
  `course_year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_year`) VALUES
('19AVP201', 'AVP', 2),
('19CAD101', 'CAD', 1),
('19CAD111', 'CAD', 1),
('19CHE101', 'Chemistry', 1),
('19CHE111', 'Chemistry', 1),
('19CIR401', 'ITD', 4),
('19CSE101', 'PSAT', 1),
('19CSE102', 'IT', 1),
('19CSE201', 'AdvPro', 2),
('19CSE202', 'DBMS', 2),
('19CSE204', 'OOP', 2),
('19CSE205', 'PR', 2),
('19CSE301', 'Databse Systems', 3),
('19CSE302', 'Operating Systems', 3),
('19CSE303', 'Networking', 3),
('19CSE304', 'Hardware Analysis', 3),
('19CSE305', 'Computer Graphics', 3),
('19CSE401', 'Compiler Design', 4),
('19CSE402', 'Cryptography', 4),
('19CSE403', 'Realtime Systems', 4),
('19ECE111', 'IT', 1),
('19ECE211', 'Digital Systems', 2),
('19ECE212', 'Network Theory', 2),
('19ECE213', 'Programming', 2),
('19ECE214', 'Verilog HDL', 2),
('19ECE215', 'Computer Architecture', 2),
('19ECE311', 'Waves', 3),
('19ECE312', 'DSP', 3),
('19ECE313', 'Control Systems', 3),
('19ECE314', 'Microcontroller', 3),
('19ECE315', 'ES', 3),
('19ECE411', 'Microwave&Antenna', 4),
('19ECE412', 'Wireless Com.', 4),
('19ECE413', 'Operating Systems', 4),
('19ECE414', 'VLSI Design', 4),
('19ECE415', 'Automotive Electronics', 4),
('19ENG101', 'Communication', 1),
('19ENG111', 'Communication', 1),
('19MAT101', 'Maths', 1),
('19MAT111', 'Maths', 1),
('19MAT201', 'Maths', 2),
('19MAT211', 'Probability', 2),
('19MAT301', 'Probability', 3),
('19PHY101', 'Physics', 1),
('19PHY111', 'Physics', 1),
('19SSK211', 'SoftSkills', 2),
('19SSK212', 'Verbal', 2),
('19SSK213', 'Aptitude', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` char(5) NOT NULL,
  `block` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `block`) VALUES
('CSE', 'AB1'),
('ECE', 'AB2');

-- --------------------------------------------------------

--
-- Table structure for table `factime`
--

CREATE TABLE `factime` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(20) DEFAULT NULL,
  `period2` varchar(20) DEFAULT NULL,
  `period3` varchar(20) DEFAULT NULL,
  `period4` varchar(20) DEFAULT NULL,
  `period5` varchar(20) DEFAULT NULL,
  `period6` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime`
--

INSERT INTO `factime` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '', '', '', '', ''),
('TUESDAY', '', '', '', '', '', ''),
('WEDNESDAY', '', '', '[YEAR:2]CSE-B', '', '', '[YEAR:2]CSE-A'),
('THURSDAY', '[YEAR:2]CSE-A', '', '', '', '[YEAR:2]CSE-B', ''),
('FRIDAY', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `factime1`
--

CREATE TABLE `factime1` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime1`
--

INSERT INTO `factime1` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '[YEAR:4]CSE-A', '', '', '', '[YEAR:4]CSE-B', ''),
('TUESDAY', '[YEAR:4]CSE-B', '', '', '', '[YEAR:4]CSE-A', ''),
('WEDNESDAY', '[YEAR:4]CSE-B', '', '', '', '[YEAR:4]CSE-A', ''),
('THURSDAY', '', '', '', '', '', ''),
('FRIDAY', '', '', '[YEAR:4]CSE-A', '', '', '[YEAR:4]CSE-B');

-- --------------------------------------------------------

--
-- Table structure for table `factime2`
--

CREATE TABLE `factime2` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime2`
--

INSERT INTO `factime2` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '', '', '', '', ''),
('TUESDAY', '', '', '', '[YEAR:1]CSE-A', '', '[YEAR:1]CSE-B'),
('WEDNESDAY', '[YEAR:1]CSE-A', '', '', '', '[YEAR:1]CSE-B', ''),
('THURSDAY', '', '', '', '[YEAR:1]CSE-A', '', '[YEAR:1]CSE-B'),
('FRIDAY', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `factime3`
--

CREATE TABLE `factime3` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime3`
--

INSERT INTO `factime3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '', '', '', '', ''),
('TUESDAY', '', '[YEAR:3]CSE-A', '[YEAR:3]CSE-B', '', '', ''),
('WEDNESDAY', '', '[YEAR:3]CSE-B', '', '', '', '[YEAR:3]CSE-A'),
('THURSDAY', '', '', '', '', '', ''),
('FRIDAY', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `factime4`
--

CREATE TABLE `factime4` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime4`
--

INSERT INTO `factime4` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '[YEAR:1]CSE-A', '', '', '', '', '[YEAR:1]CSE-B'),
('TUESDAY', '[YEAR:1]CSE-A', '', '', '', '', '[YEAR:1]CSE-B'),
('WEDNESDAY', '', '[YEAR:1]CSE-B', '', '[YEAR:1]CSE-A', '', ''),
('THURSDAY', '[YEAR:1]CSE-A', '', '', '', '', '[YEAR:1]CSE-B'),
('FRIDAY', '[YEAR:1]CSE-A', '', '', '', '', '[YEAR:1]CSE-B');

-- --------------------------------------------------------

--
-- Table structure for table `factime5`
--

CREATE TABLE `factime5` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime5`
--

INSERT INTO `factime5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '', '', '[YEAR:4]ECE-A', '', '[YEAR:4]ECE-B'),
('TUESDAY', '', '', '', '', '', ''),
('WEDNESDAY', '', '', '', '', '', ''),
('THURSDAY', '', '[YEAR:4]ECE-B', '[YEAR:4]ECE-A', '', '', ''),
('FRIDAY', '[YEAR:4]ECE-A', '', '', '', '[YEAR:4]ECE-B', '');

-- --------------------------------------------------------

--
-- Table structure for table `factime6`
--

CREATE TABLE `factime6` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime6`
--

INSERT INTO `factime6` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '[YEAR:2]ECE-B', '[YEAR:2]ECE-A', '', '', ''),
('TUESDAY', '[YEAR:2]ECE-B', '', '', '', '[YEAR:2]ECE-A', ''),
('WEDNESDAY', '', '[YEAR:2]ECE-A', '', '', '', '[YEAR:2]ECE-B'),
('THURSDAY', '', '[YEAR:2]ECE-A', '', '', '', '[YEAR:2]ECE-B'),
('FRIDAY', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `factime7`
--

CREATE TABLE `factime7` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factime7`
--

INSERT INTO `factime7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', '', '', '[YEAR:3]ECE-B', '', '', '[YEAR:3]ECE-A'),
('TUESDAY', '[YEAR:3]ECE-A', '', '', '', '[YEAR:3]ECE-B', ''),
('WEDNESDAY', '', '', '', '[YEAR:3]ECE-A', '', '[YEAR:3]ECE-B'),
('THURSDAY', '', '', '', '[YEAR:3]ECE-A', '', '[YEAR:3]ECE-B'),
('FRIDAY', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `Year` int(11) DEFAULT NULL,
  `Sec` char(20) DEFAULT NULL,
  `Dept` char(20) DEFAULT NULL,
  `Day` char(20) DEFAULT NULL,
  `Period` char(20) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `T_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `r_id` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`r_id`, `capacity`, `id`) VALUES
('C1A', 60, 0),
('C1B', 60, 1),
('C2A', 60, 2),
('C2B', 60, 3),
('C3A', 60, 4),
('C3B', 60, 5),
('C4A', 60, 6),
('C4B', 60, 7),
('E1A', 60, 8),
('E1B', 60, 9),
('E2A', 60, 10),
('E2B', 60, 11),
('E3A', 60, 12),
('E3B', 60, 13),
('E4A', 60, 14),
('E4B', 60, 15);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` varchar(20) NOT NULL,
  `s_name` char(255) DEFAULT NULL,
  `s_dob` date DEFAULT NULL,
  `s_gender` char(5) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `dept_name` char(5) DEFAULT NULL,
  `class_id` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `s_dob`, `s_gender`, `year`, `dept_name`, `class_id`) VALUES
('cb16301', 'Madonna', '1999-06-13', 'F', 4, 'CSE', 'B'),
('cb16302', 'James', '1999-01-10', 'M', 4, 'CSE', 'A'),
('cb17301', 'Benjamin', '2000-02-15', 'M', 3, 'CSE', 'A'),
('cb17302', 'Lucas', '2000-04-11', 'M', 3, 'CSE', 'B'),
('cb18301', 'Diya', '2001-05-20', 'F', 2, 'CSE', 'A'),
('cb18302', 'Michael', '2001-07-30', 'M', 2, 'CSE', 'B'),
('cb19301', 'Aiden', '2002-10-16', 'M', 1, 'CSE', 'A'),
('cb19302', 'Cook', '2002-09-23', 'M', 1, 'CSE', 'B'),
('cx16301', 'Santiago', '1994-08-17', 'M', 4, 'ECE', 'A'),
('cx16302', 'Ezekiel', '1993-03-27', 'M', 4, 'ECE', 'B'),
('cx17301', 'Cooper', '1996-08-17', 'M', 3, 'ECE', 'A'),
('cx17302', 'Jameson', '1995-03-27', 'M', 3, 'ECE', 'B'),
('cx18301', 'Carson', '1999-08-17', 'M', 2, 'ECE', 'A'),
('cx18302', 'Axel', '1998-03-27', 'M', 2, 'ECE', 'B'),
('cx19301', 'Austin', '2000-08-17', 'M', 1, 'ECE', 'A'),
('cx19302', 'Leonardo', '2001-03-27', 'M', 1, 'ECE', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` varchar(20) NOT NULL,
  `t_name` char(20) DEFAULT NULL,
  `dob1` date DEFAULT NULL,
  `course_id` varchar(20) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `dept_name` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `dob1`, `course_id`, `gender`, `dept_name`) VALUES
('18qa', 'Russell', '1984-03-10', '19ECE411', 'M', 'ECE'),
('18qb', 'Louis', '1983-04-14', '19ECE412', 'M', 'ECE'),
('18qc', 'Marie', '1982-05-12', '19ECE413', 'F', 'ECE'),
('18qd', 'Philip', '1981-06-18', '19ECE414', 'M', 'ECE'),
('18qe', 'Johnny', '1980-07-20', '19ECE415', 'M', 'ECE'),
('18xa', 'Tony', '1976-08-13', '19PHY111', 'M', 'ECE'),
('18xb', '	Sophia', '1977-07-10', '19CHE111', 'F', 'ECE'),
('18xc', 'Oliver', '1978-05-17', '19MAT111', 'M', 'ECE'),
('18xd', 'Ava', '1979-03-12', '19CAD111', 'F', 'ECE'),
('18xe', 'Noah', '1975-01-25', '19ECE111', 'M', 'ECE'),
('18xf', 'Olivia', '1974-09-23', '19ENG111', 'F', 'ECE'),
('18ya', 'Vivaan', '1975-06-12', '19MAT211', 'M', 'ECE'),
('18yb', 'Avyan', '1976-07-18', '19ECE211', 'M', 'ECE'),
('18yc', 'Chloe', '1977-08-19', '19ECE212', 'F', 'ECE'),
('18yd', 'Layla', '1978-09-20', '19ECE213', 'F', 'ECE'),
('18ye', 'Aayansh', '1979-10-21', '19ECE214', 'M', 'ECE'),
('18yf', 'Aarav', '1980-11-22', '19ECE215', 'M', 'ECE'),
('18za', 'Dylan', '1980-09-14', '19ECE311', 'M', 'ECE'),
('18zb', 'Bruce', '1981-08-13', '19ECE312', 'M', 'ECE'),
('18zc', 'Willie', '1982-07-11', '19ECE313', 'M', 'ECE'),
('18zd', 'Gabriel', '1983-06-12', '19ECE314', 'M', 'ECE'),
('18ze', 'Logan', '1984-05-18', '19ECE315', 'M', 'ECE'),
('19qa', 'Carl', '1978-07-07', '19CIR401', 'M', 'CSE'),
('19qb', 'Roger', '1979-08-17', '19CSE401', 'M', 'CSE'),
('19qc', 'Gerald', '1980-09-10', '19CSE402', 'M', 'CSE'),
('19qd', 'Christian', '1981-06-08', '19CSE403', 'M', 'CSE'),
('19xa', 'Mary', '1980-08-27', '19CSE205', 'F', 'CSE'),
('19xb', 'James', '1979-07-26', '19SSK211', 'M', 'CSE'),
('19xc', 'Patricia', '1978-06-25', '19SSK212', 'F', 'CSE'),
('19xd', 'Robert', '1977-05-24', '19SSK213', 'M', 'CSE'),
('19xe', 'Sarah', '1990-08-13', '19AVP201', 'F', 'CSE'),
('19xf', 'David', '1980-09-09', '19MAT201', 'M', 'CSE'),
('19xx', 'Jennifer', '1976-04-23', '19CSE201', 'F', 'CSE'),
('19xy', 'Elizabeth', '1975-03-22', '19CSE202', 'F', 'CSE'),
('19xz', 'Jessica', '1974-02-21', '19CSE204', 'F', 'CSE'),
('19ya', 'Sandra', '1979-08-12', '19PHY101', 'F', 'CSE'),
('19yb', 'Paul', '1980-09-22', '19CHE101', 'M', 'CSE'),
('19yc', 'Ashley', '1981-07-13', '19MAT101', 'F', 'CSE'),
('19yd', 'Andrew', '1982-06-22', '19CAD101', 'M', 'CSE'),
('19ye', 'Dorothy', '1983-05-14', '19ENG101', 'F', 'CSE'),
('19yf', 'Kimberly', '1984-04-23', '19CSE101', 'F', 'CSE'),
('19yg', 'Emily', '1985-02-14', '19CSE102', 'F', 'CSE'),
('19za', 'Douglas', '1980-08-23', '19CSE301', 'M', 'CSE'),
('19zb', 'Lauren', '1981-09-22', '19CSE302', 'F', 'CSE'),
('19zc', 'Peter', '1982-07-21', '19CSE303', 'M', 'CSE'),
('19zd', 'Evelyn', '1983-06-20', '19CSE304', 'F', 'CSE'),
('19ze', 'Olivia', '1984-05-24', '19CSE305', 'F', 'CSE'),
('19zf', 'Walter', '1985-04-27', '19MAT301', 'M', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `day` varchar(255) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'Maths', 'OOP', 'DBMS', 'Aptitude', 'Verbal', 'SoftSkills'),
('TUESDAY', 'OOP', 'Verbal', '', 'AdvPro', 'SoftSkills', 'DBMS'),
('WEDNESDAY', 'AdvPro', 'Maths', 'PR', 'OOP', 'DBMS', 'AVP'),
('THURSDAY', 'AVP', 'AdvPro', 'DBMS', 'Aptitude', '', 'PR'),
('FRIDAY', 'DBMS', 'OOP', 'AdvPro', 'SoftSkills', 'PR', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable1`
--

CREATE TABLE `timetable1` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable1`
--

INSERT INTO `timetable1` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'Physics', 'Chemistry', 'Maths', 'CAD', 'Communication', 'IT'),
('TUESDAY', 'Communication', 'Chemistry', 'Physics', 'PSAT', '', 'IT'),
('WEDNESDAY', 'PSAT', 'Maths', 'Chemistry', 'CAD', 'IT', 'Communication'),
('THURSDAY', 'Physics', 'Chemistry', 'Maths', 'PSAT', 'CAD', 'IT'),
('FRIDAY', 'IT', 'Chemistry', 'Physics', 'CAD', 'Maths', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable2`
--

CREATE TABLE `timetable2` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable2`
--

INSERT INTO `timetable2` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'Database Systems', '', 'Networking', '', 'Operating Systems', ''),
('TUESDAY', 'Hardware Analysis', 'Probability', 'Computer Graphics', '', '', ''),
('WEDNESDAY', 'Networking', 'Computer Graphics', '', 'Hardware Analysis', 'Operating Systems', ''),
('THURSDAY', '', '', 'Operating Systems', 'Probability', 'Database Systems', ''),
('FRIDAY', 'Database Systems', '', 'Probability', '', 'Operating Systems', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable3`
--

CREATE TABLE `timetable3` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable3`
--

INSERT INTO `timetable3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'ITD', 'Compiler Design', 'Cryptography', 'Realtime Systems', '', ''),
('TUESDAY', 'Realtime Systems', '', '', '', 'ITD', 'Compiler Design'),
('WEDNESDAY', '', 'Cryptography', 'Cryptography', 'Cryptography', 'ITD', ''),
('THURSDAY', '', 'Realtime Systems', '', 'Compiler Design', '', ''),
('FRIDAY', 'Compiler Design', '', 'ITD', 'Cryptography', '', 'Realtime Systems');

-- --------------------------------------------------------

--
-- Table structure for table `timetable4`
--

CREATE TABLE `timetable4` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable4`
--

INSERT INTO `timetable4` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'Probability', 'Digital Systems', 'Network Theory', 'Computer Architecture', '', 'Programing'),
('TUESDAY', 'Digital Systems', 'Verilog HDL', 'Probability', 'Programming', 'Network Theory', ''),
('WEDNESDAY', '', 'Network Theory', 'Programming', 'Digital Systems', '', 'Verilog HDL'),
('THURSDAY', 'Computer Architecture', 'Network Theory', 'Digital Systems', '', 'Probability', 'Programing'),
('FRIDAY', 'Programing', 'Verilog HDL', '', 'Computer Architecture', 'Probability', '');

-- --------------------------------------------------------

--
-- Table structure for table `timetable5`
--

CREATE TABLE `timetable5` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable5`
--

INSERT INTO `timetable5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'Waves', 'DSP', 'Control Systems', '', 'Microcontroller', 'ES'),
('TUESDAY', 'ES', 'Waves', 'DSP', 'Microcontroller', '', 'Control Systems'),
('WEDNESDAY', 'Control Systems', 'Microcontroller', 'DSP', 'ES', 'Waves', ''),
('THURSDAY', 'DSP', 'Waves', '', 'ES', 'Control Systems', 'Microcontroller'),
('FRIDAY', 'Waves', 'Control Systems', '', '', 'DSP', 'Microcontroller');

-- --------------------------------------------------------

--
-- Table structure for table `timetable6`
--

CREATE TABLE `timetable6` (
  `day` char(20) DEFAULT NULL,
  `period1` varchar(255) DEFAULT NULL,
  `period2` varchar(255) DEFAULT NULL,
  `period3` varchar(255) DEFAULT NULL,
  `period4` varchar(255) DEFAULT NULL,
  `period5` varchar(255) DEFAULT NULL,
  `period6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable6`
--

INSERT INTO `timetable6` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('MONDAY', 'VLSI Design', 'Operating Systems', 'Wireless Com', 'Microwave&Antenna', '', 'Automotive Electronics'),
('TUESDAY', 'Automotive Electronics', 'VLSI Design', '', '', 'Operating Systems', ''),
('WEDNESDAY', 'Wireless Com', '', 'Automotive Electronics', '', 'Operating Systems', 'VLSI Design'),
('THURSDAY', 'Operating Systems', '', 'Microwave&Antenna', '', 'VLSI Design', ''),
('FRIDAY', 'Microwave&Antenna', '', '', 'VLSI Design', '', 'Operating Systems');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'cb18301', 'cb18301', 'student'),
(3, 'cb17301', 'cb17301', 'student'),
(4, 'cb16301', 'cb16301', 'student'),
(7, 'admin', 'admin', 'admin'),
(5, '19xe', 'staff', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `dept_name` (`dept_name`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
