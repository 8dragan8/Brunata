-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 12:18 PM
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
-- Table structure for table `racun`
--

CREATE TABLE `racun` (
  `idracun` int(11) NOT NULL,
  `period` date NOT NULL,
  `ukupna_kvadratura` float(10,2) NOT NULL DEFAULT '3880.60',
  `ukupno_imp` int(5) NOT NULL,
  `ukupno_kWh` float(10,2) NOT NULL,
  `ukupn0_kWh_po_m2` float(10,2) NOT NULL,
  `ukupn0_kWh_po_imp` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `racun`
--

INSERT INTO `racun` (`idracun`, `period`, `ukupna_kvadratura`, `ukupno_imp`, `ukupno_kWh`, `ukupn0_kWh_po_m2`, `ukupn0_kWh_po_imp`) VALUES
(0, '0000-00-00', 0.00, 0, 0.00, 0.00, 0.00),
(201601, '2016-01-01', 3880.60, 15646, 38767.00, 11630.10, 27136.90),
(201602, '2016-02-01', 3880.60, 7163, 22861.00, 6858.30, 16002.70),
(201603, '2016-03-01', 3880.60, 6944, 19255.00, 5776.50, 13478.50),
(201604, '2016-04-01', 3880.60, 1455, 4344.00, 1303.20, 3040.80),
(201610, '2016-10-01', 3880.60, 5588, 15735.00, 4720.50, 11014.50),
(201611, '2016-11-01', 3880.60, 10002, 25691.00, 7707.30, 17983.70),
(201612, '2016-12-01', 3880.60, 21014, 43944.00, 13183.20, 30760.80),
(201701, '2017-01-01', 3880.60, 28887, 65101.00, 19530.30, 45570.70),
(201702, '2017-02-01', 3880.60, 13691, 31833.00, 9549.90, 22283.10),
(201703, '2017-03-01', 3880.60, 4648, 15835.00, 4750.50, 11084.50),
(201704, '2017-04-01', 3880.60, 2904, 11087.00, 3326.10, 7760.90),
(201710, '2017-10-01', 3880.60, 2468, 9137.00, 5025.35, 4111.65),
(201711, '2017-11-01', 3880.60, 11531, 26444.00, 7933.20, 18510.80),
(201712, '2017-12-01', 3880.60, 15573, 38784.00, 11635.20, 27148.80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `racun`
--
ALTER TABLE `racun`
  ADD PRIMARY KEY (`idracun`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
