-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 08:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fvi_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `code` char(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) NOT NULL,
  `professor_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `code`, `name`, `description`, `professor_id_fk`) VALUES
(1, 'XGW8206', 'Id voluptas.', 'Nisi ipsum enim possimus. Accusamus nostrum aspernatur minus earum eveniet. Sunt dolore rerum aliquam.', 3),
(2, 'ZYY7387', 'Tenetur aperiam beatae.', 'Sint voluptas sed quibusdam repellendus et. Tempora reiciendis officiis omnis maiores qui. Non quasi quam placeat sequi.', 5),
(3, 'PCX0243', 'Tenetur dolore.', 'Autem dolores repudiandae et. Animi cumque animi maiores. Nam quis necessitatibus saepe itaque aut.', 1),
(4, 'EUI7090', 'Recusandae harum reiciendis.', 'Eligendi dolorem vero magni ut praesentium. Quibusdam eum officiis dolores pariatur voluptatem. Impedit voluptatem alias modi voluptatem inventore qui', 9),
(5, 'KWX3062', 'Totam ipsum.', 'Ea ut earum consequatur et ut omnis necessitatibus earum. Rerum ducimus illo quo provident sint. Cum et nobis voluptatem at.', 6),
(6, 'IVO0449', 'Inventore aut.', 'Velit aut dolorem quidem incidunt laborum consequatur. Non omnis dolor dolor culpa aut molestiae assumenda. Voluptas quos eaque veritatis possimus.', 2),
(7, 'URG1598', 'Culpa qui officia.', 'Minus iusto dolores ipsa et voluptate eum. Dolorem doloremque cupiditate sed.', 4),
(8, 'WQQ3296', 'Tempore odio.', 'Deleniti repellat vitae quasi ut. Facere quo harum quibusdam.', 10),
(9, 'UIY6975', 'Reprehenderit consequuntur.', 'Possimus qui quis provident consequatur. Consequatur vitae eligendi debitis ut sunt unde eveniet.', 8),
(10, 'XWP3845', 'Porro ipsam cupiditate.', 'Temporibus rerum quam sint impedit eius. Quia ullam nihil qui veritatis sunt et nobis.', 7);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` enum('science','humanities','music','journalism','history','medicine') NOT NULL,
  `tenure` tinyint(1) NOT NULL,
  `joinning_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `joinning_date`) VALUES
(1, 'Prof. Dorothy Wintheiser I', 'journalism', 0, '2017-12-04'),
(2, 'Dr. Alysa Rempel', 'medicine', 1, '2017-11-15'),
(3, 'Crawford Tremblay', 'science', 0, '2017-12-25'),
(4, 'Mr. Wilbert Price', 'science', 1, '2017-12-28'),
(5, 'Vance Wilkinson', 'humanities', 0, '2017-11-25'),
(6, 'Janelle Huels', 'history', 0, '2017-12-28'),
(7, 'Marguerite Osinski IV', 'music', 1, '2017-12-13'),
(8, 'Elmer Gerlach', 'humanities', 0, '2017-11-06'),
(9, 'Dr. Emilia Pacocha I', 'music', 1, '2017-12-21'),
(10, 'Davonte Howe', 'medicine', 1, '2017-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('enrolled','leave','grad','drop') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `date_of_birth`, `registration_date`, `status`) VALUES
(1, 'Kaylie', '1996-02-15', '2017-12-26 12:22:18', 'grad'),
(2, 'Tania', '1995-12-22', '2018-06-16 08:22:49', 'leave'),
(3, 'Loyce', '1996-07-04', '2018-07-26 21:51:20', 'leave'),
(4, 'Luisa', '1998-06-25', '2018-01-08 13:22:13', 'grad'),
(5, 'Aurore', '1998-10-12', '2018-02-12 02:21:54', 'grad'),
(6, 'Lavonne', '1996-12-27', '2018-09-25 06:05:17', 'grad'),
(7, 'Polly', '1999-11-29', '2018-06-11 21:46:52', 'enrolled'),
(8, 'Damian', '1998-08-22', '2018-08-17 14:28:15', 'grad'),
(9, 'Abigail', '1996-04-11', '2017-12-30 02:20:01', 'grad'),
(10, 'Vincenzo', '1996-09-15', '2018-04-23 12:59:48', 'leave'),
(11, 'Kailee', '1997-04-15', '2018-01-06 13:15:15', 'drop'),
(12, 'Emely', '1996-06-08', '2018-06-02 11:26:41', 'grad'),
(13, 'Guadalupe', '1996-07-24', '2018-07-01 17:37:11', 'grad'),
(14, 'Mossie', '1996-05-03', '2018-07-14 08:19:16', 'enrolled'),
(15, 'Yolanda', '1997-06-30', '2018-07-02 17:09:54', 'enrolled'),
(16, 'Mireya', '1997-06-17', '2018-08-19 04:46:50', 'enrolled'),
(17, 'Aiden', '1996-04-12', '2017-11-30 11:08:53', 'grad'),
(18, 'Elisabeth', '1996-08-22', '2018-04-07 15:10:51', 'enrolled'),
(19, 'Susanna', '1995-11-25', '2018-02-28 20:26:04', 'enrolled'),
(20, 'Blanche', '1996-08-16', '2018-09-23 00:00:50', 'drop'),
(21, 'Gene', '1995-06-05', '2018-09-20 22:46:46', 'enrolled'),
(22, 'Kathleen', '1998-07-17', '2018-01-20 07:59:14', 'drop'),
(23, 'Irma', '1995-05-09', '2018-01-27 15:53:03', 'leave'),
(24, 'Anita', '1995-03-17', '2018-05-04 00:06:52', 'drop'),
(25, 'Kyle', '1997-09-24', '2018-08-19 05:36:33', 'leave'),
(26, 'Bernita', '1997-12-01', '2018-09-24 08:35:01', 'grad'),
(27, 'Jazmin', '1996-02-14', '2018-08-16 02:14:51', 'enrolled'),
(28, 'Jada', '1999-06-19', '2018-04-14 18:43:51', 'grad'),
(29, 'Reta', '1999-06-02', '2018-03-09 21:20:16', 'leave'),
(30, 'Karelle', '1995-12-16', '2018-05-29 15:12:49', 'drop'),
(31, 'Adolf', '1999-02-27', '2018-09-16 02:58:17', 'leave'),
(32, 'Ian', '1999-06-06', '2018-07-29 18:19:23', 'drop'),
(33, 'Emerald', '1997-01-06', '2018-02-14 05:48:42', 'enrolled'),
(34, 'Daniela', '1996-10-15', '2018-06-21 06:21:41', 'leave'),
(35, 'Bonita', '1998-04-12', '2018-07-19 09:44:42', 'grad'),
(36, 'Lola', '1997-08-06', '2018-07-26 04:15:26', 'drop'),
(37, 'Sister', '1997-05-04', '2018-01-22 21:25:13', 'enrolled'),
(38, 'April', '1995-09-08', '2018-03-21 00:10:07', 'leave'),
(39, 'Verdie', '1998-02-24', '2018-07-18 17:10:41', 'leave'),
(40, 'Richard', '1995-01-09', '2018-04-22 15:58:02', 'leave'),
(41, 'Lenna', '1997-11-22', '2018-03-19 16:00:20', 'leave'),
(42, 'Holly', '1996-08-01', '2018-08-29 10:57:42', 'grad'),
(43, 'Freda', '1998-04-07', '2018-01-19 19:10:49', 'drop'),
(44, 'Vergie', '1996-07-02', '2018-07-29 23:53:08', 'enrolled'),
(45, 'Toney', '1996-04-08', '2018-09-01 08:12:00', 'enrolled'),
(46, 'Emmanuelle', '1996-06-01', '2018-05-20 23:11:12', 'drop'),
(47, 'Nash', '1998-04-01', '2018-09-11 04:44:26', 'grad'),
(48, 'Nasir', '1996-10-19', '2018-05-13 14:24:24', 'grad'),
(49, 'Lorenz', '1995-12-31', '2018-09-09 01:39:30', 'drop'),
(50, 'Vada', '1998-08-13', '2018-02-09 14:52:25', 'leave'),
(51, 'shihab', '1990-11-11', '0000-00-00 00:00:00', 'enrolled'),
(52, 'Micheal', '1991-12-11', '2018-08-31 06:10:15', 'enrolled'),
(53, 'Rachel', '1992-11-11', '2018-10-31 17:10:15', 'enrolled');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_professor`
--

