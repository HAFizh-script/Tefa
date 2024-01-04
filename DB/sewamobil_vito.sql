-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2023 pada 16.15
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewamobil_vito`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `ID_Mobil` int(11) NOT NULL,
  `Merek` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Tahun_Produksi` int(11) NOT NULL,
  `Warna` varchar(255) NOT NULL,
  `Nomor_Plat` varchar(20) NOT NULL,
  `Harga_Sewa_Per_Hari` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`ID_Mobil`, `Merek`, `Model`, `Tahun_Produksi`, `Warna`, `Nomor_Plat`, `Harga_Sewa_Per_Hari`) VALUES
(1, 'Toyota', 'Alphard', 2022, 'Hitam', 'B 1234 CD', '500000.00'),
(2, 'Honda', 'Civic', 2021, 'Black', 'A 5678 EF', '450000.00'),
(3, 'Honda', 'HRV ', 2020, 'Khaki', 'C 9101 GH', '300000.00'),
(4, 'Honda', 'Brio', 2019, 'Kuning', 'D 2468 IJ', '150000.00'),
(5, 'Delman', 'Pak yoga', 2018, 'Blue', 'E 1357 KL', '10000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` int(11) NOT NULL,
  `Nama_Pelanggan` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Nomor_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama_Pelanggan`, `Alamat`, `Nomor_telepon`) VALUES
(1, 'lazuardi', 'imogiri barat', '081819145418'),
(2, 'jauza', 'kasihan', '088163472562'),
(3, 'vito', 'dagaran', '082154362486'),
(4, 'fino', 'dagaran', '083134764524'),
(5, 'bukhori', 'dagaran', '084356237689');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID_Pembayaran` int(11) NOT NULL,
  `ID_Penyewaan` int(11) NOT NULL,
  `Motede_Pembayaran` varchar(255) NOT NULL,
  `Tanggal_Pembayaran` date NOT NULL,
  `Jumlah_Pembayaran` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`ID_Pembayaran`, `ID_Penyewaan`, `Motede_Pembayaran`, `Tanggal_Pembayaran`, `Jumlah_Pembayaran`) VALUES
(1, 1, 'kartu debit', '2023-02-09', '600000.00'),
(2, 2, 'kartu debit', '2023-03-14', '300000.00'),
(3, 3, 'transfer bank', '2023-06-15', '2000000.00'),
(4, 4, 'tunai', '2023-04-18', '1000000.00'),
(5, 5, 'e-wallet', '2023-08-02', '1000000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `ID_Penyewaan` int(11) NOT NULL,
  `ID_Pelanggan` int(11) NOT NULL,
  `ID_Mobil` int(11) NOT NULL,
  `Tanggal_Penyewaan` date NOT NULL,
  `Tanggal_Pengembalian` date NOT NULL,
  `Total_Biaya` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`ID_Penyewaan`, `ID_Pelanggan`, `ID_Mobil`, `Tanggal_Penyewaan`, `Tanggal_Pengembalian`, `Total_Biaya`) VALUES
(1, 1, 1, '2023-02-09', '2023-02-11', '600000.00'),
(2, 2, 2, '2023-03-14', '2023-03-15', '300000.00'),
(3, 3, 3, '2023-06-15', '2023-06-20', '2000000.00'),
(4, 4, 4, '2023-04-18', '2023-04-20', '1000000.00'),
(5, 5, 5, '2023-08-02', '2023-08-04', '1000000.00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`ID_Mobil`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID_Pembayaran`);

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`ID_Penyewaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_Pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `ID_Pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `ID_Penyewaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
