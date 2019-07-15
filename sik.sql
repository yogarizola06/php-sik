-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 07:21 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'admin', 'admin', 'admin inti', '');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE IF NOT EXISTS `desa` (
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_desa` varchar(50) NOT NULL,
  `kades` varchar(50) NOT NULL,
  `jumlah_kk` varchar(50) NOT NULL,
  `id_katen` varchar(50) NOT NULL,
  `id_ketan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_desa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `kades`, `jumlah_kk`, `id_katen`, `id_ketan`) VALUES
(1, 'Koto Tibun', 'Rahmad', '3', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kabupaten` varchar(50) NOT NULL,
  `ibukota_kabupaten` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kabupaten`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `nama_kabupaten`, `ibukota_kabupaten`) VALUES
(1, 'Kampar', 'Bangkinang');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE IF NOT EXISTS `kecamatan` (
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kecamatan` varchar(50) NOT NULL,
  `jumlah_desa` varchar(50) NOT NULL,
  `id_kab` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kecamatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`, `jumlah_desa`, `id_kab`) VALUES
(1, 'Kampar Timur', '56', '1');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE IF NOT EXISTS `penduduk` (
  `id_pen` int(11) NOT NULL AUTO_INCREMENT,
  `nik` int(11) NOT NULL,
  `nama` int(11) NOT NULL,
  `tempat_lahir` int(11) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `id_kabu` varchar(50) NOT NULL,
  `id_keca` varchar(50) NOT NULL,
  `id_des` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
