-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2020 at 11:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(20) NOT NULL,
  `nama_bahan` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `berat` int(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `nama_bahan`, `ukuran`, `berat`, `jumlah`) VALUES
(1, 'Wire rod bwg 6', 'Bwg 6', 50, 105),
(2, 'Wire rod bwg 8', 'Bwg 8', 50, 200),
(3, 'Wire rod bwg 10', 'Bwg 10', 50, 200),
(4, 'Wire rod bwg 12', 'Bwg 12', 50, 300),
(5, 'Wire rod bwg 6', 'Bwg 6', 100, 100),
(6, 'Wire rod bwg 8', 'Bwg 8', 100, 60),
(7, 'Wire rod bwg 10', 'Bwg 10', 100, 80),
(8, 'Wire rod bwg 12', 'Bwg 12', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `bahan_keluar`
--

CREATE TABLE `bahan_keluar` (
  `id_bahan_keluar` int(20) NOT NULL,
  `id_bahan` varchar(20) NOT NULL,
  `nama_bahan` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan_keluar`
--

INSERT INTO `bahan_keluar` (`id_bahan_keluar`, `id_bahan`, `nama_bahan`, `berat`, `ukuran`, `tgl_keluar`, `jumlah`) VALUES
(1, '1', 'Wire rod bwg 6', '50', 'Bwg 6', '2020-06-02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `bahan_masuk`
--

CREATE TABLE `bahan_masuk` (
  `id_bahan_masuk` int(20) NOT NULL,
  `id_bahan` varchar(20) NOT NULL,
  `nama_bahan` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan_masuk`
--

INSERT INTO `bahan_masuk` (`id_bahan_masuk`, `id_bahan`, `nama_bahan`, `berat`, `ukuran`, `tgl_masuk`, `jumlah`) VALUES
(1, '1', 'Wire rod bwg 6', '50', 'Bwg 6', '2020-06-01', 10);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `berat` int(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `ukuran`, `berat`, `jumlah`) VALUES
(1, 'Paku 2 inch', '2x12', 30, 200),
(2, 'Paku 3 inch', '3x10', 30, 200),
(3, 'Paku 4 Inch', '4x8', 30, 400),
(4, 'Paku 5 inch', '5x6', 30, 300),
(5, 'Paku 2 inch', '2x12', 10, 200),
(6, 'Paku 3 inch', '3x10', 10, 650),
(7, 'Paku 4 inch', '4x8', 10, 300),
(8, 'Paku 5 inch', '5x6', 10, 300);

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` int(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `id_barang`, `nama_barang`, `berat`, `ukuran`, `tgl_keluar`, `jumlah`) VALUES
(1, '1', 'Paku 2 inch', '30', '2x12', '2020-06-02', 50);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `id_barang`, `nama_barang`, `berat`, `ukuran`, `tgl_masuk`, `jumlah`) VALUES
(7, '6', 'Paku 3 inch', '10', '3x10', '2020-06-01', 500);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `pemesan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `bahan_keluar`
--
ALTER TABLE `bahan_keluar`
  ADD PRIMARY KEY (`id_bahan_keluar`);

--
-- Indexes for table `bahan_masuk`
--
ALTER TABLE `bahan_masuk`
  ADD PRIMARY KEY (`id_bahan_masuk`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bahan_keluar`
--
ALTER TABLE `bahan_keluar`
  MODIFY `id_bahan_keluar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bahan_masuk`
--
ALTER TABLE `bahan_masuk`
  MODIFY `id_bahan_masuk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
