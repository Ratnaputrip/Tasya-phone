-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2018 at 08:53 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `diskon` varchar(225) NOT NULL,
  `iklan` varchar(225) NOT NULL,
  `id_ktgartikel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
`id_barang` int(11) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `harga_barang` varchar(225) NOT NULL,
  `stok` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `id_ktgbarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ktg_artikel`
--

CREATE TABLE IF NOT EXISTS `ktg_artikel` (
`id_ktgartikel` int(11) NOT NULL,
  `ktg_artikel` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ktg_barang`
--

CREATE TABLE IF NOT EXISTS `ktg_barang` (
`id_ktgbarang` int(11) NOT NULL,
  `ktg_barang` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`), ADD KEY `id_ktgartikel` (`id_ktgartikel`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`id_barang`), ADD KEY `id_ktgbarang` (`id_ktgbarang`);

--
-- Indexes for table `ktg_artikel`
--
ALTER TABLE `ktg_artikel`
 ADD PRIMARY KEY (`id_ktgartikel`), ADD KEY `id_ktgartikel` (`id_ktgartikel`);

--
-- Indexes for table `ktg_barang`
--
ALTER TABLE `ktg_barang`
 ADD PRIMARY KEY (`id_ktgbarang`), ADD KEY `id_ktgbarang` (`id_ktgbarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ktg_artikel`
--
ALTER TABLE `ktg_artikel`
MODIFY `id_ktgartikel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ktg_barang`
--
ALTER TABLE `ktg_barang`
MODIFY `id_ktgbarang` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_ktgartikel`) REFERENCES `ktg_artikel` (`id_ktgartikel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_ktgbarang`) REFERENCES `ktg_barang` (`id_ktgbarang`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
