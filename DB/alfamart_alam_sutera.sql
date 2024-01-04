-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2024 pada 03.28
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
-- Database: `alfamart alam sutera`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga_barang`, `jumlah_barang`) VALUES
(1, 'FRESTEA AP350ml', 4200, 7),
(2, 'OISHI PC SP154G', 11600, 1),
(3, 'TANGO CO 130G', 9600, 1),
(4, 'PEPSO GNTLCR', 10300, 2),
(5, 'DETTOL FRS 410', 38600, 1),
(6, 'QTELA 200G', 11900, 2),
(7, 'NESTLE 300ml', 3800, 5),
(8, 'WALLS MARRIE 900ml', 46700, 1),
(9, 'OPPO A77s 2023', 19000, 1),
(10, 'SAPU TOYONDA', 8900, 2),
(11, 'KP BRD S', 200, 2),
(12, 'MITU AS BGF', 7200, 1),
(13, 'LB T.PRO 100', 16200, 1),
(14, 'TELEPON LMN 260', 3000, 1),
(15, 'WLS MG DC 95ml', 19800, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(225) NOT NULL,
  `shift` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `shift`) VALUES
(1, 'M FAHRY', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) DEFAULT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_karyawan`, `id_barang`, `harga_barang`, `tanggal_pembelian`, `total_harga`, `total_bayar`, `jumlah_barang`) VALUES
(1, 1, 1, 4200, '2022-02-06', 29400, 108000, 0),
(2, 1, 2, 11600, '2022-02-06', 11600, 108000, 0),
(3, 1, 3, 9600, '2022-02-06', 9600, 108000, 0),
(4, 1, 4, 10300, '2022-02-06', 10300, 108000, 0),
(5, 1, 5, 38600, '2022-02-06', 38600, 108000, 1),
(6, 1, 6, 11900, '2022-02-06', 23800, 108000, 2),
(7, 1, 7, 3800, '2022-02-06', 19000, 108000, 5),
(8, 1, 8, 46700, '2022-02-06', 46700, 108000, 1),
(9, 1, 9, 19000, '2022-02-06', 19000, 108000, 1),
(10, 1, 10, 8900, '2022-02-06', 17800, 108000, 2),
(11, 1, 11, 200, '2022-02-06', 400, 108000, 2),
(12, 1, 12, 7200, '2022-02-06', 7200, 108000, 1),
(13, 1, 13, 16200, '2022-02-06', 16200, 108000, 1),
(14, 1, 14, 3000, '2022-02-06', 3000, 108000, 1),
(15, 1, 15, 19800, '2022-02-06', 39600, 108000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(111) NOT NULL,
  `nama_perusahaan` varchar(111) NOT NULL,
  `alamat_toko` text NOT NULL,
  `NPWP` int(111) NOT NULL,
  `no telp` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `nama_perusahaan`, `alamat_toko`, `NPWP`, `no telp`) VALUES
(1, 'ALFA TOWER LT12', 'PT SUMBER ALFARIA TRIJAYA, TBK', 'JL AHMAD YANI GAMPONG RAYA B LANGSA BARU, ALAM SUTERA, TANGERANG', 48, 812946);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
