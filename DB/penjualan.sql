-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2023 pada 06.26
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(12) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga_barang` int(19) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `jenis_barang`) VALUES
(1, 'bola', 45000, 'alat olahraga'),
(2, 'Baju', 80000, 'Pakaian'),
(6, 'bola', 45000, 'alat olahraga'),
(7, 'baju', 80000, 'pakaian'),
(8, 'Celana', 700000, 'Pakaian'),
(9, 'Hoodie', 250000, 'pakaian'),
(10, 'hp', 999000, 'Elektronik'),
(11, 'Meja', 120000, 'mebel'),
(12, 'Boneka', 150000, 'Hiasan'),
(13, 'Kursi', 80000, 'mebel'),
(14, 'laptop', 500000, 'Elektronik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(234) NOT NULL,
  `alamat_supplier` varchar(235) NOT NULL,
  `nama_toko` varchar(212) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `nama_toko`) VALUES
(1, 'pt.indah', 'jakarta', 'toko cina'),
(2, 'pt.sentosa', 'bekasi', 'toko secon'),
(3, 'pt.akos', 'Bogor', 'Toko r20'),
(4, 'pt.mulia', 'Jakarta', 'Toko kw'),
(5, 'pt.adi', 'Palembang', 'Toko kita'),
(6, 'pt.koko', 'Tarakan', 'Toko m200'),
(7, 'pt.poli', 'Mojokerto', 'Toko vito'),
(8, 'pt.binance', 'Aceh', 'Toko Abadi'),
(9, 'pt.doge', 'Yogyakarta', 'Toko jaya'),
(10, 'pt.raca', 'Bogor', 'Toko Abdul');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
