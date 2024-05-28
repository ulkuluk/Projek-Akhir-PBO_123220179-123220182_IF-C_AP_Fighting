-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 07:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ap_fighting`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`Username`, `Password`) VALUES
('alfi', '123220179'),
('cke', '4'),
('gaga', '1'),
('haha', '1'),
('jaajaja', '1'),
('jaja', '123'),
('kunglau', '123'),
('kuroko', '123456789'),
('lala', '1'),
('monyet', '1'),
('p', '1'),
('putri', '123220182'),
('putrii', 'abc'),
('rijal', '198'),
('`alpi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `karakter`
--

CREATE TABLE `karakter` (
  `id_karakter` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Level` int(11) NOT NULL,
  `Daya_Serang` int(11) NOT NULL,
  `Darah` int(11) NOT NULL,
  `Gold` int(11) NOT NULL,
  `Senjata` varchar(50) NOT NULL,
  `akun` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karakter`
--

INSERT INTO `karakter` (`id_karakter`, `Nama`, `Level`, `Daya_Serang`, `Darah`, `Gold`, `Senjata`, `akun`) VALUES
(1, 'ulkuluk', 3, 400, 4000, 100, 'Pedang Diamond', 'alfi'),
(3, 'putrigaming', 1, 100, 1000, 0, '', 'putri'),
(4, 'kunglau', 1, 100, 1000, 0, '', 'lala'),
(5, 'rijalgaming', 1, 100, 1000, 0, '', 'rijal'),
(6, 'lala', 3, 400, 4000, 700, 'Pedang Dewa', 'alfi'),
(7, 'monyet', 1, 100, 1000, 0, 'Pedang Dewa', 'monyet'),
(10, 'jajagaming', 2, 200, 2000, 0, 'Pedang Dewa', 'jaja'),
(11, 'kaka', 3, 400, 4000, 200, 'Pedang Dewa', 'jaja'),
(13, 'tes', 3, 400, 4000, 10000, 'Pedang Biasa', 'jaja'),
(15, 'jajajaaj', 1, 100, 1000, 0, 'Tangan Kosong', 'alfi'),
(19, 'ddd', 1, 100, 1000, 0, 'Tangan Kosong', 'putrii'),
(20, 'aaaa', 1, 100, 1000, 0, 'Tangan Kosong', 'putrii'),
(22, 'uti', 3, 400, 4000, 100, 'Pedang Diamond', 'alfi'),
(30, 'kunglaugaming', 2, 200, 2000, 0, 'Pedang Biasa', 'kunglau');

-- --------------------------------------------------------

--
-- Table structure for table `npc`
--

CREATE TABLE `npc` (
  `id_npc` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Daya_Serang` int(11) NOT NULL,
  `Darah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npc`
--

INSERT INTO `npc` (`id_npc`, `Nama`, `Daya_Serang`, `Darah`) VALUES
(1, 'malenia', 10, 100),
(2, 'radhan', 1000, 700),
(3, 'radagon', 2000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `senjata`
--

CREATE TABLE `senjata` (
  `nama_senjata` varchar(50) NOT NULL,
  `daya_serang` int(11) NOT NULL,
  `rarity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `senjata`
--

INSERT INTO `senjata` (`nama_senjata`, `daya_serang`, `rarity`) VALUES
('Pedang Biasa', 100, 'common'),
('Pedang Dewa', 1000, 'Legendary'),
('Pedang Diamond', 500, 'Rare');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `karakter`
--
ALTER TABLE `karakter`
  ADD PRIMARY KEY (`id_karakter`);

--
-- Indexes for table `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`id_npc`);

--
-- Indexes for table `senjata`
--
ALTER TABLE `senjata`
  ADD PRIMARY KEY (`nama_senjata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karakter`
--
ALTER TABLE `karakter`
  MODIFY `id_karakter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `npc`
--
ALTER TABLE `npc`
  MODIFY `id_npc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
