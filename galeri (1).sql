-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 03:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galeri`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(11, 'Fauna ', 'fauna di seluruh dunia', '2024-03-19', 7),
(12, 'Flora', 'jenis bunga', '2024-03-19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `dislike`
--

CREATE TABLE `dislike` (
  `dislikeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dislike`
--

INSERT INTO `dislike` (`dislikeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(19, 17, 7, '2024-03-14'),
(23, 16, 7, '2024-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(15, 'Harimau', 'Harimau sumatera (Panthera tigris sumatrae) adalah harimau terkecil di dunia dan hanya dapat ditemukan di Pulau Sumatera, Indonesia. ', '2024-03-20', '1696877833-harimau.jpg', 11, 7),
(16, 'Red Panda', 'Panda merah (Ailurus fulgens) adalah sejenis binatang menyusui di dalam ordo Carnivora. ', '2024-03-20', '2033243169-red panda.jpg', 11, 7),
(17, 'Lily', 'bunganya sangat indah', '2024-03-07', '715671597-bunga lily.jpeg', 12, 7),
(18, 'Mawar', 'Mawar Pink', '2024-03-07', '2089727845-mawar.jpg', 12, 7),
(19, 'Panda', 'suka makan bambu', '2024-03-09', '1821970697-panda.jpg', 11, 7),
(21, 'Lily of the valley', 'bunga', '2024-03-19', '684884616-lily.jpg', 12, 7),
(22, 'Tulip', 'bunga', '2024-03-19', '2134334661-tulip.jpg', 12, 7),
(23, 'Beruang Madu', 'hewan', '2024-03-19', '246013414-beruang.jpg', 11, 7),
(24, 'Rubah', 'hewan', '2024-03-19', '1741712396-rubah.jpg', 11, 7);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(5, 16, 7, 'wahhh', '2024-02-20'),
(6, 15, 7, 'ternyata harimau sumatera seram yah,,,,', '2024-02-20'),
(7, 15, 7, 'harimau sumatera ya?', '2024-02-28'),
(8, 19, 7, 'gemas sekali', '2024-03-09'),
(10, 15, 7, 'harimau', '2024-03-19');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(49, 16, 5, '2024-03-06'),
(51, 17, 7, '2024-03-07'),
(60, 19, 7, '2024-03-16'),
(63, 15, 11, '2024-03-19'),
(65, 23, 7, '2024-03-20'),
(67, 16, 7, '2024-03-20'),
(82, 15, 7, '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'Nadya Najwa Alaika', '4124bc0a9335c27f086f24ba207a4912', 'aa@gmail.com', 'aa', 'aa'),
(5, 'najwa', '4124bc0a9335c27f086f24ba207a4912', 'andra@gmail.com', 'nadya cantik', 'medan'),
(6, 'aya', 'eab71244afb687f16d8c4f5ee9d6ef0e', 'andra@gmail.com', 'nadya cantik', 'jl merak'),
(7, 'jake', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'jake@gmail.com', 'shim jaeyun', 'seoul'),
(9, 'nadya', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'nadyaalaika@gmail.com', 'nadya najwa alaika', 'seoul'),
(11, 'ayabjorn', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'nadyaalaika@gmail.com', 'ayaa', 'seoul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `dislike`
--
ALTER TABLE `dislike`
  ADD PRIMARY KEY (`dislikeid`),
  ADD KEY `fotoid` (`fotoid`,`userid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dislike`
--
ALTER TABLE `dislike`
  MODIFY `dislikeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dislike`
--
ALTER TABLE `dislike`
  ADD CONSTRAINT `dislike_ibfk_1` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`),
  ADD CONSTRAINT `dislike_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
