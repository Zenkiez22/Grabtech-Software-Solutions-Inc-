-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 09, 2025 at 07:13 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u512486824_sjcr`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` int(10) NOT NULL,
  `lname` varchar(225) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `mname` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `lname`, `fname`, `mname`, `username`, `password`, `role`) VALUES
(1, 'DECENA', 'LOVIMEN', 'BIÑAS', 'admin', 'hughjump1', 'ADMIN'),
(2, 'NAVAJA', 'GENEROSE', 'YATAB', 'generose', '10969', 'REGISTRAR'),
(3, 'GUILLEN', 'MA. EXILITA', 'D.', 'lita', 'lit@123', 'LIBRARIAN'),
(4, 'CAYABYAB', 'MICAELA', '', 'mica', 'mic@', 'REGISTRAR');

-- --------------------------------------------------------

--
-- Table structure for table `adviser list`
--

CREATE TABLE `adviser list` (
  `id` int(10) NOT NULL,
  `lname` varchar(225) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `mname` varchar(225) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adviser list`
--

INSERT INTO `adviser list` (`id`, `lname`, `fname`, `mname`, `gender`) VALUES
(1, 'VILLAFUERTE', 'NEYZA', 'V', 'FEMALE');

-- --------------------------------------------------------

--
-- Table structure for table `document_schedule`
--

CREATE TABLE `document_schedule` (
  `id` int(50) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `document_type` varchar(200) NOT NULL,
  `date_scheduled` date NOT NULL,
  `date_release` date NOT NULL,
  `student_name` varchar(225) NOT NULL,
  `purpose` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `comment` varchar(225) NOT NULL,
  `registrar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `document_schedule`
--

INSERT INTO `document_schedule` (`id`, `student_id`, `document_type`, `date_scheduled`, `date_release`, `student_name`, `purpose`, `status`, `comment`, `registrar`) VALUES
(2, '24-G11-0780', 'CERTIFICATE OF COMPLETION/GRADUATE', '2024-05-09', '2024-05-29', 'JACA, SCHININA KATE - GUTIERREZ', 'NOTHING', 'PROCESSING', 'SECRET', 'DECENA, LOVIMEN - BIÑAS'),
(3, '24-G11-0779', 'FORM 137 / SF10 (WITH REQUEST FORM)', '2024-05-09', '2024-05-28', 'TUANQUIN, AVERILE JOY - MANILA', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(4, '24-G11-0785', 'CERTIFICATE OF ENROLLMENT', '2024-05-09', '2024-06-27', 'RIVAS, RENZ - MATEO', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(5, '24-G11-0778', 'REQUISITION LETTER', '2024-05-09', '2024-05-10', 'DORIA, CATHEREN - CALANCULAN', 'SECRET', 'PROCESSING', 'SECRET', 'DECENA, LOVIMEN - BIÑAS'),
(7, '24-PK-0783', 'CERTIFICATE OF HONOR & RANKING', '2024-05-09', '2024-05-26', 'PEREZ, SOFIA BLESSENCE - REYES', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(8, '24-G11-0782', 'CERTIFICATE OF GRADES', '2024-05-09', '2024-05-27', 'ROLLOQUE, JOSHUA CHARLES - LUCIDO', '', 'PROCESSING', '', 'SANTOS, JAY ANNE - BAUTISTA'),
(9, '24-G11-0780', 'FORM 137 / SF10 (WITH REQUEST FORM)', '2024-05-10', '2024-05-17', 'JACA, SCHININA KATE - GUTIERREZ', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(10, '24-G11-0778', 'CERTIFICATE OF ENROLLMENT', '2024-05-10', '2024-05-10', 'DORIA, CATHEREN - CALANCULAN', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(11, '24-G11-0778', 'FORM 137 / SF10 (WITH REQUEST FORM)', '2024-05-13', '2024-05-13', 'DORIA, CATHEREN - CALANCULAN', '', 'PROCESSING', '', 'SANTOS, JAY ANNE - BAUTISTA'),
(12, '24-G11-0781', 'FORM 137 / SF10 (WITH REQUEST FORM)', '2024-05-15', '2024-05-15', 'ROTOL, PRINCESS MAE - DUKA', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(13, '24-G11-0782', 'CERTIFICATE OF GRADES', '2024-05-15', '2024-05-15', 'ROLLOQUE, JOSHUA CHARLES - LUCIDO', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS'),
(14, '24-PK-0783', 'CERTIFICATE OF COMPLETION/GRADUATE', '2024-05-15', '2024-05-16', 'PEREZ, SOFIA BLESSENCE - REYES', '', 'PROCESSING', '', 'DECENA, LOVIMEN - BIÑAS');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_db`
--

CREATE TABLE `enrollment_db` (
  `id` int(225) NOT NULL,
  `school_year` varchar(25) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `level` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `date_of_enrollment` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `bcert` int(10) NOT NULL,
  `idpic` int(10) NOT NULL,
  `report_card` int(10) NOT NULL,
  `baptismal` int(10) NOT NULL,
  `form137` int(10) NOT NULL,
  `good_moral` int(10) NOT NULL,
  `strand` varchar(225) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(225) NOT NULL,
  `img_dir` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `enrollment_db`
--

INSERT INTO `enrollment_db` (`id`, `school_year`, `student_id`, `fullname`, `level`, `course`, `date_of_enrollment`, `status`, `bcert`, `idpic`, `report_card`, `baptismal`, `form137`, `good_moral`, `strand`, `gender`, `contact`, `img_dir`) VALUES
(58, '2023-2024', '22-G3-0556', 'GUILLEN, JOHN PHILIP D.', 'GRADE 5', '', '2024-11-04', 'ENROLLED', 1, 1, 1, 0, 0, 1, '', 'MALE', '09498523521', ''),
(59, '2024-2025', '21-PK-0343', 'PADILLA, JOHN GABRIEL L.', 'GRADE 11', '', '2024-11-28', 'ENROLLED', 1, 0, 0, 0, 0, 1, 'STEM', 'MALE', '09178093058', ''),
(60, '2024-2025', '23-G11-0636', 'TEODORO, FRANCIS AMADO D.', 'GRADE 6', '', '2024-11-29', 'ENROLLED', 0, 1, 1, 1, 0, 0, '', 'MALE', '9619152650', ''),
(61, '2024-2025', '24-G7-0826', 'DE GUZMAN, MARCUS JETHRO D.', 'GRADE 7', '', '2024-11-29', 'ENROLLED', 0, 1, 1, 1, 1, 1, '', 'MALE', '9653474282', ''),
(65, '2024-2025', '22-G3-0556', 'GUILLEN, JOHN PHILIP D.', 'GRADE 6', '', '2024-11-29', 'ENROLLED', 1, 1, 1, 0, 0, 1, '', 'MALE', '09498523521', ''),
(66, '2024-2025', '19-G7-0203', 'SANTOS, ZETH ENRYCKO C.', 'PRE-KINDER', '', '2024-12-03', 'ENROLLED', 0, 1, 0, 0, 0, 1, 'NONE', 'MALE', '9210275689', ''),
(67, '2024-2025', '24-PK-0784', 'VARGAS, MARIA SAMANTHA LOUVELLE A.', 'PRE-KINDER', '', '2024-12-10', 'ENROLLED', 1, 1, 0, 0, 0, 0, 'NONE', 'FEMALE', '09328458391', ''),
(68, '2022-2023', '22-G3-0556', 'GUILLEN, JOHN PHILIP D.', 'PRE-KINDER', '', '2024-12-11', 'ENROLLED', 1, 1, 1, 0, 0, 1, 'NONE', 'MALE', '09498523521', ''),
(69, '2022-2023', '24-PK-0784', 'VARGAS, MARIA SAMANTHA LOUVELLE A.', 'GRADE 11', '', '2024-12-11', 'ENROLLED', 0, 0, 0, 1, 1, 0, 'HUMSS', 'FEMALE', '09328458391', ''),
(72, '2024-2025', '12-N-0157', 'LOA, PRINCESS MAY F.', 'GRADE 12', '', '2024-12-20', 'ENROLLED', 0, 0, 0, 1, 0, 1, 'NONE', 'FEMALE', '09178093058', ''),
(73, '2024-2025', '22-G1-0441', 'PADILLA, JOSEPH ANTHONY L.', 'PRE-KINDER', '', '2024-12-20', 'ENROLLED', 0, 0, 1, 1, 0, 0, '', 'MALE', '9178093058', '');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(225) NOT NULL,
  `code` varchar(100) NOT NULL,
  `category` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `status` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `designate` varchar(200) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `encode_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(10) NOT NULL,
  `category` varchar(225) NOT NULL,
  `level` varchar(225) NOT NULL,
  `capacity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `category`, `level`, `capacity`) VALUES
(1, 'PRESCHOOL', 'PRE-KINDER', 40),
(2, 'PRESCHOOL', 'KINDER', 40),
(3, 'ELEMENTARY', 'GRADE 1', 40),
(4, 'ELEMENTARY', 'GRADE 2', 40),
(5, 'ELEMENTARY', 'GRADE 3', 40),
(6, 'ELEMENTARY', 'GRADE 4', 40),
(7, 'ELEMENTARY', 'GRADE 5', 40),
(8, 'ELEMENTARY', 'GRADE 6', 40),
(9, 'JUNIOR HIGH', 'GRADE 7', 40),
(10, 'JUNIOR HIGH', 'GRADE 8', 40),
(11, 'JUNIOR HIGH', 'GRADE 9', 40),
(12, 'JUNIOR HIGH', 'GRADE 10', 40),
(13, 'SENIOR HIGH', 'GRADE 11', 40),
(14, 'SENIOR HIGH', 'GRADE 12', 40);

-- --------------------------------------------------------

--
-- Table structure for table `library_books`
--

CREATE TABLE `library_books` (
  `id` int(20) NOT NULL,
  `accession` varchar(20) NOT NULL,
  `category` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `author` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `publisher` varchar(225) NOT NULL,
  `no_of_pages` int(10) NOT NULL,
  `serial_number` varchar(225) NOT NULL,
  `copyright` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `date_encode` date NOT NULL,
  `library` varchar(50) NOT NULL,
  `classification` varchar(50) NOT NULL,
  `book_class` varchar(50) NOT NULL,
  `book_volume` varchar(20) NOT NULL,
  `availability` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_books`
--

INSERT INTO `library_books` (`id`, `accession`, `category`, `title`, `author`, `description`, `publisher`, `no_of_pages`, `serial_number`, `copyright`, `status`, `date_encode`, `library`, `classification`, `book_class`, `book_volume`, `availability`) VALUES
(125, 'B1-000001', 'SPIRITUALITY/RELIGION', 'Catechism for Filipino Catholics', 'CBCP', 'None', 'World & life publication', 705, 'ISBN 971- 8816-28-3', '1997', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'local', 'none', 'none', 'AVAILABLE'),
(126, 'B1-000002', 'SPIRITUALITY/RELIGION', 'Catechism for Filipino Catholics', 'CBCP', 'None', 'World & life publication', 705, 'ISBN 971- 8816-28-3', '1997', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'local', 'none', 'none', 'AVAILABLE'),
(127, 'B1-000003', 'SPIRITUALITY/RELIGION', 'Catechism for Filipino Catholics', 'CBCP', 'None', 'World & life publication', 705, 'ISBN 971- 8816-28-3', '1997', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'local', 'none', 'none', 'AVAILABLE'),
(136, 'B1-000004', 'SPIRITUALITY/RELIGION', 'Christian Morality and Ethics', 'Ma. Imelda P. Nabor-Nery', 'none', 'National Book store', 506, 'ISBN 971- 08-7068-8', '2010', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'local', 'none', 'none', 'AVAILABLE'),
(148, 'U1-000001', 'INFORMATION TECHNOLOGY', 'COMPUTER FUNDAMENTALS AND WORD PROCESSING', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'NONE', 'BOOKS ATBP. PUBLISHING CORP.', 211, 'ISBN 978-971-0388-41-7', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(149, 'U1-000002', 'INFORMATION TECHNOLOGY', 'COMPUTER FUNDAMENTALS AND WORD PROCESSING', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'NONE', 'BOOKS ATBP. PUBLISHING CORP.', 211, 'ISBN 978-971-0388-41-7', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(150, 'U1-000003', 'INFORMATION TECHNOLOGY', 'COMPUTER FUNDAMENTALS AND WORD PROCESSING', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'NONE', 'BOOKS ATBP. PUBLISHING CORP.', 211, 'ISBN 978-971-0388-41-7', 'MARLYN P. BUENDIA AND MICHELLE C. RAMOS', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(166, 'U1-000004', 'INFORMATION TECHNOLOGY', 'INTRODUCTION TO COMPUTER CONCEPTS', 'JUNY PILAPIL LA PUTT', 'NONE', 'PHILLIPINE GRAPHIC ARTS,INC.', 306, 'ISBN 971-084-768-6', '1984', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(167, 'U1-000005', 'INFORMATION TECHNOLOGY', 'VISUAL C++ PROGRAMMING LANGUAGE PROGRAMMING MADE EASY', 'MARMELO V. ABANTE', 'NONE', 'ANVIL PUBLISHING ,INC.', 174, 'ISBN 978-971-27-2161-8', '2009', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(168, 'U1-000006', 'INFORMATION TECHNOLOGY', 'INTRODUCTION TO VISUAL BASIC 2008 PROGRAMMING ', 'COPERNICUS P. PEPITO', 'NONE', 'CACHO HERMANOS,INC.', 381, 'NONE', '2009', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(169, 'U1-000007', 'INFORMATION TECHNOLOGY', 'TEACHING COMPUTER FOR SECONDARY AND TERTIARY LEVELS', 'MICHAEL N. CASIANO', 'NONE', 'REX BOOK STORE, INC.', 190, 'ISBN 978-971-23-4921-8', '2007', 'ACTIVE', '2024-11-19', 'SHS- COLLEGE', 'NONE', 'NONE', '2', 'AVAILABLE'),
(170, 'U1-000008', 'INFORMATION TECHNOLOGY', 'COMPUTER FUNDAMENTALS', 'DENNIS T. FAJARITO', 'NONE', 'NATIONAL BOOKSTORE', 196, 'ISBN 971-08-6959-0', '2009', 'ACTIVE', '2024-11-19', 'SHS- COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE'),
(171, 'U1-000009', 'INFORMATION TECHNOLOGY', 'FILIPINO SA ARALING KOMPYUTER', 'IMELDA P. DE CASTRO', 'NONE', 'DE LA SALLE UNIVERSITY PRESS,INC.', 212, 'ISBN 971-555-275-7', '1999', 'ACTIVE', '2024-11-19', 'SHS-COLLEGE', 'NONE', 'NONE', 'NONE', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `library_books_category`
--

CREATE TABLE `library_books_category` (
  `id` int(6) NOT NULL,
  `category` varchar(225) NOT NULL,
  `code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_books_category`
--

INSERT INTO `library_books_category` (`id`, `category`, `code`) VALUES
(1, 'FICTION', 'A0'),
(2, 'NON-FICTION', 'B0'),
(3, 'MYSTERY', 'C0'),
(4, 'NOVEL', 'D0'),
(5, 'HISTORICAL FICTION', 'E0'),
(6, 'NARRATIVE', 'F0'),
(7, 'CHILDREN\'S LITERATURE', 'G0'),
(8, 'FANTASY FICTION', 'H0'),
(9, 'YOUNG ADULT FICTION', 'I0'),
(10, 'HISTORY', 'J0'),
(11, 'ROMANCE NOVEL', 'K0'),
(12, 'SPECULATIVE FICTION', 'L0'),
(13, 'GRAPHIC NOVEL', 'M0'),
(14, 'ADVENTURE FICTION', 'N0'),
(15, 'MEMOIR', 'O0'),
(16, 'FANTASY', 'P0'),
(17, 'SELF-HELP BOOK', 'Q0'),
(18, 'HISTORICAL FANTASY', 'R0'),
(19, 'NEW ADULT FICTION', 'S0'),
(20, 'POETRY', 'T0'),
(21, 'BIOGRAPHY', 'U0'),
(22, 'HUMOR', 'V0'),
(23, 'PICTURE BOOK', 'W0'),
(24, 'CONTEMPORARY LITERATURE', 'X0'),
(25, 'TRADITIONAL STORY', 'Y0'),
(26, 'COMING-OF-AGE STORY', 'Z0'),
(27, 'PARANORMAL ROMANCE', 'A1'),
(28, 'SPIRITUALITY/RELIGION', 'B1'),
(29, 'SPORTS FICTION', 'C1'),
(30, 'URBAN FICTION', 'D1'),
(31, 'SCIENCE FANTASY', 'E1'),
(32, 'CRIME FICTION', 'F1'),
(33, 'GOTHIC FICTION', 'G1'),
(34, 'ALTERNATE HISTORY', 'H1'),
(35, 'SUPERNATURAL FICTION', 'I1'),
(36, 'FAIRY TALE', 'J1'),
(37, 'COZY MYSTERY', 'K1'),
(38, 'SPACE OPERA', 'L1'),
(39, 'COMICS', 'M1'),
(40, 'LITERARY CRITICISM', 'O1'),
(41, 'PHILOSOPHY', 'P1'),
(42, 'ADVENTURE', 'Q1'),
(43, 'COOKBOOK', 'R1'),
(44, 'BOARD BOOK', 'S1'),
(45, 'BUSINESS', 'T1'),
(46, 'INFORMATION TECHNOLOGY', 'U1');

-- --------------------------------------------------------

--
-- Table structure for table `library_borrow_return`
--

CREATE TABLE `library_borrow_return` (
  `id` int(100) NOT NULL,
  `book_id` varchar(225) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `student_id` varchar(225) NOT NULL,
  `level` varchar(225) NOT NULL,
  `student_name` varchar(225) NOT NULL,
  `date_surrendered` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_borrow_return`
--

INSERT INTO `library_borrow_return` (`id`, `book_id`, `borrow_date`, `return_date`, `student_id`, `level`, `student_name`, `date_surrendered`, `status`) VALUES
(62, 'B1-000001', '2025-01-06', '2025-01-15', '22-G3-0556', 'GRADE 5', 'GUILLEN, JOHN PHILIP D.', '2025-01-06', 'RETURNED'),
(63, 'B1-000001', '2025-01-09', '2025-01-09', '22-G3-0556', 'PRE-KINDER', 'GUILLEN, JOHN PHILIP D.', '2025-01-09', 'RETURNED'),
(64, 'B1-000001', '2025-01-09', '2025-01-09', '22-G3-0556', 'PRE-KINDER', 'GUILLEN, JOHN PHILIP D.', '2025-01-09', 'RETURNED'),
(65, 'B1-000001', '2025-01-09', '2025-01-09', '22-G3-0556', 'PRE-KINDER', 'GUILLEN, JOHN PHILIP D.', '2025-01-09', 'RETURNED'),
(66, 'B1-000001', '2025-01-09', '2025-01-09', '22-G3-0556', 'PRE-KINDER', 'GUILLEN, JOHN PHILIP D.', '2025-01-09', 'RETURNED'),
(67, 'U1-000001', '2025-01-09', '2025-01-09', '18-PK-0087', 'GRADE 10', 'DELA CRUZ, JUSTIN ABRIELL S.', '2025-01-09', 'RETURNED');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `id` int(5) NOT NULL,
  `school_year` varchar(225) NOT NULL,
  `year_id` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`id`, `school_year`, `year_id`) VALUES
(1, '2024-2025', '24');

-- --------------------------------------------------------

--
-- Table structure for table `shs_strand`
--

CREATE TABLE `shs_strand` (
  `id` int(12) NOT NULL,
  `strand` varchar(225) NOT NULL,
  `capacity` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shs_strand`
--

INSERT INTO `shs_strand` (`id`, `strand`, `capacity`) VALUES
(1, '11-ABM', 40),
(2, '11-HUMSS', 40),
(3, '11-STEM', 40),
(4, '12-ABM', 40),
(5, '12-HUMSS', 40),
(6, '12-STEM', 40);

-- --------------------------------------------------------

--
-- Table structure for table `student_db`
--

CREATE TABLE `student_db` (
  `id` int(20) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `lname` varchar(225) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `mname` varchar(225) NOT NULL,
  `age` int(10) NOT NULL,
  `bdate` date NOT NULL,
  `bplace` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `address` varchar(225) NOT NULL,
  `contact_no` varchar(225) NOT NULL,
  `religion` varchar(225) NOT NULL,
  `mother_name` varchar(225) NOT NULL,
  `father_name` varchar(225) NOT NULL,
  `health_concern` varchar(225) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `date_registered` date NOT NULL,
  `reg_mode` varchar(20) NOT NULL,
  `lrn` varchar(225) NOT NULL,
  `esc_no` varchar(225) NOT NULL,
  `school_last_attended` varchar(225) NOT NULL,
  `grade_level` varchar(50) NOT NULL,
  `flyer_church` varchar(10) NOT NULL,
  `flyer_school` varchar(10) NOT NULL,
  `career_talk` varchar(10) NOT NULL,
  `facebook_page` varchar(10) NOT NULL,
  `tarp_buildings` varchar(10) NOT NULL,
  `tarp_tricycles` varchar(10) NOT NULL,
  `others` varchar(10) NOT NULL,
  `referral` varchar(10) NOT NULL,
  `others_specify` varchar(225) NOT NULL,
  `referred_by` varchar(200) NOT NULL,
  `sched_exam` date NOT NULL,
  `sched_interview` date NOT NULL,
  `guardian` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_db`
--

INSERT INTO `student_db` (`id`, `student_id`, `lname`, `fname`, `mname`, `age`, `bdate`, `bplace`, `gender`, `nationality`, `address`, `contact_no`, `religion`, `mother_name`, `father_name`, `health_concern`, `email_add`, `date_registered`, `reg_mode`, `lrn`, `esc_no`, `school_last_attended`, `grade_level`, `flyer_church`, `flyer_school`, `career_talk`, `facebook_page`, `tarp_buildings`, `tarp_tricycles`, `others`, `referral`, `others_specify`, `referred_by`, `sched_exam`, `sched_interview`, `guardian`) VALUES
(2113, '24-PK-0783', 'PEREZ', 'SOFIA BLESSENCE', 'REYES', 4, '2020-10-04', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'BLK 2 LOT 26 VILLA ADRIANA VILLAGE, RODRIGUEZ, RIZAL', '09279866966', 'CATHOLIC', 'ANDREA P. REYES', 'KIM RAYVEN B. PEREZ', '', '', '2024-04-23', 'WALK IN', '', '', 'NONE', 'Grade 1', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ANDREA P. REYES'),
(2114, '24-PK-0784', 'VARGAS', 'MARIA SAMANTHA LOUVELLE', 'ALMERINO', 0, '2019-10-17', 'MANDALUYONG CITY', 'FEMALE', 'Filipino', 'BLK 2 LOT 32 JAVIERA ST. VILLA ADRIANA HOMES, RODRIGUEZ, RIZAL', '09328458391', 'CATHOLIC', 'LEAH ALMERINO', 'ALFREDO VARGAS JR.', '', '', '2024-04-23', 'WALK IN', '', '', '', 'Grade 2', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LEAH ALMERINO'),
(2115, '24-PK-0791', 'BASCO', 'MARIA SOFIA SNOW', 'DELA CRUZ', 0, '2019-12-04', 'ANTIPOLO CITY', 'FEMALE', '', 'BLOCK 3 LOT 14, ACASIA HOME SAN RFAEL, RODRIGUEZ, RIZAL', '9066126955', 'CATHOLIC', 'MARK CAESAR C. BASCO', 'KLAILYN D. BASCO', '', '', '2024-05-20', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2116, '24-PK-0787', 'KAUR', 'JAPNEET', 'N/A', 0, '2019-10-07', 'MANILA', 'FEMALE', '', 'BLK 12 LOT 1C ST. SAN MATEO,  CORTIJOS SUBDIVISION, SAN RAFAEL, RODRIGUEZ, RIZAL', '09161770015', 'SIKH', 'RAJPINDER KAUR', 'GAGANDEEP SINGH', '', '', '2024-04-30', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'DHARAMJEET SINGH'),
(2117, '24-PK-0821', 'TIANCO', 'SKY NIKOLAI', 'GABRIEL', 0, '2020-09-27', 'SAN MATEO, RIZAL', 'MALE', '', '500 M.H DEL PILAR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '09954679071 / 82525769', 'CATHOLIC', 'KIMBERLY G. TIANCO', 'EARL DAVID L. TIANCO', '', '', '2024-06-10', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'KIMBERLY G. TIANCO'),
(2118, '24-PK-0860', 'MONDERO', 'KIDLAT ALON', 'FRANCISCO', 0, '2020-06-22', 'PASIG CITY', 'MALE', '', 'BLK 2 LOT 25 ACACIA HOMES SAN RAFAEL RODRIGUEZ, RIZAL', '9163356309', 'CATHOLIC', 'KATHRYN MONDERO', 'PAUL HENRY MONDERO', '', '', '2024-06-26', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2119, '24-PK-0862', 'POSOPA', 'GIANNA DICANE', 'DIAZ', 0, '2019-11-16', 'MARIKINA', 'FEMALE', '', '27 SAN MIGUEL ST. CORTIJOS BRGY. SAN RAFAEL RODRIGUEZ, RIZAL', '9163709372', 'CATHOLIC', 'JANE DIAZ ', 'BENEDICT ROSOPA', '', '', '2024-07-02', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2120, '24-PK-0877', 'SEVIRINO', 'BRIANA MAXINE', 'TANDAYU', 0, '2020-04-21', 'MONTALBAN', 'FEMALE', '', '406 P. SALVADOR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9186308260', 'CATHOLIC', 'ROSANA TANDAYU', 'MARK RYAN SEVERINO', '', '', '2024-07-06', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ROSANA TANDAYU'),
(2121, '24-PK-0876', 'MAMARIL', 'WYNNE HAVEN', 'SILVALLANA', 0, '2019-10-28', 'PANGASINAN', 'FEMALE', '', 'PHASE 4 BLK 3 LOT 48 EASTWOOD RES. BRGY. SAN ISDRO RODRIGUEZ, RIZAL', '9954082858', 'CATHOLIC', 'ANNA RHINA MAMARIL', 'EDUARDO MAMARIL', '', '', '2024-07-05', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2122, '24-PK-0892', 'NUYLAN', 'MARION ZAYB DANIEL ', 'ALVAREZ', 0, '2019-12-26', 'PAMPANGA', 'MALE', '', 'SITIO EEA SAN RAFAEL, RODRIGUEZ, RIZAL', '9194664075', 'CATHOLIC', 'MARJORY NUYLAN', 'LORENZON II NUYLAN', '', '', '2024-07-09', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2123, '24-PK-0913', 'GUIMBA-AN', 'LIAM OLIVER', 'DE LOS SANTOS', 0, '2020-05-08', 'QUEZON CITY', 'MALE', '', 'BLK 10 LOT 45 PHASE 5 EASTWOOD GREENVIEW SUBD., BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '957395683', 'CATHOLIC', 'GRACIELLA SOTELO DE LOS SANTOS', 'CRIS GUIMBA-AN', '', '', '2024-07-15', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GRACIELLA SOTELO DE LOS SANTOS'),
(2124, '24-PK-0914', 'CARLIT', 'AGATA BERNICE', 'CALIVO', 0, '2020-01-16', 'QUEZON CITY', 'FEMALE', '', 'BLK 81 LOT 21 PHASE 2 E METRO MANILA HILL TOWN HOMES RODRIGUEZ, RIZAL', '9171058626', 'CATHOLIC', 'ELLEENE CARLIT', 'JOSEPH CARLIT', '', '', '2024-07-17', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ELLEENE CARLIT'),
(2125, '24-PK-0915', 'ANGELES', 'JRSR', 'RAYOS', 0, '2020-04-22', 'MONTALBAN', 'MALE', '', '42 SAN LORENZO ST. CORTIJOS SUBD., SAN RAFAEL RODRIGUEZ, RIZAL', '9171225752', 'CATHOLIC', 'JOY ANGELES', 'JR SR ANGELES', '', '', '2024-07-19', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2136, '24-PK-0913', 'GUIMBA-AN', 'LIAM OLIVER', 'DE LOS SANTOS', 0, '2020-05-08', 'QUEZON CITY', 'MALE', '', 'BLK 10 LOT 45 PHASE 5 EASTWOOD GREENVIEW SUBD., BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '957395683', 'CATHOLIC', 'GRACIELLA SOTELO DE LOS SANTOS', 'CRIS GUIMBA-AN', '', '', '2024-07-15', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GRACIELLA SOTELO DE LOS SANTOS'),
(2139, '23-K-0726', 'ABING', 'GUILLEAN JAVIER', 'CRUZ', 0, '2017-10-09', 'SAN MATEO RIZAL', 'MALE', '', '176 JP RIZAL BALITE RODRIGUEZ, RIZAL', '09777589079', 'CATHOLIC', 'JANICE MARGARET CRUZ', 'JUNMER ABING', '', '', '2024-07-09', 'WALK IN', '425623230001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2140, '22-PK-0520', 'BERRI', 'ZERD RAFAEL', 'INOCENTES', 0, '2018-09-24', 'DUBAI UAE', 'MALE', '', '449 M.H. DEL PILAR ST. SAN RAFAEL RODRIGUEZ RIZAL', '9339518537', 'CATHOLIC', 'RENALIZA INOCENTES', 'SID ANTHONY BERRI', '', '', '2024-07-05', 'WALK IN', '425623230002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2141, '23-K-0766', 'BUNGCARAS', 'CODY GABRIEL', 'OLMEDILLA', 0, '2018-01-18', 'RODRIGUEZ RIZAL', 'MALE', 'FILIPINO', 'BLK 68 LOT 37 SOUTVILLE 8B SAN ISIDRO, RODRIGUEZ, RIZAL', '09307776945', 'CATHOLIC', 'GABRIELLE SHAIRA BUNGCARAS', 'ALBERT BUNGCARAS', 'N/A', '', '2024-06-20', 'WALK IN', '425623230003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GABRIELLE SHAIRA BUNGCARAS'),
(2142, '22-PK-0444', 'DEBAJO', 'ZABELLA CLARE', 'AYENG', 0, '2018-07-03', 'MARIKINA CITY', 'FEMALE', '', 'BLK 56 LOT 32 PH 2 EASTWOOD RESIDENCES SAN ISIDRO ROD. RIZAL', '9399798065', 'ROMAN CATHOLIC', 'GINA A. DEBAJO', 'FORTUNATO B. DEBAJO', '', '', '2024-07-23', 'WALK IN', '425623230004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2143, '22-PK-0484', 'DELOS SANTOS', 'CALEB TYLER', 'RIVERA', 0, '2018-08-30', 'MANILA', 'MALE', '', 'BLK 10 LOT 45 PH5 ESATWOOD GREENVIEW SAN ISIDRO ROD. RIZAL', '9498899054 / 09088953531', 'CATHOLIC', 'MARIA KRISELDA DELOS SANTOS', 'GIAN CARLO DELOS SANTOS', '', '', '2024-07-15', 'WALK IN', '425623230005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2144, '23-K-0599', 'LIMBOY', 'EUNICE SOLIFFLE', 'MERON', 0, '2017-11-28', 'OLONGAPO CITY', 'FEMALE', '', 'BLK 1 LOT 37 SAN MIGUEL ST. CORTIJOS, SAN RAFAEL, RODRIGUEZ, RIZAL', '09081035731', 'CATHOLIC', 'MARIVIC MERON', 'ROMMEL LIMBOY', '', '', '2024-06-27', 'WALK IN', '425623230006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2145, '23-K-0602', 'MAGSINO', 'SAIRENE FEYE', 'FALOGME', 0, '2017-12-28', 'MARIKINA CITY', 'FEMALE', '', 'BLK 71 LOT 31 PHASE 3A EASTWOOD RESIDENCE SAN ISIDRO, RODRIGUEZ, RIZAL', '0284234094 / 06263524707', 'CATHOLIC', 'MONICA MAGSINO', 'CYRUS ACEL MAGSINO', '', '', '2024-07-01', 'WALK IN', '425623230007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2146, '23-PK-0743', 'OCIONES', 'JASMINE JODY AGATHA', 'NOGA', 0, '2000-01-01', 'MANDALUYONG', 'FEMALE', '', 'HILLSIDE PHASE 1, SAN RAFAEL, RODRIGUEZ, RIZAL', '9364771154', 'CATHOLIC', 'SHELIA MAE NOGA', 'JOSEPH JOSHUA ANDRE OCIONES', '', '', '2024-07-01', '', '425623230008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2147, '22-PK-0510', 'ONG', 'JANINA DOMINIQUE', 'MAGTANGOB', 0, '2017-11-23', 'MARIKINA CITY', 'FEMALE', '', 'BLK 4 LOT 28 PH 3A EASTWOOD GREENVIEW SUBD. SAN ISIDRO ROD. RIZAL', '9366711358', 'ROMAN CATHOLIC', 'JANICE ONG', 'JEFFREY ONG', '', '', '2024-07-16', 'WALK IN', '425623230009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2148, '21-PK-0343', 'PADILLA', 'JOHN GABRIEL', 'LOA', 0, '2017-11-12', 'QUEZON CITY', 'MALE', 'FILIPINO', 'BLK 13 LOT 102 PHASE 2 MONTEBRISA SUBD., SAN JOSE RODRIGUEZ, RIZAL', '09178093058', 'CATHOLIC', 'MAYBELL PADILLA', 'LARK PADILLA', 'N/A', '', '2024-07-05', 'WALK IN', '425623230010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2149, '23-K-0755', 'PAZ', 'STEPHANIE CLAIRE', 'LOPEZ', 0, '2017-04-29', 'QUEZON CITY', 'FEMALE', '', 'COL. S. CRUZ ST. SAN JOSE RODRIGUEZ, RIZAL', '09663077220', 'CATHOLIC', 'YVETA PAZ', 'ESTEPHEN PAZ', '', '', '2024-07-17', 'WALK IN', '425623230011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2150, '22-PK-0480', 'PERIÑA', 'ARIANNA', 'DELA CRUZ', 0, '2018-08-25', 'MONTALBAN RIZAL', 'FEMALE', '', 'BLK 10 LOT 43 CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '9634310138', 'ROMAN CATHOLIC', 'KRISTINE T. DELA CRUZ', 'ARNULFO M. PERIÑA', '', '', '2024-06-25', 'WALK IN', '425623230012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2151, '22-PK-0572', 'SANQUI', 'DAVID FLORENZ', 'ROSANTO', 0, '2018-04-21', 'MARIKINA CITY', 'MALE', '', 'BLK 21 LOT 3 PH3B EASTWOOD GREENVIEW BRGY. SAN ISIDRO, MONTALBAN, RIZAL', '9184884828', 'CATHOLIC', 'GERNAFE ROZANRO', 'KEVIN KYLE SANQUI', '', '', '2024-06-20', 'WALK IN', '425623230013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GERNAFE ROZANRO'),
(2152, '23-K-0633', 'SUBONG', 'YASSER TREMAINE', 'FERNANDEZ', 0, '2018-09-04', 'RODRIGUEZ RIZAL', 'MALE', '', 'BLK 5 LOT 23 LILY ST. ROSA VERDE SUBD., PHASE 1, SAN RAFAEL RODRIGUEZ, RIZAL', '09553185226', 'CATHOLIC', 'MICHELLE FERNADEZ', 'N/A', '', '', '2024-06-24', 'WALK IN', '425623230014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2153, '24-G1-0807', 'LEGARDE', 'JEROS REI', 'VALLER', 0, '2018-03-20', 'MONTALBAN RIZAL', 'MALE', '', 'BLK 20 LOT 14 PHASE 2 SUMMITVIEW SAN RAFAEL, RODRIGUEZ, RIZAL', '9568560271', 'CATHOLIC', 'REYNOSA V. LEGARDE', 'JOJET LEGARDE', '', '', '2024-05-22', 'WALK IN', '408915230001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'REYNOSA V. LEGARDE'),
(2154, '24-G1-0808', 'TABULOG', 'CAILEY JAINE', 'VARGAS', 0, '2018-04-04', 'QUEZON CITY', 'FEMALE', '', 'BLK 54 LOT 8 PHASE 2 EASTWOOD RESIDENCES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9399294226', 'CATHOLIC', 'CHRISTINE CAMILE TABULOG', 'JONATHAN ROLAND TABULOG', '', '', '2024-05-23', 'WALK IN', '425764230013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CHRISTINE CAMILE TABULOG'),
(2155, '24-G1-0832', 'CARIÑO', 'SAMUEL MATHIUS', 'VILLAROYA', 0, '2017-05-12', 'MANILA', 'MALE', '', '517 P. RODRIGUEZ ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9178748698', 'CATHOLIC', 'MARY GRACE CARIÑO', 'REAGAN C. CARIÑO', '', '', '2024-06-15', 'WALK IN', '425686220007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EVELYN V. LUCILO'),
(2156, '24-G1-0833', 'SEDUTAN', 'ZANE FRANCIS', 'MARCOS', 0, '2018-05-18', 'PASIG CITY', 'MALE', '', 'EASTWOOD RESIDENCES PHASE 7 BLK 49 LOT 42 BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9393291505', 'CATHOLIC', 'FANNIE SEBUTAN', 'FRANCIS SEBUTAN', '', '', '2024-06-18', 'WALK IN', '403063230013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'FANNIE SEBUTAN'),
(2157, '24-G1-0853', 'SAN JUAN', 'JYNN BEI', 'SOBERANO', 0, '2001-01-01', 'QUEZON CITY', 'MALE', 'FILIPINO', 'BLK5 LOT22 ACASIA HOMES SUBDIVISION SAN RAFAEL, RODRIGUEZ RIZAL\r\n', '9750369089', 'CATHOLIC', 'JOY ERIKA S. SAN JUAN', 'IRENEO T. SAN JUAN JR. ', 'N/A', '', '2024-06-24', 'WALK IN', '410602230058', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2158, '24-G1-0852', 'SEMILLA', 'JHILIANA', 'PELAYO', 0, '2001-01-01', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', 'BLK3 LOT3 ACACIA HOMES SAN RAFAEL, RODRIGUEZ RIZAL \r\n', '9488930946', 'CATHOLIC', 'ANDREA P. SEMILLA', 'JIMMY J. SEMILLA ', 'N/A', '', '2024-06-25', 'WALK IN', '408915230003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2159, '24-G1-0865', 'MUERTO', 'LIAM CODY', 'ADRIANO', 0, '2018-03-14', 'RODRIGUEZ RIZAL', 'MALE', 'FILIPINO', 'B 3 L 6 SAN MATEO ST. CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '09162260127', 'CATHOLIC', 'PSYRILLE ROSE A. MUERTO', '', 'N/A', '', '2024-07-02', 'WALK IN', '425686230002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2160, '24-G1-0878', 'CRUZ', 'ZECHARIAH ASRIEL', 'PUNZALAN', 6, '2018-02-24', 'TAYTAY RIZAL', 'MALE', 'FILIPINO', 'NO. 58 SAN MATEO ST. CORTIJOS DE SAN RAFAEL SUBS. RODRIGUEZ, RIZAL', '09959102483', 'CATHOLIC', 'ELINE P. CRUZ', 'LEQX VENARD CRUZ', 'N/A', '', '2024-07-03', 'WALK IN', '428006230008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LOLY CRUZ'),
(2161, '24-G1-0880', 'VALENCIA', 'RENCE JACOB', 'PINTOR', 0, '2018-03-23', 'RODRIGUEZ RIZAL', 'MALE', '', 'BLK 15 LOT 8 SUMMIT VIEW SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9569361464', 'CATHOLIC', 'MARY VALENCIA', 'RHENECITO VALENCIA', '', '', '2024-07-06', 'WALK IN', '408915230006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2162, '24-G1-0891', 'MANUEL', 'ELIZABELLA JACE', 'SANTOS', 0, '2017-10-10', 'MONTALBAN RIZAL', 'FEMALE', '', '518E P. RODRIGUEZ, SAN RAFAEL, RODRIGUEZ, RIZAL', '9614993520', 'CATHOLIC', 'MARIA EVRISSA S. MANUEL', 'RODOLFO MANUEL JR.', '', '', '2024-07-09', 'WALK IN', '425686220006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2163, '24-G1-0890', 'NEGRETE', 'ZAC AUSTIN', 'DE BORJA', 0, '2018-07-02', 'PASIG CITY', 'MALE', '', '619 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9088982863', 'CATHOLIC', 'DARILYN NEGRETE', 'RAMONSITO NEGRETE', '', '', '2024-07-10', 'WALK IN', '410602230012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2164, '24-G1-0905', 'ONDIVILLA', 'AHYUE', 'ESPEÑA', 0, '2018-08-23', 'QUEZON CITY', 'FEMALE', '', 'BLK 15 LOT 16 DIAMONDS ST. SUMMIT VIEW SUBD. RODRIGUEZ, RIZAL', '9945330084', 'CATHOLIC', 'ARLENE ONDIVILLA', 'ANGELO ONDIVILLA', '', '', '2024-07-11', 'WALK IN', '109479230278', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ROSE MARIE ESPAÑA'),
(2165, '24-G1-0900', 'SUMAGAYSAY', 'BHRIELLE JERDINE', 'CANASA', 0, '2018-01-04', 'QUEZON CITY', 'FEMALE', '', 'BLK 19 LOT 79 PHASE 2 SUMMITVIEW SUBD. BRGY. SAN RAFAEL RODRIGUEZ, RIZAL', '9399075911', 'CATHOLIC', 'BERNARDINA CONCEPCION', 'JERRY SUMAGAYSAY', '', '', '2024-07-12', 'WALK IN', '408915230002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2166, '24-G1-0919', 'MARCELO', 'CHRIS LEBRON ', 'MANDAP', 0, '2018-10-08', 'RODRIGUEZ RIZAL', 'MALE', '', '9004 VICTORIA COMPOUND STREET BRGY. GERONIMO RODRIGUEZ, RIZAL', '9669882775', 'CHRISTIAN', 'MARYANN LIZETTE MANDAP', 'NIKKO JOREL MARCELO', '', '', '2024-07-13', 'WALK IN', '410602230029', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2167, '24-G1-0920', 'MICHAEL', 'JHEREMY RIC', 'CIRIACO', 0, '2018-09-05', 'SAN MATEO RIZAL', 'MALE', '', '84 M.H DEL PILAR ST. BALITE RODRIGUEZ RIZAL', '9302839120', 'CATHOLIC', 'ARLENE C MICHAEL', 'PETER JOHN MICHAEL', '', '', '2024-07-17', 'WALK IN', '410174230009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2168, '23-G1-0718', 'ARANETA', 'GERARD MORI', 'CRUZ', 0, '2016-11-18', 'SAN MATEO RIZAL', 'MALE', '', '543 M.H DEL PILAR ST. GERONIMO RODRIGUEZ, RIZAL', '9123111625', 'CATHOLIC', 'RAQUEL ARANETA', 'RONLAD ARANETA', '', '', '2024-07-03', 'WALK IN', '109466220307', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2169, '23-G1-0763', 'BACOBO', 'YSABELLE MIGUEL', 'DUEÑAS', 0, '2017-07-12', 'SAN MATEO RIZAL', 'FEMALE', '', '52 SAN MIGUEL ST. CORTIJOS SAN RAFAEL RODRIGUEZ, RIZAL', '9287602036', 'CATHOLIC', 'ANNABELLE BOCOBO', 'JOSE KUENZLE BOCOBO', '', '', '2024-06-08', 'WALK IN', '425686220009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2170, '23-G1-0632', 'BONIFACIO', 'ZOE ANAIS', 'CAVAN', 0, '2017-03-20', 'MONTALBAN RIZAL', 'FEMALE', '', '227 AYUSON ST. ROSARIO, RODRIGUEZ, RIZAL', '9216177078', 'CATHOLIC', 'LOWELA BONIFACIO', 'JHON LHORVIE BONIFACIO', '', '', '2024-06-28', 'WALK IN', '409963220006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2171, '22-K-0413', 'CARLIT', 'AMARA LOUISE', 'CALIVO', 0, '2017-04-19', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 81 LOT 21 PH 2E METRO MANILA HILLS, TOWNHOME, RODRIGUEZ, RIZA', '9171107914/ 09171522009', 'CATHOLIC', 'ELEEN CARLIT', 'JOSEPH CARLIT', '', '', '2024-07-09', 'WALK IN', '425623220005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2172, '23-G1-0585', 'CULALIC', 'SOPHIA ANTONIA', 'AGUILA', 0, '2017-08-18', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'SITIO SAPA WAWA SAN RAFAEL, MONTALBAN RIZAL', '09171066027', 'CATHOLIC', 'JOBELLE CULALIC', 'MARK ANTHONY CULALIC', 'N/A', '', '2024-07-16', 'WALK IN', '425692220089', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2173, '21-PK-0342', 'DIZON II,', 'WIN OSTIN NOAH SON', 'LEGITA', 0, '2017-05-09', 'RODRIGUEZ, RIZAL', 'MALE', '', 'DAP-DAP P. RODRIGUEZ ST., SAN RAFAEL,  RODRIGUEZ, RIZAL', '9398849062', 'ROMAN CATHOLIC', 'MARIZA LEGITA', 'RONALD ALLAN DIZON', '', '', '2024-07-23', 'WALK IN', '425623220007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2174, '21-PK-0395', 'DUQUE', 'LOUISSE ATASHA', 'JAVIER', 0, '2017-10-30', 'SAN MATEO RIZAL', 'FEMALE', '', 'BLK 33 LOT 17 PH3 CENTELLA HOMES, SAN ISIDRO RODRIGUEZ, RIZAL', '09178404557/ 09175541718', 'CATHOLIC', 'SHERYL J. DUQUE', 'GAIL WILSON B. DUQUE', '', '', '2024-07-09', 'WALK IN', '425623220008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2175, '23-G1-0739', 'LAGGUI', 'GEORGINA ALYSON', 'GARDE', 0, '2017-06-10', 'QUEZON CITY', 'FEMALE', '', 'BLK 10 LOT 10 SUMMITVIEW SUBD., SAN RAFAEL, R.R', '9778152231', 'CATHOLIC', 'MA. RHEA LAGGUI', 'RODITO LAGGUI', '', '', '2024-07-17', 'WALK IN', '409963220010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2176, '22-K-0438', 'LLOVIT', 'ZOE YSABELLE', 'DESULO', 0, '2017-09-23', 'MARIKINI CITY', 'FEMALE', '', 'BLK 18 LOT 27 SAPPHIRE ST. SUMMITVIEW SUBD. SAN RAFEL ROD. RIZAL', '9101683985', 'CATHOLIC', 'MEVEL D. LLOVIT.', 'JOEY E. LLOVIT', '', '', '2024-06-08', 'WALK IN', '425623220010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2177, '22-G1-0770', 'LOCQUIAO', 'MATT ETHAN', 'AQUINO', 0, '2016-12-19', 'MARIKINI CITY', 'MALE', '', '184 M.H DEL PILAR ST., SAN RAFAEL RODRIGUEZ, RIZAL', '85702344 / 09682222672', 'CATHOLIC', 'MARICRIS LOCQUIAO', 'MARCO EUGENIO LOCQUIAO', '', '', '2024-06-25', 'WALK IN', '425511220014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2178, '23-G1-0737', 'MASILONGAN', 'JAMES VINCENT', 'CARLOS', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'MALE', '', 'TABAK 1 SAN RAFAEL RODRIGUEZ, RIZAL', '9208647758', 'CATHOLIC', 'GRACE MASILONGAN', 'KEVIN MASILONGAN', '', '', '2024-06-25', '', '408970220008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2179, '23-G1-0629', 'MONTALLANA', 'CHRISTIA BRIELLE', 'LORENZO', 0, '2016-11-29', 'SAN MATEO RIZAL', 'FEMALE', 'FILIPINO', 'BLK 16 LOT 23 SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '9390456164', 'CATHOLIC', 'MARINEL L. MONTALLANA', 'DENNIS C. MONTALLANA', 'N/A', '', '2024-07-11', 'WALK IN', '408915220014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2180, '21-PK-0396', 'ONSAGA', 'RAY CADEN LEIGH', 'TEODORO', 0, '2017-04-30', 'MARIKINI CITY', 'MALE', 'FILIPINO', 'BLOCK 5 LOT 55 MARIGOLD SUBD. BRGY. BURGOS, RODRIGUEZ RIZAL', '9084816540', 'CATHOLIC', 'JANCE ONSAGA', 'RAYMOND ONSAGA', 'N/A', '', '2024-07-17', 'WALK IN', '425623220011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2181, '23-G1-0631', 'PEÑALOSA', 'REIGN AUDREY', 'N/A', 0, '2017-03-20', 'SAN MATEO RIZAL', 'FEMALE', '', 'BLK 6 LOT 8 ROSAVERDE PHASE 1 SAN RAFAEL, RODRIGUEZ, RIZAL', '9289999571', 'CATHOLIC', 'RIO ANGELIE PEÑALOSA', 'N/A', '', '', '2024-07-18', 'WALK IN', '410602220005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2182, '23-G1-0626', 'PUA', 'WRYNE XYRE', 'BALBINO', 0, '2017-05-01', 'MONTALBAN RIZAL', 'FEMALE', '', 'PHASE 1 HILLSIDE SAN RAFAEL, RODRIGUEZ, RIZAL', '9271722330', 'CATHOLIC', 'LORNA PUA', 'FLORANTE PAU', '', '', '2024-07-02', 'WALK IN', '425692220091', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2183, '23-G1-0616', 'QUIRAY', 'JUANCHO', 'N/A', 0, '2017-01-20', 'MANILA', 'MALE', '', 'BLK 1 LOT 12 ANASTACIA ST. VILLA ADRIANA VILLAGE, SAN RAFAEL, RODRIGUEZ, RIZLA', '9958718056', 'CATHOLIC', 'JENNIFER QUIRAY', '', '', '', '2024-07-09', 'WALK IN', '408915220011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2184, '22-K-0541', 'REYES', 'QUINN MAXINE', 'CAMPITA', 0, '2000-01-01', 'LEON HERNANDEZ HOSP. DAET, CN', 'FEMALE', '', 'BLK 6 LOT 31 PHASE 4B EASWOOD GREENVIEW, RODRIGUEZ, RIZAL', '9301160926', 'ROMAN CATHOLIC', 'VON DARRELE REYES', 'FERDINAND REYES II', '', '', '2024-07-09', '', '425623220013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2185, '23-G1-0605', 'RIEZA', 'LIAM CARLEY', 'BERON', 0, '2016-11-12', 'QUEZON CITY', 'MALE', '', 'BLK 18 LOT 56 GRANITE ST. SUMMITVIEW SUBD., SAN RAFAEL RODRIGUEZ, RIZAL', '9166124955', 'CATHOLIC', 'CARLA BERDIN', 'WILLIAM JOY RIEZA', '', '', '2024-06-24', 'WALK IN', '409963220005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2186, '24-G2-0801', 'LORESTO', 'JASON JR.', 'JULIAN', 0, '2017-09-06', 'QUEZON CITY', 'MALE', '', 'BLK 4 LOT 23 EASTWIID VILLA BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9560550505', 'CATHOLIC', 'MA. JOANNA JULIAN', 'JASON S. LORESTO', '', '', '2024-05-17', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2187, '24-G2-0822', 'BANAL', 'GABRIELLE', 'SAN JUAN', 0, '2016-11-21', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '#32 SAN MATEO ST. CORTIJOS DE SAN RAFAEL SUBD. SAN RAFAEL RODRIGUEZ RIZAL', '09750369089 / 09216854052', 'CATHOLIC', 'RHEA T. SAN JUAN ', 'ERWIN BANAL', '', '', '2024-06-07', 'WALK IN', '109471220014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2188, '24-G2-0842', 'ASUNCION', 'AARON GABRIEL', 'EMBUSCADO', 0, '2017-09-08', 'SAN MATEO RIZAL', 'MALE', '', '280 LIBONGCO 1, MANGGAHAN RODRIGUEZ, RIZAL', '09228196365 / 09325554782', 'CATHOLIC', 'RUBY ASUNCION', 'ALLAN JUNEL ASUNCION ', '', '', '2024-06-19', 'WALK IN', '425686220008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MA. CORAZON ASUNCION'),
(2189, '24-G2-0855', 'ADUVISO', 'ZAE LYNNEVE', 'GRENGIA', 0, '2017-10-13', 'QUEZON CITY', 'FEMALE', '', '', '', '', '', '', '', '', '2024-02-26', 'WALK IN', '410602220024', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2190, '24-G2-0879', 'BALATUCAN', 'MARIA CARINA BEIL', 'HERNANDEZ', 0, '2001-01-01', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'BLK 41 LOT14 CENTELLA HOMES SUBDIVISION, SAN ISIDRO RODRIGUEZ RIZAL\r\n', '9062262629', 'CATHOLIC', 'GEORGINA ANA ALAYON', 'JEFFREY G. ALAYON', 'N/A', '', '2024-07-05', 'WALK IN', '425724220018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2191, '24-G2-0901', 'DE LA PUNTA', 'AALIYAH', 'MELLA', 0, '2017-02-16', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 3 LOT 39 B DOÑA MARIA BURGOS, RODRIGUEZ, RIZAL', '9569226303', 'CATHOLIC', 'DANICA JOY DE LA PUNTA', 'PAULO DE LA PUNTA', '', '', '2024-07-12', 'WALK IN', '109466220035', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2192, '24-G2-0911', 'APONDAR', 'ZARIAH LLANCZE', 'REYES', 0, '2017-10-20', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '622 P.RODRIGUEZ ST. SAN RAFAEL ROD. RIZAL', '9305693503', 'CATHOLIC', 'MARY CLAUDINE REYES', 'JONATHAN APONDAR', '', '', '2024-07-29', 'WALK IN', '410602220075', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2193, '24-G2-0912', 'JAVIER', 'YASHICA BREYLEIGH ', 'QUINITIO', 0, '2017-08-22', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PH 1 BLK 9 LOT 83 EASTBELLEVUE RODRIGUEZ RIZAL', '9053529460', 'CATHOLIC', 'LAHNEE QUINITIO', 'ALTER JAVIER', '', '', '2024-07-30', 'WALK IN', '136501220165', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2194, '23-G2-0668', 'AGCAOILI', 'MYRIA AREXSANDRIANNA', 'MELENDRES', 0, '2016-04-06', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 2 BLK 60 LOT 30 EASTWOOD RESIDENCES, SAN ISISDRO RODRIGUEZ RIZAL', '9178968779', 'CATHOLIC', 'MYLA MYR AGCAOILI', 'REX AGCAOILI', '', '', '2024-06-27', 'WALK IN', '109466210441', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2195, '22-G1-0496', 'BARRUGA', 'ETHAN KOBE', 'FERNANDEZ', 0, '2016-06-28', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 5 LOT 23 LILY ST. ROSA VERDE 1 SAN RAFEL ROD. RIZAL', '9553185220', 'CATHOLIC', 'MICHELLE FERNANDEZ', 'N/A', '', '', '2024-06-24', 'WALK IN', '410602210002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2196, '23-G2-0749', 'DE LEON', 'CASTEL ZABASTIENE', 'SUMAGAYSAY', 0, '2015-09-30', 'MANILA', 'MALE', '', 'BLK 12A LOT 16 PHASE 5 EASTWOOD RESIDENCES BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9207228289', 'CATHOLIC', 'LALAINE HANNALE S. DE LEON', 'MARLONE DE LEON', '', '', '2024-07-23', 'WALK IN', '406376210005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2197, '22-G1-0456', 'GADACHO', 'ANDRYEON GRENTT ADAM', 'SORIANO', 0, '2016-10-28', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 15 LOT 36 PH 2 EASTWOOD GREENVIEW RODRIGUEZ RIZAL', '09996659829/ 8-7271054', 'CATHOLIC', 'ANALYN GADACHO', 'ANDRY GADACHO', '', '', '2024-07-09', 'WALK IN', '403106210018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2198, '22-G1-0516', 'GOLLA', 'RADILLE CZARKISHA', 'AYCO', 0, '2016-08-14', 'QUEZON CITY', 'FEMALE', '', 'BLK 2 LOT 8 PH 2 EXT. ESATWOOD GREENVIEW SAN ISIDRO RODRIGUEZ RIZAL', '9175224774', 'ROMAN CATHOLIC', 'RACHEL GOLLA', 'ADILBERTO GOLLA JR.', '', '', '2029-07-01', 'WALK IN', '109466210029', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2199, '22-G1-0470', 'GRAZA', 'KATHLEEN NICOLE', 'MAGUAD', 0, '2016-01-29', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 8 LOT 25 SUMMITVIEW SUBD. RODRIGUEZ RIZAL', '9989513010', 'ROMAN CATHOLIC', 'LIZA MARIE GRAZA', 'JOEY GRAZA', '', '', '2024-07-03', 'WALK IN', '409963210002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2200, '21-K-0346', 'GRUTAS', 'REN CHARLES', 'EVIA', 0, '2016-05-21', 'SAN MATEO RIZAL', 'MALE', '', 'PHASE 3B BLK 25 LOT 18, EASTWOOD GREENVIEW SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '9062727844/9063872830', 'CATHOLIC', 'MARILYN GRUTAS', 'RHOMMEL GRUTAS ', '', '', '2024-07-26', 'WALK IN', '425623210003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2201, '23-G2-0724', 'GUILLERMO', 'BRYCE ANGELL', 'AGUSTIN', 0, '2016-07-01', 'SAN MATEO RIZAL', 'MALE', 'FILIPINO', 'PHASE 3B B13 LOT 20 EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '9192974605', 'CATHOLIC', 'ANGELICA GUILLERMO', 'BRYAN GUILLERMO', 'N/A', '', '2024-07-27', 'WALK IN', '425691210002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2202, '22-G1-0441', 'PADILLA', 'JOSEPH ANTHONY', 'LOA', 0, '2016-07-26', 'QUEZON CITY', 'MALE', '', 'BLK 13 LOT 12 PHASE 2, MONTEBRISA SIBD. MONTALBAN, RIZAL', '9178093058', 'CATHOLIC', 'MAYBELL PADILLA', 'LARK ANTHONY PADILLA', '', '', '2024-07-05', 'WALK IN', '410602210010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2203, '22-G1-0419', 'PERIÑA', 'ARJANE', 'DELA CRUZ', 0, '2015-12-02', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 10 LOT 13 CORTIJOS DE SAN RAFAEL, SAN RAFAEL, ROD. RIZAL', '9634310138', 'CATHOLIC', 'KRISTINE DELA CRUZ', 'ARNULFO PERIÑA', '', '', '2024-06-25', 'WALK IN', '408915210019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2204, '22-G1-0420', 'PERIÑA', 'ARNHILO', 'DELA CRUZ', 0, '2015-01-11', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 10 LOT 13 CORTIJOS DE SAN RAFAEL, SAN RAFAEL, ROD. RIZAL', '963431038', 'CATHOLIC', 'KRISTINE DELA CRUZ', 'ARNULFO PERIÑA', '', '', '2024-06-25', 'WALK IN', '408915210018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2205, '23-G2-0764', 'POSPOS', 'KYRA JESSICA', 'SIANGHIO', 0, '2017-04-20', 'QUEZON CITY', 'FEMALE', '', 'BLK 28 LOT 37 NTA VILLAGE SAN JOSE RODRIGUEZ, RIZAL', '9948566805', 'CATHOLIC', 'ANA ERICA SIANGHIO', 'PRESIANO POSPOS', '', '', '2024-07-15', 'WALK IN', '109461210125', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2206, '23-G2-0626', 'PUA', 'WYNONA XANDREA', 'BALBINO', 0, '2016-05-04', 'MONTALBAN RIZAL', 'FEMALE', '', 'PHASE 1 HILLSIDE SAN RAFAEL, RODRIGUEZ, RIZAL', '9271722330', 'CATHOLIC', 'LORNA PUA', 'FLORANTE PAU', '', '', '2024-07-02', 'WALK IN', '109479210354', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2207, '22-G1-0513', 'RAMOS', 'MISCHKA JENICA', 'YAP', 0, '2000-01-01', 'MANILA', 'FEMALE', '', '641 TOBLERONE ST. ESPIRITU SUBD. BALITE ROD. RIZAL', '9474153031', 'CATHOLIC', 'ABIGAIL YAP', 'MARK JACKY JAMES RAMOS', '', '', '2024-07-02', '', '410602210035', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2208, '22-G1-0422', 'SOLIVEN', 'CASPIAN ANGELUS', 'LEYNES', 0, '2015-12-28', 'MARIKINA CITY', 'MALE', '', '65 SAN MIGUEL DRV. CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '9999206849', 'CATHOLIC', 'CRISTINA SOLIVEN', 'ALLAN SOLIVAN', '', '', '2024-06-13', 'WALK IN', '109479210001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CRISTINA SOLIVEN'),
(2209, '22-G1-0448', 'STA. MARIA', 'GAVIN XANDER', 'INFANTE', 0, '2016-08-20', 'SAN MATEO RIZAL', 'MALE', '', '37 P. RODRIGUEZ ST. SAN RAFAEL ROD. RIZAL', '9429822426', 'ROMAN CATHOLIC', 'MARI GOLD STA. MARIA', 'ARVIN B. STA. MARIA', '', '', '2024-06-08', 'WALK IN', '109479210343', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARI GOLD STA. MARIA'),
(2210, '17-PK-0378', 'TAMPUCAO', 'FRANZ STEVEN LOUIS', 'ALMIREZ', 0, '2016-04-26', 'QUEZON CITY', 'MALE', '', 'P6 B5 L11 EASTWOOD RESIDENCES, RODRIGUEZ, RIZAL', '9171280513', 'ROMAN CATHOLIC', 'ANABEL TAMPUCAO', 'RODEL TAMPUCAO', '', '', '2024-06-29', 'WALK IN', '425623210005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2211, '22-G1-0507', 'VEGA', 'ZANE LUKAS', 'ESPANTO', 0, '2000-01-01', 'QUEZON CITY', 'MALE', '', 'BLK 18 LOT 50 GRANITE ST. SUMMIT VIEW SUBD. SAN RAFAEL ROD. RIZAL', '9273189637', 'CATHOLIC', 'ERMA ROSE VEGA', 'EDRICK AUGUSTO B. VEGA', '', '', '2024-06-29', '', '109466210174', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2212, '24-G3-0798', 'GERMEDIA', 'LUKAS ISSA', 'MAGAYON', 0, '2016-09-24', 'QUEZON CITY', 'MALE', '', 'BLK 79 LOT 10 PHASE 3 EASTWOOD RESIDENCES SAN ISISDRO, RODRIGUEZ, RIZAL', '9399021397', 'CATHOLIC', 'EMARIE GERMIDIA', 'PERCIVAL GERMIDIA', '', '', '2024-05-15', 'WALK IN', '403063210003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2213, '24-G3-0847', 'BUENVIAJE', 'CHRISTELLE', 'GABRIEL', 0, '2016-06-13', 'MONTALBAN RIZAL', 'FEMALE', '', 'BLK 1 LOT 11 BALIKATIN 1 MANGGAHAN  MONTALBAN RIZAL', '9332583699', 'CATHOLIC', 'ERIKA BELLE C. GABRIEL', 'HAROLD G. BUENVIAJE', '', '', '2024-06-20', 'WALK IN', '410174210008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ERIKA BELLE C. GABRIEL'),
(2214, '24-G3-0881', 'MALAGA', 'ROBELIZA', 'ESMUNDO', 0, '2016-03-01', 'MONTALBAN RIZAL', 'FEMALE', '', 'PHASE 4 LOT 1 BLK 1 EASTWOOD GREENVIEW SAN ISIDRO, RODRIGUEZ, RIZAL', '91732706047', 'CATHOLIC', 'ANALIZA MALAGA', 'ROBERT MALAGA', '', '', '2024-07-05', 'WALK IN', '410144210014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ANALIZA MALAGA'),
(2215, '24-G3-0906', 'MARCELO', 'CHRIS EMPEROR', 'MANDAP', 0, '2016-07-11', 'SAN MATEO RIZAL', 'MALE', '', '9004 VICTORIA COMPOUND STREET BRGY. GERONIMO RODRIGUEZ, RIZAL', '9669882775', 'CHRISTIAN', 'MARYANN LIZETTE MANDAP', 'NIKKO JOREL MARCELO', '', '', '2024-07-13', 'WALK IN', '410602210005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2216, '24-G3-0921', 'BITENG', 'KARA ESTELA FELIZ', 'HERNANDEZ', 0, '2016-08-07', 'MONTALBAN RIZAL', 'FEMALE', '', 'PHASE 5 LOT 8 BLK 4 EASTWOOD GREENVIEW SUBD. RODRIGUEZ, RIZAL', '9773125108', 'UCCP', 'IZA BITENG', 'JEFERSON BITENG', '', '', '2024-07-15', 'WALK IN', '425724210032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2217, '24-G3-0922', 'CORTEZ', 'SHIRLEY DENISE', 'FRANCISCO', 0, '2016-01-14', 'MONTALBAN RIZAL', 'FEMALE', '', '182  M.H DEL PILAR ST. SAN RAFEL', '9384324779', 'CATHOLIC', 'SHIRLEY R. CORTEZ', 'GUILLERMO B. CORTEZ JR. ', '', '', '2024-07-27', 'WALK IN', '109466210194', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2218, '23-G8-0723', 'AMANG', 'ZANIYAH RYLEE', 'BALDERAMA', 0, '2015-03-03', 'QUEZON CITY', 'FEMALE', '', 'BLK 17 LOT 53 SUMMITVIEW SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9289935793', 'CATHOLIC', 'ZORAIDA AMANG', 'ROLLY AMANG', '', '', '2024-07-09', 'WALK IN', '406606062001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2219, '19-PK-0223', 'AQUINO', 'JOAQUIN', 'N/A', 0, '2014-08-11', 'TAGUIG CITY', 'MALE', '', '46 SAN VICENTE ST. CORTIJOS SUBD. SAN RAFAEL ROD. RIZAL', '89972860/ 09458932569', 'CATHOLIC', 'JORLENE CHARMAINE AQUINO', 'N/A', '', '', '2024-06-13', 'WALK IN', '425623200001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2220, '23-G3-0659', 'ARCENAL', 'YUAN PAOLO', 'NAVARRA', 0, '2015-01-28', 'RODRIGUEZ, RIZAL', 'MALE', '', 'PHASE 1 BLK 1 LOT 65 CENTELLA HOMES SAN ISISDRO, RODRIGUEZ, RIZAL', '9672932313', 'CATHOLIC', 'SABRINA NAVARRA', 'RENANTE ARCENAL', '', '', '2024-07-17', 'WALK IN', '425690200015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2221, '22-G2-0532', 'AYUSON', 'MARK ACHILLES', 'DAVID', 0, '2000-01-01', 'SAN MATEO RIZAL', 'MALE', '', '27 SAN MATEO ST. CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '09150514915', 'ROMAN CATHOLIC', 'ELLA ELLEONORE AYUSON', 'MARK GERAL AYUSON', '', '', '2024-07-17', '', '109479200141', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2222, '22-G2-0417', 'BRANDIS', 'TIFFHANIE REIN', 'MAUHAY', 0, '2015-01-26', 'QUEZON CITY', 'FEMALE', '', 'BLK 16 LOT 7 PH 1 EASTWOOD VILLA SAN ISIDRO ROD. RIZAL', '9755246686', 'CATHOLIC', 'ROSALIE M. BRANDIS', 'JAYSON Q. BRANDIS', '', '', '2024-07-02', 'WALK IN', '425692200006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2223, '23-G3-0709', 'CABAS', 'RONISMEE CHARMAIGNE', 'RAMOS', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', '549 P. RODRIGUEZ ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9561868589', 'CATHOLIC', 'RONA CABAS', 'RICHARD CABAS', 'N/A', '', '2024-07-02', 'WALK-IN', '109479200127', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2224, '23-G3-0641', 'CAÑEZA', 'STEVEN JAKE', 'DE LEON', 0, '2015-03-27', 'MONTALBAN RIZAL', 'MALE', '', '578 C P. RODRIGUEZ ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '9204940698', 'CATHOLIC', 'SAMANTHA MAE DE LEON', 'JOVEN CAÑEZA', '', '', '2024-06-20', 'WALK IN', '109478200028', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SAMANTHA MAE DE LEON'),
(2225, '22-G2-0554', 'CASTILLO', 'EZECKIEL', 'APOSTOL', 0, '2014-09-04', 'RODRIGUEZ RIZAL', 'MALE', 'FILIPINO', 'BLK 3 LOT 11 RISA VERDE VILLAS SAN RAFAEL, RODRIGUEZ, RIZAL', '09396242323', 'CATHOLIC', 'MARIANNE APOSTOL', 'EKMAR CASTILLO, JR.', 'N/A', '', '2024-07-20', 'WALK IN', '109466200091', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2226, '22-G2-0546', 'CAYETANO', 'CLYD EDREE', 'SANTOS', 0, '2015-06-12', 'MONTALBAN RIZAL', 'MALE', '', '145 A. MABINI ST. BURGOS RODRIGUEZ RIZAL', '09618208262', 'CATHOLIC', 'SYRIL CAYETANO', 'EDWARD CAYETANO', '', '', '2024-06-18', 'WALK IN', '109462200070', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SYRIL CAYETANO'),
(2227, '23-G3-0606', 'CERON', 'MARIA PAULINE', 'CHENG', 0, '2015-09-15', 'SAN MATEO RIZAL', 'FEMALE', '', 'PHASE 1 BLK 5 LOT 85 EASTWIND HOMES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9178603980', 'CATHOLIC', 'MARICEL CERON', 'JEAN PAUL CERON', '', '', '2024-06-15', 'WALK IN', '425729200005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2228, '22-G2-0540', 'CUALES', 'ALLIANA EUNICE', 'ADORLO', 0, '2000-01-01', 'MARIKINA CITY', 'FEMALE', '', '384 G. BAUTISTA ST. SAN JOSE , RODRIGUEZ, RIZAL', '09171258055', 'ROMAN CATHOLIC', 'EULA CUALES', 'ALLAN RAY CUALES', '', '', '2024-06-15', '', '482991200017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2229, '23-G3-0702', 'DAGTA', 'SOFIA CASSANDRA', 'YAP', 0, '2000-01-01', 'CALOOCAN CITY', 'FEMALE', '', 'B3 L20 AMBER ST. SUMMIT VIEW SUBD., BRGY. SAN RAFAEL RODRIGUEZ, RIZAL', '9568629227', 'CATHOLIC', 'MARY ANN DAGTA', 'ARCHIE DAGTA', '', '', '2024-06-15', '', '136575200012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2230, '22-G2-0425', 'DE GUZMAN', 'ACHILLES NATHAN', 'DAMIAN', 0, '2014-10-27', 'MONTALBAN RIZAL', 'MALE', '', '314 COL. S. CRUZ ST. SAN RAFAEL ROD. RIZAL', '9079656003', 'CATHOLIC', 'PRINCESS JANE DE GUZMAN', 'JOHNHENRY DE GUZMAN', '', '', '2024-06-13', 'WALK IN', '403072200001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2231, '21-G1-0348', 'DE MESA', 'ALEXA KHAYELIN', 'FRESNOZA', 0, '2000-01-01', 'PARANAQUE CITY', 'FEMALE', '', 'B80 L5A METRO MANILA HILLS, RODRIGUEZ, RIZAL', '9270024106', 'ROMAN CATHOLIC', 'GEMMA DE MESA', 'PHILIP DE MESA', '', '', '2024-06-13', '', '406495190003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2232, '21-G1-0349', 'DIZON', 'WINSOME LUSTY ISRAEL', 'LEGITA', 0, '2014-08-07', 'RODRIGUEZ, RIZAL', 'MALE', '', 'DAP-DAP P. RODRIGUEZ ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '09398869062', 'ROMAN CATHOLIC', 'PAMIZON, LEGITA', 'ROLAND ALLAN DIZON', '', '', '2024-07-23', 'WALK IN', '425623190003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2233, '21-G1-0350', 'FALOGME', 'TYLER ZACHARIAS', 'N/A', 0, '2014-12-08', 'MANILA', 'MALE', '', 'BLK 71 LOT 31 PHASE 3A, EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9263524707', 'CATHOLIC', 'MONICA FALOGME', 'CYRUS MAGSINO', '', '', '2024-07-01', 'WALK IN', '401905200006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2234, '19-PK-0180', 'FERNANDEZ', 'DANIEL CIAN', 'CARREON', 0, '2014-12-01', 'QUEZON CITY', 'MALE', '', 'BLOCK 9 LOT 10 PHASE 2 EASTWIND HOMES SUBD., SAN ISIDRO RODRIGUEZ RIZAL', '9563052282', 'ROMAN CATHOLIC', 'MA. ADELAIDA FERNANDEZ', 'DANNY FERNANDEZ', '', '', '2024-06-27', 'WALK IN', '425623200003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MA. ADELAIDA FERNANDEZ'),
(2235, '22-G2-0493', 'GARCIA', 'MARY JOHANNA JEFFRIE', 'MAGLAYA', 0, '2014-09-08', 'YNARES HOSP. BURGOS', 'FEMALE', '', 'BLK 4 LOT 4 ST. JOSEPH ST. KING DAVID SUBD. BURGOS RODRIGUEZ RIZAL', '09762639532', 'ROMAN CATHOLIC', 'JOAN M. GARCIA', 'JEFF J. GARCIA', '', '', '2024-07-12', 'WALK IN', '425720200011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2236, '2-G3-0598', 'LAPING', 'CASSI HYACINTH', 'TARIO', 0, '2015-02-17', 'QUEZON CITY', 'FEMALE', '', 'PHASE 2 BLK 42 LOT 5 EASTWOOD RESIDENCES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '09198344018 / 83984540', 'CATHOLIC', 'RECHEL LAPING', 'FRANCIS LAPING', '', '', '2024-06-08', 'WALK IN', '425764200004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2237, '22-G2-0489', 'LARIOS', 'ERIC STANLEY', 'ALONZO', 0, '2015-08-01', 'QUEZON CITY', 'MALE', '', 'BLK12 LOT 106 PH 1A SUB URBAN VILL. SAN JOSE RODRIGUEZ RIZAL', '09995403155/ 09157370793', 'CATHOLIC', 'MARIA LEILA LARIOS', 'ENRICO LARIOS', '', '', '2024-07-04', 'WALK IN', '109469200699', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2238, '23-G3-0640', 'MAGAT', 'MATHEO JACOB', 'DE LEON', 0, '2000-01-01', 'MARIKINA CITY', 'MALE', '', '577 C P. RODRIGUEZ ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '931985025', 'CATHOLIC', 'JHOANNA JANE MAGAT', 'MARK ANTHONY MAGAT', '', '', '2024-07-04', '', '109466200191', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2239, '19-PK-0197', 'MIANO', 'JOAN EIZELLE', 'CORTES', 0, '2015-01-11', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '718 MOLAVE ST., SAN JOSE, RODRIGUEZ, RIZAL', '09176770749', 'CATHOLIC', 'MONICA MIANO', 'JONATHAN MIANO', '', '', '2024-07-15', 'WALK IN', '425623200006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2240, '22-G2-0414', 'OSA', 'THIRD LAWRENCE', 'BALABA', 0, '2000-01-01', 'PASIG CITY', 'MALE', '', 'BLK 1 LOT 91 PH 1M KASIGLAHAN VILL. SAN JOSE ROD. RIZAL', '9186511773', 'ROMAN CATHOLIC', 'FARRAH BALABA', 'LORETO OSA JR.', '', '', '2024-07-15', '', '40891920002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2241, '22-G2-0536', 'RAMOS', 'FRANCINE LEANN', 'SULIT', 0, '2014-12-04', 'SAN MATEO RIZAL', 'FEMALE', '', 'BLK 13 LOT 10 APT. B SAN DIEGO ST. CORTIJOS SUBD. SAN RAFAEL ROD. RIZAL', '09477476377', 'CATHOLIC', 'JOCELYN ANN S. RAMOS', 'FRANCO LEO RAMOS', '', '', '2024-07-11', 'WALK IN', '109495200558', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2242, '19-PK-0204', 'RIVERA', 'MARIONNE AALIYAH', 'MANLUNAS', 0, '2015-04-15', 'QUEZON CITY', 'FEMALE', '', 'BLK 2 LOT 3 ROSA VERDE VILLAS SAN RAFAEL ROD. RIZAL', '09561867810', 'ROMAN CATHOLIC', 'MARY GUIL M. RIVERA', 'RONALDO C. RIVERA', '', '', '2024-07-12', 'WALK IN', '425623200009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2243, '21-G1-0351', 'SARMING', 'ALLYSSA', 'PASTORAL', 0, '2014-10-22', 'MONTALBAN RIZAL', 'FEMALE', '', 'B14 L37 CHARMIZON SUBD. RODRIGUEZ RIZAL', '9165314089', 'CATHOLIC', 'GRACE SARMING', 'MONLITO SARMING', '', '', '2024-06-22', 'WALK IN', '425761200007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GRACE SARMING'),
(2244, '19-PK-0231', 'SENO', 'HADRIEL', 'DURAN', 0, '2015-06-14', 'QUEZON CITY', 'MALE', '', 'B1 L9 ROSA VERDE SUBD. BRGY. MANGGAHAN , RODRIGUEZ, RIZAL', '9298799762', 'ROMAN CATHOLIC', 'VIA SENO', 'LORBER SENO', '', '', '2024-06-29', 'WALK IN', '425623200004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2245, '22-G2-0501', 'TIANCO', 'ENZO KYLER', 'GABRIEL', 0, '2015-05-21', 'ILIGAN CITY', 'MALE', '', '500 M.H. DEL PILAR ST. SAN RAFAEL ROD. RIZAL', '09954679071', 'ROMAN CATHOLIC', 'KIMBERLY TIANCO', 'EARL DAVID TIANCO', '', '', '2024-06-10', 'WALK IN', '409561200013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2246, '22-G2-0506', 'VEGA', 'ZOLA LAUREN', 'ESPANTO', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'BLK 18 LOT 50 GRANITE ST. SUMMITVIEW SUBD. SAN RAFAEL RODRIGUEZ RIZAL', '09273189637/09950186299', 'CATHOLIC', 'ERMA ROSE VEGA', 'EDRICK AUGUSTO VEGA', '', '', '2024-06-10', '', '109466200109', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2247, '24-G4-0834', 'BUÑAG', 'JOHN CASTIEL', 'GIBIN', 0, '2015-09-15', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 48 LOT 25 PHASE 2 EASTWOOD RESIDENCE 2 BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9759613124', 'CATHOLIC', 'REBECA BUÑAG', 'YSRAEL S. BIÑAG', '', '', '2024-06-18', 'WALK IN', '109466200494', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'REBECA BUÑAG'),
(2248, '24-G4-0839', 'TACIS', 'SAMANTHA MEARL', 'BALASTA', 0, '2014-11-26', 'PASIG CITY', 'FEMALE', '', 'BLK 9 LOT 150 PHASE 1B EASTWOOD RESIDENCES BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9665422943', 'CATHOLIC', 'MERELYN B. YACIS', 'REGGIENALD TACIS', '', '', '2024-06-18', 'WALK IN', '109478200350', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'REGGIENALD TACIS'),
(2249, '24-G4-0858', 'TAGARO', 'ASHER', 'PADILLA', 0, '2014-06-23', 'SAN MATEO RIZAL', 'MALE', '', 'BLK 13 LOT 18 GREENVIEW PHASE 4 VICTORIA TRAIL BRGY. SAN ISISDRO RODRIGUEZ, RIZAL', '9777765124', 'CATHOLIC', 'N/A', 'NICANOR TAGARO', '', '', '2024-06-24', 'WALK IN', '403075200034', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LALA GARCIA'),
(2250, '24-G4-0856', 'AQUINO', 'JAY LIAM', 'SEDURIFA', 0, '2014-12-22', 'MONTALBAN RIZAL', 'MALE', '', 'BLK 3 LOT 2 ACACIA HOMES SAN RAFAEL RODRIGUEZ RIZAL', '9190000820', 'CATHOLIC', '', '', '', '', '2024-06-24', 'WALK IN', '109462200090', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2251, '20-G1-0307', 'BALLATAN', 'SOPHIA ELISSE', 'FERNANDEZ', 0, '2014-03-16', '16/03/2014 12:00:00 AM', 'FEMALE', '', 'BLK 5 LOT 23 LILY ST. ROSA VERDE SUBD PHASE 1 SAN RAFAEL, RODRIGUEZ, RIZAL', '529-1871/ 09553185220', 'CATHOLIC', 'MICHELLE FERNANDEZ', 'ULYSSES SUBONG', '', '', '2024-07-17', 'WALK IN', '425758190003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2252, '18-PK-0458', 'BITANCOR', 'JOSEPH ALARIC', 'N/A', 0, '2013-05-09', 'MARIKINA CITY', 'MALE', '', '571 P RODRIGUEZ ST SAN RAFAEL RODRIGUEZ RIZAL', '86314936/ 09279548023', 'ROMAN CATHOLIC', 'ALLERIE RIEL BITANCOR', 'N/A', '', '', '2024-07-10', 'WALK IN', '425623190002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2253, '18-PK-0457', 'CABUHAL', 'KRAIGG XYCKIE ZEBEDIAH', 'OBICO', 0, '2013-10-25', 'MONTALBAN RIZAL', 'MALE', '', 'BLOCK 10 LOT 21 SUMMIT VIEW SUBDIVISION SAN RAFAEL RODRIGUEZ RIZAL', '9959426493', 'CATHOLIC', 'KATHY MAY CABUHAL', 'KERKS CABUHAL', '', '', '2024-07-02', 'WALK IN', '425623190004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2254, '18-PK-0149', 'CHANGIZ', 'MERHANGEL', 'NACION', 0, '2013-12-25', 'MONTALBAN RIZAL', 'MALE', '', '105 A BONIFACIO ST ROSARIO ROD RIZAL', '9501720156', 'CATHOLIC', 'MAILA NACION', 'MEYSAM CHANGIZ', '', '', '2024-07-03', 'WALK IN', '403072190004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2255, '23-G4-0758', 'DAMPIL', 'RAPHAEL', 'OSIA', 0, '2014-04-29', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', 'B23 L9 CAAVITE ST. AMITYVILLE SUBD. SAN JOSE RODRIGUEZ RIZAL', '9453701248', 'CATHOLIC', 'KATHLYN JOY O. DAMPIL', 'RONDOLPH V. DAMPIL', 'N/A', '', '2024-07-04', 'WALK IN', '109461190105', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2256, '22-G3-0487', 'DANZALAN', 'SANDY', 'MEGIAS', 0, '2014-01-02', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 3 LOT 29 PH 1 AMETHYST ST. SUMMIVIEW SAN RAFEL ELEM SCHOOL', '09195665361', 'ROMAN CATHOLIC', 'DAISY DANZALAN', 'SONNY DANZALAN', '', '', '2024-07-23', 'WALK IN', '403072180017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2257, '18-K-0138', 'DE LEON', 'SOPHIA', 'GALLEMA', 0, '2012-04-10', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'B18 L7 DOLLAR ST CARLTON VILL, RODRIGUEZ, RIZAL', '9212761271', 'CATHOLIC', 'LUALHATI DE LEON', 'RODERICK C. DE LEON', 'N/A', '', '2024-07-09', 'WALK IN', '425623180015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '');
INSERT INTO `student_db` (`id`, `student_id`, `lname`, `fname`, `mname`, `age`, `bdate`, `bplace`, `gender`, `nationality`, `address`, `contact_no`, `religion`, `mother_name`, `father_name`, `health_concern`, `email_add`, `date_registered`, `reg_mode`, `lrn`, `esc_no`, `school_last_attended`, `grade_level`, `flyer_church`, `flyer_school`, `career_talk`, `facebook_page`, `tarp_buildings`, `tarp_tricycles`, `others`, `referral`, `others_specify`, `referred_by`, `sched_exam`, `sched_interview`, `guardian`) VALUES
(2258, '18-PK-0087', 'DELA CRUZ', 'JUSTIN ABRIELL', 'SANTOS', 0, '2013-09-13', 'MARIKINA CITY', 'MALE', '', 'BLK 2 LOT 8 BIRMINGHAM DRIVE MEADOWS BURGOS, ROD. RIZAL', '9171188760', 'CATHOLIC', 'ARLEEN SANTOS', 'JOEL DELA CRUZ', '', '', '2024-07-11', 'WALK IN', '425623190010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2259, '22-G3-0556', 'GUILLEN', 'JOHN PHILIP', 'DITALO', 0, '2014-07-11', 'FEU HOSP. Q.C', 'MALE', 'FILIPINO', 'BLK 29 LOT 4 CALAVITE ST. AMITYVILLE SUBD. RODRIGUEZ, RIZAL', '09498523521', 'ROMAN CATHOLIC', 'MA. EXILITA D. GUILLEN', 'PHILIPP S. GUILLEN', '', '', '2024-07-17', 'WALK IN', '42579020005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2260, '18-PK-0145', 'JACALA', 'ANGELA NICOLE', 'BALLESTEROS', 0, '2014-06-17', 'QUEZON CITY', 'FEMALE', '', 'PHASE 8 BLK 66 LOT 26 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9161702216', 'CATHOLIC', 'IVYGAIL JACALA', 'SAMMY JACALA', '', '', '2024-07-01', 'WALK IN', '425623190006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2261, '18-PK-0111', 'LUNA', 'PAUL ETHAN CHARLES', 'MISLANG', 0, '2013-10-10', 'TAGUIG', 'MALE', '', 'PHASE 3B BLOCK 8 LOT 24 EASTWOOD GREENVIEW MONTALBAN RODRIGUEZ RIZAL', '09175888855/ 0270888084', 'CATHOLIC', 'ESTRELLITA MISLANG', 'GINO CARLO MANALO LUNA', '', '', '2024-07-19', 'WALK IN', '425623190014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2262, '20-G1-0306', 'PALAGHICON', 'GENESIS', 'G', 0, '2013-12-16', 'QUEZON CITY', 'MALE', '', 'BLOCK 2 LOT 8 ROSA VERDE VILLAS, SAN RAFAEL, RODRIGUEZ, RIZAL', '0286407281/ 09176581227', 'ROMAN CATHOLIC', 'JENNIFER G. PALAGHICON', 'ALFREDO T. PALAGHICON JR.', '', '', '2024-05-22', 'WALK IN', '425654190005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JENNIFER G. PALAGHICON'),
(2263, '22-G3-0555', 'RAJADORAI', 'ZACHARIAH', 'BORDEOS', 0, '2013-07-05', 'SAN MATEO RIZAL', 'MALE', '', '440 M.H DEL PILAR SAN RAFAEL, MONTALBAN RIZAL', '09054245792', 'ROMAN CATHOLIC', 'MARIELL BORDEOS', 'IVAN RAJADORIA', '', '', '2024-07-16', 'WALK IN', '425624190026', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2264, '22-G3-0571', 'RAMOS', 'FRANZ GABRIEL', 'BENEDICTO', 0, '2014-03-06', 'MARIKINA CITY', 'MALE', '', 'BLK 2 LO T 4 AMETHYST ST. SUMMITVIEW RODRIGUEZ, RIZAL', '09294381532', 'ROMAN CATHOLIC', 'RODA RAMOS', 'FRACHESCO RAMOS', '', '', '2024-07-30', 'WALK IN', '409963190002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2265, '22-G3-0535', 'RAMOS', 'PRINCESS PAMELA', 'SULIT', 0, '2013-11-08', 'MARIKINA CITY', 'FEMALE', '', 'BLK 13 LOT 10 APT B SANTIAGO CORTIJOS SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '09477476377', 'CATHOLIC', 'JOCELYN ANN RAMOS', 'FRANCO LEO RAMOS', '', '', '2024-07-11', 'WALK IN', '406808190066', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2266, '24-G5-0838', 'TACIS', 'DON DRAKE RENAULD', 'BALASTA', 0, '2013-11-08', 'PASIG CITY', 'MALE', '', 'BLK 9 LOT 150 PHASE 1B EASTWOOD RESIDENCES BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9665422943', 'CATHOLIC', 'MERELYN B. YACIS', 'REGGIENALD TACIS', '', '', '2024-06-18', 'WALK IN', '425685180015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'REGGIENALD TACIS'),
(2267, '24-G5-0923', 'CAPELLAN', 'REIN MICHAEL', 'DAGUI', 0, '2014-04-11', 'QUEZON CITY', 'MALE', '', 'PHASE 5 BLOCK 12 LOT 15 EASTWOOD GREENVIEW SUBD, SAN ISISDRO RODRIGUEZ RIZAL', '9205491148', 'CATHOLIC', 'RACHELLE D CAPELLAN', 'SAYLITO CAPELLAN JR.', '', '', '2024-07-19', 'WALK IN', '403075200020', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2268, '22-G4-0545', 'ABUAN', 'JOISSE DOMINIQUE', 'N/A', 0, '2011-12-13', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'BLOCK 4 LOT 5 MEDITERRANEAN HEIGHTS 2, SAN JOSE, MONTALBAN, RIZAL', '09613113951', 'CATHOLIC', 'DENISE MIKAELA RUIZ', 'JOSEPH ANGELO RUIZ', 'N/A', '', '2024-07-03', 'WALK IN', '107904170190', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2269, '19-G1-0237', 'ABUAN', 'LAKSHMI ELY', 'MELMIDA', 0, '2013-05-12', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'BLOCK 4 LOT 5 MEDITERRANEAN HEIGHTS 2, SAN JOSE, MONTALBAN, RIZAL', '09983460676 | 0966746 9844', 'ROMAN CATHOLIC', 'JOMELYN M. ABUAN, DPA', 'ERWIL MARC N. ABUAN', 'N/A', '', '2024-07-03', 'WALK IN', '425686180012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2270, '19-G1-0221', 'ACUVERA', 'MELISA', 'BAÑARES', 0, '2012-09-11', 'MONTALBAN RIZAL', 'FEMALE', 'FILIPINO', 'BLK 10A LOT 7 PH 1 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09283002708', 'CATHOLIC', 'VIVIAN B. ACUVERA', 'MELCHOR ACUVERA', 'N/A', '', '2024-07-12', 'WALK IN', '425687180002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2271, '19-G1-0228', 'AQUINO ', 'MARC LIAM ALDRICH', 'ALMIREZ', 0, '2013-01-31', 'MANILA', 'MALE', '', 'PH 3 BLK 86 LOT 11 EASTWOOD RESIDENCES RODRIGUEZ RIZAL', '9778190610', 'ROMAN CATHOLIC', 'AISEL AQUINO', 'EDRALYN AQUINO', '', '', '2024-06-29', 'WALK IN', '425787180010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2272, '19-G1-0215', 'AREVALO', 'KYLE MATTHEW', 'VARGAS', 0, '2012-11-05', 'QUEZON CITY', 'MALE', 'FILIPINO', 'P2 B54 L8 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '09399294226', 'CATHOLIC', 'CHRISTINE CAMILLE VARGAS ', 'JONATHAN ROLAND TABULOG', 'N/A', '', '2024-06-08', 'WALK IN', '425764170009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2273, '21-G3-0352', 'ASUNCION', 'ALIJAH RAPHAEL', 'EMBUSCADO', 0, '2013-10-08', 'SAN MATEO RIZAL', 'MALE', '', '280 LIBONGCO 1 SUBD. , MANGGAHAN, RODRIGUEZ, RIZAL', '9228196365', 'ROMAN CATHOLIC', 'RUBY E. ASUNCION', 'ALLAN JUNEL SM. ASUNCION', '', '', '2024-06-19', 'WALK IN', '425690180022', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RUBY E. ASUNCION'),
(2274, '22-G4-0445', 'AYUSON', 'KARISHMA SOFIA', 'DAVID', 0, '2000-01-01', 'SAN MATEO RIZAL', 'FEMALE', '', '#27 SAN MATEO ST. CORTIJOS SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9150514915', 'ROMAN CATHOLIC', 'ELLA ELLEONOR D. AYUSON', 'MARK GERAL C. AYUSON', '', '', '2024-06-19', '', '403072190019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2275, '22-G4-0517', 'BARTOLATA', 'ANNIKA GAIL', 'TABUCAL', 0, '2013-07-04', 'QUEZON CITY', 'FEMALE', '', 'SITIO GULOD SAN ISIDRO, RODRIGUEZ, RIZAL', '9150639425', 'CATHOLIC', 'JENNIFER BARTOLATA', 'ARIES BARTOLATA', '', '', '2024-06-19', 'WALK IN', '425690180013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JENNIFER BARTOLATA'),
(2276, '22-G4-0519', 'BIÑAS', 'VIEN DENNISE', 'TENORIO', 0, '2012-06-21', 'MONTALBAN RIZAL', 'FEMALE', '', '42 SAN VICENTE ST. CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '9616028083', 'ROMAN CATHOLIC', 'GERALDINE VIÑAS', 'EDWIN BIÑAS', '', '', '2024-06-26', 'WALK IN', '425720170053', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2277, '17-PK-0281', 'BITANCOR', 'GWEN', 'N/A', 0, '2012-06-05', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '571 P RODRIGUEZ ST., SAN RAFAEL, MONTALBAN, RIZAL', '9279548023', 'ROMAN CATHOLIC', 'ALLERIE KAITA BITANCOR', 'N/A', '', '', '2024-07-10', 'WALK IN', '425623180013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2278, '19-G1-0170', 'BUERA', 'ANDI CAITLIN', 'CRUZ', 0, '2012-03-31', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', '79 M. H. DEL PILAR ST., BALITE, RODRIGUEZ, RIZAL', '09275018751', 'CATHOLIC', 'VANESSA JOY BUERA', 'ANDRIAN BUERA', 'N/A', '', '2024-07-12', 'WALK IN', '403075180019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2279, '22-G4-0531', 'DEL ROSARIO', 'CAYD AKEEZHA', 'TERANTE', 0, '2013-09-17', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 8 LOT 178 PH 3 EASTWIND HOMES SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9157189182', 'ROMAN CATHOLIC', 'RHODELYN DEL ROSARIO', 'JOEL DEL ROSARIO', '', '', '2024-07-11', 'WALK IN', '42569018005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2280, '18-K-0103', 'ERMITAÑO', 'SANDREI JACOB', 'CADIZ', 0, '2013-08-02', 'QUEZON CITY', 'MALE', 'FILIPINO', 'P5 BLK 51 LOT 21 CENTELLA HOMES, RODRIGUEZ RIZAL', '9176470803', 'ROMAN CATHOLIC', 'GREAR GAY C. ERMITAÑO', 'SANROSE F. ERMITANO', 'N/A', '', '2024-07-20', 'WALK IN', '425623180004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2281, '17-PK-0276', 'FERNANDEZ', 'DAN CLARENCE', 'CARREON', 0, '2013-07-25', 'QUEZON CITY', 'MALE', '', 'BLOCK 9 LOT 10 PHASE 2 EASTWIND HOMES SUBD. SAN ISIDRO RODRIGUEZ RIZAL', '9563052282', 'ROMAN CATHOLIC', 'MA. ADELAIDA C. FERNANDEZ', 'DANNY A. FERNANDEZ', '', '', '2024-06-27', 'WALK IN', '425623180005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2282, '16-PK-0151', 'FULONG', 'LEILL', 'QUERIJERO', 0, '2011-08-08', 'CAVITE', 'MALE', '', '11 A. BONIFACIO ST., BALITE, RODRIGUEZ, RIZAL', '9434487135', 'CATHOLIC', 'SHERILL FULONG', 'LEO FULONG', '', '', '2024-07-02', 'WALK IN', '425623170012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2283, '22-G4-0492', 'GARCIA', 'NIÑA LOUISE', 'MAGLAYA', 0, '2013-06-21', 'SAN MATEO RIZAL', 'FEMALE', '', 'BLK 4 LOT 4 SAINT. JOSEPH ST. KINGDAVID SUBD. BURGOS RODRIGUEZ RIZAL', '9762639532', 'ROMAN CATHOLIC', 'JOAN M. GARCIA', 'MARCEL NIÑO JEFFERSON GACIA', '', '', '2024-07-12', 'WALK IN', '403075180023', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2284, '21-G3-0353', 'GARIBAY', 'SOPHIA OCEANA MARI', 'MALASARTE', 0, '2013-02-03', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'P. RODRIGUEZ, ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9984242751', 'ROMAN CATHOLIC', 'MA. OLIVIA GARIBAY', 'MARVIN GARIBAY', 'N/A', '', '2024-07-26', 'WALK IN', '408915180010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2285, '19-G1-0188', 'GUCELA', 'ADEON', 'OLARTE', 0, '2012-04-02', 'RODRIGUEZ, RIZAL', 'MALE', '', 'EASTWOOD RESIDENCE PHASE 4 BLK 28 LOT 4 SAN ISIDRO RODRIGUEZ RIZAL', '9174655982', 'CATHOLIC', 'GRACE OLARTE GUCELA', 'CARLO GUCELA', '', '', '2024-07-15', 'WALK IN', '425721180015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2286, '17-PK-0341', 'GUZMAN', 'JOSE NATHANIEL', 'REYES', 0, '2013-06-06', 'MONTALBAN RIZAL', 'MALE', '', 'B 17 L 9 SAN VICENTE ST., CORTIJOS SUB.SAN RAFAEL ROD.RIZAL', '9203665105', 'ROMAN CATHOLIC', 'JACQUELINE R.GUZMAN', 'JOSE ARISTTOTLE G.GUZMAN', '', '', '2024-07-10', 'WALK IN', '425623180007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2287, '19-G1-0196', 'KHALFEY', ' SARAH MISHKA', 'ABAYAN', 0, '2013-01-26', 'MANILA', 'FEMALE', 'FILIPINO', 'B2 L2 PHASE 3A EASTWOOD GREENVIEW SUBD SAN ISIDRO RODRIGUEZ RIZAL', '09182028831', 'ROMAN CATHOLIC', 'CRISTINA ABAYAN', 'RAHIL HASSAN KHALFEY', 'N/A', '', '2024-06-18', 'WALK IN', '425691180020', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ARNETTE N. ABAYAN'),
(2288, '22-G4-0509', 'LA MADRID', 'MIGUEL NASH', 'EBALAN', 0, '2013-01-09', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 32 LOT 11 PH 3 CENTELLA HOMES SAN ISIDRO RODRIGUEZ RIZAL', '9420930847', 'ROMAN CATHOLIC', 'SONIA LA MADRID', 'ERNIE LA MADRID', '', '', '2024-07-16', 'WALK IN', '425690170045', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2289, '22-G4-0482', 'LEGARDE', 'RALF JORE', 'VALLER', 0, '2012-11-10', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 20 LOT 14 PHASE 2 SUMMIT VIEW SUBD. SAN RAFAEL ROD. RIZAL', '9568560271', 'ROMAN CATHOLIC', 'REYNOSA LEGARDE', 'JOJET LEGARDE', '', '', '2024-05-22', 'WALK IN', '408915180001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'X'),
(2290, '19-G1-0185', 'MACARAEG', 'LUCAS ALEXANDRIOUS', 'N/A', 0, '2012-11-08', 'MONTALBAN RIZAL', 'MALE', '', '262 E- DON EMILIO ZUÑIGA SUBD., MANGGAHAN, RODRIGUEZ, RIZAL', '9777077602', 'CATHOLIC', 'RUSJIE MACARAEG', 'N/A', '', '', '2024-07-23', 'WALK IN', '408915180067', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2291, '22-G4-0481', 'MAGRAMO', 'GLYVIL', 'VALLER', 0, '2013-03-02', 'QUEZON CITY', 'FEMALE', '', 'BLK 20 LOT 13 SUMMIT VIEW SUBD. SAN RAFAEL ROD. RIZAL', '9302330192', 'ROMAN CATHOLIC', 'GLADYS MAGRAMO', 'VIRGEL MAGRAMO', '', '', '2024-05-22', 'WALK IN', '408915180005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GLADYS MAGRAMO'),
(2292, '19-G1-0173', 'MASILANG', 'AHREN KIAN', 'BIGLANG-AWA', 0, '2013-09-04', 'MARIKINA CITY', 'MALE', '', 'BLK 4 LOT 12 ST. CATHERINE, FELICIDAD VILLAGE 1, BURGOS, RODRIGUEZ, RIZAL', '9206587152', 'CATHOLIC', 'RHOAN B. MASILANG-MASILANG', 'ALLAN C. MASILANG', '', '', '2024-07-02', 'WALK IN', '425624180019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2293, '22-G4-0508', 'MICHAEL', 'JHERMAINE ROSE', 'CIRIACO', 0, '2012-10-06', 'QUEZON CITY', 'FEMALE', '', '84 M.H. DEL PILAR ST. BALITE RODRIGUEZ RIZAL', '9081206529', 'CATHOLIC', 'ARLENE MICHAEL', 'PETER JOHN MICHAEL', '', '', '2024-07-18', 'WALK IN', '403072170023', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2294, '22-G4-0530', 'MONLEON', 'PRINCESS LOURRAINE', 'SAINES', 0, '2012-09-25', 'GAPAN CITY', 'FEMALE', '', 'BLOCK 11 LOT 97 PH2 EASTWIND HOMES SAN RAFAEL RODRIGUEZ, RIZAL', '9656207734', 'CATHOLIC', 'VANESSA MONLEON', 'JAMESON MONLEON', '', '', '2024-07-10', 'WALK IN', '425690180004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2295, '19-G1-0265', 'NACPIL', 'RHAYLA DENISE', 'CUALES', 0, '2000-01-01', 'MONTALBAN RIZAL', 'FEMALE', '', '384 G BAUTISTA ST. SAN JOSE RODRIGUEZ, RIZAL', '9153149447', 'CATHOLIC', 'CARLA LYNN CUALES', 'RYAN JOMEL NACPIL', '', '', '2024-07-10', '', '425694180012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2296, '22-G4-0524', 'SAN JUAN', 'KING JACOB', 'ESTONIDO', 0, '2012-01-12', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', '544 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '09194615665 | 09453896457', 'CATHOLIC', 'ANGELA MARGARETT ESTONIDO', 'JHERYLL SAN JUAN', 'N/A', '', '2024-07-17', 'WALK IN', '425760180005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2297, '19-G1-0187', 'SANTOS', 'SOPHIA', 'GIRAY', 0, '2013-07-09', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'B15 L6 P4 EASTWOOD RESIDENCES SUBD. SAN ISIDRO RODRIGUEZ RIZAL', '9055638275', 'CATHOLIC', 'LOURDES SANTOS', 'NOMAR SANTOS', '', '', '2024-07-11', 'WALK IN', '425721180024', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2298, '17-PK-0378', 'TAMPUCAO', ' FRANCHESKA SOPHIA LOUISE', 'ALMIREZ', 0, '2013-05-31', 'QUEZON CITY', 'FEMALE', '', 'PHASE6 BLK15 LOT11 EASTWOOD RESIDENCES ,RODRIGUEZ, RIZAL', '9171280513', 'ROMAN CATHOLIC', 'ANABEL TAMPUCAO', 'RODEL TAMPUCAO', '', '', '2024-06-29', 'WALK IN', '425623180021', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2299, '17-PK-0304', 'YANUARIA', 'TASHIA KIMENA', 'DEL ROSARIO', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'B15 L46 CETRINE ST. SUMMITVIEW SUBD. BRGY. SAN RAFAEL, RODRIGUEZ, RIZAL', '9771674120', 'CATHOLIC', 'ROSALYN DEL ROSARIO', 'REYNOLD YANURIA', '', '', '2024-06-29', '', '425623180022', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2300, '22-G4-0572', 'FERNANDEZ', 'PHOEBE FRITZIE', 'N/A', 0, '2013-02-04', 'TACLOBAN CITY', 'FEMALE', '', 'BLK 16 LOT 12 A PH 6 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9563624517', 'CATHOLIC', 'FRITZIE C. FERNANDEZ', 'NOEL A. TINAYA', '', '', '2024-06-13', 'WALK IN', '121334180071', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2301, '23-G5-0577', 'ALMIROL', 'MYIESHA ANNE ATHANIEL', 'CLATA', 0, '2013-01-26', 'MANILA', 'FEMALE', '', 'PHASE 2 BLOCK 21 LOT 12 EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '9499681712', 'ROMAN CATHOLIC', 'MAE ANNE CLATA', 'JONATHAN ALMIROL', '', '', '2024-06-18', 'WALK IN', '425577180032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MAE ANNE CLATA'),
(2302, '23-G5-0607', 'FAJARDO', 'JOACHIM ELIJAH', 'SOL', 0, '2012-10-05', 'MONTALBAN RIZAL', 'MALE', '', 'BLK 7 LOT 39 SUMMITVIEW SUBD., SAN RAFAEL, RODRIGUEZ, RIZAL', '9215693606', 'CATHOLIC', 'JAMELYN FAJARDO', 'JOHN  ARISTOTLE FAJARDO', '', '', '2024-06-24', 'WALK IN', '109480180078', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2303, '23-G5-0628', 'CALIDGID', 'ION JOHN', 'CORPUZ', 0, '2012-10-10', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', 'BLK 6 LOT 5 VERDANTPOINT PHASE 5 E, SAN ISIDRO RODRIGUEZ, RIZAL', '9086303333', 'CATHOLIC', 'CATHERINE CALIDGID', 'NOEL CALIDGID', 'N/A', '', '2024-06-20', 'WALK IN', '403072170012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHARON CORPUZ'),
(2304, '17-PK-0346', 'MACARIO', 'MIKA SHILO', 'JARAPAN', 0, '2013-06-18', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 4 A BLK 2 LOT 13 EASTWOOD GREENVIEW SAN ISIDRO RODRIGUEZ RIZAL', '9776889460', 'CATHOLIC', 'SARAH  FRANCES MACARIO', 'MARLON MACARIO', '', '', '2024-07-03', 'WALK IN', '425623180018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2305, '23-G5-0678', 'GAYOMA', 'JHUN LORENZ EMMANUEL', 'CASTOR', 0, '2013-02-01', 'ILOILO CITY', 'MALE', '', '282 LINCO ST. ROSARIO RODRIGUEZ, RIZAL', '9636340290', 'CATHOLIC', 'LORECEL GAYOMA', 'JUNEL GAYOMA', '', '', '2024-07-05', 'WALK IN', '407856180002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2306, '23-G5-0715', 'NIEZ', 'MICHAELA VAN ANGEL', 'IGANACIO', 0, '2013-10-14', 'ILIGAN CITY', 'FEMALE', '', 'PHASE 5 BLK 6 LOT 41 EASTWOOD GREENVIEW, RODRIGUEZ, RIZAL', '9171343145', 'CATHOLIC', 'EVANGELINE NIEZ', 'CAWAYNE MICHAEL NIEZ', '', '', '2024-07-09', 'WALK IN', '425719180037', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2307, '23-G5-0740', 'LAGGUI', 'ALEXA SIMONE', 'GARDE', 0, '2013-06-14', 'NOVALICHES, QUEZON CITY', 'FEMALE', '', 'BLK 10 LOT 10 SUMMITVIEW SUBD., SAN RAFAEL, RODRIGUEZ, RIZAL', '9778152231', 'CATHOLIC', 'MA. RHEA LAGGUI-GARDE', 'RODITO LAGGUI JR.', '', '', '2024-07-17', 'WALK IN', '408915180022', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2308, '24-G6-0857', 'AQUINO ', 'JEIGNA MAXINE', 'SEDURITA', 0, '2012-11-26', 'MONTALBAN RIZAL', 'FEMALE', 'FILIPINO', 'B 3 L2 ACACIA HOMESSAN RAFAEL MONTALBAN RIZAL', '9190000820', 'CATHOLIC', 'JOLIZEN S. AQUINO', '', 'N/A', '', '2024-06-24', 'WALK IN', '425511160010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2309, '24-G6-0882', 'ALAYON', 'GIDEON CZAR', 'HERNANDEZ', 0, '2001-01-01', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', 'BLK 41 LOT 14 CENTELLA HOMES SUBD.\r\n', '9062262629', 'CATHOLIC', 'GEORGINA H. ALAYON', 'JEFFREY G. ALAYON', 'N/A', '', '2024-07-05', 'WALK IN', '425719180065', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2310, '24-G6-0908', 'DULNUAN', 'ZOE DENISE', 'DUMAPONG', 0, '2012-10-01', 'MANILA', '', '', 'BLK 13 LOT 17 MOONSTONE ST. SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZA', '9275308820', 'CATHOLIC', 'CAROLINE DULNUAN', 'FLOYD PEDRO DULNUAN II', '', '', '2024-07-13', 'WALK IN', '109479180100', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2311, '24-G6-0924', 'BANAYOS', 'MARCUS AUDRIC', 'PATALINGHUG', 0, '2013-08-15', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', 'LOT 3 BLK 4 LOLO TINONG SUBDIVISION GERONIMO, RODRIGUEZ, RIZAL', '9393260942', 'CATHOLIC', 'ANGELA MICHELLE BANAYOS', 'MARK ANTHONY BANAYOS', 'N/A', '', '2024-07-15', 'WALK IN', '408981180003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2312, '16-PK-0230', 'ABELIDO,', 'NEMARIE JHILYANA GRACE', 'SUMAGPAO', 0, '2011-11-24', 'QUEZON CITY', 'FEMALE', '', 'B8 L12 PH2 B, IPIL ST. METRO MANILA HILLS SAN JOSE RODRIGUEZ, RIZAL', '9274586857', 'ROMAN CATHOLIC', 'NEMIA S. ABELINO', 'JOHN C. ABELINO', '', '', '2024-07-17', 'WALK IN', '425821150269', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2313, '21-G4-0534', 'ADUVISO', ' ZANJ HUAN', 'GRENGIA', 0, '2011-09-23', 'QUEZON CITY', 'MALE', '', 'BLK 3 LOT 29 PHASE 5, EASTWOOD GREENVIEW, RODRIGUEZ, RIZAL', '9950244055', 'CATHOLIC', 'JENNY LYN ADUVISO', 'ZALDY ADUVISO JR.', '', '', '2024-07-02', 'WALK IN', '482809170007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2314, '17-K-0417', 'DIMAANO,', 'CARL JIRO', 'TEJUCO', 0, '2012-05-10', 'QUEZON CITY', 'MALE', '', 'BLK 3 LT 55 CASA BLANCA ST. VILLA ANA MARIA SUBD., BRGY. SAN JOSE, RODRIGUEZ, RIZAL', '9952719644', 'ROMAN CATHOLIC', 'JENNIFER MARIE DIMAANO', 'CARLO REY S. DIMAANO', '', '', '2024-06-28', 'WALK IN', '425623170009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2315, '17-K-0426', 'MANUEL,', 'KHIEXIA', 'N/A', 0, '2011-10-09', 'MONTALBAN, RIZAL', 'FEMALE', '', '0007 DAANG TUBO, MANGGAHAN, RODRIGUEZ, RIZAL', '9214281804', 'CATHOLIC', 'BRENDA MANUEL', 'N/A', '', '', '2024-07-05', 'WALK IN', '425623170003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2316, '22-G5-0427', 'PAZ,', 'ISABEL CLAIRE', 'LOPEZ', 0, '2010-08-16', 'QUEZON CITY', 'FEMALE', '', 'COL. S. CRUZ ST. SAN JOSE RODRIGUEZ,RIZAL', '9663077220', 'CATHOLIC', 'YVETA PAZ', 'ESTEPHEN PAZ', '', '', '2024-07-17', 'WALK IN', '425591150012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2317, '22-G5-0527', 'PINEDA,', 'RAFAEL MATTHEW', 'BERMEJO', 0, '2011-08-23', 'RODRIGUEZ, RIZAL', 'MALE', '', '490 M.H. DEL PILAR ST.SAN RAFAEL RODRIGUEZ RIZAL', '9998124913', 'CATHOLIC', 'SHEILA PINEDA', 'REGINO PINEDA JR.', '', '', '2024-07-09', 'WALK IN', '403107160018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2318, '18-G1-0128', 'WORRELL', 'SOFIA RILEY', 'SANTOS', 0, '2012-04-21', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'BLK 4 LOT 5 ARABELLA ST. VILLA ADRIANA VILLAGE, SAN RAFAEL, RODRIGUEZ, RIZAL ', '9088932927', 'CATHOLIC', 'MARY JOYCE SANTOS', 'GLENN WORREL JR.', 'N/A', '', '2024-07-17', 'WALK IN', '425664170007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2319, '23-G6-0634', 'GOTOSTOS,', 'JUSTICE', 'CASUPANAN', 0, '2011-02-15', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 9 LOT 26 SUMMITVIEW SUBD., BRGY. SAN RAFAEL, RODRIGUEZ, RIZAL', '9263773260', 'CATHOLIC', 'ROSITA GOTOTSTOS', 'FLORO GOTOSTOS', '', '', '2024-06-03', 'WALK IN', '425662180008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2320, '23-G6-0725', 'CAYETANO,', 'ASHLEY MAE', 'AGUSTIN', 0, '2012-03-06', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 3 B BLK 13 LOT 20 EASTWOOD GREENVIEW, SAN ISIDRO RODRIGUEZ, RIZAL', '9192974605', 'CATHOLIC', 'ANGELICA GUILLERMO', 'ALVIN CAYETANO', '', '', '2024-07-26', 'WALK IN', '425691170019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2321, '23-G6-0745', 'ADDURU,', 'MARCUS KOSSAR', 'FLORESCA', 0, '2012-03-09', 'QUEZON CITY', 'MALE', '', 'BLOCK 12 LOT 9 PHASE 5 EASTWOOD GREENVIEW SUBD. BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9275251379', 'CATHOLIC', 'VERONICA ADDURU', 'WILBERT ADDURU', '', '', '2024-06-28', 'WALK IN', '406327170032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2322, '24-G7-0789', 'SANTOS,', 'REAI', 'LUMABAS', 0, '2011-12-04', 'MONTALBAN, RIZAL', 'MALE', '', '313 LM SANTOS ST., ROSARIO, MONTALBAN, RIZAL', '3932535119', 'CATHOLIC', 'RIA L. SANTOS', 'DENNIS T. SANTOS', '', '', '2024-05-16', 'WALK IN', '425786170001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2323, '24-G7-0792', 'BALUCAS,', 'CANDACE MARIAN', 'YBAÑEZ', 0, '2012-08-10', 'QUEZON CITY', 'FEMALE', '', 'BLK 5 LOT 9 SUMMIT VIEW SAN RAFAEL, RODERIGUEZ, RIZAL', '9178968730', 'CATHOLIC', 'LILIAN Y. BALUCAS', 'MARVIN BALUCAS', '', '', '2024-05-16', 'WALK IN', '403072160011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2324, '24-G7-0793', 'CRUZ,', 'XERCXIZ WHEEZY', 'CRUZ', 0, '2012-03-20', 'RODRIGUEZ, RIZAL', 'MALE', '', '310 COL S. CRUZ SAN RAFAEL, RODRIGUEZ, RIZAL', '9156448207', 'CATHOLIC', 'ELLEN JOY M. CRUZ', 'MAC JEFFERSON C. CRUZ', '', '', '2024-05-16', 'WALK IN', '408915170026', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2325, '24-G7-0794', 'MENDOZA,', 'GAVIN JAMES', 'SARDEA', 0, '2012-01-29', 'QUEZON CITY', 'MALE', '', 'BLK 5 LOT 21 SAN FELIPE ST. CORTIJOS DE SAN RAFAEL, RODRIGUEZ, RIZAL', '9082264944 / 82446493', 'CATHOLIC', 'KRISTELLE S. MENDOZA', 'MITCHELL L. MENDOZA', '', '', '2024-05-16', 'WALK IN', '425767150019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2326, '24-G7-0795', 'NAVARRO,', 'JAN RENS', 'BONIFACIO', 0, '2012-07-04', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 5 LOT 5 M. AQUINO ST. CHARMIZONS SUBD. GERONIMO, RODRIGUEZ, RIZAL', '9107164478', 'CATHOLIC', 'NORISSA B. NAVARRO', 'RODEL G. NAVARRO', '', '', '2024-05-16', 'WALK IN', '425758160015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'NORISSA B. NAVARRO'),
(2327, '24-G7-0796', 'MANUEL,', 'KURT AXL', 'TAYAG', 0, '2010-11-12', 'MARIKINA CITY', 'MALE', '', '#121 COL. S CRUZ ST. BRGY. GERONIMO, RODRIGUEZ, RIZAL', '9183919164', 'CATHOLIC', 'MA. LUTGARDA T. MANUEL', 'BENITO C. MANUEL ', '', '', '2024-05-16', 'WALK IN', '403072170040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MA. LUTGARDA T. MANUEL'),
(2328, '24-G7-0797', 'ARANETA', 'GIO MARGAUX', 'CRUZ', 0, '2011-10-11', 'MARIKINA CITY', 'FEMALE', 'FILIPINO', '543 M.H. DEL PILAR ST. BRGY. GERONIMO, MONTALBAN, RIZAL', '9123111625', 'CATHOLIC', 'RAQUEL ARANETA', 'RONALD ARANETA', 'N/A', '', '2024-05-16', 'WALK IN', '403075150014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2329, '24-G7-0809', 'SARTE', 'CLOUIS YONARD', 'MALAZARTE', 0, '2012-04-26', 'AGONA RIZAL', 'MALE', '', 'BLK 1 LOT 12 SAN MATAE ST. CORNER SAN AGUSTIN ST. CORTIJOS SUBD., SAN RAFAEL RODRIGUEZ, RIZAL', '9459739782', 'CATHOLIC', 'ALCELI M. SARTE', 'NEILSEN F. SARTE ', '', '', '2024-06-06', 'WALK IN', '109313170132', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CELIA C. MALAZARTE'),
(2330, '24-G7-0812', 'APAPE', 'REILYN', 'SANTOS', 0, '2012-04-03', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '167 P. SALVADOR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9473251205', 'CATHOLIC', 'AILENE S. APAPE', 'RAYMUND M. APAPE', '', '', '2024-06-05', 'WALK IN', '109479180386', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'AILENE S. APAPE'),
(2331, '24-G7-0820', 'BACANI', 'ASHLEE KATE', 'AOANAN', 0, '2012-04-14', 'MARIKINA CITY', 'FEMALE', '', 'BLK 12 LOT 10 PHASE 1 EASTWOOD GREENVIEW SAN ISISDRO, RODRIGUEZ, RIZAL', '9560339650', 'CATHOLIC', 'MARJORIE L. AOANAN', '', '', '', '2024-06-07', 'WALK IN', '406785170013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2332, '24-G7-0826', 'DE GUZMAN', 'MARCUS JETHRO', 'DECENA', 0, '2012-05-25', 'QUEZON CITY', 'MALE', 'FILIPINO', 'BLK 5 LOT 12, SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '9653474282', 'CATHOLIC', 'JANICE D. DE GUZMAN', 'MARJOE A DE GUZMAN ', '', '', '2024-06-13', 'WALK IN', '408915170010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JANICE D. DE GUZMAN'),
(2333, '24-G7-0831', 'RAULE', 'CHELCY', 'ZUÑIGA', 0, '2012-06-16', 'MARIKINA CITY', 'FEMALE', '', 'BLK 3 LOT 4 FLORENZA SUBD. BRGY. ROSARIO, RODRIGUEZ, RIZAL', '9055160174', 'CATHOLIC', 'RICHEL RAULE', 'RICKY RAULE', '', '', '2024-06-14', 'WALK IN', '425694170007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RICHEL RAULE'),
(2334, '24-G7-0841', 'MENUZA', 'RHIAN JASMINE', 'NUYDA', 0, '2012-01-05', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PHASE 4 HILL SIDE SAN RARAFEL RODRIGUEZ, RIZAL', '9276604057', 'CATHOLIC', 'MARICEL MENUZA', 'RICARDO JR MENUZA', '', '', '2024-06-19', 'WALK IN', '109479170394', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARICEL MENUZA'),
(2335, '24-G7-0843', 'VELASCO', 'ALTHEA QUESHA', 'BRANDIS', 0, '2012-09-05', 'QUEZON CITY', 'FEMALE', '', '44 A P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9274570073', 'CATHOLIC', 'RACQUEL VELASCO', 'ARISTEO VELASCO', '', '', '2024-06-20', 'WALK IN', '408970170015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RACQUEL VELASCO'),
(2336, '24-G7-0851', 'BAUTISTA', 'AENOX', 'MANUEL', 0, '2012-01-17', 'RODRIGUEZ, RIZAL', 'MALE', '', 'B7 L1 ROSA VERDE VILLAS, SAN RAFAEL, RODRIGUEZ, RIZAL', '9997646033', 'CATHOLIC', '', 'MARVIN BAUTISTA', '', '', '2024-06-20', 'WALK IN', '425664170001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CATH ROLEDA'),
(2337, '24-G7-0849', 'GODALA', 'YARREN MARCUS', 'GUEVARRA', 0, '2011-08-04', 'MARIKINA CITY', 'MALE', '', 'BLK 17 LOT 4 SAPPHIRE ST. SUMMITVIER SUBD. PHASE 2, SAN RAFAEL, RODRIGUEZ RIZAL', '09778319602/ 09171306170', 'CATHOLIC', 'JOANNE G. GODALA', 'MARLON GODALA', '', '', '2024-06-20', 'WALK IN', '425761170004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JOANNE G. GODALA'),
(2338, '24-G7-0846', 'BUENVIAJE', 'CHRISTIAN HAERICK', 'GABRIEL', 0, '2011-09-02', 'MONTALBAN RIZAL', 'MALE', '', 'BLK 1 LOT 11 BALIKATIN 1 MANGGAHAN  MONTALBAN RIZAL', '9332583699', 'CATHOLIC', 'ERIKA BELLE C. GABRIEL', 'HAROLD G. BUENVIAJE', '', '', '2024-06-20', 'WALK IN', '425758170017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ERIKA BELLE C. GABRIEL'),
(2339, '24-G7-0870', 'CAILAO', 'RYIEL AALIYAH', 'BONIFACIO', 0, '2010-11-15', 'MAKATI', 'FEMALE', '', 'BLK 9 LOT51 GRANITE ST. SUMMITVIEW', '9982511625', '', '', '', '', '', '2024-06-28', 'WALK IN', '109463170124', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2340, '24-G7-0872', 'QUITALIG', 'CRISTIAN MHER', 'ESTANOSLAO', 0, '2012-02-26', 'MONTALBAN RIZAL', 'MALE', '', '#393 COL. S. CRUZ ST. SAN RAFEL MONTALBAN RODRIGUEZ RIZAL', '9562919527', '', '', '', '', '', '2024-07-01', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2341, '24-G7-0883', 'GATCHALIAN', 'JULIANA ANIKA', 'BARAN', 0, '2012-03-11', 'MONTALBAN RIZAL', 'FEMALE', 'FILIPINO', 'BLK 7 LOT 1 DAANG BAKAL, BALITE RODRIGUEZ RIZAL\r\n', '9760177714', 'CATHOLIC', 'MICHELLE BARRUN', '', 'N/A', '', '2024-07-03', 'WALK IN', '425758170012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2342, '24-G7-0884', 'ATARA', 'ADRIEL', 'HOLANDA', 0, '2012-01-11', 'QUEZON CITY', 'MALE', '', '', '90763888028', 'CATHOLIC', 'RICHELLE ATARA', 'RONALD ATARA', '', '', '2024-07-03', 'WALK IN', '403072170002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2343, '24-G7-0874', 'ALEJANDRO', 'DHARVISH ETHAN', 'VICTORIA', 0, '2012-01-02', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', 'SAPA WAWA, SAN RAFAEL, RODRIGUEZ, RIZAL', '9812063166', 'CATHOLIC', 'CHRISAMIE DH. VICTORIA', 'MARK ANDREWU. ALEJANDRO', 'N/A', '', '2024-07-04', 'WALK IN', '109479170324', '', 'SAN RAFAEL ELEMENTARY SCHOOL', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2344, '18-G1-0152', 'ALMENDO', 'DIWA', 'QUINAO', 0, '2012-01-08', 'SAMAR', 'MALE', '', '', '9606542364', 'CATHOLIC', 'MARIALITA MALABAGO QUINAO', 'NATHANIEL GODES ALMENDO', '', '', '2024-06-27', 'WALK IN', '425687170006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2345, '24-G7-0889', 'CLARACAY', 'RENZ CARL', 'MENDIOLA', 0, '2011-10-12', 'QUEZON CITY', 'MALE', '', '', '9211621947', 'CATHOLIC', '', 'ROMIE CLARACAY', '', '', '2024-07-08', 'WALK IN', '109479170323', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'HENEDINA CLARACAY'),
(2346, '24-G7-0895', 'ROSAS', 'CRISHA ALTHEA', 'REYES', 0, '2011-11-24', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '', '921318065', 'CATHOLIC', '', '', '', '', '2024-07-08', 'WALK IN', '408915170019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2347, '24-G7-0893', 'LLENADO', 'JOHN MHIGZ', 'CALIMOTAN', 0, '2012-04-20', 'MANILA', 'MALE', '', '', '9777348467', 'CATHOLIC', 'ISABEL CALIMOTAN', 'MIGUEL LLENADO', '', '', '2024-07-09', 'WALK IN', '128714170046', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JOSIE ABEJARON'),
(2348, '24-G7-0897', 'APOLINARIO', 'JADE MARIEL', 'BONIFACIO', 0, '2001-01-01', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'BLK 1 LOT 38 DOÑA MARIA SUB. RODRIGUEZ RIZAL', '9951281473', 'CATHOLIC', 'MYRA BONIFACIO', 'MARK RAINIEL B. APOLINARIO', 'N/A', '', '2024-07-10', 'WALK IN', '109478150183', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2349, '24-G7-0925', 'LUCENA', 'SEAN CLARENCE', 'VERBO', 0, '2012-09-16', 'MARIKINA CITY', 'MALE', '', 'BLK 6 LOT 20 TOPAZ ST. SUMMIT VIEW SUBD. SAN RAFAEL RODRIGUEZ RIZAL', '9288792405', 'CATHOLIC', 'DERLIE LUCENA', 'FRANCISCO LUCENA', '', '', '2024-07-16', 'WALK IN', '425591160011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2350, '24-G7-0926', 'VILLAFLORES', 'SHAWN JAZZETH', 'RELANO', 0, '2012-05-17', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 21 LOT 5 PHASE 1 DELA COSTA HOMES V BURGOS RODRIGUEZ, RIZAL', '9198712220', 'CATHOLIC', 'LOVELIE VILLAFLORES', 'JOSEPH VILLAFLORES', '', '', '2024-07-19', 'WALK IN', '425665170009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2351, '24-G7-0909', 'IGNACIO', 'GREEN ANNDRE', 'CORRECHE', 0, '2012-03-01', 'MANDALUYONG CITY', 'FEMALE', '', 'BLK 2 LOT 24 AMETHYS ST. SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '9053197484', 'CATHOLIC', 'ANN MARISTELA IGNACIO', 'REDVAN IGNACIO', '', '', '2024-07-20', 'WALK IN', '136684170480', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ANN MARISTELA IGNACIO'),
(2352, '24-G7-0927', 'JACOBE', 'ASHADIEEYAH CLARE', 'SANTOS', 0, '2012-04-30', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '468 N-SAN JUAN ST. SAN RAFAEL RODRIGUEZ RIZAL', '9307943901', 'CATHOLIC', 'CATHERINE JACOBE', 'RAVEN JACOBE', '', '', '2024-07-27', 'WALK IN', '109479170259', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2353, '24-G7-0910', 'REYES', 'CHILL SHENN LUISS ', 'NEGRETE', 0, '2012-02-05', 'RODRIGUEZ, RIZAL', 'MALE', '', '622 P. RODRIGUEZ RIZAL ST. SAN RAFAEL RODRIGUEZ RIZAL', '9305693503', 'CATHOLIC', 'MARY CALUDINE REYES', 'JONATHAN APONDAR', '', '', '2024-07-29', 'WALK IN', '425662170001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2354, '23-G7-0604', 'ABUNALES', 'ALEXANDRA ANGEL', 'RABANG', 0, '2010-04-08', 'PLARIDEL, BULACAN', 'FEMALE', '', 'BLK 1 LOT 12 PHASE 3B EASTWOOD GREENVIEW, BRGY, SAN ISIDRO, RODRIGUEZ, RIZAL', '09569208176', 'CATHOLIC', 'JASMINE I. RABANG', 'DON JOHNSON VILLAMMA', '', '', '2024-06-21', 'WALK IN', '400701150039', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JASMINE I. RABANG'),
(2355, '23-G7-0645', 'ANTOR', 'GENESIS', 'ALONZO', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'PHASE 2 BLK 9 LOT 165 EASTWIND HOMES, SAN ISIDRO, MONTALBAN, RIZAL', '09502645204', 'CHRISTIAN', 'MIGHTY A. ANTOR', 'VICENTE D. ANTOR JR.', '', '', '2024-06-21', '', '425690150003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2356, '17-G1-0379', 'AQUINO', 'LANCE ANDREI ', 'ALMIREZ', 0, '2011-02-13', 'LUCENA CITY', 'MALE', '', 'PH3 BLK 86 LOT 11 EASTWOOD RESIDENCES RODRIGUEZ RIZAL', '09278044919', 'ROMAN CATHOLIC', 'AISEL A. AQUINO', 'EDRALYN O. AQUINO', '', '', '2024-06-29', 'WALK IN', '425787160003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2357, '23-G7-0647', 'BACATAN', 'JAN JEZZIE MIEL', 'CISNEROS', 0, '2010-09-02', 'SAN MATEO RIZAL', 'MALE', '', 'BLK 10 LOT 21 GLORIA VISTA SUBD., SAN RAFAEL, RODRIGUEZ, RIZAL', '09255505486 /09177508804', 'CATHOLIC', 'ANNABELLE C. BACATAN', 'JAN HENRICH B. BACATAN', '', '', '2024-07-09', 'WALK IN', '109479160279', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2358, '23-G7-0666', 'BANGURAN', 'CHARLES LLOYD', 'CAPACETE', 0, '2006-09-06', 'RODRIGUEZ, RIZAL', 'MALE', '', '58 SAN MIGUEL ST. CORTIJOS SUBD., SAN RAFAEL RODRIGUEZ, RIZAL', '09302311418', 'PROTESTANT', 'RAHVIN C. BANGURAN', 'LANIE C. BANGURAN', '', '', '2024-07-26', 'WALK IN', '136461131031', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2359, '17-G1-0325', 'BAUTISTA', 'FRANCIS ANTHONY', 'ALOB', 0, '2011-03-16', 'MARIKINA CITY', 'MALE', '', '11A. BONIFACIO ST. BRGY. ROSARIO, MONTALBAN, RIZAL', '09564330921', 'CATHOLIC', 'ANABELLE A. BAUTISTA', 'LANCE JASON D. BAUTISTA', '', '', '2024-07-10', 'WALK IN', '425761150015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2360, '23-G7-0701', 'BIRAQUIT', 'ADIEL KAMILAH', 'LIMBO', 0, '2010-08-21', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PH 1 BLK 11 LOT 10 CRYSTAL ST. SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '09272425780 / 09605501435', 'CATHOLIC', 'MARJELYN L. BIRAQUIT', 'VIRGILIO C. BIRAQUIT', '', '', '2024-07-05', 'WALK IN', '425690160004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2361, '18-G2-0497', 'CRISOSTOMO', 'DOMINIQUE', 'CACANANTA', 0, '2010-10-08', 'QUEZON CITY', 'MALE', '', 'BLOCK 6 LOT 9 PHASE 5 EASTWOOD RESIDENCES BRGY. SAN ISIDRO RODRIGUEZ RIZAL', '09175570428', 'CATHOLIC', 'BRENDA C. CRISOSTOMO', 'CRISTIEN M. CRISOSTOMO', '', '', '2024-06-20', 'WALK IN', '406351160088', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'BRENDA C. CRISOSTOMO'),
(2362, '17-G1-0349', 'DE LEON', 'NICOLE', 'GALLEMA', 0, '2009-07-10', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 18 LOT 7 DOLLAR ST., CARLTON VILL., MANGGAHAN, RODRIGUEZ, RIZAL', '09212761271', 'CATHOLIC', 'LUALHATI G. DE LEON', 'RODERICK C. DE LEON', '', '', '2024-07-09', 'WALK IN', '403063160009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2363, '23-G7-0622', 'DELA PAZ', 'XEDREY', 'BELON', 0, '2011-08-21', 'MARIKINA CITY', 'MALE', '', 'BLK 49 LOT 24 PHASE 2 EASTWOOD RESIDENCES, RODRIGUEZ, RIZAL', '09773153797', 'CATHOLIC', 'EURELYN S. BELON', 'DEXTER V. DELA PAZ', '', '', '2024-06-14', 'WALK IN', '425763160010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2364, '17-G1-0436', 'DIMAANO, ', 'CARL JIAN', 'TEJUCO', 0, '2010-11-05', 'QUEZON CITY', 'MALE', '', 'BLK 5 LT 19 VILLA ANA MARIA SUBD., BRGY. SAN JOSE, RODRIGUEZ, RIZAL', '09179461375', 'CATHOLIC', 'JENNIFER MARIE T. DIMAANO', 'CARLO REY S. DIMAANO', '', '', '2024-06-28', 'WALK IN', '425760150016', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2365, '22-G6-0499', 'FERNANDEZ', 'SAMANTHA JANE', 'ROXAS', 0, '2011-04-16', 'QUEZON CITY', 'FEMALE', '', 'BLK 8 LOT 1 PH 2 EAST BELLEVEU SAN ISIDRO RODRIGUEZ RIZAL', '09168876299', 'CATHOLIC', 'MARY GRACE R. FERNANDEZ', 'JUN KENNETH Y. FERNANDEZ', '', '', '2024-07-23', 'WALK IN', '425688160015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2366, '23-G7-0697', 'GENESE', 'RHIANA', 'GUDA', 0, '2010-06-14', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '893 HILLSIDE PHASE 5 SAN RAFAEL, RODRIGUEZ, RIZAL', '09301724982', 'CATHOLIC', 'ROSALIE G. GENESE', 'ERNANI T. GENESE', '', '', '2024-06-28', 'WALK IN', '109479160211', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2367, '22-G6-0432', 'GERNALE', 'JOHN KARLO', 'TADURAN', 0, '2011-05-03', 'QUEZON CITY', 'MALE', '', 'BLK 251 LOT 2 AFP HOUSING, LA SOLIDARIDAD, SAN ISIDRO ROD. RIZAL', '09275215346', 'CATHOLIC', 'JONALYN T. GERNALE', 'SEDRIC O. GERNALE', '', '', '2024-06-15', 'WALK IN', '136570160020', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2368, '19-G3-0217', 'GOTOSTOS', 'KING FLORENCE', 'CASUPANAN', 0, '2011-02-15', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 9 LOT 26 SUMMITVIEW SUBD., BRGY. SAN RAFAEL, RODRIGUEZ, RIZAL', '09263773260', 'CATHOLIC', 'ROSITA C. GOTOSTOS', 'FLORO T. GOTOSTOS', '', '', '2024-06-03', 'WALK IN', '425662160011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'FLORO T. GOTOSTOS'),
(2369, '23-G7-0675', 'JUSTO', 'MARIA ALEXA STORM', 'DE JESUS', 0, '2011-12-04', 'STA. CRUZ, MANILA', 'FEMALE', '', 'BLK 27 LOT 31 EASTWOOD RESIDENCES PHASE 6, SAN ISISDRO, RODRIGUEZ, RIZAL', '9351063611', 'CATHOLIC', 'LESLHEE ANN D. JUSTO', 'MA. ARNUBELO T. JUSTO III', '', '', '2024-07-03', 'WALK IN', '425725160003', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2370, '23-G7-0574', 'LADRA', 'JAXON IZE', 'DIAZ', 0, '2011-01-21', 'RODRIGUEZ, RIZAL', 'MALE', '', 'PHASE 1 BLOCK 2 LOT 22 CENTELLA HOMES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09174710319', 'CATHOLIC', 'IZZA D. LADRA', 'GERRY E. LADRA', '', '', '2024-06-08', 'WALK IN', '425577160024', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2371, '17-G1-0352', 'LIM', 'RUSSEL EDMUND', 'ALBAR', 0, '2010-09-09', 'QUEZON CITY', 'MALE', '', 'PHASE 2 BLK 23 LOT 12, EASTWOOD GREENVIEW, RODRIGUEZ, RIZAL', '09276022392', 'CATHOLIC', 'RACHELLE A. LIM', 'SHERWIN C. LIM', '', '', '2024-07-03', 'WALK IN', '425692150006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2372, '23-G7-0624', 'LUCILO', 'EIDRIAN', 'VILLAROYA', 0, '2010-11-30', 'QUEZON CITY', 'MALE', '', '517 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ, RIZAL', '09271378190', 'CATHOLIC', 'EVELYN V. LUCILO', 'ARNOLD V. LUCILO', '', '', '2024-06-19', 'WALK IN', '109479160180', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EVELYN V. LUCILO'),
(2373, '16-K-0161', 'MACARIO', 'MATT STEFANO', 'JARAPAN', 0, '2011-03-26', 'MARIKINA CITY', 'MALE', '', 'PHASE 4A B2 L13 EASTWOOD GREENVIEW SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '09776889460', 'CATHOLIC', 'SARAH FRANCES J. MACARIO', 'MARLON C. MACARIO', '', '', '2024-07-03', 'WALK IN', '425623160013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2374, '23-G7-0699', 'MALAGA', 'DAVE ANBERTSON', 'ESMUNDO', 0, '2011-05-26', 'QUEZON CITY', 'MALE', '', 'PH4 LOT 1 BLK 1 EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '09173276047/09260734693', 'CATHOLIC', 'ANALIZA E. MALAGA', 'ROBERT T. MALAGA', '', '', '2024-07-02', 'WALK IN', '425654170005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2375, '23-G7-0706', 'MANICAD', 'JUAN LUIS ', 'ALVAREZ', 0, '2011-05-21', 'RODRIGUEZ, RIZAL', 'MALE', '', '145 M. H DEL PILAR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '09209774571', 'CATHOLIC', 'JASMIN A. MANICAD', 'CARY D. MANICAD', '', '', '2024-06-28', 'WALK IN', '425767150018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2376, '21-G5-0355', 'MAPUA', 'MA. HYACINTH LYZAH', 'MALASARTE', 0, '2010-12-08', 'MANILA', 'FEMALE', '', 'BLK 4 LOT 6 FIORENZA SUBD. BRGY. ROSARIO, SAN JOSE, RODRIGUEZ, RIZAL', '09399140678', 'CATHOLIC', 'REGINA M. MAPUA', 'RAFAEL P. MAPUA JR.', '', '', '2024-07-03', 'WALK IN', '401779150273', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2377, '23-G7-0596', 'MARTINEZ', 'ZEAH ALLISON', 'DE FIESTA', 0, '2011-06-13', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PHASE4 3B BLK 8 LOT 4 EASTWOOD GREENVIEW RODRIGUEZ, RIZAL', '09298366319', 'CATHOLIC', 'SHERYL F. DE FIESTA', 'BARTOLOME C. MARTINEZ JR.', '', '', '2026-06-13', 'WALK IN', '410507150038', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2378, '23-G7-0635', 'MELLA', 'ANGEL GAIL', 'GODALLE', 0, '2010-12-31', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '624 P. RODRIGUEZ ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '09262238925', 'CATHOLIC', 'ABEGAIL G. MELLA', 'N/A', '', '', '2024-06-14', 'WALK IN', '109479160339', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2379, '23-G7/-0693', 'MENDOZA', 'KIANO KIM', 'PALUSTRE', 0, '2011-02-12', 'QUEZON CITY', 'MALE', '', 'PHASE 2 BLK 10 LOT 209 EASTWIND HOMES SAN ISIDRO, RODRIGUEZ, RIZAL', '09929016932', 'CATHOLIC', 'ADELWISA P. MENDOZA', 'RODANTE N. MENDOZA', '', '', '2024-07-16', 'WALK IN', '425690160006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2380, '23-G7-0732', 'MILITAR', 'FRANCESCA REGINA', 'DEQUILLA', 0, '2000-01-01', 'GENERAL TRIAS, CAVITE', 'FEMALE', '', '0174 M.H. DEL PILAR ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '09161992192', 'CATHOLIC', 'GINA D. MILITAR', 'FRANCISCO G. MILITAR JR.', '', '', '2024-07-16', '', '110876160033', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2381, '23-G7-0730', 'MORALDE', 'HARVEY', 'DE JESUS', 0, '2010-11-06', 'INTRAMUROS, MANILA', 'MALE', '', 'LOT 19 B7 PHASE 3A EASTWOOD GREENVIEW, SAN ISIDRO RODRIGUEZ, RIZAL', '09757282126', 'BORN AGAIN', 'AGNES D. MORALDE', 'RODNIE M. MORALDE', '', '', '2024-06-15', 'WALK IN', '403072170041', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2382, '17-G1-0361', 'NAVAROSA', 'MITCHELL SHANDREI', 'TAC-AN', 0, '2010-12-15', 'QUEZON CITY', 'MALE', '', 'BLK 7 LOT 2 PH 1 CENTELLA HOMES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09281006314', 'CATHOLIC', 'SHERIL T. NAVAROSA', 'MARC DEXTER E. NAVAROSA', '', '', '2024-07-09', 'WALK IN', '425729150010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2383, '23-G7-0618', 'NEGRETE', 'DEREK AXEL', 'DE BORJA', 0, '2010-11-13', 'MARIKINA CITY', 'MALE', '', '619 P. RODRIGUEZ ST., SAN RAFAEL RODRIGUEZ, RIZAL', '09498474696/ 09088982861', 'CATHOLIC', 'DARILYN D. NEGRETE', 'RAMONSITO D. NEGRETE', '', '', '2024-06-08', 'WALK IN', '403072150172', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2384, '17-G1-0348', 'NONOG', 'MA. HANNA CLARRISE', 'BASSIG', 0, '2010-12-13', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PH5 B2 L14 EASTWOOD GREENVIEW SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '09055731632', 'CATHOLIC', 'RHODORA JACQUELINE B. NONOG', 'JEFFREY L. NONOG', '', '', '2024-06-14', 'WALK IN', '425690160001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2385, '23-G7-0721', 'OLAEZ', 'JERICH JAKESON', 'INFANTE', 0, '2011-05-28', 'QUEZON CITY', 'MALE', '', '777 F. SAN JUAN ST. SAN JOSE RODRIGUZ, RIZAL', '09610780793/09228121793', 'CATHOLIC', 'MA. RHEA I. OLAEZ', 'JEFFREY B. OLAEZ', '', '', '2024-07-11', 'WALK IN', '425694160025', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2386, '22-G6-0494', 'PACIS', 'NATHALIE', 'MANIQUIZ', 0, '2011-04-02', 'ABULUG, CAGAYAN', 'FEMALE', '', 'PH 8 BLK66 LOT 26 EASTWOOD RESIDENCE SAN ISIDRO, RODRIGUEZ, RIZAL', '09161702216', 'CATHOLIC', 'MICHELLE M. PACIS', 'NOEL G. PACIS', '', '', '2024-07-01', 'WALK IN', '425687170004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2387, '23-G7-0655', 'PADROGADO', 'MICHAEL', 'BARUADO', 0, '2009-09-26', 'LANAO DEL NORTE', 'MALE', '', 'PHASE 2 HILLSIDE SAN RAFAEL, RODRIGUEZ, RIZAL', '09318017263', 'CATHOLIC', 'ELSA CASTILLON', 'ROMEL S. PADROGADO', '', '', '2024-07-01', 'WALK IN', '128140150307', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2388, '18-G2-0088', 'PINGOL', 'HARROLD', 'DE VERA', 0, '2011-01-07', 'CALOOCAN CITY', 'MALE', '', 'BLK 74 LOT 34 PHASE 3 EASTWOOD RESIDENCE SAN ISIDRO, RODRIGUEZ, RIZAL', '09322615366', 'CATHOLIC', 'JOCELYN D. PINGOL', 'REYNALDO B. PINGOL', '', '', '2024-07-04', 'WALK IN', '425787160004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2389, '23-G8-0684', 'PORLAS', 'RON RUBIEL', 'ESTEBAN', 0, '2011-04-08', 'MARIKINA CITY', 'MALE', '', 'BLK 4 LOT 8 ROSA VERDE HOMES GERONIMO, RODRIGUEZ, RIZAL', '09156147213', 'CATHOLIC', 'JENNIFER E. PORLAS', 'RONWALDO C. PORLAS', '', '', '2024-07-29', 'WALK IN', '425764190008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '');
INSERT INTO `student_db` (`id`, `student_id`, `lname`, `fname`, `mname`, `age`, `bdate`, `bplace`, `gender`, `nationality`, `address`, `contact_no`, `religion`, `mother_name`, `father_name`, `health_concern`, `email_add`, `date_registered`, `reg_mode`, `lrn`, `esc_no`, `school_last_attended`, `grade_level`, `flyer_church`, `flyer_school`, `career_talk`, `facebook_page`, `tarp_buildings`, `tarp_tricycles`, `others`, `referral`, `others_specify`, `referred_by`, `sched_exam`, `sched_interview`, `guardian`) VALUES
(2390, '23-G7-0731', 'PUNO', 'SHEENA RAYNE', 'DULALIA', 0, '2011-03-08', 'QUEZON CITY', 'FEMALE', '', 'BLK 14 LOT 12 CHARMIZON SUBD. BRGY GERONIMO RODRIGUEZ, RIZAL', '09338548587', 'CATHOLIC', 'EMY D. PUNO', 'JERRY T. PUNO', '', '', '2024-06-20', 'WALK IN', '403072170042', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EMY D. PUNO'),
(2391, '23-G7-0651', 'RAMOS', 'JUSTIN JACOB', 'CASTRO', 0, '2011-04-04', 'RODRIGUEZ, RIZAL', 'MALE', '', 'SITIO SAPA WAWA SAN RAFAEL RODRIGUEZ, RIZAL', '09519625849', 'CATHOLIC', 'MARY ANN C. RAMOS', 'LOUIS JOURDAN B. RAMOS', '', '', '2024-07-01', 'WALK IN', '109478160326', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2392, '23-G7-0575', 'RELOTA', 'ANGELICA', 'MAGLAQUE', 0, '2011-01-27', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 3 BLOCK 8 LOT 230 EASTWIND HOME SAN ISIDRO, RODRIGUEZ, RIZAL', '09199614976', 'CATHOLIC', 'MARICEL M. RELOTA', 'MATEO T. RELOTA JR.', '', '', '2024-06-08', 'WALK IN', '425690150035', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2393, '23-G7-0608', 'REMON', 'LUI RAFAEL', 'SANTOS', 0, '2011-05-01', 'MARIKINA CITY', 'MALE', '', 'BLK 1 LOT 29 OPAL ST. SUMMITVIEW SUBD. SAN RAFAEL MONTALBAN, RIZAL', '09778141226', 'CATHOLIC', 'MARIA CECILIA S. REMON', 'RAFAEL T. REMON JR.', '', '', '2024-07-04', 'WALK IN', '425761150040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2394, '23-G7-0611', 'REYES', 'KEITH IVAN', 'CLARACAY', 0, '2010-09-08', 'FAIRVIEW, QUEZON CITY', 'MALE', '', 'PHASE 2 BLK 16 LOT 2 EASTWOOD GREENVIEW, BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '09770182898', 'CATHOLIC', 'RONA C. REYES', 'RANDEL M. REYES', '', '', '2024-06-28', 'WALK IN', '425692150011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2395, '23-G7-0688', 'SALAS', 'REIGN PRINCESS NICOLE ', 'SONIO', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'PHASE 5 HILLSIDE SAN RAFAEL RODRIGUEZ, RIZAL', '09204181088', 'CATHOLIC', 'ALMA LUNA C. SONIO', 'STEVE ALLEN C. SALAS', '', '', '2024-06-28', '', '109466170425', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2396, '17-G1-0269', 'SALDAÑA', 'GABRIEL ELIJAH ', 'ABRENCILLO', 0, '2011-04-13', 'PASIG CITY', 'MALE', '', 'BLK 9 LOT 57 SAN VICENTE ST. CORTIJOS DE SAN RAFAEL, RODRIGUEZ, RIZAL ', '09178309630', 'CATHOLIC', 'ANA LIZA A.SALDAÑA', 'ELESITO D. SALDAÑA', '', '', '2024-06-27', 'WALK IN', '425623170018', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2397, '23-G7-0665', 'SAN JUAN', 'JERIES BRIELLE', 'SOBERANO', 0, '2011-05-22', 'RODRIGUEZ, RIZAL', 'MALE', '', 'B7 L7 CATHERINE HOMES SUBD. GERONIMO RODRIGUEZ, RIZAL', '09750369089', '', 'JOY ERIKA S. SAN JUAN', 'IRENEO T. SAN JUAN JR.', '', '', '2024-06-25', 'WALK IN', '403072170048', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2398, '23-G7-0638', 'SANTIAGO', 'SHAWN JAMIE', 'N/A', 0, '2011-04-26', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'EASTWOOD GREENVIEW PHASE 5 BLK 9 LOT 9 RODRIGUEZ, RIZAL', '09770786531', 'CATHOLIC', 'ROSE B. SANTIAGO', 'N/A', 'N/A', '', '2024-07-01', 'WALK IN', '425691170001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2399, '23-G7-0765', 'SANTIAGO', 'JANNAH JEZREEL', 'FORDELON', 0, '2011-08-10', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'G 118 N. ANGELES ST. MANGGAHAN RODRIGUEZ, RIZAL', '09613002586', 'CATHOLIC', 'REVELYN F. SANTIAGO', 'JAN EIGLE H. SANTIAGO', '', '', '2024-07-16', 'WALK IN', '403072170043', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2400, '23-G7-0573', 'SANTOS', 'NOREEN LEI', 'SANTOS', 0, '2010-06-30', 'MARIKINA CITY', 'FEMALE', '', 'BLOCK 61 LOT 7 PHASE 7 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09957117171', 'CATHOLIC', 'STEPHANIE S. MANUBAS', 'MARDY C. SANTOS', '', '', '2024-06-08', 'WALK IN', '109477150123', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2401, '23-G7-0654', 'SANTOS', 'JODIE NAZARENE', 'JUNSAY', 0, '2011-01-09', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '482 M.H DEL PILAR ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '09204920675', 'CATHOLIC', 'MARY OLIVE J. SANTOS', 'BOBBY T. SANTOS', '', '', '2024-07-10', 'WALK IN', '425761150032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2402, '15-N-0036', 'SENO', 'ZARIAH CLARE', 'DURAN', 0, '2011-05-11', 'QUEZON CITY', 'FEMALE', '', 'BLOCK 1 LOT 9 PH 1 ROSA VERDE SUBD MANGGAHAN RODRIGUEZ RIZAL', '09212648791/09603766196', 'ROMAN CATHOLIC', 'VIA TALITHA D. SENO', 'LORBER B. SENO', '', '', '2024-06-29', 'WALK IN', '425623160021', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2403, '16-K-0133', 'STA. ISABEL', 'PRINCESS CHANELLE', 'SULIT', 0, '2010-10-22', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '380 COL. S. CRUZ ST. SAN RAFAEL MONTALBAN RIZAL', '09175320889', 'CATHOLIC', 'SHERYL S. STA. ISABEL', 'RONALD ALLAN C. STA. ISABEL', '', '', '2024-07-05', 'WALK IN', '425623160022', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2404, '23-G7-0752', 'TAMANI', 'CRAIG JOSHUA', 'TORRES', 0, '2008-04-12', 'RODRIGUEZ, RIZAL', 'MALE', '', 'PHASE 1 BLOCK 8 LOT 9, EASTWOOD RESIDENCES, BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '09493076797', '', 'MA. MECHELLE TORRES', 'CHRISTOPHER TAMANI', '', '', '2024-07-26', 'WALK IN', '403063160012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2405, '23-G7-0698', 'VILLA', 'SAM LIANA', 'ESTEBAN', 0, '2011-12-04', 'MARIKINA CITY', 'FEMALE', '', 'BLK 50 LOT 35 EASTWOOD RESIDENCES SAN ISIDRO, RODRIGUEZ, RIZAL', '09458544042', 'CATHOLIC', 'LOURDES E. VILLA', 'SONY O. VILLA', '', '', '2024-07-02', 'WALK IN', '425654170009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2406, '24-G8-0885', 'VIDAL', 'JANZIELLE PAULINE', 'REBEJE', 0, '2010-05-21', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 2 BLK 10 LOT 16 EASTWOOD GREENVIEW RODRIGUEZ, RIZAL', '9478921277', 'CATHOLIC', '', '', '', '', '2024-07-05', 'WALK IN', '425728150007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2407, '24-G8-0902', 'DE FIESTA', 'MA. ZANETA JAMES', 'HERNANDEZ', 0, '2010-09-28', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'WAWA SAN RAFAEL MONTALBAN RIZAL', '9814576138', 'CATHOLIC', 'JAMIE MARIE G. HERNANDEZ', 'RIMUEL DE FIESTA', '', '', '2024-07-11', 'WALK IN', '425624150196', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2408, '24-G8-0928', 'CATIPUNAN', 'NIKKILYN', 'DAPITAN', 0, '2010-08-22', 'MANILA', 'FEMALE', '', 'SITIO TABAK 2 BRGY. SAN RAFAEL RODRIGUEZ RIZAL', '9292107376', 'CATHOLIC', 'NILDA CATIPUNAN', 'JOEL CATIPUNAN', '', '', '2024-07-15', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2409, '24-G8-0929', 'GABRIEL', 'ISABEL MARI', 'ALMADEN', 0, '2010-03-08', 'MANILA', 'FEMALE', '', 'PHASE 1 BLK 22 LOT 39 E.R SAN ISISDRO RODRIGUEZ RIZAL', '9204048425', 'CATHOLIC', 'MARIVIC GABRIEL', 'GILBERT GABRIEL', '', '', '2024-07-17', 'WALK IN', '425654150020', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2410, '22-G7-0550', 'ANGELES', 'AKIRO CHEYEANNE', 'LLAMAS', 0, '2009-10-13', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK6 LOT 2 FOXTROT ST. COR. ALPHA ST. ESTRELLA HEIGHTS SUBD. BURGOS, RODRIGUEZ, RIZAL', '09938552801', 'CATHOLIC', 'MARIA LESLIE N. LLAMAS', 'RAYMOND A. ANGELES', '', '', '2024-07-27', 'WALK IN', '136732150117', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2411, '22-G7-0522', 'APE', 'RAIVNIEL GLIENE', 'CANTUBA', 0, '2000-01-01', 'QUEZON CITY', 'MALE', '', 'BLK 21 LOT 14 PH 4 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '09150614805', 'CATHOLIC', 'VERLEN GRACE C. APE', 'STEVEN JOHN T. APE', '', '', '2024-07-27', '', '425687150158', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2412, '14-N-0761', 'BASA', 'AUDREY CHRISTELLE', 'BETITA', 0, '2010-08-21', 'QUEZON CITY', 'FEMALE', '', '1 SAMPAGUITA STREET, ARANZAZU SUBDIVISION, BURGOS, RODRIGUEZ, RIZAL', '09283951091', 'CATHOLIC', 'ELISA C. BETITA', 'REYNALDO S. BASA', '', '', '2024-07-17', 'WALK IN', '425623150005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2413, '22-G7-0418', 'BRANDIS', 'RENZ JAYRALD', 'MAUHAY', 0, '2009-12-04', 'SAN MATEO, RIZAL', 'MALE', '', 'BLK 16 LOT 7 PH 1 EASTWOOD VILLA SAN ISIDRO ROD. RIZAL', '09567543782', 'CATHOLIC', 'ROSALIE M. BRANDIS', 'JAYSON Q. BRANDIS', '', '', '2024-07-02', 'WALK IN', '109479150318', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2414, '22-G7-0539', 'CAYABYAB', 'CHELSEYA MARIE', 'TAN', 0, '2010-11-09', 'ANTIPOLO CITY', 'FEMALE', '', 'LOT 5 BLK 3 CEDAR ST. EASTWOOD GREENVIEW SUBD. PHASE 4B RODRIGUEZ, RIZAL', '9052582048', 'CATHOLIC', 'MA. CECILLA CAYABYAB', 'ALFRED RYAN CAYABYAB', '', '', '2024-06-20', 'WALK IN', '425624150197', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MA. CECILLA CAYABYAB'),
(2415, '22-G7-0467', 'CONCEPCION', 'ALFA ANDREA', 'LAMSEN', 0, '2010-07-07', 'QUEZON CITY', 'FEMALE', '', 'BLK 80 LOT 35 PH 3 ER SAN ISIDRO ROD. RIZAL', '09381965084', 'CATHOLIC', 'JOCELYN L. CONCEPCION', 'ALFONSO B. CONCEPCION JR.', '', '', '2024-07-04', 'WALK IN', '425768150011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2416, '22-G7-0426', 'CRUZ', 'JANZEN KALE', 'ADONIS', 0, '2009-08-22', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 16 LOT 27 PH 1 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '09392861809', 'CATHOLIC', 'JANICE A. CRUZ', 'RAPHAEL G. CRUZ', '', '', '2024-07-01', 'WALK IN', '425729150029', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2417, '14-K-0731', 'CUTAMORA', 'RHIONNA ADELLAINE', 'BELARDO', 0, '2009-08-14', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '43 E.P. ROD. ST. SAN RAFAEL ROD.RIZAL', '09206451054', 'CATHOLIC', 'ANALIE B. CUTAMORA', 'RUBEN R. CUTAMORA', '', '', '2024-07-05', 'WALK IN', '425623150019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2418, '22-G7-0490', 'DABUET', 'ERNEST RAIN', 'CANDIDO', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'MALE', '', 'SITIO TABAK SAN RAFEL RODRIGUEZ RIZAL', '09463915411', 'CATHOLIC', 'SOLITA C. DABUET', 'ERNESTO B. DABUET', '', '', '2024-07-05', '', '109466150205', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2419, '16-61-0215', 'DAMPIL', 'RHEANA JOIE', 'OSIA', 0, '2010-02-17', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'B23 L9 CALAVITE ST. AMITYVILLE SUBD. SAN JOSE RODRIGUEZ RIZAL', '09453701248', 'CATHOLIC', 'KATHLYN JOY O. DAMPIL', 'RONDOLPH V. DAMPIL', '', '', '2024-07-04', 'WALK IN', '425623160036', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2420, '22-G7-0475', 'DE MESA', 'ANICKA GAYLE', 'FRESNOZA', 0, '2000-01-01', 'PARAÑAQUE CITY', 'FEMALE', '', 'BLK 61 LOT2A METRO MANILA HILLS RODRIGUEZ, RIZAL', '09274171868', 'CATHOLIC', 'GEMMA F. DE MESA', 'JUN PHILIP Q. DE MESA', '', '', '2024-07-04', '', '406524150014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2421, '16-G1-0212', 'DELA CRUZ', 'VINCE DYLAN', 'MORGA', 0, '2009-09-15', 'QUEZON CITY', 'MALE', '', 'ZAMORA ST. COR. LITTON ST. LITEX VILLAGE SAN JOSE ROD. RIZAL', '09208991339', 'CATHOLIC', 'BRENDA N. VIC MORGA', 'VINCENT E. DELA CRUZ', '', '', '2024-07-15', 'WALK IN', '425693150002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2422, '22-G7-0538', 'EDEJER', 'LEONNE ELGIN', 'MAABA', 0, '2010-08-21', 'MARIKINA CITY', 'MALE', '', 'BLK 74 LOT 8 PH 3 ESATWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '09611260012', 'CATHOLIC', 'LOURDES M. EDEJER', 'EDGAR M. EDEJER', '', '', '2024-07-06', 'WALK IN', '485014150061', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2423, '16-G1-0158', 'ERMITAÑO, ', 'ARA SANJE', 'CADIZ', 0, '2010-06-20', 'QUEZON CITY', 'FEMALE', '', 'P5 B51 L21 CENTELLA HOMES SAN ISIDRO RODRIGUEZ RIZAL', '0917 6470803', 'CATHOLIC', 'GREAR GAY C. ERMITAÑO', 'SANROSE F. ERMITAÑO', '', '', '2024-07-20', 'WALK IN', '425693150011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2424, '22-G7-0521', 'ESTACIO', 'EUNICE KAIH', 'JAVIER', 0, '2010-10-19', 'CALOOCAN CITY', 'FEMALE', '', 'BLK 1 LOT 31 OPAL ST. SUMMIT VIEW SAN RAFAEL RODRIGUEZ RIZAL', '9173292044', 'CATHOLIC', 'QUINE CHARMAINE P. JAVIER', '', '', '', '2024-06-08', 'WALK IN', '425767150012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2425, '22-G7-0445', 'FUENTES', 'LOU ABEL', 'ANGELES', 0, '2010-06-07', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 5 LOT 4 FIORENZA SUBD. ROSARIO RODRIGUEZ, RIZAL', '09816767677', 'CATHOLIC', 'LILIBETH D. ANGELES', 'MARLOU A. FUENTES', '', '', '2024-06-05', 'WALK IN', '425761150019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LILIBETH D. ANGELES'),
(2426, '14-N-0638', 'GABUTERO', 'KIESHA TYLER', 'DISCAYA', 0, '2010-03-20', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '657 TOBLERONE ST. BALITE ROD. RIZAL', '9178018276', 'CATHOLIC', 'AILEEN P. DISCAYA', 'EDISON S. GABUTERO', '', '', '2024-07-15', 'WALK IN', '425623150008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2427, '22-G7-0431', 'GERNALE', 'JOHN CEDRICK', 'TADURAN', 0, '2010-01-25', 'QUEZON CITY', 'MALE', '', 'BLK 251 LOT 2 AFP HOUSING SAN ISIDRO ROD. RIZAL', '9275215346', 'CATHOLIC', 'JONALYN T. GERNALE', 'SEDRIC O. GERNALE', '', '', '2024-06-15', 'WALK IN', '136570150031', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2428, '22-G7-0458', 'GREENLY', 'JOHN PAUL', 'ORTEGA', 0, '2010-01-16', 'CAPIZ', 'MALE', '', 'PH 4 HILLSIDE SAN RAFAEL RODRIGUEZ RIZAL', '9083173760', 'CATHOLIC', 'MAY D. ORTEGA', 'EDWARD RAYMOND GREENLY', '', '', '0214-02-07', 'WALK IN', '109479160045', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2429, '16-G1-0143', 'GUYJUCO', 'RYOHAN CAYZER', 'TORRALBA', 0, '2010-03-21', 'SAN MATEO, RIZAL', 'MALE', '', 'B7 L8 FRANC ST CARLTON VILLAGE MANGGAHAN RODRIGUEZ RIZAL', '09562902776', 'CATHOLIC', 'HONIE D. TORRALBA', 'RYAN R. GUYJUCO', '', '', '2024-07-10', 'X', '425623160031', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2430, '21-G6-0405', 'HERNANDEZ', 'ALTHEA LORIZ', 'N/A', 0, '2010-09-06', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', '15 AKLEE ST SAUDI COMPD SAN JOSE ROD RIZAL', '9053149543', 'CATHOLIC', 'MARITES V. HERNANDEZ', 'GIOVANNI T. HERNANDEZ', 'N/A', '', '2024-07-26', 'WALK', '700004181210', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2431, '14-K-0667', 'HERRERO', 'SERGIO MARI', 'VALLER', 0, '2009-10-28', 'MARIKINA CITY', 'MALE', '', 'B20 L24 SUMMITVIEW SUBDIVISION SAN RAFAEL, RODRIGUEZ RIZAL', '09281915632', 'CATHOLIC', 'CECILIA V. HERRERO', 'ROLANDO T. HERRERO', '', '', '2024-06-27', 'WALK IN', '425623150015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2432, '15-K2-0007', 'MATIC', 'JAZMIEN NOJ', 'MANSALAPUS', 0, '2010-05-12', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PHASE 1 BLK 3 LOT 11, EASTWOOD GREENVIEW SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '09694780636', 'CATHOLIC', 'HASMEN MANSALAPUS', 'BERNARDINO MATIC JR.', '', '', '2024-07-02', 'WALK IN', '425623150023', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2433, '22-G7-0549', 'MENDOZA', 'RHIAN NICOLE', 'RUBIO', 0, '2010-04-03', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '530 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9125668135', 'CHRISTIAN', 'ROWENA R. MENDOZA', 'ERWIN A. MENDOZA', '', '', '2024-05-13', 'WALK IN', '109479150420', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2434, '17-G2-0397', 'MESINA', 'EDWARD JACOB', 'DE GUZMAN', 0, '2009-11-18', 'MARIKINA CITY', 'MALE', '', 'B4 L15 ST. JOSEPH ST. KING DAVID BURGOS RODRIGUEZ RIZAL', '09224711884', 'CATHOLIC', 'KATHERINE DE GUZMAN', 'EMMANUEL C. MESINA', '', '', '2024-07-09', 'WALK IN', '425524150033', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2435, '22-G7-0450', 'MINLAY', 'PAUL MAYER', 'VALERIANO', 0, '2009-06-22', 'MANILA', 'MALE', '', 'BLK 10 LOT 24 OAKLAND ST. GLORIA VISTA SUBD. SAN RAFAEL ROD. RIZAL', '9276115957', 'CATHOLIC', 'MERCEDITA V. MINLAY', 'N/A', '', '', '2024-06-05', 'WALK IN', '109479150013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MERCEDITA V. MINLAY'),
(2436, '16-G1-0238', 'MOSCOSO', 'RIONA AMBER', 'CELMAR', 0, '2009-06-03', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '145 A. MABINI ST. BURGOS, RODRIGUEZ RIZAL', '9157057558', 'CATHOLIC', 'MARIA RONA C. MOSCOSO', 'LEONARDO C. MOSCOSO', '', '', '2024-07-16', 'WALK IN', '425623160032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2437, '16-61-0259', 'ONG', 'JAFFEY ARWENNE', 'MAGTANGOB', 0, '2010-05-19', 'QUEZON CITY', 'FEMALE', '', 'PHASE 3A BLOCK 4 LOT 28 EASTWOOD GREENVIEW SUBD RODRIGUEZ RIZAL', '9366711358', 'CATHOLIC', 'JANICE M. ONG', 'JEFFREY V. ONG', '', '', '2024-07-16', 'WALK IN', '425623160040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2438, '22-G7-0411', 'PALEC', 'ISAIAH', 'MORALES', 0, '2009-09-09', 'STA. CRUZ, MANILA', 'MALE', '', 'BLK 6 LOT 152 PH 1 EASTWIND SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9321097267', 'CATHOLIC', 'ROSEMARIE M. PALEC', 'LEO P. PALEC', '', '', '2024-07-03', 'WALK IN', '425690150080', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2439, '22-G7-0428', 'PAZ', 'LYCAN CLAIRE', 'LOPEZ', 0, '2009-04-11', 'QUEZON CITY', 'FEMALE', '', 'COL. S. CRUZ ST. SAN JOSE RODRIGUEZ RIZAL', '09663077220', 'CATHOLIC', 'YVETA L. PAZ', 'ESTEPHEN V. PAZ', '', '', '2024-07-17', 'WALK IN', '425591150001', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2440, '22-G7-0424', 'PECHON', 'KIRSTEN ANGEL', 'N/A', 0, '2010-01-06', 'QUEZON CITY', 'FEMALE', '', 'BLK 14 LOT 10 PH 2 EASTWIND SAN ISIDRO RODRIGUEZ, RIZAL', '9150166352', 'CATHOLIC', 'ROSIE C. PECHON', '', '', '', '2024-06-08', 'WALK IN', '425719150040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2441, '17-G2-0347', 'PULA', 'MARA ANGELIKA', 'BULA', 0, '2010-09-28', 'SAN MATEO, RIZAL', 'FEMALE', '', 'PH3B BLK 25 LOT 17 EASTWOOD GREENVIEW SAN ISIDRO, RODRIGUEZ RIZAL', '9772772482', 'CATHOLIC', 'ELMA B. PULA', 'RAFAEL A. PULA', '', '', '2024-07-09', 'WALK IN', '136509150358', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2442, '22-G7-0569', 'RIGODON', 'AVRIL ', 'DUHAYLUNGSOD', 0, '2010-04-23', 'SAMPALOC, MANILA', 'FEMALE', '', 'APARTMENT#2 507 P. RODRIGUEZ ST. BRGY SAN RAFAEL RODRIGUEZ, RIZAL', '9662934538', 'CATHOLIC', 'JULIET C. DUHAYLUNGSOD', 'ROMEO S. RIGONDON', '', '', '2024-06-10', 'WALK IN', '406632160120', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JULIET C. DUHAYLUNGSOD'),
(2443, '14-K-0765', 'SALDAÑA', 'MICHAEL ELY', 'ABRENCILLO', 0, '2009-04-07', 'PASIG CITY', 'MALE', '', 'BLK 9 LOT 57 SAN VICENTE ST. CORTIJOS DE SAN RAFAEL RODRIGUEZ RIZAL', '9178309630', 'CATHOLIC', 'ANALIZA A. SALDAÑA', 'ELESITO D.SALDAÑA', '', '', '2024-06-27', 'WALK IN', '403075150190', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2444, '19-G4-0284', 'SAN JUAN', 'LUKE CHRISTOPHER', 'DELAS ARMAS', 0, '2009-01-11', 'RODRIGUEZ, RIZAL', 'MALE', '', '544 P. RODRIGUEZ ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9306591975', 'CATHOLIC', 'CHARMAINE D. GABANO', 'JHENNYR M. SAN JUAN ', '', '', '2024-07-16', 'WALK IN', '403075150158', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2445, '17-G2-0411', 'SANTOS', 'JAMES ', 'GARCIA', 0, '2009-07-31', 'MANILA', 'MALE', '', 'LOT 3 BLK 2,LYON ST. MEDITERRANEAN HEIGHTS, PHASE 1, SAN JOSE, RODRIGUEZ, RIZAL', '9209556881', 'CATHOLIC', 'HILDA G.  SANTOS', '', '', '', '2024-07-01', 'WALK IN', '424524150009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2446, '22-G7-0463', 'SANTOS', 'JOHN DHAVID', 'RIVAS', 0, '2010-08-05', 'RODRIGUEZ, RIZAL', 'MALE', '', '516 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9208593463', 'CATHOLIC', 'VICTORIA R. SANTOS', 'EDWIN C. SANTOS', '', '', '2024-07-02', 'WALK IN', '109479160106', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2447, '16-G1-0155', 'SANTOS', 'SOPHIA JHUDIEL', 'SAN ANDRES', 0, '2010-06-27', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 12 LOT 2 SUMMIT SAN RAFAEL ROD. RIZAL', '9327116708', 'CATHOLIC', 'JUDITH S. SANTOS', 'RAMON P. SANTOS', '', '', '2024-06-21', 'WALK IN', '425761150085', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2448, '16-G1-0128', 'SARMING', 'CLARK KENNETH', 'PASTORAL', 0, '2010-01-19', 'RODRIGUEZ, RIZAL', 'MALE', '', 'B14 L37 CHARMIZON SUBD. GERONIMO RODRIGUEZ RIZAL', '9165314089', 'CATHOLIC', 'GRACE SARMING', 'MONLITO SARMING', '', '', '2024-06-22', 'WALK IN', '425761150066', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GRACE SARMING'),
(2449, '22-G7-0469', 'SEMILLA', 'GHILIAND', 'PELAYO', 0, '2010-09-09', 'RODRIGUEZ, RIZAL', 'MALE', '', '322 COL S. CRUZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9488930946', 'CATHOLIC', 'ANDREA P. SEMILLA', 'JIMMY J. SEMILLA', '', '', '2024-06-25', 'WALK IN', '403072170008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2450, '17-G2-0292', 'YAP', 'BREIDEN KYLE GABRIEL', 'HUBILLA', 0, '2000-01-01', 'CALOOCAN CITY', 'MALE', '', 'BLK 3 LOT 20 AMBER ST. SUMMIT VIEW SUBD.  SAN RAFEL ROD. RIZAL', '9178523138', 'CATHOLIC', 'ARLENE H. YAP', '', '', '', '2024-06-25', '', '425662160017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2451, '23-G8-0639', 'SORRERA', 'WILHELMINA', 'ENRIQUEZ', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'BLK 18 LOT 40 PHASE 1 EASTWOOD RESIDENCES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9760117491', 'CATHOLIC', 'MA. KRISTEL E. SORRERA', 'GUIAN D. SORRERA', '', '', '2024-06-25', '', '425687150055', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2452, '23-G8-0657', 'CALIMAG', 'SHAMIR AIKEYAH', 'MARASIGAN', 0, '2010-09-05', 'MARIKINA CITY', 'MALE', '', 'PHASE 2 BLK 11 LOT 194 EASDTWIND SUBD., SAN ISIDRO, RODIGUEZ, RIZAL', '09610855521', 'CATHOLIC', 'NENITA M. CALIMAG', 'REMIGIO L. CALIMAG', '', '', '2024-07-09', 'WALK IN', '425577160011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2453, '23-G8-0670', 'AGCAOILI', 'CESAR JOSE', 'MELENDRES', 0, '2009-07-08', 'CATARMAN N. SAMAR', 'MALE', 'FILIPINO', 'PHASE 2 BLK 60 LOT 30 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09178968779', 'CATHOLIC', 'MYLA MYR M. AGCAOILI', 'REX E. AGCAOILI', 'N/A', '', '2024-06-27', 'WALK IN', '403075150114', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2454, '23-G8-0673', 'AYUSON', 'NISHAN KYLE', 'SANTOS', 0, '2010-08-05', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '346 M. SAN JUAN ST., SAN RAFAEL RODRIGUEZ, RIZAL', '09384613127', 'CATHOLIC', 'RHEA L. SANTOS', 'MICHAEL JOHN F. AYUSON', '', '', '2024-06-18', 'WALK IN', '109479160303', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RONNIE SANTOS'),
(2455, '23-G8-0691', 'LIBUNAO', 'ARKIN JACOB', 'CRUZ', 0, '2009-10-13', 'MARIKINA CITY', 'MALE', '', '466 N. SAN JUAN ST. SAN RAFAEL MONTALBAN RIZAL', '09123111625 /09953038687', 'CATHOLIC', 'GRACIE C. LIBUNAO', 'ELMERO S. LIBUNAO', '', '', '2024-06-07', 'WALK IN', '403074160009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2456, '23-G8-0733', 'GARIBAY', 'KASSIE MARI', 'MALASARTE', 0, '2010-05-11', 'MARIKINA CITY', 'FEMALE', '', 'P. RODRIGUEZ, ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '09988823670 /09984242751', 'ROMAN CATHOLIC', 'OLIVIA M. GARIBAY', 'MARVIN R. GARIBAY', '', '', '2024-07-26', 'WALK IN', '109479150154', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2457, '23-G8-0746', 'ADDURU', 'MARGARET KANSHEN', 'FLORESCA', 0, '2010-02-18', 'QUEZON CITY', 'FEMALE', '', 'BLOCK 12 LOT 9 PHASE 5 EASTWOOD GREENVIEW SUBD. BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '09171086163 /09275251379', 'CATHOLIC', 'VERONICA F. ADDURU', 'WILBERT I. ADDURU', '', '', '2024-06-28', 'WALK IN', '406327150140', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2458, '22-G7-0430', 'FONTANILLA', 'JUSTINE EION MACKENZIE ', 'SALANGSANG', 0, '2010-06-25', 'PASIG CITY', 'MALE', '', 'L2 BLK 3 PH3B EASTWOOD GREENVIEW SAN ISIDRO, RODRIGUEZ, RIZAL', '09171469807', 'CATHOLIC', 'NERISSA S. FONTANILLA', 'ROGELIO L. FONTANILLA', '', '', '2024-06-18', 'WALK IN', '425524150012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'NERISSA S. FONTANILLA'),
(2459, '23-G8-0777', 'SALAZAR', 'ALEXANDRA NICOLE', 'ESCONDIDA', 0, '2010-05-04', 'CAVITE', 'FEMALE', '', '0170 A.C. SAN RAFAEL, RODRIGUEZ, RIZAL', '9667121078', 'CATHOLIC', '', 'NAPOLEX ALJOHN V. SALAZAR', '', '', '2024-07-15', 'WALK IN', '117203150017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2460, '24-G9-0819', 'MANALASTAS', 'MA. EUPHIE MYKAELLAH', 'BANAYOS', 0, '2010-06-30', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '056 GRAVEL PIT ROAD GROUP 13, PAYATAS B. QUEZON CITY', '9109834976', 'CATHOLIC', 'NATHALIE ROSE R. BANAYOS', 'CRISTOPHER S. MANALASTAS', '', '', '2024-06-07', 'WALK IN', '136618160190', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2461, '24-G9-0824', 'LLOVIT', 'PRINCESS VIEL', 'DESULO', 0, '2010-01-13', 'MARIKINA CITY', 'FEMALE', '', 'BLK 18 LOT 27 PHASE 2 SAPPHIRE ST. SUMMITVIEW SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9101683985', 'CATHOLIC', 'MEVEL D. LLOVIT', 'JOEY LLOVIT', '', '', '2024-06-13', 'WALK IN', '403072150280', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MEVEL D. LLOVIT'),
(2462, '24-G9-0850', 'BERIÑA', 'MARVIN', 'TORRES', 0, '2008-09-20', 'MONTALBAN, RIZAL', 'MALE', 'FILIPINO', 'LOT 8 BLK 4 BARCELONA ST. MONTE BRISA PHASE 2 MANGGAHAN RODRIGUEZ, RIZAL', '9054150369', 'CATHOLIC', 'MARISOL BERIÑA', 'MELVIN BERIÑA', 'N/A', '', '2024-06-20', 'WALK IN', '403106150077', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARISOL BERIÑA'),
(2463, '24-G9-0868', 'ZAMBOANGNON', 'SHANELLE', 'BAUTISTA', 0, '2010-02-05', 'PASIG CITY', 'FEMALE', '', 'BLK 13 LOT 29 SAN ANTONIO ST. CORTIJOS SUBD. MONTALBAN RIZAL', '9696290667', 'CATHOLIC', 'MA. LOURDES ZAMBOANGNON', 'BENGIE ZAMBOANGNON', '', '', '2024-07-02', 'WALK IN', '402969160156', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'BENGIE ZAMBOANGNON'),
(2464, '24-G9-0866', 'DE VERA', 'FRANCES', 'GUTIERREZ', 0, '2010-06-19', 'MANILA', 'FEMALE', 'FILIPINO', '?', '9507859682', 'CATHOLIC', 'JOCELYN DE VERA', 'FRANCO DE VERA', 'N/A', '', '2024-07-02', 'WALK IN', '406496150052', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2465, '24-G9-0873', 'WASAN', 'ISAIAH JUSTINE', 'GACAYAN', 0, '2010-08-23', 'QUEZON CITY', 'MALE', '', 'BLK 13 LOT 169 EASTWOOD RESIDENCES BRGY. SAN ISISDRO RODRIGUEZ, RIZAL', '9765344342', 'CATHOLIC', '', '', '', '', '2024-07-04', 'WALK IN', '485535150013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2466, '24-G9-0930', 'VILLANUEVA', 'ANGEL MIZHKHA', 'ABUGAN', 0, '2010-01-06', 'QUEZON CITY', 'FEMALE', '', '2442 MRB PILOT DRIVE BRGY. COMMONWEALTH QUEZON CITY', '83718841', 'CATHOLIC', 'BHERNA LYNNE A. ABUGAN', 'LERRIO VILLANUEVA', '', '', '2024-07-20', 'WALK IN', '136546156477', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RAINILYN A ABUGAN'),
(2467, '14-P-0675', 'ALMENDO', 'LIWAYWAY', 'QUINAO', 0, '2008-12-23', 'NORTH SAMAR', 'FEMALE', '', 'PHASE 1 BLOCK 16 LOT 12A, EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09606542364', 'ROMAN CATHOLIC', 'MA. LITA Q. ALMENDO', 'NATHANIEL G. ALMENDO', '', '', '2024-06-27', 'WALK IN', '425623150071', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2468, '21-G7-0357', 'ARAGONCILLO', 'SHANELLE', 'PAGA', 0, '2009-10-20', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '511 P RODRIGUEZ ST. SAN RAFAEL, RODRIGUEZ , RIZAL', '9262773913', 'CATHOLIC', 'MAYETTE P. ARAGONCILLO', 'ROLLY J. ARAGONCILLO', '', '', '2024-07-26', 'WALK IN', '109479150245', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2469, '18-G4-0483', 'ARANETA', 'DWAYNE GAVEN', 'ABELLA', 0, '2009-03-21', 'QUEZON CITY', 'MALE', '', 'PHASE 9 BLK 11 LOT 32 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ RIZAL', '9486351153', 'CHRISTIAN', 'ANABELL A. ARANETA', 'DOVER T. ARANETA', '', '', '2024-06-28', 'WALK IN', '136585140475', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2470, '22-G8-0455', 'AUSTRIA', 'DECERINE', 'RAMOS', 0, '2009-10-07', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '512 P. RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9496680415', 'CATHOLIC', 'CATHERINE R. AUSTRIA', 'DECKSON A. AUSTRIA', '', '', '2024-07-10', 'WALK IN', '109479150168', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2471, '17-G3-0309', 'BACTASA', 'JAN ROMMEL', 'FETIZA', 0, '2009-01-27', 'LEYTE', 'MALE', '', 'PHASE 3 BLK 9 LOT 4, EASTWIND HOMES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9988824125', 'ROMAN CATHOLIC', 'MELANIE F. BACTASA', 'RONALD B. BACTASA', '', '', '2024-07-13', 'WALK IN', '425577150035', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2472, '19-G5-0201', 'BARIQUIT', 'QUINCY KENT JAMELYN', 'N/A', 0, '2000-01-01', 'SEVILLA, BOHOL', 'FEMALE', '', 'BLK 128-B LOT 20, SOUTHVILLE 8B, SAN ISIDRO, RODRIGUEZ, RIZAL', '9260241523', 'CATHOLIC', 'KARLYN JOY A. BARIQUIT', 'N/A', '', '', '2024-07-13', '', '118560140031', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2473, '21-G7-0359', 'CARIASO', 'JOHN RHOI', 'COLANGGO', 0, '2009-05-24', 'RODRIGUEZ, RIZAL', 'MALE', '', 'P2 B23 L6 EASTWOOD GREENVIEW SAN JOSE RODRIGUEZ RIZAL', '9381958478', 'ROMAN CATHOLIC', 'JANETTE CARIASO', 'ROLANDO CARIASO', '', '', '2024-07-15', 'WALK IN', '425577150039', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2474, '22-G8-0412', 'CARLIT', 'YDEL LEXINE KEARA', 'CALIVO', 0, '2009-08-07', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 81 LOT 21 PH 2E METRO MANILA HILLS TOWN HOMES SAN JOSE ROD. RIZAL', '9171107914', 'CATHOLIC', 'ELLEENE C. CARLIT', 'JOSEPH C. CARLIT', '', '', '2024-07-08', 'WALK IN', '482781150090', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2475, '22-G8-0491', 'CONDAT', 'SHEKINAH ROSAVE', 'AZUL', 0, '2009-01-12', 'QUEZON CITY', 'FEMALE', '', 'BLK 27 LOT 12 PH 4 EASTWOOD RESIDENCE SAN ISIDRO RODRIGUEZ RIZAL', '09175292779', 'ROMAN CATHOLIC', 'ROSALYN A. CONDAT', 'SALVADOR C. CONDAT', '', '', '2024-06-26', 'WALK IN', '425728150032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2476, '18-G4-0484', 'CRUZ', 'JULLIANA LOUISE', 'LEVISTE', 0, '2009-05-19', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'LOT 3 BLK 36 PHASE 5, CENTELLA HOMES SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '9989834508', 'CATHOLIC', 'LOUISE L. CRUZ', 'JORGE L. CRUZ', '', '', '2024-06-18', 'WALK IN', '425577150082', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LOUISE L. CRUZ'),
(2477, '15-G1-0011', 'CRUZ', 'JUSTINE KYLE', 'SALVADOR', 0, '2000-01-01', 'MARIKINA CITY', 'MALE', '', '309 L.M. SANTOS ST., ROSARIO, RODRIGUEZ, RIZAL', '9976389/ 0995056404', 'ROMAN CATHOLIC', 'MA. CECILIA S. CRUZ', 'CRESENCIO A. CRUZ JR.', '', '', '2024-06-18', '', '425623150058', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2478, '21-G7-0333', 'DALUGDUGAN', 'JOHN DANIEL', 'LLEDO', 0, '2009-02-16', 'QUEZON CITY', 'MALE', '', 'SV-8B, BLK 62 LOT 3 PHASE 1, SAN ISIDRO, RODRIGUEZ, RIZAL', '09688671416', 'CATHOLIC', 'LUANA JANE L. DALUGDUGAN', 'DANILO S. DALUGDUGAN', '', '', '2024-07-09', 'WALK IN', '165510141131', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2479, '21-G8-0466', 'GADACHO', 'ANDRYAN GRETT', 'SORIANO', 0, '2009-05-12', 'INTRAMUROS MANILA', 'FEMALE', '', 'BLK 15 LOT 36 PH 2 EASTWOOD GREENVIEW SAN ISIDRO RODRIGUEZ RIZAL', '09052304483', 'CATHOLIC', 'ANALYN S. GADACHO', 'ANDRY M. GADACHO', '', '', '2024-07-09', 'WALK IN', '403105150261', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2480, '21-G7-0360', 'JACINTO', 'ALEXANDREI SEPHIEL', 'DE AUSEN', 0, '2008-12-03', 'MARIKINA CITY', 'MALE', '', 'LOT7 BLK 10 MATTEO ST. METRO ROYALE HOMES PH3 BURGOS, RODRIGUEZ, RIZAL', '9270784801', 'CATHOLIC', 'MICHELE ANGELIE U. DE AUSEN', 'JOSEPH VINCENT G. JACINTO', '', '', '2024-07-11', 'WALK IN', '425654150071', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2481, '15-G1-0046', 'LAO', 'KEEGAN CHASE', 'TURINGAN', 0, '2008-12-15', 'MARIKINA CITY', 'MALE', '', 'BLK 9B LOT 5 PHASE 3, CENTELLA HOMES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9338670168', 'CATHOLIC', 'NANETTE G. TURINGAN', 'KIM VINCENT C. LAO', '', '', '2024-06-22', 'WALK IN', '425623150064', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'NANETTE G. TURINGAN'),
(2482, '21-G7-0361', 'LIAMZON', 'BENJOE BOY', 'DE PERALTA', 0, '2009-05-03', 'RODRIGUEZ, RIZAL', 'MALE', '', '458 N. SAN JUAN ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '9272783436', 'CATHOLIC', 'ELISA D. LIAMZON', 'JOEL C. LIAMZON', '', '', '2024-07-05', 'WALK IN', '403072150005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2483, '12-N-0157', 'LOA', 'PRINCESS MAY', 'FAINSAN', 0, '2009-04-25', 'QUEZON CITY', 'FEMALE', '', 'BLK 13 LOT 12 PHASE 2, MONTREBRISA SUBD., RODRIGUEZ, RIZAL', '09178093058', 'CATHOLIC', 'MAYBELL LOA ', 'N/A', '', '', '2024-07-05', 'WALK IN', '406816150858', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2484, '15-G1-0081', 'LOMIBAO', 'MICAYAH LANCE', 'PAULO', 0, '2009-03-01', 'RODRIGUEZ, RIZAL', 'MALE', '', '#14 AKLE ST. SAUDI COMPOUND SAN JOSE RODRIGUEZ RIZAL', '9175557441', 'CATHOLIC', 'ROSALYN P. LOMIBAO', 'N/A', '', '', '2024-07-23', 'WALK IN', '425623150032', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2485, '18-G4-0135', 'MANUEL', 'JUDE ARCHIBALD', 'MANGUBAT', 0, '2009-06-16', 'QUEZON CITY', 'MALE', '', 'BLOCK 17, LOT 21, PHASE 4, EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9173284630', 'CATHOLIC', 'JUDELYN P. MANGUBAT', 'ANGELO F. MANUEL', '', '', '2024-07-10', 'WALK IN', '136521150016', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2486, '14-P-0646', 'MARCELO', 'CRIZE FHEONA', 'MANDAP', 0, '2008-11-12', 'MARIKINA CITY', 'FEMALE', '', '9004 VICTORIA COMPOUND ST. GERONIMO MONTALBAN RIZAL', '9605089901', 'BORN AGAIN', 'MARYANN LIZETTE MARCELO', 'NIKKO JOREL MARCELO', '', '', '2024-07-13', 'WALK IN', '425623150080', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2487, '15-G3-0042', 'MIANO', 'ANNIKA', 'CORTES', 0, '2009-05-02', 'MANILA', 'FEMALE', '', '718 MOLAVE ST., SAN JOSE, RODRIGUEZ, RIZAL', '9176770749', 'CATHOLIC', 'MONICA C. MIANO', 'JONATHAN I. MIANO', '', '', '2024-07-15', 'WALK IN', '425623150075', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2488, '21-G7-0362', 'PADASAS', 'RONETH MHAYE', 'PULA', 0, '2009-06-28', 'COTABATO', 'FEMALE', '', 'PHASE 3B BLK 6 LOT 35, EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '9473729730', 'CATHOLIC', 'MYLINE P. PADASAS', 'ROY C. PADASAS', '', '', '2024-07-02', 'WALK IN', '130233140040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2489, '15-G1-0012', 'PALAGHICON', 'ALFRED JEFFERSON', 'GUITANG', 0, '2009-07-10', 'QUEZON CITY', 'MALE', '', 'BLOCK 2 LOT 8 ROSA VERDE VILLAS, SAN RAFAEL, RODRIGUEZ, RIZAL', '9176581227', 'CATHOLIC', 'JENNIFER G. PALAGHICON', 'ALFREDO T. PALAGHICON JR.', '', '', '2024-05-22', 'WALK IN', '425623150068', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JENNIFER G. PALAGHICON'),
(2490, '21-G7-0399', 'PONCE', 'KEANE GABRIEL', 'ORTIZ', 0, '2009-04-08', 'NUEVA ECIJA', 'MALE', '', 'BLK 10 LOT 26 PHASE 2, EMERALD ST., SUMMITVIEW SUBD., SAN RAFAEL, RODRIGUEZ, RIZAL', '9155861513', 'CATHOLIC', 'MEI LIN O. PONCE', 'GARRY WILSON R. PONCE', '', '', '2024-07-09', 'WALK IN', '403072150009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2491, '21-G7-0363', 'SANTOS', 'AUDREY VELINE', 'CUSTODIO', 0, '2009-08-09', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '516 P. ROD. ST. SAN RAFAEL RODRIGUEZ RIZAL', '09455672304', 'CATHOLIC', 'RHONA SANTOS', 'MELVIN SANTOS', '', '', '2024-07-15', 'WALK IN', '109479140245', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2492, '21-G7-0404', 'SIBUNGA', 'JOHN LIAN CARL', 'LOPEZ', 0, '2000-01-01', 'QUEZON CITY', 'MALE', '', 'B84 L20 SOUTHVILLE 8B, SAN ISIDRO, RODRIGUEZ, RIZAL', '09949394706', '', 'LANY L. SIBUNGA', 'JUNREY S. SIBUNGA', '', '', '2024-07-15', '', '165510141025', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2493, '15-G1-0077', 'TUPAZ', 'SEAN GABRIELLE', 'ROSALES', 0, '2008-10-17', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 3 LOT 35 P. ALEJANDRO ST. GREENROSE SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '09178711056', 'CATHOLIC', 'LOUREN MAE G. ROSALES', 'ROMMEL C. TUPAZ', '', '', '2024-07-15', 'WALK IN', '425623150039', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2494, '21-G7-0365', 'VALERIO', 'CYRILL LOUIS', 'SULA', 0, '2007-06-09', 'QUEZON CITY', 'MALE', '', 'BLK 10 LOT 26 PHASE 4, EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9988553429', 'CATHOLIC', 'REDELINA RAMA S. VALERIO', 'LOUIS P. VALERIO', '', '', '2024-06-24', 'WALK IN', '403063150050', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2495, '23-G9-0708', 'SIEGA', 'FRANCIS SIMON', 'RIVERA', 0, '2009-01-02', 'RODRIGUEZ, RIZAL', 'MALE', '', '129 M.H DEL PILAR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9951238981', 'CATHOLIC', 'RINA R. SIEGA', 'HUBERT R. SIEGA', '', '', '2024-06-08', 'WALK IN ', '403072150010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2496, '23-G9-0734', 'GARIBAY', 'JOHN MARVIN', 'MALASARTE', 0, '2009-06-24', 'MARIKINA CITY', 'MALE', '', 'P. RODRIGUEZ, ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '09988823670 /09984242751', 'CATHOLIC', 'OLIVIA M. GARIBAY', 'MARVIN R. GARIBAY', '', '', '2024-07-26', 'WALK IN', '109479150158', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2497, '23-G9-0747', 'ADDURU', 'MIGUEL KYLE', 'FLORESCA', 0, '2008-11-13', 'QUEZON CITY', 'MALE', '', 'BLOCK 12 LOT 9 PHASE 5 EASTWOOD GREENVIEW SUBD. BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '09275251379 / 09171086163', 'CATHOLIC', 'VERONICA F. ADDURU', 'WILBERT I. ADDURU', '', '', '2024-06-28', 'WALK IN', '406327150228', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2498, '23-G9-0759', 'DE LEON', 'YURIEL GILBERT DOMINIC', 'SUMAGAYSAY', 0, '2008-10-05', 'STA.CRUZ, MANILA', 'MALE', '', 'BLK 12A LOT 16 PH 5 EASTWOOD RESIDENCES BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9207228289', 'CATHOLIC', 'LALAINE HANNALE S. DE LEON', 'MARLOWE RAE B. DE LEON', '', '', '2024-07-23', 'WALK IN ', '406376150061', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2499, '23-G9-0774', 'RAMOS', 'NAIOMI SHANTELLE', 'FALSARIO', 0, '2009-09-25', 'MARIKINA CITY', 'FEMALE', 'FILIPINO', 'BLOCK 6, LOT 12 SAMAHANG MARALITA, SAN RAFAEL, RODRIGUEZ RIZAL', '09454257000', 'CATHOLIC', 'ABIGAEL F. RAMOS', 'EUGENE V. RAMOS', 'N/A', '', '2024-07-02', 'WALK IN', '136731140133', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2500, '23-G9-0773', 'DE LEON', 'MARK ALLEN', 'ZONIO', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'MALE', '', 'SITIO WAWA SAN RAFAEL, RODRIGUEZ, RIZAL', '09107296365', 'JCTGBTG', 'EVELYN Z. DE LEON', 'ALEX A. DE LEON', '', '', '2024-07-02', '', '425692150054', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2501, '24-G10-0931', 'VEGA', 'BRENT ZACHARY', 'ALAYAN', 0, '2007-06-28', 'MARIKINA CITY', 'MALE', '', 'PHASE 3 B5 L10 EASTWOOD GREENVIEW, RODRIGUEZ RIZAL ', '9303401858', 'ROMAN CATHOLIC', 'MA. YHIZA A. VEGA', 'BENZON C. VEGA JR. ', '', '', '2024-07-26', 'WALK IN', '425691150044', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2502, '18-G5-0488', 'ABEL', 'SAMANTHA', 'QUIRAY', 0, '2000-01-01', 'STA.CRUZ, MANILA', 'FEMALE', '', 'BLK 1 LOT 12 VILLA ADRIANA SUBD, SAN RAFAEL RODRIQUEZ RIZAL', '9088630138', 'CATHOLIC', 'JANE Q. ABEL', 'CRISPIN N. ABEL', '', '', '2024-07-26', '', '406290160011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2503, '18-G5-0482', 'BUNDALIAN', 'MERI ANGELENE', 'BARTOLOME', 0, '2000-01-01', 'SAMPALOC MANILA', 'FEMALE', '', 'ROSA VERDE MANGGAHAN RODRIGUEZ, RIZAL', '09383367414', 'CATHOLIC', 'MARY ANN B. BUNDALIAN', 'N/A', '', '', '2024-07-26', '', '109479140183', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2504, '20-G7-0311', 'CUEVA', 'LYNN ATHEA', 'REVILLON', 0, '2008-09-21', 'RODRIGUEZ RIZAL', 'FEMALE', '', '468 N. SAN JUAN ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '09166010362', 'CATHOLIC', 'ROSHELLE REVILLON', 'ALVIN CUEVA', '', '', '2024-07-16', 'WALK IN', '136676130439', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2505, '14-G1-0587', 'CUIBA', 'JOHN DOMINIC', 'TUSOY', 0, '2007-10-16', 'QUEZON CITY', 'MALE', '', 'BLK 4 LOT 3 PH 1 LGU MONTALBAN HEIGHTS SAN JOSE RODRIGUEZ RIZAL', '9392931156', 'CATHOLIC', 'EVELYN T. CUIBA', 'DOMINGO E. CUIBA', '', '', '2024-06-27', 'X', '425623150120', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2506, '20-G7-0313', 'FUENTES', 'KASUMI MAR', 'ANGELES', 0, '2000-01-01', 'RODRIGUEZ RIZAL', 'FEMALE', '', 'BLK 5 LOT 4 FIORENZA SUBD., ROSARIO, RODRIGUEZ, RIZAL', '09816767677', 'CATHOLIC', 'LILIBETH D. ANGELES', 'MARLOU A. FUENTES', '', '', '2024-06-27', '', '109466130102', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2507, '13-G1-0361', 'FULONG', 'SHERILEI', 'QUERIJERO', 0, '2000-01-01', 'TRECE MARTINEZ CITY', 'FEMALE', '', '11 A. BONIFACIO ST., BALITE, RODRIGUEZ, RIZAL', '09434487135 /09227368558', 'CATHOLIC', 'SHERILL Q. FULONG', 'LEO G. FULONG', '', '', '2024-06-27', '', '425623150196', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2508, '20-G7-0314', 'GRUTAS', 'ROHAN', 'EVIA', 0, '2000-01-01', 'RODRIGUEZ RIZAL', 'MALE', 'FILIPINO', 'PH2 BLK 1 LOT 1 EAST MERRIDEAN RESIDENCE, SAN ISIDRO, RODRIGUEZ, RIZAL', '09063872830', 'CATHOLIC', 'MARILYN EVIA', 'RHOMMEL GRUTAS', 'N/A', '', '2024-06-27', 'WALK-IN', '403072150080', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2509, '14-G1-0598', 'MASILANG', 'ALDRICH CYRILL', 'BIGLANG-AWA', 0, '2007-06-29', 'SAN MATEO, RIZAL', 'MALE', '', 'BLK4 LOT 12 ST. CATHERINE STREET FELICIDAD VILLAGE 1 BURGOS MONTALBAN RIZAL', '9206587152', 'CATHOLIC', 'RHOAN B. MASILANG ', 'ALLAN C. MASILANG', '', '', '2024-07-02', 'WALK IN', '425623150126', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2510, '17-G4-0364', 'MENDOZA', 'SKY ANDREI', 'BANCOLITA', 0, '2000-01-01', 'SAN JUAN CITY', 'MALE', '', 'EASTWOOD GREENVIEW PH5 BLK14 LOT19 MAIROAD', '9692837544', 'CATHOLIC', 'LALAINE B. MENDOZA', 'EFREN B. MENDOZA', '', '', '2024-07-02', '', '425729150083', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2511, '14-G1-0599', 'PEREZ', 'ARIANNE MYELLE', 'NAGUA', 0, '2007-10-23', 'ESPAÑA, MANILA', 'FEMALE', '', 'BLK 14 LOT 25 PH 1 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ, RIZAL', '09854909795', 'CATHOLIC', 'REVELYN N. PEREZ', 'EMMANUEL D. PEREZ', '', '', '2024-07-19', 'WALK IN', '425623150112', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2512, '13-P-0384', 'PINEDA', 'JONARD JOSH ', 'DE VEGA', 0, '2000-01-01', 'QUEZON CITY', 'MALE', '', 'BLOCK 11 LOT 147 EASTWIND HOMES PHASE 2 SAN ISIDRO, RODRIGUEZ, RIZAL', '09178368224', 'CATHOLIC', 'CLARITTA D. PINEDA', 'ELPIDIO T. PINEDA JR.', '', '', '2024-07-19', '', '425623150128', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2513, '20-G7-0323', 'RESULTAY', 'RHIANBELLE TERESE', 'MASILANG', 0, '2000-01-01', 'SAMPALOC MANILA', 'FEMALE', '', '178 ATIS STREET ESPIRITU SUBDIVISION, BRGY BALITE, RODRIGUEZ RIZAL', '9178936159', '', 'MA. THERESA L. MASILANG', 'NIÑO ANDREW F. RESULTAY', '', '', '2024-07-19', '', '403066150025', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2514, '20-G7-0325', 'SAUNAR', 'BRIDGIT', 'PARMAN', 0, '2000-01-01', 'QUEZON CITY', 'FEMALE', '', 'BLK 36 LOT 2 & 4, LA SOLIDARIDAD HOMES, PNP HOUSING, SAN ISIDRO, RODRIGUEZ, RIZAL', '09928511812', 'CATHOLIC', 'ANA FE P. SAUNAR', 'WINSON E. SAUNAR', '', '', '2024-07-19', '', '425634150052', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2515, '13-P-0425', 'TABUGAN', 'KYLA CASSANDRA', 'VALDEZ', 0, '2000-01-01', 'MARIKINA CITY', 'FEMALE', '', 'BLK 4 LOT 8, CATHERINE HOMES SUBD., GERONIMO, RODRIGUEZ, RIZAL', '9198975825', 'CATHOLIC', 'MA. LOURDES V. TABUGAN', 'NORMAN O. TABUGAN', '', '', '2024-07-19', '', '425623150113', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2516, '22-G9-0488', 'DANZALAN', 'SEANN DOMINICK', 'MEGIAS', 0, '2000-01-01', 'QUEZON CITY', 'MALE', '', 'BLK 3 LOT 29 PH 1 AMETHYST ST. SUMMITVIEW SUBD. SAN RAFAEL RODRIGUEZ RIZAL', '9195665361', 'CATHOLIC', 'DAISY M. DANZALAN', 'SONNY B. DANZALAN', '', '', '2024-07-19', '', '403072150075', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2517, '22-G9-0498', 'TENGCO', 'ROEDDIE YURI', 'VALENCIANO', 0, '2000-01-01', 'RODRIGUEZ RIZAL', 'MALE', '', 'BLK 10 LOT 18 PH 5 ER SAN ISIDRO ROD. RIZAL', '9294284413', 'BORN AGAIN', 'LORNA B. VALENCIANO', 'EDDIE R. TENGCO JR.', '', '', '2024-07-19', '', '403072150055', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2518, '23-G10-0750', 'SAN JOSE', 'AQUISHA MAXINE', 'ONG', 0, '2000-01-01', 'MARIKINA CITY', 'FEMALE', '', 'BLK 8 LOT 1 PHASE 4B EASTWOOD GREENVIEW, RODRIGUEZ, RIZAL', '9399232267', 'CATHOLIC', 'CHARLENE MAE O. SAN JOSE', 'MILERIO M. SAN JOSE', '', '', '2024-07-19', '', '425634150052', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2519, '24-G11-0779', 'TUANQUIN', 'AVERILE JOY', 'MANILA', 0, '2008-04-10', 'MANILA', 'FEMALE', '', 'BLK 36 LOT 30 LA SOLIDARIDAD ESTATE HOME PH 1B, SAN ISIDRO, RODRIGUEZ, RIZAL', '09260773831', 'BORN AGAIN CHRISTIAN', 'JACQUELINE M. TUANQUIN', 'MANOLITO M. TUANQUIN', '', '', '2024-02-16', 'WALK IN', '109466140231', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JACQUELINE M. TUANQUIN'),
(2520, '24-G11-0778', 'DORIA', 'CATHEREN', 'CULANCULAN', 0, '2008-06-02', 'RODRIGUEZ RIZAL', 'FEMALE', '', 'PH 2 LOT 29 BLK 9 EASTWIND SAN ISIDRO, RODRIGUEZ, RIZAL', '09086709897', 'CATHOLIC', 'BRENDA C. DORIA', 'ARNOLD L. DORIA', '', '', '2024-02-16', 'WALK IN', '403074150043', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'BRENDA C. DORIA'),
(2521, '24-G11-0781', 'ROTOL', 'PRINCESS MAE', 'DUKA', 0, '2007-05-08', 'QUEZON CITY', 'FEMALE', '', 'PH 1A BLK 3 LOT 21 SUB-URBAN, SAN JOSE, RODRIGUEZ, RIZAL', '09859045436', 'CATHOLIC', 'SHEILLA D. ROTOL', 'GLENFREY B. ROTOL', '', '', '2024-04-08', 'WALK IN', '109461140108', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHEILLA D. ROTOL'),
(2522, '24-G11-0782', 'ROLLOQUE', 'JOSHUA CHARLES', 'LUCIDO', 0, '2007-11-11', 'QUEZON CITY', 'MALE', '', '056 GROUP 13 AREA B, QUEZON CITY ', '09356220093', 'CATHOLIC', 'MERLY LUCIDO', 'ROMEO S. ROLLOQUE', '', '', '2024-04-08', 'WALK IN', '136549130088', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ANGELICA L. ROLLOQUE');
INSERT INTO `student_db` (`id`, `student_id`, `lname`, `fname`, `mname`, `age`, `bdate`, `bplace`, `gender`, `nationality`, `address`, `contact_no`, `religion`, `mother_name`, `father_name`, `health_concern`, `email_add`, `date_registered`, `reg_mode`, `lrn`, `esc_no`, `school_last_attended`, `grade_level`, `flyer_church`, `flyer_school`, `career_talk`, `facebook_page`, `tarp_buildings`, `tarp_tricycles`, `others`, `referral`, `others_specify`, `referred_by`, `sched_exam`, `sched_interview`, `guardian`) VALUES
(2523, '24-G11-0785', 'RIVAS', 'RENZ', 'MATEO', 0, '2008-09-22', 'RODRIGUEZ RIZAL', 'FEMALE', '', '782 T. MANUEL ST. SAN JOSE, RODRIGUEZ, RIZAL', '09567544445', 'CATHOLIC', 'EDITHA M. RIVAS', 'ROLANDO C. RIVAS', '', '', '2024-04-25', 'WALK IN', '109478130826', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'RANNI M. RIVAS'),
(2524, '24-G11-0786', 'ABLAO', 'PRINCESS APPLE', 'CASINILLO', 0, '2008-06-04', 'MARIKINA CITY', 'FEMALE', '', 'B52 L22 ER7 SAN ISIDRO, RODRIGUEZ, RIZAL', '09635472206', 'CATHOLIC', 'EMILYN C. ABLAO', 'ALVIN D. ABLAO', '', '', '2024-04-11', 'WALK IN', '109467140147', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EMILYN C. ABLAO'),
(2525, '24-G11-0788', 'MIRASOL', 'TROY STEVEN', 'VILLAVICENCIO', 0, '2008-03-20', 'BATANGAS', 'MALE', '', 'BLK 13 LOT 4 VICTORIA TRAILS SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '09451391377', 'CATHOLIC', 'AZENITH JOY V. VILLAVICENCIO', 'BRYAN B. MIRASOL', '', '', '2024-05-03', 'WALK IN', '107287130197', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'AZENITH JOY V. VILLAVICENCIO'),
(2526, ' 24-G11-0790', 'DENULAN', 'JIHN STEPHEN', 'CALUMBA', 0, '2008-06-04', 'QUEZON CITY', 'MALE', '', 'BLOCK 38 LOT 28 SOUTHVILLE 8B, BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9284945888', 'CATHOLIC', 'MARY JANE DENULAN', 'ROLANDO DENULAN', '', '', '2024-05-09', 'WALK IN', '165510140479', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARY JOY DENULAN'),
(2527, '24-G11-0799', 'RONQUILLO', 'RHIAN ', 'MARCELO', 0, '2008-01-14', 'SAN MATEO, RIZAL', 'FEMALE', '', 'BLK 15 LOT 20 EASTWOOD RESIDENCES RODRIGUEZ, RIZAL', '9124950425', 'CATHOLIC', 'RENALET MARCELO', 'ERROL RONQUILLO', '', '', '2024-05-10', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ANDY REYES'),
(2528, '24-G11-0802', 'CAMPO', 'MERSON JOHN', 'JAMILLA', 0, '2008-03-01', 'QUEZON CITY', 'MALE', '', 'PHASE 1 BLK 3 LOT 23, GREEN BREEZE SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9152465988', 'CATHOLIC', 'MARY CHEL CAMPO', 'SAMSON O. CAMPO', '', '', '2024-05-22', 'WALK IN', '109467140333', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARY CHEL CAMPO'),
(2529, '24-G11-0803', 'GAMARCHA ', 'TRISTAN JAY', 'ROTAS', 0, '2007-05-26', 'BACOLOD', 'MALE', '', 'CENTELLA EXTENTION PHASE 1 BLK 2 LOT 31 CENTELLA EXTENTION SAN ISIDRO', '9687001654', 'CATHOLIC', 'CHIERYL R. GAMACHA', 'ROBERT T. GAMARCHA ', '', '', '2024-06-03', 'WALK IN', '109479140294', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CHIERYL R. GAMACHA'),
(2530, '24-G11-0804', 'BACANI', 'KURT ALLEN', 'JOLONGBAYAN', 0, '2008-07-13', 'QUEZON CITY', 'MALE', '', 'BLK 3 LOT 104  CENTELLA HOMES SAN ISIDRO RODRIGUEZ, RIZAL', '9154280183', 'CATHOLIC', 'SHARON BACANI', 'TIMETEO G. BACANI JR.', '', '', '2024-06-03', 'WALK IN', '136557130269', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHARON BACANI'),
(2531, '24-G11-0805', 'ARANETA', 'JILLIAN', 'ROSALES', 0, '2007-11-08', 'QUEZON CITY', 'FEMALE', '', 'BLK 10 LOT 179 PHASE 2 EASTWIND HOMES BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9704019002', 'CATHOLIC', 'LORNA ARANETA', 'JOSE A. ARANETA', '', '', '2024-06-03', 'WALK IN', '136555140638', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LORNA ARANETA'),
(2532, '24-G11-0810', 'MIRANDA ', 'PRINCESS MHAE', 'ADRIANO', 0, '2007-12-06', 'MONTALBAN RIZAL', 'FEMALE', '', 'P. RODRIGUEZ ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9568412339', 'CATHOLIC', 'PAULA ADRIANO', 'FE3LIX MIRANDA', '', '', '2024-06-06', 'WALK IN', '109479140338', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'PAULA'),
(2533, '24-G11-0811', 'MELLA', 'VANESSA TRIXIE', 'SANTILLAN', 0, '2008-09-05', 'QUEZON CITY', 'FEMALE', '', 'BLK 3 LOT 3AB DOÑA MARIA SUBD., BURGOS, RODRIGUEZ, RIZAL', '9155852567', 'CATHOLIC', 'GEOGIE S. MELLA', 'DANILO T. MELLA', '', '', '2024-06-06', 'WALK IN', '109466140066', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'GEOGIE S. MELLA'),
(2534, '24-G11-0814', 'NONO', 'SEBASTIAN NIÑO', 'N/A', 0, '2008-02-15', 'QUEZON CITY', 'MALE', '', '129 M.H DEL PILAR STREET RODRIGUEZ, RIZAL', '9674393320', 'CATHOLIC', '', '', '', '', '2024-06-05', 'WALK IN', '109479130164', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2535, '24-G11-0815', 'DE ISO', 'JAMILLA EHRA', 'PEREZ', 0, '2007-08-18', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', '380 COL. S. CRUZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9391068005', 'CATHOLIC', 'JOCELYN DE ISO', 'JEFFERSON DE ISO', 'N/A', '', '2024-06-05', 'WALK IN', '109479120322', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JOCELYN DE ISO'),
(2536, '24-G11-0816', 'ZABALA', 'PRINCE JAMES ', 'DELOS ANGELES', 0, '2009-03-06', 'MONTALBAN RIZAL', 'MALE', '', 'BLK 25 LOT 21 PHASE 1A KASIGLAHAN VILLAGAE SAN JOSE RODRIGUEZ RIZAL', '95066198261 / 9303607282', 'CATHOLIC', 'PRECY D. ZABALA', 'JAIME ZABALA', '', '', '2024-06-05', 'WALK IN', '109461150300', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'PRECY D. ZABALA'),
(2537, '24-G11-0823', 'AGUDO', 'DIERRICK KIM', 'CASRAÑA', 0, '2008-08-15', 'MANDALUYONG CITY', 'MALE', '', 'BLK 40 LOT 9 PHASE 5 CENTELLA HOMES MONTALBAN RIZAL', '9976537447', 'CATHOLIC', 'LILIA C. AGUDO', 'FREDERICK C. AGUDO', '', '', '2024-06-10', 'WALK IN', '109479140104', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'FREDERICK C. AGUDO'),
(2538, '24-G11-0817', 'EVARISTO', 'JUAN SEBASTIAN', 'JACOBE', 0, '2007-04-26', 'MARIKINA CITY', 'MALE', '', '346 M. SAN JUAN ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9275829898', 'CATHOLIC', 'ROSSCHELL T. JACOBE', 'BRIAN G. EVARISTO', '', '', '2024-06-07', 'WALK IN', '403072150049', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ROSSCHELL T. JACOBE'),
(2539, '24-G11-0818', 'ADRIANO', 'JOHN GABRIEL', 'PATOC', 0, '2008-08-10', 'PASIG', 'MALE', '', 'PHASE 1 BLK 4 LOT 33 CENTELLA HOMES SAN ISIDRO, RODRIGUEZ, RIZAL', '9512853497', 'CATHOLIC', 'JOY ADRIANO', 'FELICIANO ADRIANO JR.', '', '', '2024-06-08', 'WALK IN', '136467140957', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JOY ADRIANO'),
(2540, '24-G11-0827', 'DEL ROSARIO JR.', 'ALEJANDRO', 'GOLO', 0, '2008-07-13', 'MARIKINA CITY', 'MALE', '', 'BLK 60 LOT 38 PHASE 2 EASTWOOD RESIDENCE BRGY. SAN ISIDRO, MONTALBAN RIZAL', '9124018143', 'CATHOLIC', 'JINKY G. DEL ROSARIO', 'ALEJANDRO DG. DEL ROSARIO', '', '', '2024-06-13', 'WALK IN', '425577150583', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'JINKY G. DEL ROSARIO'),
(2541, '24-G11-0829', 'ESPERANCILLA', 'ANTONETTE', 'VILLANUEVA', 0, '2007-11-05', 'QUEZON CITY', 'FEMALE', '', 'PHASE 7 BLK 57 LOT 15 EASTWOOD RESIDENCES', '9279477352', 'CATHOLIC', 'MYRA ESPERANCILLA', 'MAGDIWANG ESPERANCILLA', '', '', '2024-06-13', 'WALK IN', '109477150204', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MYRA ESPERANCILLA'),
(2542, '24-G11-0830', 'SALVINO', 'REA GRACE', 'SAMILLANO', 0, '2008-01-08', 'RODRIGUEZ RIZAL', 'FEMALE', '', 'P. RODRIGUEZ DAPDAP ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9197575092', 'CATHOLIC', 'REMEDIOS S. SALVINO', 'ALLAN SALVINO', '', '', '2024-06-13', 'WALK IN', '109479130347', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'REMEDIOS S. SALVINO'),
(2543, '24-G11-0836', 'CERENO', 'CAMILA', 'ORBE', 0, '2007-11-17', 'SAN JUAN CITY', 'FEMALE', '', 'PHASE 1 BLK 2 LOT 24 CENTELLA HOMES EXTIN. BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9171558308', 'CATHOLIC', 'MADELYN ORBE', 'ALLAN CERENO', '', '', '2024-06-15', 'WALK IN', '136557130209', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ALLAN CERENO'),
(2544, '24-G11-0835', 'SERVAN', 'MIKAELA URIELE', 'ABAC', 0, '2008-08-23', 'MONTALBAN RIZAL', 'FEMALE', '', '323 LM SANTOS STREET ROSARIO RODRIGUEZ RIZAL', '9659320288', 'CATHOLIC', 'CHRISTINA AMOR ABAC', 'ALVIN SERVAN', '', '', '2024-06-14', 'WALK IN', '109478140169', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ALVIN SERVAN'),
(2545, '24-G11-0837', 'ICAWALO', 'JAYCE NATHANIEL', 'LOPEZ', 0, '2007-09-11', 'MANILA', 'MALE', '', 'BLK 28 LOT 5 PHASE 4 EASTWOOD RESIDENCE RODRIGUEZ, RIZAL', '9551441398', 'CATHOLIC', 'HONEY LYNN ICAWALO', 'JOUMAR ICAWALO', '', '', '2024-06-18', 'WALK IN', '403012150182', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'HONEY LYNN ICAWALO'),
(2546, '24-G11-0840', 'ESCARIESES', 'LADY MARIANE', 'ESCALA', 0, '2007-08-22', 'POLILLO QUEZON', 'FEMALE', '', 'PHASE 1 BLK 6 LOT 104 GREEN BREEZE SUBD. BRGY. SAN ISIDRO, RODRIGUE, RIZAL', '9270360871', 'CATHOLIC', 'MELANIE E. ESCARIESES', 'DOMINGO ESCARIESES', '', '', '2024-06-18', 'WALK IN', '109477140310', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MELANIE E. ESCARIESES'),
(2547, '24-G11-0844', 'GASCON', 'JOHN PAUL', 'FELINA', 0, '2008-01-21', 'QUEZON CITY', 'MALE', '', 'BLK 9 LOT 9 PHASE 1A EAST MERIDION SAN ISIDRO RODRIGUEZ RIZAL', '9155275062', 'CATHOLIC', 'ROSALINDA F. GASCON', 'ANECENCIO GASCON', '', '', '2024-06-20', 'WALK IN', '425692150068', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'ROSALINDA F. GASCON'),
(2548, '24-G11-0848', 'LARDIZABAL', 'JOSHUA  ', 'POTUGAL', 0, '2007-04-30', 'QUEZON CITY', 'MALE', '', 'BLK 6 LOT 3 PHASE 5 EASTWOOD GREENVIEW SAN ISIDRO RODRIGUEZ RIZAL', '995753209', 'CATHOLIC', 'SHARON PORTUGAL LARDIZABAL', 'JOEL LARDIZABAL', '', '', '2024-06-20', 'WALK IN', '1094466130124', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHARON PORTUGAL LARDIZABAL'),
(2549, '24-G11-0845', 'CORPUZ', 'KRISTINA CASSANDRA', 'BARCARSE', 0, '2008-03-11', 'ILOCOS SUR', 'FEMALE', '', 'BLK 6 LOT 5 VERDANPOINT PHASE 5E, SAN ISISDRO, RODRIGUEZ, RIZAL', '9693606737', 'CATHOLIC', 'MARY GRACE BARCARSE UBBARRE', 'LOUIE CORPUZ', '', '', '2024-06-20', 'WALK IN', '10052730010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CATHERINE CALIDGID'),
(2550, '24-G11-0854', 'ORTINEZ', 'PAUL EXCELL', 'CAJUSAY', 0, '2008-09-19', 'SAMAR', 'MALE', 'FILIPINO', 'SITIO YAGIT PH3 HILLSIDE BRGY. SAN RAFAEL RODRIGUEZ RIZAL', '09670989995', 'CATHOLIC', 'EMILYN C. ORTINEZ', 'RENANTE C. ORTINEZ', 'N/A', 'paulexc311@gmail.com', '2024-06-24', 'WALK IN', '122925130184', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2551, '24-G11-0861', 'TOKUDA', 'YOSKI TAKA', 'LAGUSAN', 0, '2007-03-03', 'RODRIGUEZ RIZAL', 'MALE', '', '', '', '', '', '', '', '', '2024-06-27', 'WALK IN', '165509130041', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2552, '24-G11-0871', 'BAJET', 'DENNISE KRISTEL', 'GOCON', 0, '2018-10-04', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'PH4 BLK 23 LOT 9 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '09255326832 | 09623518307', 'CATHOLIC', 'RITCHELLE BAJET', 'DANTE BAJET', 'N/A', '', '2024-06-29', 'WALK IN', '425654150101', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2553, '24-G11-0869', 'HABAN', 'VLADIMIR ILYCH', 'CATEQUISTA', 0, '2007-12-13', 'QUEZON CITY', 'MALE', 'FILIPINO', 'PH5 BLK 8 LOT 10 EASTWOOD GREENVIEW SAN ISIDRO, RODRIGUEZ, RIZAL', '9682371709', 'CATHOLIC', 'CHRISTINE JOYCE HABAN', '', 'N/A', '', '2024-07-02', 'WALK IN', '482690150164', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2554, '24-G11-0867', 'QUISORA JR.', 'EYSMAEL', 'CATEQUISTA', 0, '2007-01-18', 'QUEZON CITY', 'MALE', 'FILIPINO', 'PHASE 4 BLK 2 LOT 45 EASTEWOOD GREENVIEW SUBD. RODRIGUEZ, RIZAL', '9217228321', 'CATHOLIC', 'ABBE MARGARET QUISORA', 'YSMAEL QUISORA', 'N/A', '', '2024-07-02', 'WALK IN', '425691150053', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2555, '24-G11-0863', 'VILLAS', 'JOHN MATTHEW', 'GACUTAN', 0, '2008-05-14', 'PALAWAN', 'MALE', '', 'EASTWOOD RESIDENCES PHASE 1 BLOCK 36 LOT 24 BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9535142558', 'CATHOLIC', 'YOLADA G. VILLAS', 'FLORENTO VILLAS JR.', '', '', '2024-07-02', 'WALK IN', '110992130007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CATHERINE FAJARDO'),
(2556, '24-G11-0887', 'CLEOFAS', 'FRANCHEZKA YVONNE', 'AMORA', 0, '2008-08-30', 'MARIKINA CITY', 'FEMALE', 'FILIPINO', '0450 M.H DEL PILAR ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '09774747921', 'CATHOLIC', 'GRACE JOY AMORA', '', 'N/A', '', '2024-07-03', 'WALK IN', '484552150080', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2557, '24-G11-0888', 'AMORA', 'ANGELA', 'OBEDIENTE', 0, '2001-01-01', 'MARIKINA', 'FEMALE', 'FILIPINO', 'BLK 44 LOT 1 CENTELLA HOMES  PH. 5 BRGY. SAN ISIDRO MONTALBAN RIZAL', '9774747921', 'CATHOLIC', 'CHE  D. AMORA', 'GIOVANNI G. AMORA', 'N/A', '', '2024-07-03', 'WALK IN', '136680140087', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2558, '24-G11-0875', 'ABDON', 'JAMIE EZEKIEL', 'GASPAR', 0, '2005-10-13', 'OLONGAPO CITY', 'MALE', 'FILIPINO', 'BLK 45 LOT 6 EASWOOD RESIDENCES PHASE 2 RODRIGUEZ RIZAL', '9950966279', 'CATHOLIC ', 'EDAL GASPAR', 'JUMIE T. ABDOH', 'N/A', '', '2024-07-04', 'WALK IN', '425654150164', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2559, '24-G11-0886', 'DELLOSA', 'EDRICK JAMES', 'ZONIO', 0, '2008-08-04', 'MONTALBAN RIZAL', 'MALE', '', 'SITIO SAPA WAWA SAN RAFAEL, RODRIGUEZ, RIZAL', '9682489561', 'CATHOLIC', 'MARLYN ZONIO DELLOSA', 'EDUARDO PANCHO DELLOSA', '', '', '2024-07-06', 'WALK IN', '109480140051', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EDELYN DELLOSA CASAMIS'),
(2560, '24-G11-0859', 'AMATA', 'BASHA MARIE', 'LOMBO', 0, '2008-10-10', 'SAN MATEO, RIZAL', 'FEMALE', '', '170M.H DEL PILAR ST SAN RAFAEL RODRIGUEZ RIZAL', '9950458679', 'CATHOLIC', 'MARICEL AMATA', 'MARTIN AMATA JR.', '', '', '2024-06-28', 'WALK IN', '109479130279', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2561, '24-G11-0894', 'CENTRO', 'REBEN', 'SITJAR', 0, '2005-10-27', 'MANIA', 'MALE', 'FILIPINO', 'BLK 50 LT 2 PHASE 5 CENTELLA HOMES SAN ISIDRO RODRIGUEZ, RIZAL', '9667006797', 'CATHOLIC', 'RUBY S. CENTRO', '', 'N/A', '', '2024-07-08', 'WALK IN', '136665120102', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2562, '24-G11-0898', 'CONDING', 'NOR AIMANA ALIZA', 'MUÑOZ', 0, '2008-05-26', 'QUEZON CITY', 'FEMALE', '', 'B 13 L28 PHASE 2 EASTWOOD GREENVIEW SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9764034966', 'CATHOLIC', '', '', '', '', '2024-07-10', 'WALK IN', '425524150098', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2563, '24-G11-0899', 'VILLANUEVA', 'ATASHA HAILEY', 'MERIN', 0, '2008-02-16', 'MANILA', 'FEMALE', '', 'BLK 13 LOT 15 EASEBELLEVUE EXT. BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9851204629', 'CATHOLIC', 'MARI KRISTELA MERIN', 'LAWRENCE CHRISTOPHER VILLANUEVA', '', '', '2024-07-11', 'WALK IN', '482955150161', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2564, '24-G11-0932', 'SOPEÑA', 'JOHN CARLO', 'BALAGAN', 0, '2008-06-11', 'RODRIGUEZ RIZAL', 'MALE', '', 'SITIO TABAK 1, RODRIGUEZ, RIZAL', '9491971846', 'CATHOLIC', 'NIDA B. SOPEÑA', 'GERRY SOPEÑA', '', '', '2024-07-15', 'WALK IN', '109479130465', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2565, '24-G11-0933', 'MATIAS', 'JOSUA EDUMAR', 'TRILLES', 0, '2008-02-16', 'RODRIGUEZ RIZAL', 'MALE', '', 'EASTWIND HOMES LOT 15A BLK 5 PHASE 1 BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9617585200', 'CATHOLIC', 'MARLE MATIAS', 'EDUARDO MATIAS', '', '', '2024-07-16', 'WALK IN', '136551131041', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'EDUARDO MATIAS'),
(2566, '24-G11-0934', 'COSTILLIAS', 'TROY ', 'GENESIS', 0, '2008-06-09', 'MANILA', 'MALE', '', 'BLK 4 LOT 2 CENTELLA HOMES SAN ISISDRO RODRIGUEZ RIZAL', '9950784770', 'CATHOLIC', 'GEMMA COSTILLAS', 'ROGER VALDEZ', '', '', '2024-07-16', 'WALK IN', '136564130210', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2567, '24-G11-0935', 'LUCENA', 'SOPHIA CLAIRE', 'VERBO', 0, '2009-09-08', 'MARIKINA CITY', 'FEMALE', '', 'BLK 6 LOT 20 TOPAZ ST. SUMMIT VIEW SUBD. SAN RAFAEL RODRIGUEZ RIZAL', '9288792405', 'CATHOLIC', 'DERLIE LUCENA', 'FRANCISCO LUCENA', '', '', '2024-07-16', 'WALK IN', '425591150038', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2568, '24-G11-0936', 'OBINA', 'KHATE DIMPLE', 'ORUBIA', 0, '2008-08-13', 'RODRIGUEZ RIZAL', 'FEMALE', '', 'LIBIS ST. SAN RAFAEL II RODRIGUEZ, RIZAL', '9656040957', 'CATHOLIC', '', '', '', '', '2024-07-17', 'WALK IN', '109467130150', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2569, '24-G11-0937', 'CLARO', 'BJ ANDREW', 'GAYO', 0, '2008-02-10', 'QUEZON CITY', 'MALE', '', 'EAST MERIDIAN BIANCE BK 10 LOT 14, SAN ISIDRO RODRIGUEZ RIZAL', '9206996525', 'CATHOLIC', 'JENNELYN G. CLARO', 'BENJIE CLARO', '', '', '2024-07-26', 'WALK IN', '136541131621', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2570, '24-G11-0938', 'ZAMORA', 'SAIRO RAFAEL', 'SIMBULAN', 0, '2006-08-06', 'MARIKINA CITY', 'MALE', '', 'B3 L5A FELICIDAD VILLEGAS BURGOS, MONTALBAN RODRIGUEZ RIZAL ', '09214035447', 'CATHOLIC', 'MA. GELINE ZAMORA', 'DYNNO RAFAEL ZAMORA', '', '', '2024-07-27', 'WALK IN', '425511150096', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2571, '24-G11-0939', 'ZAMORA', 'JOSEF RAFAEL', 'SIMBULAN', 0, '2008-12-16', 'MANILA', 'MALE', '', 'B3 L5A FELICIDAD VILLEGAS BURGOS, MONTALBAN RODRIGUEZ RIZAL ', '9214035447', 'CATHOLIC', 'MA. GELINE S. ZAMORA', 'DINNO RAFAEL C, ZAMORA', '', '', '2024-08-01', 'WALK IN', '109463140008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2572, '24-G11-0940', 'LOPEZ', 'CHERAYZ ', 'MARI', 0, '2008-03-01', 'RODRIGUEZ RIZAL', 'FEMALE', '', '144 12 MARCELO ST. BRGY. ROSARIO RODRIGUEZ RIZAL', '9358331516', 'IGLESIA NI CRISTO', 'CHERRYLYN LOPEZ', 'RAYMOND M. LOPEZ', '', '', '2024-08-02', 'WALK IN', '109466130157', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2573, '23-G11-0710', 'ABUGAN', 'KRISTEOFF ANGELO', 'ABAD', 0, '2000-01-01', 'TONDO MANILA', 'MALE', '', 'SITIO YAGIT PHASE 2 SAN RAFAEL, RODRIGUEZ, RIZAL', '9487204362', 'CATHOLIC', 'FLORA ABUGAN', 'GEONALD', '', '', '2024-08-02', '', '425692150090', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2574, '23-G11-0686', 'ADDUN', 'MARIE JUNEL', 'AREVALO', 0, '2007-07-08', 'QUEZON CITY', 'FEMALE', '', 'SITIO SAPA WAWA SAN RAFAEL RODRIGUEZ, RIZAL', '9859861918', 'CATHOLIC', 'MA. ROZELLE ADDUN', 'FABIAN ADDUN JR.', '', '', '2024-07-18', 'WALK IN', '109480120421', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2575, '13-G1-0472', 'ADENA', 'ROSE FELICITY', 'N/A', 0, '2006-03-30', 'VALENZUELA CITY', 'FEMALE', '', 'BLK 6 LOT 222 PHASE 1 GREEN BREEZE SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '9228885674', 'CATHOLIC', 'KATHERINE ROSE ADENA', 'ANTHONY A. ADENA', '', '', '2024-07-10', 'WALK IN', '425623150220', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2576, '23-G11-0610', 'ALFONSO', 'HANNAH LORRAINE', 'PADRONES', 0, '2006-12-27', 'QUEZON CITY', 'FEMALE', '', 'BLK 22 LOT 20 PHASE4 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '09636248441 / 09486302473', 'CATHOLIC', 'MARY JOY ALFONSO', 'RENE ALFONSO', '', '', '2024-06-08', 'WALK IN', '425654150132', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2577, '23-G11-0576', 'APAPE', 'KATE', 'SANTOS', 0, '2007-09-12', 'MARIKINA CITY', 'FEMALE', '', '167 P. SALVADOR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9473251205', 'CATHOLIC', 'AILENE APAPE', 'RAYMUND APAPE', '', '', '2024-06-19', 'WALK IN', '403070150217', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'AILENE APAPE'),
(2578, '23-G11-0589', 'AQUINO', 'HYENA', 'FERRER', 0, '2007-06-10', 'MONTALBAN RIZAL', 'FEMALE', '', 'BLK 25 LOT 25 PHASE 1 EASTWOOD VILLA SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9150826025', 'CATHOLIC', 'RAQUEL AQUINO', '', '', '', '2024-07-10', 'WALK IN', '425525150094', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2579, '23-G11-0735', 'ARUTA', 'MATT FEDERICK', 'ACUIN', 0, '2007-01-20', 'QUEZON CITY', 'MALE', '', 'PH 1 BLK 23 LOT 22 EASTWOOD RESIDENCES BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9814577344', 'CATHOLIC', 'MICHELLE ACUIN', 'MATE ARUTA JR.', '', '', '2024-07-10', 'WALK IN', '136675130610', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2580, '23-G11-0652', 'ATILLO ', 'PATRICK PAOLO', 'SANTOS', 0, '2006-05-26', 'CALOOCAN CITY', 'MALE', '', 'BLK 5 LOT 27 PH5 EASTWOOD GREENVIEW SUBD. BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9463361467', 'CATHOLIC', 'EVANGELINE ATILLO', 'MICHAEL ATILLO', '', '', '2024-07-15', 'WALK IN', '109466110026', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2581, '23-G11-0669', 'AVENDAÑO ', 'MICHAEL DOMINIQUE', 'CANDIZA', 0, '2007-05-23', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLK 19 LOT 60 ST. JUDE SUMMIT VIEW SUBD., SAN RAFAEL, RODRIGUEZ, RIZAL', '9272636598', 'CATHOLIC', 'MARGIE AVENDOÑO', 'NIÑO IAN AVENDAÑO', '', '', '2024-07-11', 'WALK IN', '425662150040', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2582, '23-G11-0695', 'BALANQUIT', 'MARIA YVETTE', 'JAMITO', 0, '2007-08-24', 'KASIGLAHAN, RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLOCK 19 LOT 13 SUMMITVIEW SUBD., SAN RAFAEL RODRIGUEZ, RIZAL', '9690633994', 'CATHOLIC', 'VERLYN BALANQUIT', 'IVY BALANQUIT', '', '', '2024-07-10', 'WALK IN', '109478130133', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2583, '23-G11-0591', 'BALCOS', 'SOPHIA NICOLE', 'CRUZ', 0, '2006-11-08', 'MARIKINA CITY', 'FEMALE', '', 'LIBIS ST. SAN RAFAEL RODRIGUEZ,RIZAL', '9150767637', 'CATHOLIC', 'ARLENE BALCOS', 'FEDERICK BALCOS', '', '', '2024-07-09', 'WALK IN', '403105150558', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2584, '23-G11-0712', 'BANUELOS', 'JENICAH', 'HAGANAS', 0, '2007-09-06', 'TAGUIG CITY', 'FEMALE', '', 'PHASE 1 BLK 6 LOT 375 GREENBREEZE SUBD., BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '9665894915', 'CATHOLIC', 'JEMELYN BANUELOS', 'ALAN BANUELOS', '', '', '2024-07-10', 'WALK IN', '222503150516', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2585, '23-G11-0696', 'BAUTRO', 'SHARIZ ANNE', ' JADORMIO', 0, '2006-12-28', 'PAYATAS, QC', 'FEMALE', 'FILIPINO', 'NLK 8 LOT 48 PH2 B MANILA HILLS, SAN JOSE, RODRIGUEZ, RIZAL', '9262234553', 'CATHOLIC', 'CYNTHIA ANN BAUTRO', 'MAXIMO BAUTRO JR.', 'N/A', '', '2024-06-18', 'WALK IN', '482749150194', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CYNTHIA ANN BAUTRO'),
(2586, '23-G7-0623', 'BERONGOY', 'KIMBERLY', 'ABRAZADO', 0, '2006-11-30', 'BULACAN', 'FEMALE', '', 'BLK 7 LOT 10 PHASE 4A VICTORIA HILLS SUBD., EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '9650349876', 'CATHOLIC', 'EMILIA BERONGOY', 'CHRISTOPHER BERONGOY', '', '', '2024-07-04', 'WALK IN', '425662150047', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2587, '23-G11-0694', 'BETITA', 'MARRY JEAN ', 'MANTONG', 0, '2007-07-09', 'QUEZON CITY', 'FEMALE', '', 'CALAVITE ST. AMITY VILLE SAN JOSE, RODRIGUEZ, RIZAL', '9693103197', 'CATHOLIC', 'LEONILA BETITA', 'ROBERTO BETITA', '', '', '2024-07-09', 'WALK IN', '136585130088', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2588, '12-P-0041', 'BITANCOR, ', 'JOSEPHINE BLESSING KAIT', 'LABIAL', 0, '2007-09-25', 'SAN MATEO, RIZAL', 'FEMALE', '', '571 P RODRIGUEZ ST SAN RAFAEL RODRIGUEZ RIZAL', '9279545023', 'CATHOLIC', 'ALLERIE RIEL BITANCOR', 'N/A', '', '', '2024-07-01', 'WALK IN', '425623150162', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2589, '23-G11-0630', 'BLANCA', 'BIANCA FAE', 'TENGCO', 0, '2006-06-17', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'PH 1 BLK 40 LOT 1 EASTWOOD RESIDENCES BRGY. SAN ISIDRO RODRIGUEZ, RIZAL', '09285962106', 'CATHOLIC', 'FLODELIZ BLANCA', 'BENJAMIN BLANCA', '', '', '2024-07-17', 'WALK IN', '425691150058', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2590, '23-G11-0584', 'BRINQUIS', 'SEAN EDWYN', 'BONGAR', 0, '2007-07-10', 'MARIKINA CITY', 'MALE', '', 'B19 L39 GRANITE ST. SUMMITVIEW SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9672799706', 'CATHOLIC', 'SHELLA BRINQUIS', 'EDWIN BRINQUIS', '', '', '2024-06-18', 'WALK IN', '109467130193', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHELLA BRINQUIS'),
(2591, '23-G11-0726', 'BUSTAMANTE', 'ALEXANDRA FAYE', 'SALCEDO', 0, '2006-07-15', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 2 BLK 8 LOT 62 EASTWIND HOMES SAN ISISDRO RODRIGUEZ, RIZAL', '9991960958', 'BORN AGAIN', 'FELY SALCEDO', 'WALTER BUSTAMANTE', '', '', '2024-07-15', 'WALK IN', '109469120322', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2592, '23-G11-0754', 'CABALE', 'JOHN CARLOS', 'CABOTE', 0, '2006-11-25', 'QUEZON CITY', 'MALE', '', 'PHASE 7 BLK 51 LOT 25 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9106475524', 'CATHOLIC', 'MARY JANE CABALE', 'CARLITO CABALE', '', '', '2024-07-02', 'WALK IN', '109467120021', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2593, '23-G11-0667', 'CAGUIOA', 'MARY SOFIA', 'NICOLAS', 0, '2006-12-09', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '174 G. BAUTISTA ST. SAN JOSE RODRIGUEZ RIZAL', '9469869357', 'CATHOLIC', 'AIDA CAGUIOA', 'SAMMY CAGUIOA', '', '', '2024-06-21', 'WALK IN', '109466130304', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'AIDA CAGUIOA'),
(2594, '23-G11-0942', 'CALIDGID', 'NICOLE MARGARET', 'CORPUZ', 0, '2001-07-24', 'QUEZON CITY', 'FEMALE', 'FILIPINO', 'BLK 6 LOT 5 VERDANTPOINT PHASE 5 E, SAN ISIDRO RODRIGUEZ, RIZAL', '9086303333', 'CATHOLIC', 'CATHERINE CALIDGID', 'NOEL CALIDGID', 'N/A', '', '2024-06-20', 'WALK IN', '403072150110', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'SHARON CORPUZ'),
(2595, '13-G1-0481', 'CAMACHO ,', 'JAN DOMINIQUE', 'DEANO', 0, '2007-01-19', 'MARIKINA CITY', 'FEMALE', '', 'B5 L2 DONA MARIA SUBD., BURGOS, RODRIGUEZ, RIZAL 1860', '09455203769/ (8) 942-7216', 'CATHOLIC', 'KATHERINE ROSE CAMACHO', 'EDWARD GARCIA', '', '', '2024-07-15', 'WALK IN', '425623150164', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2596, '23-G11-0727', 'CARDIÑO', 'JENIFER', 'LAUREN', 0, '2007-08-11', 'QUEZON CITY', 'FEMALE', '', 'CENTELLA HOMES PHASE 4 BLK 3 LOT 239 ODRIGUEZ, RIZAL', '9334356348', 'CATHOLIC', 'JENNIE CARDINO', 'ALFER CARDINO', '', '', '2024-07-19', 'WALK IN', '109479130211', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2597, '23-G11-0646', 'CARDOVA', 'GWYNETH PAMA', 'LUMANOG', 0, '2006-05-19', 'BACOLOD CITY', 'FEMALE', '', 'BLK 11 LOT 21 EB EXTENSION RODRIGUEZ, RIZAL', '9984493251', 'CATHOLIC', 'ROCHELLE CARDOVA', 'N/A', '', '', '2024-06-26', 'WALK IN', '136509130362', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2598, '17-G5-0409', 'CASTILLO, ', 'NATHANIEL', 'APOSTOL', 0, '2007-12-09', '   QUEZON CITY', 'MALE', 'FILIPINO', 'B3 L11 P2 ROSA VERDE VILLAS, SAN RAFAEL, RODRIGUEZ, RIZAL', '9396242323', 'CATHOLIC', 'MARIANNE CASTILLO', 'ELMAR CASTILLO JR.', 'N/A', '', '2024-07-20', 'WALK IN', '403063150108', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2599, '23-G11-0613', 'CASTILLO, ', 'PRINCESS ARIELLE', 'SUBANG', 0, '2006-02-24', 'CALOOCAN CITY', 'FEMALE', '', 'BLK 12A LOT 30 PHASE 3 CENTELLA HOMES SUBD. RODRIGUEZ, RIZAL', '9273196088', 'CATHOLIC', 'FERCELINDA CASTILLO', 'TONY DOÑA CASTILLO', '', '', '2024-06-08', 'WALK IN', '403063150120', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2600, '23-G11-0617', 'CASUGA', 'ALEXIS LEI', 'CADIOM', 0, '2007-10-17', 'CALOOCAN CITY', 'FEMALE', '', 'BLK 15 LOT 6 PHASE 3 SUBD. SAN ISISDRO RODRIGUEZ, RIZAL', '9701344145', 'CATHOLIC', 'SAEAH CASUGA', 'DELFIN CASUGA', '', '', '2024-07-12', 'WALK IN', '165510130603', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2601, '23-G11-0741', 'CAYETANO', 'YASHAINE KEZHIA', 'FABIANO', 0, '2007-04-19', 'MARIKINA CITY', 'FEMALE', '', '649 COL. S CRUZ, BRGY. GERONIMO, RODRIGUEZ, RIZAL', '9669816136', 'CATHOLIC', 'MARVIE CAYETANO', 'EDRALON CAYETANO', '', '', '2024-07-17', 'WALK IN', '425723150066', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2602, '23-G11-0658', 'CLEOFAS', 'MAXINE', 'NATIVIDAD', 0, '2007-01-20', 'MARIKINA CITY', 'FEMALE', '', '0450 M.H DEL PILAR ST., SAN RAFAEL, RODRIGUEZ, RIZAL', '9155780976', 'CATHOLIC', 'FUELYN CLEOFAS', 'CAYETANO CLEOFAS', '', '', '2024-07-16', 'WALK IN', '403083150067', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2603, '23-G11-0656', 'CORTEZ', 'LYANNA MARIE', 'YCAY', 0, '2006-12-05', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PROPER 2 MASCAP RODRIGUEZ, RIZAL', '9568035569', 'CATHOLIC', 'ANNALIZA YCAY', 'REYNALDO CORTEZ', '', '', '2024-07-01', 'WALK IN', '109466130345', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2604, '23-G11-0677', 'CREBILLO', 'ASHER MARION', 'CESAR', 0, '2007-09-21', 'QUEZON CITY', 'MALE', '', 'BLOCK 12-A LOT 5 PHASE 1 EATWOOD RESIDENCES SAN ISISDRO, RODRIGUEZ, RIZAL', '09476994744 / 09936596389', 'CATHOLIC', 'MARINEL CREBILLO', 'ARLON CREBILLO', '', '', '2024-06-08', 'WALK IN', '425728150063', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2605, '23-G11-0744', 'DAFUN', 'JHANEL FAITH ', 'BALOIS', 0, '2007-02-24', 'PANGASINAN', 'FEMALE', '', 'BLK 58 LOT 6 SOUTHVILLE 8B SAN ISIDRO RODRIGUEZ, RIZAL', '9638957945', 'BORN AGAIN', 'ROSE ANN  DAFUN', 'MARK ANTHONY DAFUN', '', '', '2024-06-13', 'WALK IN', '109478130647', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2606, '23-G11-0683', 'DE GUZMAN', 'BRIAN JIRO', 'GO', 0, '2007-08-01', 'RODRIGUEZ, RIZAL', 'MALE', '', '#10 M SAN JUAN ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9109613432', 'CATHOLIC', 'MICHELLE DE GUZMAN', 'OLIVER DE GUZMAN', '', '', '2024-07-12', 'WALK IN', '109466130206', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2607, '23-G11-0736', 'DE VERA', 'AALIYAH DASHA', 'BARIL', 0, '2007-08-25', 'QUEZON CITY', 'FEMALE', '', '#41 B WAWA ROAD SITIO WAWA BRGY. SAN RAFAEL R.R', '9705079641', 'CATHOLIC', 'IRENE OLIVE DE VERA', 'JOSEPH DE VERA', '', '', '2024-07-09', 'WALK IN', '494070150276', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2608, '23-G11-0676', 'DEBECAIZ', 'ALLAIZA CLAYDEN', 'DUCAY', 0, '2007-08-29', 'NOVALICHEZ, QUEZON CITY', 'FEMALE', '', 'BLK 59 LOT 8 PHASE 2 EASTWOOD RODRIGUEZ RIZAL', '9303615480', 'CATHOLIC', 'YOLANDA DEBECAIZ', 'ALADEN DEBECAIZ', '', '', '2024-07-01', 'WALK IN', '109467130340', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2609, '23-G11-0753', 'DEL MUNDO', 'ERIKA ELLA', 'MADEJA', 0, '2000-01-01', 'AJUY ILO ILO', 'FEMALE', 'FILIPINO', 'BLK 19 LOT 11 PHASE 2 CENTELLA HOMES SAN ISIDRO RODRIGUEZ, RIZAL', '9494122459', 'CATHOLIC', 'AILLIEN MADEJA', 'WINSON DEL MUNDO', 'N/A', '', '2024-07-01', 'WALK-IN', '109467130362', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2610, '14-G2-0569', 'DUMLAO,', 'ANDREI KENNETH', 'ENCARNACION', 0, '2006-05-18', 'MANILA', 'MALE', '', 'BLOCK 6 LOT 17 MEDITERRANEAN HEIGHTS , SAN JOSE ,RODRIGUEZ RIZAL', '9154848930', 'CATHOLIC', 'FELIZA ENCARNACION', 'CRESENCIO DUMLAO', '', '', '2024-07-26', 'WALK IN', '425623150186', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2611, '13-G1-0407', 'EDRALIN, ', 'KENNETH', 'MACASLING', 0, '2007-08-07', 'QUEZON CITY', 'MALE', 'FILIPINO', 'B2 L71 SOUTHVILLE 8-C SAN ISIDRO RODRIGUEZ RIZAL', '9185416260', 'CATHOLIC', 'ANA THERESA EDRALIN', 'ERNESTO EDRALIN', 'N/A', '', '2024-07-05', 'WALK IN', '425623150215', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2612, '23-G11-0587', 'ESTANISLAO', 'JAMELLA', 'BARRETTO', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '#194 COL. S. CRUZ ST., BALITE, RODRIGUEZ, RIZAL', '9389900087', 'CATHOLIC', 'MELLISA ESTANISLAO', 'JAY-R ESTANISLAO', '', '', '2024-07-05', '', '109466130093', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2613, '23-G11-0775', 'FONDEVILLA', 'ADRIAN KYLE', 'SANTOS', 0, '2000-01-01', 'RODRIGUEZ RIZAL', 'MALE', '', '131 M.H DEL PILAR ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9463294822', 'CATHOLIC', 'MA. KAREN DISOMANCOP', 'ARCHIE FONDEVILLA', '', '', '2024-07-05', '', '109479130141', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2614, '23-G11-0738', 'FUENTES', 'JAZWEL DAVE', 'PABILLARAN', 0, '2006-11-07', 'QUEZON CITY', 'MALE', '', 'CENTELLA HOMES BLK 12A LOT 21  RODRIGUEZ, RIZAL', '', 'CHRISTIAN', 'JHASMIN FUENTES', 'JOEL FUENTES', '', '', '2024-06-25', 'WALK IN', '109479130141', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2615, '23-G11-0776', 'GABRIEL', 'PERCCILOISE', 'QUIAMBAO', 0, '2006-03-09', 'TARLAC', 'FEMALE', 'FILIPINO', 'PHASE 2 BLK 8 LOT 89 EASTWIND HOMES SAN ISIDRO, RODRIGUEZ, RIZAL', '9155493705', 'CHRISTIAN', 'LOIS URSULA GABRIEL', 'PERCIUAL GABRIEL', 'N/A', '', '2024-06-27', 'WALK IN', '425625150076', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2616, '23-G11-0578', 'GAETOS', 'JAMES PATRICK', 'ALVEZ', 0, '2005-11-10', 'MANILA', 'MALE', '', 'PHASE 1 BLOCK 1 LOT 26 CENTELLA HOMES SAN ISIDRO, RODRIGUEZ, RIZAL', '9685703694', 'CATHOLIC', 'MA. THERESA GAETOS', 'JEROLD LEE GAETOS', '', '', '2024-04-11', 'WALK IN', '425625150061', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'N/A'),
(2617, '23-G11-0664', 'GARBOSA', 'CRISHIA NICOLE', 'FLORES', 0, '2007-07-16', 'MARIKINA CITY', 'FEMALE', '', '169 P CABAL ST., SAN JOSE RODRIGUEZ, RIZAL', '9384110099', 'CATHOLIC', 'VINAN GARBOSA', 'JESSIE GARBOSA', '', '', '2024-07-03', 'WALK IN', '109478120223', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2618, '23-G11-0692', 'GARCIA', 'SOFIA CLAIRE', 'IGUIBAN', 0, '2007-04-16', 'LAGUNA', 'FEMALE', '', 'UNIT 7 MABOLO TOWN HOMES BLK 1 STREET ROSAVERDE, MANGGAHAN, RODRIGUEZ, RIZAL', '9392350590', 'CATHOLIC', 'CARLA GARCIA', 'ERICSON GARCIA', '', '', '2024-07-12', 'WALK IN', '425623150226', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2619, '23-G11-0756', 'GELACIO', 'CAS-VIANE JULANE ', 'ROSAL', 0, '2000-01-01', 'ILOCOS SUR', 'FEMALE', '', 'BLK 11 LOT 22 PHASE 2 SUMMITVIEW, SAN RAFAEL, RODRIGUEZ, RIZAL', '', '', '', '', '', '', '2024-07-12', '', '100615120019', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2620, '23-G11-0581', 'GUINTU', 'WELLA ROSE', 'NORTEGA', 0, '2007-11-29', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'SUMMIT VIEW BLOCK 7 LOT 28 SAN RAFAEL, MONTALBAN RIZAL', '9633985965', 'CATHOLIC', 'ROSALIE NORTEGA', 'WILLIAM DENNISE GUINRU', '', '', '2024-06-08', 'WALK IN', '403072150238', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2621, '23-G11-0614', 'IBIAS ', 'NICOLE', 'ALVAREZ', 0, '2007-10-19', 'LUCENA CITY', 'FEMALE', '', 'EASTWOOD RESIDENCE PHASE 1-B BLK 6 LOT 6 SAN ISIDRO, RODRIGUEZ, RIZAL', '9306820574', 'CATHOLIC', 'ESTER ALVAREZ', 'NELSON IBIAS', '', '', '2024-06-08', 'WALK IN', '109466130374', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2622, '23-G11-0680', 'IGNACIO', 'DHAYNIE NICOLE', 'QUELING', 0, '2006-11-04', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '560 P. RODRIGUEZ ST. SAN RAFAEL MONTALBAN RIZAL', '9300971414', 'CATHOLIC', 'KRISTINE IGNACIO', 'DANILO IGNACIO', '', '', '2024-07-15', 'WALK IN', '109479120328', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2623, '23-G11-0703', 'INOCENTES', 'JAMILLA KAREN', 'MACAS ', 0, '2006-12-29', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '429 M.H DEL PILAR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9274553926', 'CATHOLIC', 'KARIM INOCENTES', 'JEFFREY INOCENTES', '', '', '2024-06-19', 'WALK IN', '425511150087', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2624, '23-G11-0643', 'IRIGAN', 'JOYCE ANN', 'MANDAR', 0, '2007-08-22', 'MANILA', 'FEMALE', '', 'PH1 BLK 13 LOT 11B GB SAN ISIDRO, RODRIGUEZ, RIZAL', '9275060806', 'CATHOLIC', 'MARY JOY IRIGAN', 'ANTHONY IRIGAN', '', '', '2024-07-19', 'WALK IN', '425687150254', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2625, '13-G1-0471', 'LISUD,', 'IAN PAULO', 'SEACOR', 0, '2007-05-21', 'SURIGAO CITY', 'MALE', '', 'B6 L21 MEDITERRENEAN HEIGHT P1 BRGY. SAN ISIDRO, SAN JOSE, RODRIGUEZ, RIZAL', '9283075948', 'CATHOLIC', 'LORENA LISUD', 'RENATO LISUD', '', '', '2024-07-13', 'WALK IN', '425623150216', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2626, '23-G11-0648', 'LOPEZ', 'RHYME NICOLE', 'SALAYAO', 0, '2007-08-01', 'RODRIGUEZ, RIZAL', 'FEMALE', 'FILIPINO', 'SITIO TABAK 1 SAN RAFAEL RODRIGUEZ, RIZAL', '9090305700', 'CATHOLIC', 'ROWENA LOPEZ', '', 'N/A', '', '2024-07-12', 'WALK IN', '109479130364', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2627, '13-G1-0330', 'LUNASCO, ', 'JHUDEIL MARELLE', 'MANUEL', 0, '2007-01-31', 'MARIKINA CITY', 'MALE', '', '647 COL. S. CRUZ ST. GERONIMO, RODRIGUEZ, RIZAL', '9458172838', 'CATHOLIC', 'MICHELLE MANUEL', 'JOMAR LUNASCO', '', '', '2024-07-09', 'WALK IN', '425623150188', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2628, '23-G11-0682', 'MAHOMETANO', 'GERALDINE', 'BENIGA', 0, '2000-01-01', 'MARIKINA CITY', 'FEMALE', '', 'BLK 1 LOT 22 PHASE 3 B EASTWOOD GREENVIEW SUBD., SAN ISISDRO, RODRIGUEZ, RIZAL', '9973685622', 'CATHOLIC', '', 'RONALD MAHOMETANO', '', '', '2024-07-09', '', '124410120007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2629, '22-G10-0553', 'MANALO, ', 'JASPER EZEKIEL', 'DOMINGO', 0, '2007-05-17', 'QUEZON CITY', 'MALE', '', 'BLK 1 LOT 22 E. MENDIAN PH2 SAN ISIDRO, MONTALBAN, RIZAL', '9954736836', 'CATHOLIC', 'AILEEN DOMINGO MANALO', 'JOSHUA ALLEN SEBASTIAN', '', '', '2024-07-15', 'WALK IN', '406420150202', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2630, '23-G11-0660', 'MANALO, ', 'MA. ANGELINE', 'LALOCAN', 0, '2007-04-11', 'MONTALBAN RIZAL', 'FEMALE', '', 'DAPDAP P. RODRIGUEZ ST., SAN RAFAEL RODRIGUEZ, RIZAL', '9381958510', 'CATHOLIC', 'LUZVIMINDA MANALO', 'ANGELITO MANALO', '', '', '2024-06-20', 'WALK IN', '109479120257', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'LUZVIMINDA MANALO'),
(2631, '23-G11-0580', 'MANUEL', 'BRENT RENJ ', 'INOCENTES', 0, '2006-06-03', 'MARIKINA CITY', 'MALE', '', '449 M.H DEL PILAR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '9458677740', 'CATHOLIC', 'RENALIZA INOCENTES', 'JOEL MANUEL', '', '', '2024-07-05', 'WALK IN', '403070150235', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2632, '23-G11-0579', 'MEDINILLA', 'CARLA MAE', 'LAUREO', 0, '2006-03-15', 'PAMPANGA', 'FEMALE', '', 'BLK 1 LOT 11 OPAL ST. SUMMITVIEW SUBD. SAN RAFAEL, MONTALBAN, RIZAL', '9276115925', 'CATHOLIC', 'CINDY LAUREO', 'ANTONIO MEDINILLA', '', '', '2024-07-09', 'WALK IN', '102083110012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2633, '23-G11-0663', 'MELLA', 'LUTHER JHON', 'VILLEGAS', 0, '2007-07-22', 'QUEZON CITY', 'FEMALE', 'FILIPINO', '624 P RODRIGUEZ ST. SAN RAFAEL RODRIGUEZ RIZAL', '9494570535', 'CATHOLIC', 'MARY ANN VILLEGAS', 'ROLAND MELLA', 'N/A', '', '2024-06-08', 'WALK IN', '109479130066', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2634, '23-G3-0722', 'MEMORACION', 'BRENTH YUAN', 'TUPAZ', 0, '2006-11-12', 'MARIKINA CITY', 'MALE', '', '116 APPLE ST. ESPIRITU SUBD., BALOTE RODRIGUEZ, RIZAL', '9672773518', 'CATHOLIC', 'MAILY MEMORACION', 'MICHAEL MEMORACION', '', '', '2024-07-23', 'WALK IN', '425623150155', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2635, '23-G11-0662', 'MONSALUD', 'LORD HUGH', 'ALMONTE', 0, '2007-04-22', 'PASIG CITY', 'MALE', '', '677 B. MANUEL ST. BRGY GERONIMO', '9297251203', 'CATHOLIC', 'JUSTICE ALMONTE', 'MANUEL MONSALUD', '', '', '2024-07-04', 'WALK IN', '109466130216', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2636, '23-G11-0690', 'NATIVIDAD', 'ELIZABETH', 'MANILA', 0, '2007-10-14', 'QUEZON CITY', 'FEMALE', '', 'BLK 6 LOT 12 PHASE 1-A EAST MERIDIAN, SAN ISIDRO RODRIGUEZ, RIZAL', '9957867898', 'CHRISTIAN', 'DESSA NATIVIDAD', 'CESAR NATIVIDAD', '', '', '2024-07-19', 'WALK IN', '136562140011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2637, '23--G11-0615', 'NEGROSA', 'MARIA MONICA', 'QUIAO', 0, '2007-03-01', 'QUEZON CITY', 'FEMALE', '', 'PHASE 3B BLK 8 LOT 15 EASTWOOD RESIDENCE SAN ISIDRO RODRIGUEZ, RIZAL', '9812063097', 'CATHOLIC', 'RESTITUTA NEGROSA', 'WALTER NEGROSA', '', '', '2024-07-02', 'WALK IN', '109465130022', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2638, '23-G11-0594', 'NUFABLE', 'MARIA ELIZABETH', 'ALINSOG', 0, '2007-10-13', 'QUEZON CITY', 'FEMALE', '', 'PHASE 3B BLK 11 LOT 8, EASTWOOD GREENVIEW SUBD. BRGY. SAN ISISDRO RODRIGUEZ, RIZAL', '9129287723', 'CATHOLIC', 'MA. CHRISTINA NUFABLE', 'REGIE NUFABLE', '', '', '2024-07-02', 'WALK IN', '109465130024', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2639, '23-G11-0590', 'ORTIZ', 'MA. HANIELINE GRACE', 'MERCENE', 0, '2007-06-11', 'ORIENTAL MINDORO', 'FEMALE', '', 'PHASE 1 BLOCK 6 LOT 153 EASTWIND HOMES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9081678842', 'CATHOLIC', 'MARJORIE ORTIZ', 'EDWARD ORTIZ', '', '', '2024-07-01', 'WALK IN', '109466130081', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2640, '19-G7-0205', 'PADASAS, ', 'RYAN', 'PULA', 0, '2007-04-16', 'KIDAPAWAN', 'MALE', '', 'PHASE 3B BLK 5 LOT 35, EASTWOOD GREENVIEW, SAN ISIDRO, RODRIGUEZ, RIZAL', '9473729730', 'CATHOLIC', 'MAYLINE P. PADASAS', 'ROY C. PADASAS', '', '', '2024-07-02', 'WALK IN', '130233120017', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2641, '23-G11-0595', 'PADUA', 'RHIAN GRACE', 'FERNANDEZ', 0, '2007-02-09', 'QUEZON CITY', 'FEMALE', '', 'PHASE 1 BLK 4 LOT 16 CENTELLA EXT. SAN ISIDRO, RODRIGUEZ RIZAL', '9982488205', 'CATHOLIC', 'SUSANA PADUA', 'ARNOLD PADUA', '', '', '2024-07-02', 'WALK IN', '109466130082', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2642, '23-G11-0714', 'PAHEL', 'SADRINA', 'BANGALAN', 0, '2006-12-29', 'MANILA', 'FEMALE', '', '100 KADAYUNAN ST. SITIO MAISLAP BRGY. SAN ISISDRO, RODRIGUEZ, RIZAL', '9603317455', 'CATHOLIC', 'KAREN PAHEL', 'SADIVI PAHEL', '', '', '2024-07-19', 'WALK IN', '425782160046', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2643, '23-G11-0586', 'PAL', 'ANGELA MARIE', 'HERRERA', 0, '2007-06-11', 'QUEZON CITY', 'FEMALE', '', 'PASE 4 BLK 3 LOT 236 CENTELLA HOMES, BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9666408005', 'CATHOLIC', 'MARICEL PAL', 'RENANTE PAL', '', '', '2024-06-24', 'WALK IN', '109479130258', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2644, '23-G11-0653', 'PALARCA', 'IRYL MEE', 'FUNDAL', 0, '2007-02-07', 'QUEZON CITY', 'FEMALE', '', 'BLK 15 LOT14 EAST BELLEVUE EXTENSION, BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9565245588', 'CATHOLIC', 'CECILE PALARA', 'JAIME PALARA', '', '', '2024-07-01', 'WALK IN', '104635120292', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2645, '23-G11-0681', 'PEREZ', 'JUSTIN ANGELO', 'MARCELO', 0, '2006-09-08', 'MARIKINA CITY', 'MALE', '', '535 M.H DEL PILAR ST. GERONIMO MONTALBAN RIZAL', '928579492', 'CATHOLIC', 'MA. CRISTINA MARCELO', 'MARIANITO PEREZ', '', '', '2024-07-09', 'WALK IN', '109479160153', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2646, '23-G11-0713', 'PEREZ', 'JULIE ANNE', 'DE LOS SANTOS', 0, '2000-01-01', 'MANILA', 'FEMALE', '', 'PHASE 1 BLOCK 6 LOT 382 GREEN BREEZE SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '9125367400', 'CATHOLIC', 'JOSEPHINE PEREZ', 'ALDRIN PEREZ', '', '', '2024-07-09', '', '109466130426', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2647, '23-G11-0642', 'QUINTELA', 'NICOLE', 'MAGALONA', 0, '2007-10-23', 'MARIKINA CITY', 'FEMALE', '', 'PHASE 1 BLK 5 LOT 371 GREENBREEZE SUBD., SAN ISIDRO, RODRIGUEZ, RIZAL', '9604730810', 'CATHOLIC', 'MYRNA QUINTELA', 'BENIGNO QUINTELA', '', '', '2024-07-10', 'WALK IN', '109466140350', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2648, '23-G11-0671', 'RICAMARA', 'BRIANA ANICA', 'MAGALLANES', 0, '2007-02-27', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 55 LOT 12 DELA COSTA HOMES V BURGOS RODRIGUEZ, RIZAL', '9305052745', 'CATHOLIC', 'IVY MAGALLANES', 'FEDERICO RICAMARA', '', '', '2024-07-19', 'WALK IN', '109466130243', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2649, '23-G11-0583', 'RIVERA', 'GERALD JOSH', 'LUZANO', 0, '2007-09-27', 'RODRIGUEZ, RIZAL', 'MALE', '', 'BLOCK 7 LOT 44 PHASE 5 CENTELLA HOMES BRGY. SAN ISIDRO, MONTALBAN RIZAL', '09465181589 / 09261086020', 'CATHOLIC', 'GERALDINE KUZANO', 'RICHARD RIVERA', '', '', '2024-07-08', 'WALK IN', '109479120274', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2650, '13-G1-0503', 'RONATO,', 'FALARSHA EZRA YUMILK', 'JACOBE', 0, '2005-11-04', 'MARIKINA CITY', 'FEMALE', '', '571 P RODRIGUEZ ST SAN RAFAEL RODRIGUEZ RIZAL', '9279548023', 'CATHOLIC', 'SIERRA MALIN RONATO', 'ARIEL RONATO', '', '', '2024-07-03', 'WALK IN', '425623150178', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2651, '23-G11-0609', 'RUBIO', 'RAYMOND ', 'REFORMINA', 0, '2007-01-29', 'RODRIGUEZ, RIZAL', 'MALE', '', '76 C REYES ST. SA RAFAEL RODRIGUEZ, RIZAL', '9194523824', 'CATHOLIC', 'ROSARIO RUBIO', 'ROMEO RUBIO', '', '', '2024-07-11', 'WALK IN', '109467120100', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2652, '23-G11-0751', 'RUEDAS', 'RIO AKEXA', 'BISONAYA', 0, '2000-01-01', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', 'PHASE 6A BLK 11 LOT 16 EASTWOOD RESIDENCES SAN ISIDRO, RODRIGUEZ, RIZAL', '9559238016', 'CATHOLIC', 'NERIZA RUEDAS', 'AUGUSTO RUEDAS', 'N/A', '', '2024-07-11', 'WALK-IN', '425725150139', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2653, '23-G11-0650', 'SAMSON', 'VINCENT ELIAS', 'ARANAS', 0, '2007-09-22', 'MANILA', 'MALE', 'FILIPINO', 'PHASE 1 BLK 6 LOT 38 EASTWIND HOMES SUBD. BRGY., SAN ISIDRO, RODRIGUEZ, RIZAL', '9929164510', 'CATHOLIC', 'AIDA SAMSON', 'VERGEL SAMSON', 'N/A', '', '2024-07-10', 'WALK IN', '109479130070', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2654, '23-G11-0603', 'SANCHEZ', 'SHAINE ', 'MACARAIG', 0, '2007-07-12', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'A BONIFACIO ST. SAN JOSE RODRIGUEZ, RIZAL', '09262406368 / 09458674824', 'CATHOLIC', 'MARY GRACE DOMANICO', 'CORNELIO SANCHEZ', '', '', '2024-07-09', 'WALK IN', '109466121242', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2655, '19-G7-0203', 'SANTOS', 'ZETH ENRYCKO', 'CRUZ', 0, '2006-08-28', 'MARIKINA CITY', 'MALE', 'FILIPINO', 'LOT 598 M.H DEL PILAR ST.BALITE ROD.RIZAL', '9210275689', 'CATHOLIC', 'NINIA SANTOS', 'N/A', '', '', '2024-07-03', 'WALK IN', '425525150064', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2656, '23-G11-0637', 'SORIANO', 'MARWIN JAMES', 'AGUSTIN', 0, '2007-09-18', 'PANGGASINAN', 'MALE', '', 'BLK 73 LOT 12 PH 5 E.R BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '9664282455', 'CATHOLIC', 'MARY ANNE SORIANO', 'EDWIN SORIANO', '', '', '2024-07-23', 'WALK IN', '100217130024', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '');
INSERT INTO `student_db` (`id`, `student_id`, `lname`, `fname`, `mname`, `age`, `bdate`, `bplace`, `gender`, `nationality`, `address`, `contact_no`, `religion`, `mother_name`, `father_name`, `health_concern`, `email_add`, `date_registered`, `reg_mode`, `lrn`, `esc_no`, `school_last_attended`, `grade_level`, `flyer_church`, `flyer_school`, `career_talk`, `facebook_page`, `tarp_buildings`, `tarp_tricycles`, `others`, `referral`, `others_specify`, `referred_by`, `sched_exam`, `sched_interview`, `guardian`) VALUES
(2657, '23-G11-0672', 'SUMAGAYSAY', 'SAMANTHA ', 'BELTRAN', 0, '2007-03-23', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', '173 M.H DEL PILAR BRGY. BALITE RODRIGUEZ, RIZAL', '9197300497', 'BORN AGAIN', 'ROXAN BELTRAN', 'HENRY BELTRRAN', 'N/A', '', '2024-07-29', 'WALK IN', '109479130453', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2658, '19-G7-0299', 'TAMANI,', 'IANA CRISHEL', 'TORRES', 0, '2001-01-01', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', 'PHASE 1 BLOCK 8 LOT 9, EASTWOOD RESIDENCES, BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '09493076797', 'CATHOLIC', 'MA. MECHELLE TORRES', 'CHRISTOPHER TAMANI', 'N/A', '', '2024-07-26', 'WALK IN', '425524150132', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2659, '23-G11-0636', 'TEODORO', 'FRANCIS AMADO', 'DELA CRUZ', 0, '2007-12-19', 'MANILA', 'MALE', '', 'SITIO SANTO NIÑO WAWA, SAN RAFAEL, RODRIGUEZ, RIZAL', '9619152650', 'CATHOLIC', 'ERLENE TEODORO', 'PATRICK AMADO TEODORO', '', '', '2024-07-17', 'WALK IN', '10947914348', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2660, '13-G1-0505', 'TIBIG,', 'JESSICA JOI ', 'SONZA', 0, '2006-11-28', 'MANILA', 'FEMALE', '', '757 ROSE ST., GREENROSE SUBD., GERONIMO, RODRIGUEZ, RIZAL', '9330412044', 'CATHOLIC', 'JOIMARINN TIBIG', 'JAY ROGER TIBIG', '', '', '2024-07-10', 'WALK IN', '425623150179', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2661, '14-G2-0621', 'TOMAS, ', 'MARY ANGELU', 'DOROMAL', 0, '2006-09-21', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'BLK 12 LOT 3 MONTEBRISSA PHASE 2 MANGGAHAN, RODRIGUEZ, RIZAL', '9089351194', 'CATHOLIC', 'MARICRIS TOMAS', 'ANGELITO TOMAS ', '', '', '2024-08-02', 'WALK IN', '425623150235', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2662, '23-G11-0597', 'TOMAS, ', 'JERMAINE IREJ', 'TORALDE', 0, '2007-11-01', 'CALOOCAN CITY', 'MALE', '', 'B4 L1 DOÑA MAXIMA SUBD. GERONIMO RODRIGUEZ RIZAL', '9052358475', 'CATHOLIC', 'MARIE TORALDE', 'JERRY TOMAS', '', '', '2024-06-24', 'WALK IN', '136608130093', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARIE TORALDE'),
(2663, '23-G11-0592', 'TRIA', 'NIKKI VIKHTAURJA ', 'DALA', 0, '2007-04-04', 'QUEZON CITY', 'FEMALE', '', 'BLK 18 LOT 68 SUMMIT VIEW SUBD. SAN RAFAEL RODRIGUEZ, RIZAL', '9151922700', 'CATHOLIC', 'VENUS TRIA', 'NILO TRIA', '', '', '2024-07-12', 'WALK IN', '109479150332', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2664, '23-G11-0619', 'TUMBOKON', 'MARIA ANICA GRACE', 'RATIN', 0, '2000-01-01', 'PASIG CITY', 'FEMALE', '', 'BLK 3 LOT 210 PHASE 2 GREENBREEZE SUBD. SAN ISIDRO, RODRIGUEZ, RIZAL', '9653962966', 'CATHOLIC', 'ANTONETTE TUMBOKON', 'GARY TUMBOKON', '', '', '2024-07-12', '', '109467120115', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2665, '23-G11-0582', 'VALENCIANO', 'GIAN DARRYL', 'PAMGANIBAN', 0, '2007-08-04', 'MARIKINA CITY', 'MALE', '', '368 A. NICOLAS ST. SAN RAFAEL, RODRIGUEZ, RIZAL', '9516276098', 'CATHOLIC', 'LOLITA PANGANIBAN', 'REYNALDO VALENCIANO', '', '', '2024-07-09', 'WALK IN', '109466130413', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2666, '23-G11-0620', 'VICTORIA', 'ASHER NATHAN', 'PANGAN', 0, '2007-01-18', 'PASIG CITY', 'MALE', '', 'BLK 4 LOT 18 PUFFIN ST. PHASE 2 A METRO ROYALE HOMES BURGOS RODRIGUEZ RIZAL', '9258261830', 'CATHOLIC', 'MAGDALENA VICTORIA', 'JESSE VICTORIA', '', '', '2024-06-18', 'WALK IN', '425524150120', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MAGDALENA VICTORIA'),
(2667, '23-G11-0679', 'VILLAFUERTE', 'SAMANTHA LOUISE', 'SALANDANAH', 0, '2006-07-05', 'MANILA', 'FEMALE', '', 'BLK 12 LOT 31 PHASE 1 RESIDENCES BRGY., SAN ISIDRO RODRIGUEZ, RIZAL', '9471554391', 'CATHOLIC', 'BRENDA VILLAFUERTE', 'RODEL VILLAFUERTE', '', '', '2024-07-11', 'WALK IN', '109479130315', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2668, '23-G11-0705', 'VILLAMIEL', 'JONAS', 'RAMON', 0, '2000-01-01', 'RODRIGUEZ, RIZAL', 'MALE', '', 'SITIO TABAK 1 SAN RAFAEL RODRIGUEZ, RIZAL', '9610077576', 'CATHOLIC', 'CONCEPCION RAMON', 'ARIEL VILLAMIEL', '', '', '2024-07-11', '', '425692150097', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2669, '23-G11-0627', 'ZANTUA', 'GISABEL', 'DELANDA', 0, '2006-05-26', 'QUEZON CITY', 'FEMALE', '', 'B 7 L24 SUMMITVIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '9154120216', 'CATHOLIC', 'LIZA ZANTUA', 'GILBERT ZANTUA', '', '', '2024-07-19', 'WALK IN', '425662150049', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2670, '23-G11-0593', 'ZONIO', 'REXINE HARMELLE', 'PAJARILLO', 0, '2007-10-16', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PROPER 1, BRGY. MASCAP, RODRIGUEZ, RIZAL', '9939525739', 'CATHOLIC', 'ELIZABETH ZONIO', 'REGGIE ZONIO', '', '', '2024-06-28', 'WALK IN', '109472120153', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2671, '24-K-0904', 'ACUVERA', 'MELRIC', 'BAÑARES', 5, '2019-01-12', 'RODRIGUEZ RIZAL', 'MALE', 'FILIPINO', 'Blk 10A LOT 7 PHASE 1 EASTWOOD RESIDENCES SAN ISIDRO, RODRIGUEZ, RIZAL', '09283002708', 'CATHOLIC', 'VIVIAN ACUVERA', 'N/A', 'MECHOR ACUVERA', '', '2024-08-20', 'WALK IN', '425623240001', '', 'HOLISMO ACADEME', 'KINDER', '', '', '', '', '', '', '', '', '', '', '2024-08-01', '2024-08-01', 'VIVIAN ACUVERA'),
(2672, '24-K-0813', 'APAPE', 'JOAQUIN ', 'SANTOS', 5, '2019-11-29', 'RODRIGUEZ, RIZAL', 'MALE', 'FILIPINO', '167 P. SALVADOR ST. SAN RAFAEL RODRIGUEZ, RIZAL', '09473251205', 'CATHOLIC', 'AILENE S. APAPE', 'RAYMUND M. APAPE', 'N/A', '', '2024-08-20', 'WALK-IN', '425623240003', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '2024-08-20', '2024-08-20', ''),
(2673, '23-PK-0674', 'AMATA,', 'ELIZA GABRIELLE', 'POLICARPIO', 0, '2019-07-18', 'BULACAN', 'FEMALE', '', '#25 LOT 5 BLK 6 SAN MATEO ST. CORTIJOS SUBD., BRGY. SAN RAFAEL, RODRIGUEZ, RIZAL', '917869242', 'CHRISTIAN', 'MA. ELIZABETH AMATA', 'RAFAEL AMATA', '', '', '2024-07-19', 'WALK IN', '425623240002', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2674, '24-K-0918', 'AYAP', 'MATILDA LUNA', 'ABUGAN', 0, '2019-02-04', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '2442 MRB PILOT DRIVE BRGY. COMMONWEALTH QUEZON CITY', '09669469328 / 09624596725', 'CATHOLIC', 'RAINILYN ABUGAN', 'JOHN CHRISTOPHER AYAP', '', '', '2024-07-20', 'WALK IN', '425623240004', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2675, '24-K-0903', 'BORDEOS', 'ATHENA LAURA', '', 0, '2019-07-07', 'SAN MATEO RIZAL', 'FEMALE', '', '440 M.H. DEL PILAR ST. SAN RAFAEL, MONTALBAN, RIZAL', '9054245792', 'CATHOLIC', 'MARIELI BORDEOS', 'RICHARD DE MESA', '', '', '2024-07-12', 'WALK IN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2676, '24-K-0917', 'DOSS', 'ROBYN GAMORA ', 'DEMAISIP', 0, '2018-12-03', 'RODRIGUEZ, RIZAL', 'FEMALE', '', 'PHASE 5E BLK 5 LOT 25 EASTWOOD VERDANT POINT SAN ISIDRO RODRIGUEZ RIZAL', '9563872419', 'CATHOLIC', 'CAMELA DEMAISIP', 'KURT JAMES DOSS', '', '', '2024-07-17', 'WALK IN', '425623240005', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2677, '23-PK-0612', 'ESTRELLA', 'JARIS', 'MATA', 0, '2019-04-10', 'PASIG CITY', 'MALE', '', '52 SAN VICENTE ST. CORTIJOS DE SAN RAFAEL, BRGY. SAN RAFAE, RODRIGUEZ, RIZAL', '09067415834 / 09066461976', 'CHRISTIAN', 'JOAN MARIE MATA', 'RICHMOND LAUREN STRELLA', '', '', '2024-07-17', 'WALK IN', '425623240006', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2678, '24-K-0916', 'GILL', 'ARVAAZ', 'SINGH', 0, '2019-09-03', 'MANILA', 'MALE', 'FILIPINO', 'BLK 5 LOT 8 PHASE 4 A GREENVIEW EASTWOOD SAN ISISDRO RODRIGUEZ RIZAL', '9687055276', 'CATHOLIC', 'SARVJEET KAUR', 'MOHPREET SINGH', 'N/A', '', '2024-07-16', 'WALK IN', '425623240007', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2679, '23-PK-0728', 'HERNANDEZ', 'MARTINA DIANE', 'NORVA', 0, '2018-11-28', 'SAN MATEO RIZAL', 'FEMALE', 'FILIPINO', '176 JP RIZAL AVE. BALITE RODRIGUEZ, RIZAL', '9162578045', 'CATHOLIC', 'DIANA VICTORIA NORVA', 'MARK RONNIL HERNANDEZ', 'N/A', '', '2024-06-08', 'WALK IN', '425623240008', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2680, '23-PK-0761', 'JACALA', 'CHARLES IVANNE', 'BALLESTEROS', 0, '2019-02-20', 'SAN MATEO RIZAL', 'MALE', '', 'P8 B66 L 26 EASTWOOD RESIDENCES SAN ISIDRO RODRIGUEZ RIZAL', '9158010385', 'CATHOLIC', 'IVYGAIL JACALA', 'SAMMY JACALA', '', '', '2024-07-01', 'WALK IN', '425623240009', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2681, '23-PK-0588', 'JAVIER', 'JOACHIM EMMANUEL', 'ESMEDIANA', 0, '2018-11-05', 'SAUDI ARABIA', 'MALE', '', '31 SAN LORENZO ST. CORTIJOS, SAN RAFAEL MONTALBAN RIZAL', '09274403677', 'CATHOLIC', 'ELLIZA CARLA JAVIER', 'JOEL JAVIER', '', '', '2024-06-08', 'WALK IN', '425623240010', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2682, '24-K-0800', 'LERUM', 'AVIYAH TALITHA', 'SOLA', 0, '2019-01-22', 'SAN MATEO RIZAL', 'FEMALE', '', 'BLK 11 LOT 5 EMERALD ST. SUMMIT VIEW SUBD. SAN RAFAEL, RODRIGUEZ, RIZAL', '9935870660', 'CATHOLIC', 'MARY FELORE S. LERUM', 'ANGELITO S. LERUM', '', '', '2024-05-21', 'WALK IN', '425623240011', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MARY FELORE S. LERUM'),
(2683, '24-K-0806', 'MOLINA', 'CAEL KRISTOFF', 'CARIZAL', 0, '2018-12-24', 'QUEZON CITY', 'MALE', 'FILIPINO', 'BLK 18 LOT 17 PHASE 1 EASTWOOD RESIDENCES, SAN ISIDRO, RODRIGUEZ, RIZAL', '9652766269', 'CATHOLIC', 'CHERYBEL MOLINA', 'ISMAEL MOLINA', 'N/A', '', '2024-05-23', 'WALK IN', '425623240012', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'MILAGROS CARIZAL'),
(2684, '24-K-0825', 'ROSARIO', 'XION CAYLER ', 'BERGANTIN', 0, '2019-02-24', 'SAN MATEO RIZAL', 'MALE', '', 'PHASE 1 HILL SIDE SAN RAFAEL MONTALBAN RIZAL', '09368791740 / 09501358872', 'CATHOLIC', 'CRISTINE EBALLA', 'JETHREN EBALLA', '', '', '2024-06-13', 'WALK IN', '425623240013', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CRISTINE EBALLA'),
(2685, '23-PK-0621', 'SINCERO', 'ALTHE NATALIE', 'DULONGBINTI', 0, '2019-02-12', 'CAVITE', 'FEMALE', 'FILIPINO', '411 P. SALVADOR ST., SAN RAFAEL RODRIGUEZ, RIZAL', '86874107 / 09985483715', 'CATHOLIC', 'REYSCHEL SINCERO', 'DON ALEXANDER SINCERO', 'N/A', '', '2024-07-10', 'WALK IN', '425623240014', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', ''),
(2686, '24-K-0828', 'SOLIVEN', 'CRISTAL ANGELIQUE', 'LEYNES', 0, '2019-02-10', 'RODRIGUEZ, RIZAL', 'FEMALE', '', '63 SAN MIGUEL DRV. CORTIJOS DE SAN RAFAEL, RODRIGUEZ RIZAL', '9999206849', 'CATHOLIC', 'CRISTINA L. SOLIVEN', 'ALLAN SOLIVEN', '', '', '2024-06-13', 'WALK IN', '425623240015', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'CRISTINA L. SOLIVEN'),
(2687, '24-K-0864', 'SORRA', 'KYTE LORCAN', 'PALMA', 0, '2019-07-14', 'RIZAL', 'MALE', '', 'EASTWOOD PHASE 3B BLOCK 21 LOT 4 MONTALBAN RIZAL', '9194545818', 'CATHOLIC', 'DANICA LOREN PALMA', 'KASSIMIR OWEN SORRA', '', '', '2024-07-02', 'WALK IN', '425623240016', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', 'KIM SORRA'),
(2866, '24-G11-0941', 'SOLLANO', 'VENICE', 'DATUIN ', 16, '2008-05-18', 'RODRIGUEZ RIZAL', 'FEMALE', 'FILIPINO', 'PHASE 1 BLK 12 LOT 3 EATBELLEVURE, SAN ISIDRO RODRIGUEZ RIZAL', '090779188361', 'CATHOLIC', 'BELINDA D. SOLLANO', 'JULIUS KNO SOLLANO', 'N/A', '', '2024-09-10', 'WALK-IN', '107939130255', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '2024-09-10', '2024-09-10', ''),
(2869, '24-G11-0942', 'INTIA', 'CYRIL JEAN', 'PAREDES', 16, '2008-07-25', 'TAGUIG CITY', 'FEMALE', 'FILIPINO', 'BLK 29 LT 17 PH-4 EASTWOOD RESIDENCES BRGY. SAN ISIDRO, RODRIGUEZ, RIZAL', '09750549514', 'CATHOLIC', 'GENELYN P. INTIA', 'ERIC M. INTIA', 'NONE', '', '2024-10-16', 'WALK-IN', '136696130976', '', 'GEN. LUCERIO MEMORIAL', 'GRADE 9', '', '', '', '', '', '', '', '', '', '', '2024-11-04', '2024-11-04', 'GENELYN P. INTIA');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(10) NOT NULL,
  `lname` varchar(225) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `mname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_gen`
--

CREATE TABLE `ticket_gen` (
  `id` int(225) NOT NULL,
  `ticket_number` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_gen`
--

INSERT INTO `ticket_gen` (`id`, `ticket_number`) VALUES
(184, 'SJCR-FD16-00001'),
(185, 'SJCR-FD16-00002'),
(186, 'SJCR-FD16-00003'),
(187, 'SJCR-FD16-00004'),
(188, 'SJCR-FD16-00005'),
(189, 'SJCR-FD16-00006'),
(190, 'SJCR-FD16-00007'),
(191, 'SJCR-FD16-00008'),
(192, 'SJCR-FD16-00009'),
(193, 'SJCR-FD16-00010'),
(194, 'SJCR-FD16-00011'),
(195, 'SJCR-FD16-00012'),
(196, 'SJCR-FD16-00013'),
(197, 'SJCR-FD16-00014'),
(198, 'SJCR-FD16-00015'),
(199, 'SJCR-FD16-00016'),
(200, 'SJCR-FD16-00017'),
(201, 'SJCR-FD16-00018'),
(202, 'SJCR-FD16-00019'),
(203, 'SJCR-FD16-00020'),
(204, 'SJCR-FD16-00021'),
(205, 'SJCR-FD16-00022'),
(206, 'SJCR-FD16-00023'),
(207, 'SJCR-FD16-00024'),
(208, 'SJCR-FD16-00025'),
(209, 'SJCR-FD16-00026'),
(210, 'SJCR-FD16-00027'),
(211, 'SJCR-FD16-00028'),
(212, 'SJCR-FD16-00029'),
(213, 'SJCR-FD16-00030'),
(214, 'SJCR-FD16-00031'),
(215, 'SJCR-FD16-00032'),
(216, 'SJCR-FD16-00033'),
(217, 'SJCR-FD16-00034'),
(218, 'SJCR-FD16-00035'),
(219, 'SJCR-FD16-00036'),
(220, 'SJCR-FD16-00037'),
(221, 'SJCR-FD16-00038'),
(222, 'SJCR-FD16-00039'),
(223, 'SJCR-FD16-00040'),
(224, 'SJCR-FD16-00041'),
(225, 'SJCR-FD16-00042'),
(226, 'SJCR-FD16-00043'),
(227, 'SJCR-FD16-00044'),
(228, 'SJCR-FD16-00045'),
(229, 'SJCR-FD16-00046'),
(230, 'SJCR-FD16-00047'),
(231, 'SJCR-FD16-00048'),
(232, 'SJCR-FD16-00049'),
(233, 'SJCR-FD16-00050'),
(234, 'SJCR-FD16-00051'),
(235, 'SJCR-FD16-00052'),
(236, 'SJCR-FD16-00053'),
(237, 'SJCR-FD16-00054'),
(238, 'SJCR-FD16-00055'),
(239, 'SJCR-FD16-00056'),
(240, 'SJCR-FD16-00057'),
(241, 'SJCR-FD16-00058'),
(242, 'SJCR-FD16-00059'),
(243, 'SJCR-FD16-00060'),
(244, 'SJCR-FD16-00061'),
(245, 'SJCR-FD16-00062'),
(246, 'SJCR-FD16-00063'),
(247, 'SJCR-FD16-00064'),
(248, 'SJCR-FD16-00065'),
(249, 'SJCR-FD16-00066'),
(250, 'SJCR-FD16-00067'),
(251, 'SJCR-FD16-00068'),
(252, 'SJCR-FD16-00069'),
(253, 'SJCR-FD16-00070'),
(254, 'SJCR-FD16-00071'),
(255, 'SJCR-FD16-00072'),
(256, 'SJCR-FD16-00073'),
(257, 'SJCR-FD16-00074'),
(258, 'SJCR-FD16-00075'),
(259, 'SJCR-FD16-00076'),
(260, 'SJCR-FD16-00077'),
(261, 'SJCR-FD16-00078'),
(262, 'SJCR-FD16-00079'),
(263, 'SJCR-FD16-00080'),
(264, 'SJCR-FD16-00081'),
(265, 'SJCR-FD16-00082'),
(266, 'SJCR-FD16-00083'),
(267, 'SJCR-FD16-00084'),
(268, 'SJCR-FD16-00085'),
(269, 'SJCR-FD16-00086'),
(270, 'SJCR-FD16-00087'),
(271, 'SJCR-FD16-00088'),
(272, 'SJCR-FD16-00089'),
(273, 'SJCR-FD16-00090'),
(274, 'SJCR-FD16-00091'),
(275, 'SJCR-FD16-00092'),
(276, 'SJCR-FD16-00093'),
(277, 'SJCR-FD16-00094'),
(278, 'SJCR-FD16-00095'),
(279, 'SJCR-FD16-00096'),
(280, 'SJCR-FD16-00097'),
(281, 'SJCR-FD16-00098'),
(282, 'SJCR-FD16-00099'),
(283, 'SJCR-FD16-00100'),
(284, 'SJCR-FD16-00101'),
(285, 'SJCR-FD16-00102'),
(286, 'SJCR-FD16-00103'),
(287, 'SJCR-FD16-00104'),
(288, 'SJCR-FD16-00105'),
(289, 'SJCR-FD16-00106'),
(290, 'SJCR-FD16-00107'),
(291, 'SJCR-FD16-00108'),
(292, 'SJCR-FD16-00109'),
(293, 'SJCR-FD16-00110'),
(294, 'SJCR-FD16-00111'),
(295, 'SJCR-FD16-00112'),
(296, 'SJCR-FD16-00113'),
(297, 'SJCR-FD16-00114'),
(298, 'SJCR-FD16-00115'),
(299, 'SJCR-FD16-00116'),
(300, 'SJCR-FD16-00117'),
(301, 'SJCR-FD16-00118'),
(302, 'SJCR-FD16-00119'),
(303, 'SJCR-FD16-00120'),
(304, 'SJCR-FD16-00121'),
(305, 'SJCR-FD16-00122'),
(306, 'SJCR-FD16-00123'),
(307, 'SJCR-FD16-00124'),
(308, 'SJCR-FD16-00125'),
(309, 'SJCR-FD16-00126'),
(310, 'SJCR-FD16-00127'),
(311, 'SJCR-FD16-00128'),
(312, 'SJCR-FD16-00129'),
(313, 'SJCR-FD16-00130'),
(314, 'SJCR-FD16-00131'),
(315, 'SJCR-FD16-00132'),
(316, 'SJCR-FD16-00133'),
(317, 'SJCR-FD16-00134'),
(318, 'SJCR-FD16-00135'),
(319, 'SJCR-FD16-00136'),
(320, 'SJCR-FD16-00137'),
(321, 'SJCR-FD16-00138'),
(322, 'SJCR-FD16-00139'),
(323, 'SJCR-FD16-00140'),
(324, 'SJCR-FD16-00141'),
(325, 'SJCR-FD16-00142'),
(326, 'SJCR-FD16-00143'),
(327, 'SJCR-FD16-00144'),
(328, 'SJCR-FD16-00145'),
(329, 'SJCR-FD16-00146'),
(330, 'SJCR-FD16-00147'),
(331, 'SJCR-FD16-00148'),
(332, 'SJCR-FD16-00149'),
(333, 'SJCR-FD16-00150'),
(334, 'SJCR-FD16-00151'),
(335, 'SJCR-FD16-00152'),
(336, 'SJCR-FD16-00153'),
(337, 'SJCR-FD16-00154'),
(338, 'SJCR-FD16-00155'),
(339, 'SJCR-FD16-00156'),
(340, 'SJCR-FD16-00157'),
(341, 'SJCR-FD16-00158'),
(342, 'SJCR-FD16-00159'),
(343, 'SJCR-FD16-00160'),
(344, 'SJCR-FD16-00161'),
(345, 'SJCR-FD16-00162'),
(346, 'SJCR-FD16-00163'),
(347, 'SJCR-FD16-00164'),
(348, 'SJCR-FD16-00165'),
(349, 'SJCR-FD16-00166'),
(350, 'SJCR-FD16-00167'),
(351, 'SJCR-FD16-00168'),
(352, 'SJCR-FD16-00169'),
(353, 'SJCR-FD16-00170'),
(354, 'SJCR-FD16-00171'),
(355, 'SJCR-FD16-00172'),
(356, 'SJCR-FD16-00173'),
(357, 'SJCR-FD16-00174'),
(358, 'SJCR-FD16-00175'),
(359, 'SJCR-FD16-00176'),
(360, 'SJCR-FD16-00177'),
(361, 'SJCR-FD16-00178'),
(362, 'SJCR-FD16-00179'),
(363, 'SJCR-FD16-00180'),
(364, 'SJCR-FD16-00181'),
(365, 'SJCR-FD16-00182'),
(366, 'SJCR-FD16-00183'),
(367, 'SJCR-FD16-00184'),
(368, 'SJCR-FD16-00185'),
(369, 'SJCR-FD16-00186'),
(370, 'SJCR-FD16-00187'),
(371, 'SJCR-FD16-00188'),
(372, 'SJCR-FD16-00189'),
(373, 'SJCR-FD16-00190'),
(374, 'SJCR-FD16-00191'),
(375, 'SJCR-FD16-00192'),
(376, 'SJCR-FD16-00193'),
(377, 'SJCR-FD16-00194'),
(378, 'SJCR-FD16-00195'),
(379, 'SJCR-FD16-00196'),
(380, 'SJCR-FD16-00197'),
(381, 'SJCR-FD16-00198'),
(382, 'SJCR-FD16-00199'),
(383, 'SJCR-FD16-00200'),
(384, 'SJCR-FD16-00201'),
(385, 'SJCR-FD16-00202'),
(386, 'SJCR-FD16-00203'),
(387, 'SJCR-FD16-00204'),
(388, 'SJCR-FD16-00205'),
(389, 'SJCR-FD16-00206'),
(390, 'SJCR-FD16-00207'),
(391, 'SJCR-FD16-00208'),
(392, 'SJCR-FD16-00209'),
(393, 'SJCR-FD16-00210'),
(394, 'SJCR-FD16-00211'),
(395, 'SJCR-FD16-00212'),
(396, 'SJCR-FD16-00213'),
(397, 'SJCR-FD16-00214'),
(398, 'SJCR-FD16-00215'),
(399, 'SJCR-FD16-00216'),
(400, 'SJCR-FD16-00217'),
(401, 'SJCR-FD16-00218'),
(402, 'SJCR-FD16-00219'),
(403, 'SJCR-FD16-00220'),
(404, 'SJCR-FD16-00221'),
(405, 'SJCR-FD16-00222'),
(406, 'SJCR-FD16-00223'),
(407, 'SJCR-FD16-00224'),
(408, 'SJCR-FD16-00225'),
(409, 'SJCR-FD16-00226'),
(410, 'SJCR-FD16-00227'),
(411, 'SJCR-FD16-00228'),
(412, 'SJCR-FD16-00229'),
(413, 'SJCR-FD16-00230'),
(414, 'SJCR-FD16-00231'),
(415, 'SJCR-FD16-00232'),
(416, 'SJCR-FD16-00233'),
(417, 'SJCR-FD16-00234'),
(418, 'SJCR-FD16-00235'),
(419, 'SJCR-FD16-00236'),
(420, 'SJCR-FD16-00237'),
(421, 'SJCR-FD16-00238'),
(422, 'SJCR-FD16-00239'),
(423, 'SJCR-FD16-00240'),
(424, 'SJCR-FD16-00241'),
(425, 'SJCR-FD16-00242'),
(426, 'SJCR-FD16-00243'),
(427, 'SJCR-FD16-00244'),
(428, 'SJCR-FD16-00245'),
(429, 'SJCR-FD16-00246'),
(430, 'SJCR-FD16-00247'),
(431, 'SJCR-FD16-00248'),
(432, 'SJCR-FD16-00249'),
(433, 'SJCR-FD16-00250'),
(434, 'SJCR-FD16-00251'),
(435, 'SJCR-FD16-00252'),
(436, 'SJCR-FD16-00253'),
(437, 'SJCR-FD16-00254'),
(438, 'SJCR-FD16-00255'),
(439, 'SJCR-FD16-00256'),
(440, 'SJCR-FD16-00257'),
(441, 'SJCR-FD16-00258'),
(442, 'SJCR-FD16-00259'),
(443, 'SJCR-FD16-00260'),
(444, 'SJCR-FD16-00261'),
(445, 'SJCR-FD16-00262'),
(446, 'SJCR-FD16-00263'),
(447, 'SJCR-FD16-00264'),
(448, 'SJCR-FD16-00265'),
(449, 'SJCR-FD16-00266'),
(450, 'SJCR-FD16-00267'),
(451, 'SJCR-FD16-00268'),
(452, 'SJCR-FD16-00269'),
(453, 'SJCR-FD16-00270'),
(454, 'SJCR-FD16-00271'),
(455, 'SJCR-FD16-00272'),
(456, 'SJCR-FD16-00273'),
(457, 'SJCR-FD16-00274'),
(458, 'SJCR-FD16-00275'),
(459, 'SJCR-FD16-00276'),
(460, 'SJCR-FD16-00277'),
(461, 'SJCR-FD16-00278'),
(462, 'SJCR-FD16-00279'),
(463, 'SJCR-FD16-00280'),
(464, 'SJCR-FD16-00281'),
(465, 'SJCR-FD16-00282'),
(466, 'SJCR-FD16-00283'),
(467, 'SJCR-FD16-00284'),
(468, 'SJCR-FD16-00285'),
(469, 'SJCR-FD16-00286'),
(470, 'SJCR-FD16-00287'),
(471, 'SJCR-FD16-00288'),
(472, 'SJCR-FD16-00289'),
(473, 'SJCR-FD16-00290'),
(474, 'SJCR-FD16-00291'),
(475, 'SJCR-FD16-00292'),
(476, 'SJCR-FD16-00293'),
(477, 'SJCR-FD16-00294'),
(478, 'SJCR-FD16-00295'),
(479, 'SJCR-FD16-00296'),
(480, 'SJCR-FD16-00297'),
(481, 'SJCR-FD16-00298'),
(482, 'SJCR-FD16-00299'),
(483, 'SJCR-FD16-00300'),
(484, 'SJCR-FD16-00301'),
(485, 'SJCR-FD16-00302'),
(486, 'SJCR-FD16-00303'),
(487, 'SJCR-FD16-00304'),
(488, 'SJCR-FD16-00305'),
(489, 'SJCR-FD16-00306'),
(490, 'SJCR-FD16-00307'),
(491, 'SJCR-FD16-00308'),
(492, 'SJCR-FD16-00309'),
(493, 'SJCR-FD16-00310'),
(494, 'SJCR-FD16-00311'),
(495, 'SJCR-FD16-00312'),
(496, 'SJCR-FD16-00313'),
(497, 'SJCR-FD16-00314'),
(498, 'SJCR-FD16-00315'),
(499, 'SJCR-FD16-00316'),
(500, 'SJCR-FD16-00317'),
(501, 'SJCR-FD16-00318'),
(502, 'SJCR-FD16-00319'),
(503, 'SJCR-FD16-00320'),
(504, 'SJCR-FD16-00321'),
(505, 'SJCR-FD16-00322'),
(506, 'SJCR-FD16-00323'),
(507, 'SJCR-FD16-00324'),
(508, 'SJCR-FD16-00325'),
(509, 'SJCR-FD16-00326'),
(510, 'SJCR-FD16-00327'),
(511, 'SJCR-FD16-00328'),
(512, 'SJCR-FD16-00329'),
(513, 'SJCR-FD16-00330'),
(514, 'SJCR-FD16-00331'),
(515, 'SJCR-FD16-00332'),
(516, 'SJCR-FD16-00333'),
(517, 'SJCR-FD16-00334'),
(518, 'SJCR-FD16-00335'),
(519, 'SJCR-FD16-00336'),
(520, 'SJCR-FD16-00337'),
(521, 'SJCR-FD16-00338'),
(522, 'SJCR-FD16-00339'),
(523, 'SJCR-FD16-00340'),
(524, 'SJCR-FD16-00341'),
(525, 'SJCR-FD16-00342'),
(526, 'SJCR-FD16-00343'),
(527, 'SJCR-FD16-00344'),
(528, 'SJCR-FD16-00345'),
(529, 'SJCR-FD16-00346'),
(530, 'SJCR-FD16-00347'),
(531, 'SJCR-FD16-00348'),
(532, 'SJCR-FD16-00349'),
(533, 'SJCR-FD16-00350'),
(534, 'SJCR-FD16-00351'),
(535, 'SJCR-FD16-00352'),
(536, 'SJCR-FD16-00353'),
(537, 'SJCR-FD16-00354'),
(538, 'SJCR-FD16-00355'),
(539, 'SJCR-FD16-00356'),
(540, 'SJCR-FD16-00357'),
(541, 'SJCR-FD16-00358'),
(542, 'SJCR-FD16-00359'),
(543, 'SJCR-FD16-00360'),
(544, 'SJCR-FD16-00361'),
(545, 'SJCR-FD16-00362'),
(546, 'SJCR-FD16-00363'),
(547, 'SJCR-FD16-00364'),
(548, 'SJCR-FD16-00365'),
(549, 'SJCR-FD16-00366'),
(550, 'SJCR-FD16-00367'),
(551, 'SJCR-FD16-00368'),
(552, 'SJCR-FD16-00369'),
(553, 'SJCR-FD16-00370'),
(554, 'SJCR-FD16-00371'),
(555, 'SJCR-FD16-00372'),
(556, 'SJCR-FD16-00373'),
(557, 'SJCR-FD16-00374'),
(558, 'SJCR-FD16-00375'),
(559, 'SJCR-FD16-00376'),
(560, 'SJCR-FD16-00377'),
(561, 'SJCR-FD16-00378'),
(562, 'SJCR-FD16-00379'),
(563, 'SJCR-FD16-00380'),
(564, 'SJCR-FD16-00381'),
(565, 'SJCR-FD16-00382'),
(566, 'SJCR-FD16-00383'),
(567, 'SJCR-FD16-00384'),
(568, 'SJCR-FD16-00385'),
(569, 'SJCR-FD16-00386'),
(570, 'SJCR-FD16-00387'),
(571, 'SJCR-FD16-00388'),
(572, 'SJCR-FD16-00389'),
(573, 'SJCR-FD16-00390'),
(574, 'SJCR-FD16-00391'),
(575, 'SJCR-FD16-00392'),
(576, 'SJCR-FD16-00393'),
(577, 'SJCR-FD16-00394'),
(578, 'SJCR-FD16-00395'),
(579, 'SJCR-FD16-00396'),
(580, 'SJCR-FD16-00397'),
(581, 'SJCR-FD16-00398'),
(582, 'SJCR-FD16-00399'),
(583, 'SJCR-FD16-00400'),
(584, 'SJCR-FD16-00401'),
(585, 'SJCR-FD16-00402'),
(586, 'SJCR-FD16-00403'),
(587, 'SJCR-FD16-00404'),
(588, 'SJCR-FD16-00405'),
(589, 'SJCR-FD16-00406'),
(590, 'SJCR-FD16-00407'),
(591, 'SJCR-FD16-00408'),
(592, 'SJCR-FD16-00409'),
(593, 'SJCR-FD16-00410'),
(594, 'SJCR-FD16-00411'),
(595, 'SJCR-FD16-00412'),
(596, 'SJCR-FD16-00413'),
(597, 'SJCR-FD16-00414'),
(598, 'SJCR-FD16-00415'),
(599, 'SJCR-FD16-00416'),
(600, 'SJCR-FD16-00417'),
(601, 'SJCR-FD16-00418'),
(602, 'SJCR-FD16-00419'),
(603, 'SJCR-FD16-00420'),
(604, 'SJCR-FD16-00421'),
(605, 'SJCR-FD16-00422'),
(606, 'SJCR-FD16-00423'),
(607, 'SJCR-FD16-00424'),
(608, 'SJCR-FD16-00425'),
(609, 'SJCR-FD16-00426'),
(610, 'SJCR-FD16-00427'),
(611, 'SJCR-FD16-00428'),
(612, 'SJCR-FD16-00429'),
(613, 'SJCR-FD16-00430'),
(614, 'SJCR-FD16-00431'),
(615, 'SJCR-FD16-00432'),
(616, 'SJCR-FD16-00433'),
(617, 'SJCR-FD16-00434'),
(618, 'SJCR-FD16-00435'),
(619, 'SJCR-FD16-00436'),
(620, 'SJCR-FD16-00437'),
(621, 'SJCR-FD16-00438'),
(622, 'SJCR-FD16-00439'),
(623, 'SJCR-FD16-00440'),
(624, 'SJCR-FD16-00441'),
(625, 'SJCR-FD16-00442'),
(626, 'SJCR-FD16-00443'),
(627, 'SJCR-FD16-00444'),
(628, 'SJCR-FD16-00445'),
(629, 'SJCR-FD16-00446'),
(630, 'SJCR-FD16-00447'),
(631, 'SJCR-FD16-00448'),
(632, 'SJCR-FD16-00449'),
(633, 'SJCR-FD16-00450'),
(634, 'SJCR-FD16-00451'),
(635, 'SJCR-FD16-00452'),
(636, 'SJCR-FD16-00453'),
(637, 'SJCR-FD16-00454'),
(638, 'SJCR-FD16-00455'),
(639, 'SJCR-FD16-00456'),
(640, 'SJCR-FD16-00457'),
(641, 'SJCR-FD16-00458'),
(642, 'SJCR-FD16-00459'),
(643, 'SJCR-FD16-00460'),
(644, 'SJCR-FD16-00461'),
(645, 'SJCR-FD16-00462'),
(646, 'SJCR-FD16-00463'),
(647, 'SJCR-FD16-00464'),
(648, 'SJCR-FD16-00465'),
(649, 'SJCR-FD16-00466'),
(650, 'SJCR-FD16-00467'),
(651, 'SJCR-FD16-00468'),
(652, 'SJCR-FD16-00469'),
(653, 'SJCR-FD16-00470'),
(654, 'SJCR-FD16-00471'),
(655, 'SJCR-FD16-00472'),
(656, 'SJCR-FD16-00473'),
(657, 'SJCR-FD16-00474'),
(658, 'SJCR-FD16-00475'),
(659, 'SJCR-FD16-00476'),
(660, 'SJCR-FD16-00477'),
(661, 'SJCR-FD16-00478'),
(662, 'SJCR-FD16-00479'),
(663, 'SJCR-FD16-00480'),
(664, 'SJCR-FD16-00481'),
(665, 'SJCR-FD16-00482'),
(666, 'SJCR-FD16-00483'),
(667, 'SJCR-FD16-00484'),
(668, 'SJCR-FD16-00485'),
(669, 'SJCR-FD16-00486'),
(670, 'SJCR-FD16-00487'),
(671, 'SJCR-FD16-00488'),
(672, 'SJCR-FD16-00489'),
(673, 'SJCR-FD16-00490'),
(674, 'SJCR-FD16-00491'),
(675, 'SJCR-FD16-00492'),
(676, 'SJCR-FD16-00493'),
(677, 'SJCR-FD16-00494'),
(678, 'SJCR-FD16-00495'),
(679, 'SJCR-FD16-00496'),
(680, 'SJCR-FD16-00497'),
(681, 'SJCR-FD16-00498'),
(682, 'SJCR-FD16-00499'),
(683, 'SJCR-FD16-00500'),
(684, 'SJCR-FD16-00501'),
(685, 'SJCR-FD16-00502'),
(686, 'SJCR-FD16-00503'),
(687, 'SJCR-FD16-00504'),
(688, 'SJCR-FD16-00505'),
(689, 'SJCR-FD16-00506'),
(690, 'SJCR-FD16-00507'),
(691, 'SJCR-FD16-00508'),
(692, 'SJCR-FD16-00509'),
(693, 'SJCR-FD16-00510'),
(694, 'SJCR-FD16-00511'),
(695, 'SJCR-FD16-00512'),
(696, 'SJCR-FD16-00513'),
(697, 'SJCR-FD16-00514'),
(698, 'SJCR-FD16-00515'),
(699, 'SJCR-FD16-00516'),
(700, 'SJCR-FD16-00517'),
(701, 'SJCR-FD16-00518'),
(702, 'SJCR-FD16-00519'),
(703, 'SJCR-FD16-00520'),
(704, 'SJCR-FD16-00521'),
(705, 'SJCR-FD16-00522'),
(706, 'SJCR-FD16-00523'),
(707, 'SJCR-FD16-00524'),
(708, 'SJCR-FD16-00525'),
(709, 'SJCR-FD16-00526'),
(710, 'SJCR-FD16-00527'),
(711, 'SJCR-FD16-00528'),
(712, 'SJCR-FD16-00529'),
(713, 'SJCR-FD16-00530'),
(714, 'SJCR-FD16-00531'),
(715, 'SJCR-FD16-00532'),
(716, 'SJCR-FD16-00533'),
(717, 'SJCR-FD16-00534'),
(718, 'SJCR-FD16-00535'),
(719, 'SJCR-FD16-00536'),
(720, 'SJCR-FD16-00537'),
(721, 'SJCR-FD16-00538'),
(722, 'SJCR-FD16-00539'),
(723, 'SJCR-FD16-00540'),
(724, 'SJCR-FD16-00541'),
(725, 'SJCR-FD16-00542'),
(726, 'SJCR-FD16-00543'),
(727, 'SJCR-FD16-00544'),
(728, 'SJCR-FD16-00545'),
(729, 'SJCR-FD16-00546'),
(730, 'SJCR-FD16-00547'),
(731, 'SJCR-FD16-00548'),
(732, 'SJCR-FD16-00549'),
(733, 'SJCR-FD16-00550'),
(734, 'SJCR-FD16-00551'),
(735, 'SJCR-FD16-00552'),
(736, 'SJCR-FD16-00553'),
(737, 'SJCR-FD16-00554'),
(738, 'SJCR-FD16-00555'),
(739, 'SJCR-FD16-00556'),
(740, 'SJCR-FD16-00557'),
(741, 'SJCR-FD16-00558'),
(742, 'SJCR-FD16-00559'),
(743, 'SJCR-FD16-00560'),
(744, 'SJCR-FD16-00561'),
(745, 'SJCR-FD16-00562'),
(746, 'SJCR-FD16-00563'),
(747, 'SJCR-FD16-00564'),
(748, 'SJCR-FD16-00565'),
(749, 'SJCR-FD16-00566'),
(750, 'SJCR-FD16-00567'),
(751, 'SJCR-FD16-00568'),
(752, 'SJCR-FD16-00569'),
(753, 'SJCR-FD16-00570'),
(754, 'SJCR-FD16-00571'),
(755, 'SJCR-FD16-00572'),
(756, 'SJCR-FD16-00573'),
(757, 'SJCR-FD16-00574'),
(758, 'SJCR-FD16-00575'),
(759, 'SJCR-FD16-00576'),
(760, 'SJCR-FD16-00577'),
(761, 'SJCR-FD16-00578'),
(762, 'SJCR-FD16-00579'),
(763, 'SJCR-FD16-00580'),
(764, 'SJCR-FD16-00581'),
(765, 'SJCR-FD16-00582'),
(766, 'SJCR-FD16-00583'),
(767, 'SJCR-FD16-00584'),
(768, 'SJCR-FD16-00585'),
(769, 'SJCR-FD16-00586'),
(770, 'SJCR-FD16-00587'),
(771, 'SJCR-FD16-00588'),
(772, 'SJCR-FD16-00589'),
(773, 'SJCR-FD16-00590'),
(774, 'SJCR-FD16-00591'),
(775, 'SJCR-FD16-00592'),
(776, 'SJCR-FD16-00593'),
(777, 'SJCR-FD16-00594'),
(778, 'SJCR-FD16-00595'),
(779, 'SJCR-FD16-00596'),
(780, 'SJCR-FD16-00597'),
(781, 'SJCR-FD16-00598'),
(782, 'SJCR-FD16-00599'),
(783, 'SJCR-FD16-00600'),
(790, 'SJCR-FD16-00601'),
(791, 'SJCR-FD16-00602'),
(792, 'SJCR-FD16-00603'),
(793, 'SJCR-FD16-00604'),
(794, 'SJCR-FD16-00605'),
(795, 'SJCR-FD16-00606'),
(796, 'SJCR-FD16-00607'),
(797, 'SJCR-FD16-00608'),
(798, 'SJCR-FD16-00609'),
(799, 'SJCR-FD16-00610'),
(800, 'SJCR-FD16-00611'),
(801, 'SJCR-FD16-00612'),
(802, 'SJCR-FD16-00613'),
(803, 'SJCR-FD16-00614'),
(804, 'SJCR-FD16-00615'),
(805, 'SJCR-FD16-00616'),
(806, 'SJCR-FD16-00617'),
(807, 'SJCR-FD16-00618'),
(808, 'SJCR-FD16-00619'),
(809, 'SJCR-FD16-00620'),
(810, 'SJCR-FD16-00621'),
(811, 'SJCR-FD16-00622'),
(812, 'SJCR-FD16-00623'),
(813, 'SJCR-FD16-00624'),
(814, 'SJCR-FD16-00625'),
(815, 'SJCR-FD16-00626'),
(816, 'SJCR-FD16-00627'),
(817, 'SJCR-FD16-00628'),
(818, 'SJCR-FD16-00629'),
(819, 'SJCR-FD16-00630'),
(820, 'SJCR-FD16-00631'),
(821, 'SJCR-FD16-00632'),
(822, 'SJCR-FD16-00633'),
(823, 'SJCR-FD16-00634'),
(824, 'SJCR-FD16-00635'),
(825, 'SJCR-FD16-00636'),
(826, 'SJCR-FD16-00637'),
(827, 'SJCR-FD16-00638'),
(828, 'SJCR-FD16-00639'),
(829, 'SJCR-FD16-00640'),
(830, 'SJCR-FD16-00641'),
(831, 'SJCR-FD16-00642'),
(832, 'SJCR-FD16-00643'),
(833, 'SJCR-FD16-00644'),
(834, 'SJCR-FD16-00645'),
(835, 'SJCR-FD16-00646'),
(836, 'SJCR-FD16-00647'),
(837, 'SJCR-FD16-00648'),
(838, 'SJCR-FD16-00649'),
(839, 'SJCR-FD16-00650'),
(840, 'SJCR-FD16-00651'),
(841, 'SJCR-FD16-00652'),
(842, 'SJCR-FD16-00653'),
(843, 'SJCR-FD16-00654'),
(844, 'SJCR-FD16-00655'),
(845, 'SJCR-FD16-00656'),
(846, 'SJCR-FD16-00657'),
(847, 'SJCR-FD16-00658'),
(848, 'SJCR-FD16-00659'),
(849, 'SJCR-FD16-00660'),
(850, 'SJCR-FD16-00661'),
(851, 'SJCR-FD16-00662'),
(852, 'SJCR-FD16-00663'),
(853, 'SJCR-FD16-00664'),
(854, 'SJCR-FD16-00665'),
(855, 'SJCR-FD16-00666'),
(856, 'SJCR-FD16-00667'),
(857, 'SJCR-FD16-00668'),
(858, 'SJCR-FD16-00669'),
(859, 'SJCR-FD16-00670'),
(860, 'SJCR-FD16-00671'),
(861, 'SJCR-FD16-00672'),
(862, 'SJCR-FD16-00673'),
(863, 'SJCR-FD16-00674'),
(864, 'SJCR-FD16-00675'),
(865, 'SJCR-FD16-00676'),
(866, 'SJCR-FD16-00677'),
(867, 'SJCR-FD16-00678'),
(868, 'SJCR-FD16-00679'),
(869, 'SJCR-FD16-00680'),
(870, 'SJCR-FD16-00681'),
(871, 'SJCR-FD16-00682'),
(872, 'SJCR-FD16-00683'),
(873, 'SJCR-FD16-00684'),
(874, 'SJCR-FD16-00685'),
(875, 'SJCR-FD16-00686'),
(876, 'SJCR-FD16-00687'),
(877, 'SJCR-FD16-00688'),
(878, 'SJCR-FD16-00689'),
(879, 'SJCR-FD16-00690'),
(880, 'SJCR-FD16-00691'),
(881, 'SJCR-FD16-00692'),
(882, 'SJCR-FD16-00693'),
(883, 'SJCR-FD16-00694'),
(884, 'SJCR-FD16-00695'),
(885, 'SJCR-FD16-00696'),
(886, 'SJCR-FD16-00697'),
(887, 'SJCR-FD16-00698'),
(888, 'SJCR-FD16-00699'),
(889, 'SJCR-FD16-00700'),
(890, 'SJCR-FD16-00701'),
(891, 'SJCR-FD16-00702'),
(892, 'SJCR-FD16-00703'),
(893, 'SJCR-FD16-00704'),
(894, 'SJCR-FD16-00705'),
(895, 'SJCR-FD16-00706'),
(896, 'SJCR-FD16-00707'),
(897, 'SJCR-FD16-00708'),
(898, 'SJCR-FD16-00709'),
(899, 'SJCR-FD16-00710'),
(900, 'SJCR-FD16-00711'),
(901, 'SJCR-FD16-00712'),
(902, 'SJCR-FD16-00713'),
(903, 'SJCR-FD16-00714'),
(904, 'SJCR-FD16-00715'),
(905, 'SJCR-FD16-00716'),
(906, 'SJCR-FD16-00717'),
(907, 'SJCR-FD16-00718'),
(908, 'SJCR-FD16-00719'),
(909, 'SJCR-FD16-00720'),
(910, 'SJCR-FD16-00721'),
(911, 'SJCR-FD16-00722'),
(912, 'SJCR-FD16-00723'),
(913, 'SJCR-FD16-00724'),
(914, 'SJCR-FD16-00725'),
(915, 'SJCR-FD16-00726'),
(916, 'SJCR-FD16-00727'),
(917, 'SJCR-FD16-00728'),
(918, 'SJCR-FD16-00729'),
(919, 'SJCR-FD16-00730'),
(920, 'SJCR-FD16-00731'),
(921, 'SJCR-FD16-00732'),
(922, 'SJCR-FD16-00733'),
(923, 'SJCR-FD16-00734'),
(924, 'SJCR-FD16-00735'),
(925, 'SJCR-FD16-00736'),
(926, 'SJCR-FD16-00737'),
(927, 'SJCR-FD16-00738'),
(928, 'SJCR-FD16-00739'),
(929, 'SJCR-FD16-00740'),
(930, 'SJCR-FD16-00741'),
(931, 'SJCR-FD16-00742'),
(932, 'SJCR-FD16-00743'),
(933, 'SJCR-FD16-00744'),
(934, 'SJCR-FD16-00745'),
(935, 'SJCR-FD16-00746'),
(936, 'SJCR-FD16-00747'),
(937, 'SJCR-FD16-00748'),
(938, 'SJCR-FD16-00749'),
(939, 'SJCR-FD16-00750');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(225) NOT NULL,
  `surname` varchar(225) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `middlename` varchar(225) NOT NULL,
  `suffix` varchar(100) NOT NULL,
  `purpose` varchar(225) NOT NULL,
  `img_dir` varchar(225) NOT NULL,
  `time_in` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `surname`, `firstname`, `middlename`, `suffix`, `purpose`, `img_dir`, `time_in`, `date`) VALUES
(26, 'SDAF', 'ASDF', 'ASDF', 'ASDF', 'ASDF', '0.jpg', '9:51 am', '2024-10-16'),
(27, 'DECENA', 'LOVIMEN', 'BINAS', '', 'NOTHING', '27.jpg', '12:00 pm', '2024-10-16'),
(28, 'DECENA', 'LOVIMEN', '', '', 'FORM137', '28.jpg', '12:03 pm', '2024-10-16'),
(29, 'DECENA', 'LOVIMEN', '', '', 'FORM137', '29.jpg', '12:05 pm', '2024-10-16'),
(30, 'ADSFSDA', 'ASDFDSA', 'SADFASD', '', 'ASDFSADF', '30.jpg', '12:09 pm', '2024-10-16'),
(31, 'DECENA', 'LOV', '', '', 'SECRET', '31.jpg', '1:17 pm', '2024-10-16'),
(32, 'DD', 'S', '', '', 'ADF', '32.jpg', '1:21 pm', '2024-10-16'),
(33, '', '', '', '', '', '33.jpg', '1:28 pm', '2024-10-16'),
(34, 'ADSF', 'DSF', '', '', 'SDF', '34.jpg', '1:32 pm', '2024-10-16'),
(35, 'ADF', 'DF', '', '', 'ADF', '35.jpg', '1:33 pm', '2024-10-16'),
(36, '', '', '', '', '', '36.jpg', '1:35 pm', '2024-10-16'),
(37, '', '', '', '', '', '37.jpg', '1:36 pm', '2024-10-16'),
(38, '', '', '', '', '', '38.jpg', '1:37 pm', '2024-10-16'),
(39, 'SDF', 'ASDFSDF', '', '', 'GGG', '39.jpg', '1:39 pm', '2024-10-16'),
(40, 'SD', 'SSS', 'C', '', 'FG33', '40.jpg', '1:40 pm', '2024-10-16'),
(41, 'ASDF', 'DSF', '', '', 'ADFDDD', '41.jpg', '1:41 pm', '2024-10-16'),
(42, 'DSF', 'DF', '', '', 'FDSADSF', '42.jpg', '1:42 pm', '2024-10-16'),
(43, 'DS', 'D', '', '', 'AEFSDAF', '43.jpg', '1:44 pm', '2024-10-16'),
(44, 'DSF', 'DFS', '', '', 'SADFGSDFGSDFG', '44.jpg', '2:06 pm', '2024-10-16'),
(45, 'SDF', 'ADSF', '', '', 'ADSFDSF', '45.jpg', '2:08 pm', '2024-10-16'),
(46, 'DS', 'FSADF', 'A', '', 'SDFDSF', '46.jpg', '2:10 pm', '2024-10-16'),
(47, 'DSF', 'ASDF', '', '', 'ASDFSDAF', '47.jpg', '2:13 pm', '2024-10-16'),
(48, 'SDF', 'ASDF', '', '', 'ASDF', '48.jpg', '2:14 pm', '2024-10-16'),
(49, 'ASDFD', 'ASDFSD', '', '', '435TDFGSDFG', '49.jpg', '2:15 pm', '2024-10-16'),
(50, 'ASDF', 'ASDFSF', '', '', 'ASFASDF', '50.jpg', '2:16 pm', '2024-10-16'),
(51, 'DSFSADF', 'ASDFASDF', '', '', 'ASDFASDFSADF', '51.jpg', '2:17 pm', '2024-10-16'),
(52, 'ASDF', 'ASDF', '', '', 'ASDFDSAF', '52.jpg', '2:19 pm', '2024-10-16'),
(53, 'SFG', 'ADSF', '', '', 'ADSFDS', '53.jpg', '2:20 pm', '2024-10-16'),
(54, 'TRR', '3W33', '', '', 'WDTFE', '54.jpg', '2:20 pm', '2024-10-16'),
(55, 'GFEGFGF', 'ADFADF', '', '', 'ADSFDSA', '55.jpg', '2:21 pm', '2024-10-16'),
(56, 'LKAJSDF', 'ASDLFKJ', '', '', 'LKJASFLKJDSAF', '56.jpg', '2:59 pm', '2024-10-16'),
(57, 'BASSIG', 'CHE', '', '', 'TEACH', '57.jpg', '3:05 pm', '2024-10-16'),
(58, 'DD', 'SDF', '', '', 'ASDF', '58.jpg', '3:14 pm', '2024-10-16'),
(59, 'ASDF', 'ASDDF', '', '', 'ASDFASDFDSAF', '59.jpg', '3:46 pm', '2024-10-16'),
(60, 'LKASDJF', 'ASDF', '', '', 'ADSFSDFSDAF', '60.jpg', '3:48 pm', '2024-10-16'),
(61, 'DECENA', 'LOVIMEN', 'BINAS', 'JR', 'KAKAIN', '61.jpg', '4:17 pm', '2024-10-16'),
(62, 'DECENA', 'LOVIMEN', 'BINAS', 'JR.', 'KUKUHA NG BAKAL', '62.jpg', '4:19 pm', '2024-10-16'),
(63, 'PUTI', 'JESIEL', '', '', 'NONE', '63.jpg', '4:54 pm', '2024-10-16'),
(64, 'DECENA', 'LOVIMEN', 'BINAS', '', 'FORM 137', '64.jpg', '1:41 pm', '2024-10-17'),
(65, 'DFAS', 'ASDFADSF', '', '', 'ASDFDSF', '65.jpg', '3:56 pm', '2024-10-21'),
(66, 'ASDF', 'ASDF', '', '', 'ASDFASDF', '66.jpg', '3:57 pm', '2024-10-21'),
(67, 'SDF', 'ASDF', '', '', 'ADF', '67.jpg', '3:59 pm', '2024-10-21'),
(68, 'ASDF', 'ADSF', '', '', 'ASDFDDDDDD', '68.jpg', '4:01 pm', '2024-10-21'),
(69, 'ASDF', 'DDDD', '', '', 'DDDDD', '69.jpg', '4:02 pm', '2024-10-21'),
(70, 'SDAF', 'ASDF', '', '', 'ASDFASDF', 'C:UsersSJCR-SERVERDesktopVisitors_Picture70.jpg', '4:16 pm', '2024-10-21'),
(71, 'ADSF', 'ASDF', '', '', 'DSFDSAFASDF', 'C:UsersSJCR-SERVERDesktopVisitors_Picture71.jpg', '4:18 pm', '2024-10-21'),
(72, 'SADFADSF', 'ASDFADF', '', '', 'ASDFSADFASDF', 'C:UsersSJCR-SERVERDesktopVisitors_Picture72.jpg', '4:38 pm', '2024-10-21'),
(73, 'ASDFA', 'HGFHGFH', '', '', 'ASDFDASFAS', 'C:UsersSJCR-SERVERDesktopVisitors_Picture73.jpg', '5:03 pm', '2024-10-21'),
(74, 'SDF', 'ASDFASDF', '', '', 'ASDFADFSADF', 'C:UsersSJCR-SERVERDesktopVisitors_Picture74.jpg', '5:04 pm', '2024-10-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adviser list`
--
ALTER TABLE `adviser list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_schedule`
--
ALTER TABLE `document_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment_db`
--
ALTER TABLE `enrollment_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_books`
--
ALTER TABLE `library_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_books_category`
--
ALTER TABLE `library_books_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_borrow_return`
--
ALTER TABLE `library_borrow_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shs_strand`
--
ALTER TABLE `shs_strand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_db`
--
ALTER TABLE `student_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_gen`
--
ALTER TABLE `ticket_gen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adviser list`
--
ALTER TABLE `adviser list`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document_schedule`
--
ALTER TABLE `document_schedule`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `enrollment_db`
--
ALTER TABLE `enrollment_db`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `library_books`
--
ALTER TABLE `library_books`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `library_books_category`
--
ALTER TABLE `library_books_category`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `library_borrow_return`
--
ALTER TABLE `library_borrow_return`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shs_strand`
--
ALTER TABLE `shs_strand`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_db`
--
ALTER TABLE `student_db`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2870;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_gen`
--
ALTER TABLE `ticket_gen`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