CREATE TABLE `student_class_professor` (
  `id` int(11) NOT NULL,
  `student_id_fk` int(11) NOT NULL,
  `class_id_fk` int(11) NOT NULL,
  `professor_id_fk` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `grade` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_professor`
--

INSERT INTO `student_class_professor` (`id`, `student_id_fk`, `class_id_fk`, `professor_id_fk`, `start_date`, `end_date`, `grade`) VALUES
(1, 2, 6, 3, '2018-04-01', '2018-04-30', '76'),
(2, 43, 6, 4, '2018-09-01', '2018-09-30', '86'),
(3, 44, 9, 3, '2018-07-01', '2018-07-31', '76'),
(4, 37, 10, 1, '2018-05-01', '2018-05-31', '87'),
(5, 12, 1, 6, '2018-06-01', '2018-06-30', '72'),
(6, 25, 10, 3, '2018-08-01', '2018-08-31', '81'),
(7, 45, 6, 5, '2018-10-01', '0000-00-00', ''),
(8, 27, 1, 8, '2018-08-01', '2018-10-31', '87'),
(9, 29, 4, 4, '2018-07-01', '2018-07-31', '76'),
(10, 17, 2, 4, '2018-05-01', '2018-05-31', '76'),
(11, 20, 2, 8, '2018-09-01', '2018-09-30', '76'),
(12, 5, 3, 1, '2018-03-01', '2018-03-31', '70'),
(13, 50, 1, 1, '2018-01-01', '2018-01-31', '80'),
(14, 48, 7, 3, '2018-05-01', '2018-05-31', '86'),
(15, 16, 7, 4, '2018-10-01', '0000-00-00', ''),
(16, 28, 3, 8, '2018-10-01', '0000-00-00', ''),
(17, 23, 5, 5, '2018-08-01', '2018-08-31', '70'),
(18, 39, 5, 5, '2018-09-01', '2018-09-30', '68'),
(19, 13, 4, 2, '2018-03-01', '2018-03-31', '82'),
(20, 18, 1, 10, '2018-10-01', '0000-00-00', ''),
(21, 47, 2, 5, '2018-06-01', '2018-06-30', '76'),
(22, 24, 10, 1, '2018-08-01', '2018-08-31', '95'),
(23, 41, 3, 5, '2018-07-01', '2018-07-31', '96'),
(24, 42, 5, 2, '2018-04-01', '2018-04-30', '77'),
(25, 1, 1, 1, '2018-01-01', '2018-01-01', '75'),
(26, 7, 8, 10, '2018-09-06', '2018-10-07', '61'),
(27, 33, 2, 7, '2018-08-04', '2018-09-18', '82'),
(28, 1, 10, 1, '2018-08-01', '2018-08-31', '96'),
(29, 9, 2, 2, '2018-01-01', '2018-01-31', '98'),
(30, 21, 10, 1, '2018-06-01', '2018-06-30', '76'),
(31, 11, 3, 1, '2018-03-01', '2018-03-01', '87'),
(32, 32, 4, 5, '2018-08-01', '2018-08-31', '67'),
(33, 22, 1, 1, '2018-02-01', '2018-02-28', '94'),
(34, 6, 10, 10, '2018-01-01', '2018-01-31', '80'),
(35, 30, 5, 3, '2018-03-01', '2018-03-31', '85'),
(36, 26, 4, 3, '2018-02-01', '2018-02-28', '98'),
(37, 4, 10, 10, '2018-08-01', '2018-08-01', '68'),
(38, 14, 1, 7, '2018-07-01', '2018-07-01', '76'),
(39, 34, 1, 4, '2018-04-01', '2018-04-30', '65'),
(40, 3, 3, 4, '2018-06-01', '2018-06-30', '74'),
(41, 38, 8, 3, '2018-06-01', '2018-06-30', '65'),
(42, 35, 3, 3, '2018-01-01', '2018-01-01', '76'),
(43, 46, 2, 6, '2018-07-01', '2018-07-31', '90'),
(44, 15, 10, 1, '2018-07-01', '2018-07-31', '90'),
(45, 8, 1, 5, '2018-05-01', '2018-05-31', '80'),
(46, 31, 1, 9, '2018-09-01', '2018-09-30', '71'),
(47, 40, 4, 1, '2018-04-01', '2018-04-30', '79'),
(48, 19, 3, 2, '2018-02-01', '2018-02-28', '67'),
(49, 36, 2, 2, '2018-01-01', '2018-01-31', '76'),
(50, 49, 10, 1, '2018-05-01', '2018-10-04', '65'),
(51, 1, 2, 2, '2018-01-01', '2018-01-31', '78'),
(52, 1, 3, 2, '2018-02-01', '2018-02-28', '85'),
(53, 1, 4, 2, '2018-03-01', '2018-03-31', '75'),
(54, 1, 5, 5, '2018-09-01', '2018-09-30', '88'),
(55, 1, 6, 3, '2018-04-01', '2018-04-30', '84'),
(56, 1, 7, 3, '2018-05-01', '2018-05-31', '76'),
(57, 1, 8, 3, '2018-06-01', '2018-06-30', '69'),
(58, 1, 9, 3, '2018-07-01', '2018-07-31', '98'),
(59, 9, 1, 1, '2018-01-01', '2018-01-31', '89'),
(60, 9, 3, 2, '2018-02-01', '2018-02-28', '89'),
(61, 9, 4, 2, '2018-03-01', '2018-03-31', '75'),
(62, 9, 5, 5, '2018-09-01', '2018-09-30', '78'),
(63, 9, 6, 3, '2018-04-01', '2018-04-30', '89'),
(64, 9, 7, 3, '2018-05-01', '2018-05-31', '66'),
(65, 9, 8, 3, '2018-06-01', '2018-06-30', '99'),
(66, 9, 9, 3, '2018-07-01', '2018-07-30', '98'),
(67, 9, 10, 10, '2018-08-01', '2018-08-31', '98'),
(68, 17, 1, 2, '2018-01-01', '2018-01-31', '79'),
(69, 17, 2, 2, '2018-01-01', '2018-01-31', '69'),
(70, 17, 3, 2, '2018-02-01', '2018-02-28', '89'),
(71, 17, 4, 2, '2018-03-01', '2018-03-31', '65'),
(72, 17, 6, 3, '2018-04-01', '2018-04-30', '68'),
(73, 17, 7, 3, '2018-05-01', '2018-05-31', '96'),
(74, 17, 8, 3, '2018-06-01', '2018-06-30', '89'),
(75, 17, 9, 3, '2018-07-01', '2018-07-30', '88'),
(76, 17, 10, 10, '2018-08-01', '2018-08-31', '64'),
(77, 51, 8, 6, '2018-10-01', '0000-00-00', ''),
(78, 52, 8, 6, '2018-10-01', '0000-00-00', ''),
(79, 53, 9, 7, '2018-10-01', '0000-00-00', ''),
(80, 51, 9, 7, '2018-10-01', '0000-00-00', ''),
(81, 53, 8, 6, '2018-10-01', '0000-00-00', ''),
(82, 52, 9, 7, '2018-10-01', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_class_professor`
--
ALTER TABLE `student_class_professor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `student_class_professor`
--
ALTER TABLE `student_class_professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
