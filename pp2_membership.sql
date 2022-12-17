-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 02:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pp2_membership`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_member`
--

CREATE TABLE `jenis_member` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_member`
--

INSERT INTO `jenis_member` (`id`, `nama`) VALUES
('6670dd36-bef1-4322-8a02-2e4cd4b3c2a5', ''),
('843c96f2-7c80-44c7-a2ee-e00af5b8e246', ''),
('d17636cb-54d9-4959-b7ad-4eee5caac98a', ''),
('f5595cc9-725d-4545-b344-4b6436a2bfdd', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` varchar(255) NOT NULL,
  `jenis_member_id` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `jenis_member_id`, `nama`) VALUES
('15509b46-e1a0-4b53-a0b9-15c41f9449d2', '6670dd36-bef1-4322-8a02-2e4cd4b3c2a5', 'resa'),
('b4284419-5129-413c-9c07-a16ac47f268b', '6670dd36-bef1-4322-8a02-2e4cd4b3c2a5', 'majid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_member`
--
ALTER TABLE `jenis_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
