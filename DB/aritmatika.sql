-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 20 Agu 2020 pada 12.57
-- Versi server: 5.7.24
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aritmatika`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kd_barang` varchar(100) NOT NULL,
  `nm_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nm_barang`) VALUES
('KB001', 'Buku'),
('KB002', 'Pulpen'),
('KB003', 'Pensil'),
('KB004', 'Penghapus'),
('KB005', 'Speaker'),
('KB006', 'Laptop'),
('KB007', 'Keyboard'),
('KB008', 'Mouse'),
('KB009', 'Mousepad'),
('KB010', 'Serutan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_beli`
--

CREATE TABLE `tb_beli` (
  `id` int(11) NOT NULL,
  `nm_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_beli`
--

INSERT INTO `tb_beli` (`id`, `nm_barang`, `harga`, `tanggal_beli`) VALUES
(3, 'KB001', 1000, '2020-07-31'),
(4, 'KB002', 1000, '2020-07-31'),
(5, 'KB001', 1000, '2020-07-30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tb_beli`
--
ALTER TABLE `tb_beli`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_beli`
--
ALTER TABLE `tb_beli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
