-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2018 at 08:58 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brunata`
--

-- --------------------------------------------------------

--
-- Table structure for table `stan`
--

CREATE TABLE `stan` (
  `idstan_stari` int(6) DEFAULT NULL,
  `idstan_novi` int(6) NOT NULL,
  `vlasnik` varchar(100) DEFAULT NULL,
  `ulaz` varchar(12) NOT NULL,
  `sprat` enum('Prizemlje','I','II','III','IV','V') NOT NULL,
  `broj_stana` varchar(3) NOT NULL,
  `kvadratura` float(10,2) NOT NULL,
  `tip` enum('Stan','Lokal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stan`
--

INSERT INTO `stan` (`idstan_stari`, `idstan_novi`, `vlasnik`, `ulaz`, `sprat`, `broj_stana`, `kvadratura`, `tip`) VALUES
(90941, 218173, '                       ', '9     ', 'Prizemlje', '  1', 67.00, 'Stan'),
(90942, 218174, 'Olga Stoiljkovic       ', '9     ', 'Prizemlje', '  2', 39.00, 'Stan'),
(90943, 218175, '                       ', '9     ', 'Prizemlje', '  3', 41.00, 'Stan'),
(90944, 218179, 'Verica Milic           ', '9     ', 'I', '  4', 37.00, 'Stan'),
(90945, 218182, 'Tijana Cevriiz         ', '9     ', 'I', '  5', 67.00, 'Stan'),
(90946, 218184, '                       ', '9     ', 'I', '  6', 40.00, 'Stan'),
(90947, 218187, '                       ', '9     ', 'I', '  7', 40.00, 'Stan'),
(90948, 218188, '                       ', '9     ', 'I', '  8', 46.00, 'Stan'),
(90949, 218189, '                       ', '9     ', 'II', '  9', 37.00, 'Stan'),
(90950, 218192, 'Mirjana Markovic       ', '9     ', 'II', ' 10', 67.00, 'Stan'),
(90951, 218193, 'Marko Radonjic         ', '9     ', 'II', ' 11', 40.00, 'Stan'),
(90952, 218199, 'Dragan Jankovic        ', '9     ', 'II', ' 12', 40.00, 'Stan'),
(90953, 218202, 'Svetlanovic Nada       ', '9     ', 'II', ' 13', 46.00, 'Stan'),
(90954, 218203, '                       ', '9     ', 'III', ' 14', 37.00, 'Stan'),
(90955, 218205, '                       ', '9     ', 'III', ' 15', 67.00, 'Stan'),
(90956, 218207, 'Djordje Visnjic        ', '9     ', 'III', ' 16', 40.00, 'Stan'),
(90957, 218209, '                       ', '9     ', 'III', ' 17', 40.00, 'Stan'),
(90958, 218211, '                       ', '9     ', 'III', ' 18', 46.00, 'Stan'),
(90959, 218213, 'Svetlana Babic         ', '9     ', 'IV', ' 19', 37.00, 'Stan'),
(90960, 218214, 'Milena Rakic           ', '9     ', 'IV', ' 20', 67.00, 'Stan'),
(90961, 218216, '                       ', '9     ', 'IV', ' 21', 40.00, 'Stan'),
(90962, 218217, 'Slobodan Negic         ', '9     ', 'IV', ' 22', 40.00, 'Stan'),
(90963, 218219, 'Ljudmila Zdravkovic    ', '9     ', 'IV', ' 23', 46.00, 'Stan'),
(90964, 218220, '                       ', '9     ', 'Prizemlje', ' 24', 50.00, 'Stan'),
(90965, 218221, '                       ', '9     ', 'Prizemlje', ' 25', 37.00, 'Stan'),
(95863, 220866, 'Jelena Ristic          ', '11    ', 'Prizemlje', '  1', 49.44, 'Stan'),
(95864, 220867, 'Profarm                ', '11    ', 'Prizemlje', '  2', 46.66, 'Stan'),
(95865, 220868, 'Profarm                ', '11    ', 'Prizemlje', '  3', 38.91, 'Stan'),
(95866, 220869, 'Fatima Djordjevic      ', '11    ', 'I', '  4', 36.73, 'Stan'),
(95867, 220871, 'Ivana Djokic           ', '11    ', 'I', '  5', 62.52, 'Stan'),
(95868, 220872, 'Profarm                ', '11    ', 'I', '  6', 69.55, 'Stan'),
(95869, 220873, 'Profarm                ', '11    ', 'I', '  7', 32.55, 'Stan'),
(95870, 220874, 'Marija Potpara         ', '11    ', 'I', '  8', 21.81, 'Stan'),
(95871, 220875, 'Gordana Tumbas         ', '11    ', 'II', '  9', 36.73, 'Stan'),
(95872, 220876, 'Profarm                ', '11    ', 'II', ' 10', 65.52, 'Stan'),
(95873, 220877, 'Zorica Cucic           ', '11    ', 'II', ' 11', 69.55, 'Stan'),
(95874, 220878, 'Profarm                ', '11    ', 'II', ' 12', 32.55, 'Stan'),
(95875, 220879, 'Sanja Stepanovic       ', '11    ', 'II', ' 13', 22.00, 'Stan'),
(95876, 220881, 'Ruzica Novakovic       ', '11    ', 'III', ' 14', 36.73, 'Stan'),
(95877, 220882, 'Aleksandar Dudic       ', '11    ', 'III', ' 15', 65.52, 'Stan'),
(95878, 220883, 'Luka Puskarica         ', '11    ', 'III', ' 16', 69.55, 'Stan'),
(95879, 220884, 'Radoslav Mijatovic     ', '11    ', 'III', ' 17', 32.55, 'Stan'),
(95880, 220885, 'Aleksandar Gligorijevic', '11    ', 'III', ' 18', 21.88, 'Stan'),
(95881, 220886, 'Dragan Rakic           ', '11    ', 'IV', ' 19', 36.73, 'Stan'),
(95882, 220887, 'Profarm                ', '11    ', 'IV', ' 20', 65.52, 'Stan'),
(95883, 220888, 'Radmila Boric          ', '11    ', 'IV', ' 21', 69.55, 'Stan'),
(95884, 220889, 'Slobodanka Zimonjic    ', '11    ', 'IV', ' 22', 32.55, 'Stan'),
(95885, 220890, 'Vidosav Vracevic       ', '11    ', 'IV', ' 23', 21.81, 'Stan'),
(95886, 220891, 'Lidija Kesar           ', '11    ', 'V', ' 24', 36.52, 'Stan'),
(95887, 220892, 'Profarm                ', '11    ', 'V', ' 25', 61.32, 'Stan'),
(95888, 220893, 'Profarm                ', '11    ', 'V', ' 26', 66.75, 'Stan'),
(95889, 220894, 'Profarm                ', '11    ', 'V', ' 27', 52.15, 'Stan'),
(95890, 220895, 'Profarm                ', '11    ', 'Prizemlje', ' 28', 29.37, 'Stan'),
(95891, 220896, 'Profarm                ', '11    ', 'Prizemlje', ' 29', 22.82, 'Stan'),
(95892, 220897, 'Profarm                ', '11    ', 'Prizemlje', ' 30', 36.76, 'Stan'),
(100381, 229922, 'Borislav Petrovic      ', '13    ', 'I', '  5', 38.00, 'Stan'),
(100384, 229923, 'Bojan Nikolic          ', '13    ', 'I', '  7', 29.00, 'Stan'),
(100385, 229924, 'Milutin Gavrilovic     ', '13    ', 'I', '  8', 21.00, 'Stan'),
(100387, 229925, 'Vezira Cikic           ', '13    ', 'II', ' 10', 35.00, 'Stan'),
(100388, 229926, 'Sara Jovanovic         ', '13    ', 'II', ' 11', 38.00, 'Stan'),
(100391, 229927, 'Dusanka Stoisavljevic  ', '13    ', 'II', ' 13', 29.00, 'Stan'),
(100392, 229928, 'Nevena Maksimovic      ', '13    ', 'II', ' 14', 21.00, 'Stan'),
(100393, 229929, 'Vesna Zdraveski        ', '13    ', 'III', ' 15', 38.00, 'Stan'),
(100394, 229930, 'Gorica Matic           ', '13    ', 'III', ' 16', 35.00, 'Stan'),
(100395, 229931, 'Greta Panic            ', '13    ', 'III', ' 17', 38.00, 'Stan'),
(100398, 229932, 'Sinisa Babic           ', '13    ', 'III', ' 19', 29.00, 'Stan'),
(100399, 229933, 'Tanja Urosevic         ', '13    ', 'III', ' 20', 21.00, 'Stan'),
(100402, 229934, '                       ', '13    ', 'IV', ' 23', 38.00, 'Stan'),
(100406, 229935, 'Dragana jovanovic      ', '13    ', 'IV', ' 26', 21.00, 'Stan'),
(100377, 231317, '                       ', '13    ', 'Prizemlje', '  1', 25.00, 'Stan'),
(100378, 231318, '                       ', '13    ', 'Prizemlje', '  2', 38.00, 'Stan'),
(100379, 231319, '                       ', '13    ', 'I', '  3', 38.00, 'Stan'),
(100380, 231320, 'Daniel                 ', '13    ', 'I', '  4', 35.00, 'Stan'),
(100382, 231321, 'Kalezic                ', '13    ', 'I', '  6', 27.00, 'Stan'),
(100383, 231322, '                       ', '13    ', 'I', ' 6a', 36.00, 'Stan'),
(100386, 231323, '                       ', '13    ', 'II', '  9', 38.00, 'Stan'),
(100389, 231324, 'Tenji Edit             ', '13    ', 'II', ' 12', 27.00, 'Stan'),
(100390, 231325, '                       ', '13    ', 'II', '12a', 36.00, 'Stan'),
(100396, 231326, '                       ', '13    ', 'III', ' 18', 27.00, 'Stan'),
(100397, 231327, 'Aleksandra Janjic      ', '13    ', 'III', '18a', 36.00, 'Stan'),
(100400, 231328, 'Nikola Jovanovic       ', '13    ', 'IV', ' 21', 38.00, 'Stan'),
(100401, 231329, '                       ', '13    ', 'IV', ' 22', 35.00, 'Stan'),
(100403, 231330, 'Janjic Aleksandar      ', '13    ', 'IV', ' 24', 27.00, 'Stan'),
(100404, 231331, 'Dukic Snezana          ', '13    ', 'IV', '24a', 36.00, 'Stan'),
(100405, 231332, 'Lazarevic Dragica      ', '13    ', 'IV', ' 25', 29.00, 'Stan'),
(100407, 231333, '                       ', '13    ', 'Prizemlje', ' 27', 28.00, 'Stan'),
(100408, 231334, '                       ', '13    ', 'Prizemlje', ' 28', 21.00, 'Stan'),
(100409, 231335, 'Milenko Vicentijevic   ', '13    ', 'Prizemlje', ' 29', 53.00, 'Stan'),
(106670, 291973, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  1', 36.00, 'Stan'),
(106671, 292125, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  2', 36.00, 'Stan'),
(106672, 292276, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  3', 38.00, 'Stan'),
(106673, 292581, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  4', 35.00, 'Stan'),
(106674, 293245, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  5', 36.00, 'Stan'),
(106675, 293263, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  6', 32.00, 'Stan'),
(106676, 294039, 'Profarm doo            ', '73E/5A', 'Prizemlje', '  7', 25.00, 'Stan'),
(106677, 294055, 'Profarm doo            ', '73E/5A', 'Prizemlje', ' pp', 23.00, 'Stan'),
(100410, 340329, 'Profarm doo            ', '13    ', 'Prizemlje', 'lok', 62.00, 'Lokal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stan`
--
ALTER TABLE `stan`
  ADD PRIMARY KEY (`idstan_novi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
