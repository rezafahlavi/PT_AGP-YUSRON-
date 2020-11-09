-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 12:35 PM
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
  `berat` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `nama_bahan`, `ukuran`, `berat`, `jumlah`) VALUES
(9, 'Vinyl A4', 'A4', 'Vinyl', 60),
(10, 'Cutting ORACAL', 'L 126', 'Vinyl', 140);

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
(4, '10', 'Cutting ORACAL', 'Vinyl', 'L 126', '2020-11-02', 10),
(5, '9', 'Vinyl A4', 'Vinyl', 'A4', '2020-11-03', 10);

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
(6, '10', 'Cutting ORACAL', 'Vinyl', 'L 126', '2020-11-02', 10),
(7, '9', 'Vinyl A4', 'Vinyl', 'A4', '2020-11-03', 10);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(20) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `ukuran`, `berat`, `jumlah`, `harga`) VALUES
(9, 'Stiker Custom A4', 'A4', 'Vinyl', 50, 2000),
(10, 'Cutting Stiker Merah', 'L 126', 'Vinyl', 55, 5000),
(12, 'Stiker Pertamina', '8x3', 'Vinyl', 60, 1000);

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
(8, '9', 'Stiker Custom A4', 'Vinyl', 'A4', '2020-11-02', 10),
(10, '10', 'Cutting Stiker Merah', 'Vinyl', 'L 126', '2020-11-02', 10);

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
(12, '9', 'Stiker Custom A4', 'Vinyl', 'A4', '2020-11-02', 10),
(13, '10', 'Cutting Stiker Merah', 'Vinyl', 'L 126', '2020-11-02', 10);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `berat` varchar(20) NOT NULL,
  `pemesan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `jumlah` int(20) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `sub_total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `nama_barang`, `berat`, `pemesan`, `alamat`, `no_tlp`, `tgl_keluar`, `jumlah`, `keterangan`, `sub_total`) VALUES
(17, 'Stiker Custom A4', 'Vinyl', 'Afif', 'Jl Peternakan 3 No 20', '085623452355', '2020-11-03', 10, '2000', 20000),
(22, 'Stiker Pertamina', 'Vinyl', 'Didi', 'Jakarta', '021998787', '2020-11-02', 5, '1000', 5000),
(24, 'Stiker Pertamina', 'Vinyl', 'Jujun', 'Depok', '08572121345', '2020-11-03', 5, '1000', 5000),
(25, 'Stiker Pertamina', 'Vinyl', 'Fitri', 'Jakarta', '02187653456', '2020-11-03', 10, '1000', 10000),
(26, 'Cutting Stiker Merah', 'Vinyl', 'Fitri', 'Jakarta', '02187653456', '2020-11-03', 5, '5000', 25000);

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
  MODIFY `id_bahan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bahan_keluar`
--
ALTER TABLE `bahan_keluar`
  MODIFY `id_bahan_keluar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bahan_masuk`
--
ALTER TABLE `bahan_masuk`
  MODIFY `id_bahan_masuk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id_barang_keluar` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
