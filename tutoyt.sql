-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 05, 2022 at 04:13 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutoyt`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `id_school` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `id_school`) VALUES
(1, 'Cálculo 1', 4),
(2, 'Cálculo 2', 4),
(3, 'Álgebra Lineal', 4),
(4, 'Química 1', 5),
(5, 'Química 2', 5),
(6, 'Física 1', 2),
(7, 'Física 2', 2),
(8, 'Biología 1', 1),
(9, 'Biología 2', 1),
(10, 'Ciencias de la Tierra', 3),
(11, 'Probabilidad y Estadística', 4),
(12, 'Ecuaciones diferenciales', 4);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(65) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name`) VALUES
(1, 'Escuela de Ciencias Biológicas e Ingeniería'),
(2, 'Escuela de Ciencias Físicas y Nanotecnología'),
(3, 'Escuela de Ciencias de la Tierra, Energía y Ambiente'),
(4, 'Escuela de Ciencias Matemáticas y Computacionales'),
(5, 'Escuela de Ciencias Químicas e Ingeniería');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_student` int(11) NOT NULL,
  `id_tutor` int(11) NOT NULL,
  `id_class` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `stars` decimal(10,0) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `id_student`, `id_tutor`, `id_class`, `status`, `stars`, `text`, `date`, `time`) VALUES
(1, 8, 1, 1, 'Done', '5', 'Al fin pude aprender ese tema que no me salía por nada del mundo', '2022-01-05', '20:00:00'),
(2, 8, 1, 1, 'Done', '5', 'Otra vez me perdí pero pude volver a entender', '2022-01-15', '21:00:00'),
(3, 9, 1, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(4, 10, 1, 3, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-17', '20:00:00'),
(5, 9, 1, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(6, 11, 1, 3, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-17', '20:00:00'),
(7, 9, 1, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(8, 12, 1, 3, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-17', '21:00:00'),
(9, 9, 1, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(10, 13, 1, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-19', '22:00:00'),
(11, 8, 2, 1, 'Done', '5', 'Al fin pude aprender ese tema que no me salía por nada del mundo', '2022-01-05', '20:00:00'),
(12, 8, 2, 1, 'Done', '4', 'Otra vez me perdí pero pude volver a entender', '2022-01-15', '21:00:00'),
(13, 9, 2, 2, 'Done', '4', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(14, 13, 3, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-19', '22:00:00'),
(15, 8, 3, 1, 'Done', '5', 'Al fin pude aprender ese tema que no me salía por nada del mundo', '2022-01-05', '20:00:00'),
(16, 8, 3, 1, 'Done', '4', 'Otra vez me perdí pero pude volver a entender', '2022-01-15', '21:00:00'),
(17, 9, 3, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(18, 13, 6, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-19', '22:00:00'),
(19, 8, 4, 1, 'Done', '5', 'Al fin pude aprender ese tema que no me salía por nada del mundo', '2022-01-05', '20:00:00'),
(20, 8, 4, 1, 'Done', '4', 'Otra vez me perdí pero pude volver a entender', '2022-01-15', '21:00:00'),
(21, 9, 5, 2, 'Done', '4', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00'),
(22, 13, 6, 2, 'Done', '5', 'Increíble como no sabía y ahora sí', '2022-01-19', '22:00:00'),
(23, 8, 7, 1, 'Done', '4', 'Al fin pude aprender ese tema que no me salía por nada del mundo', '2022-01-05', '20:00:00'),
(24, 10, 7, 1, 'Done', '3', 'Otra vez me perdí pero pude volver a entender', '2022-01-15', '21:00:00'),
(25, 12, 6, 2, 'Done', '3', 'Increíble como no sabía y ahora sí', '2022-01-16', '20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_classes`
--

DROP TABLE IF EXISTS `tutor_classes`;
CREATE TABLE IF NOT EXISTS `tutor_classes` (
  `id_tutor` int(11) NOT NULL,
  `id_classes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_classes`
--

INSERT INTO `tutor_classes` (`id_tutor`, `id_classes`) VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 1),
(3, 2),
(3, 3),
(2, 4),
(2, 5),
(2, 6),
(4, 5),
(4, 6),
(4, 7),
(5, 6),
(5, 7),
(5, 8),
(6, 6),
(6, 7),
(7, 7),
(7, 8),
(7, 9),
(7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `mail`, `status`) VALUES
(1, 'Carlos Arévalo', 'contrasena', 'carlos.arevalo@yachaytech.edu.ec', 1),
(2, 'Steve Trabajos', 'dinero', 'steve.trabajos', 1),
(3, 'Bill Puertas', 'dinero', 'bill.puertas', 1),
(4, 'Marco Zuckerberg', 'dinero', 'marco.zuckerberg', 1),
(5, 'Linux Torvalds', 'nodinero', 'linux.torvalds', 1),
(6, 'Elon Moscas', 'dinero', 'elon.moscas', 1),
(7, 'Jeff Bezitos', 'dinero', 'jeff.bezitos', 1),
(8, 'Juanito Alimaña', 'estudiante', 'juanito.alimaña', 0),
(9, 'Rosa Pereira', 'estudiante', 'rosa.pereira', 0),
(10, 'Carlos Loaiza', 'estudiante', 'carlos.loaiza', 0),
(11, 'Joseline Jaramillo', 'estudiante', 'joseline.jaramillo', 0),
(12, 'Scarlet Valdiviezo', 'estudiante', 'scarlet.valdiviezo', 0),
(13, 'Pedro Ruiz', 'estudiante', 'pedro.ruiz', 0),
(14, 'Kevin Torres', 'estudiante', 'kevin.torres', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
