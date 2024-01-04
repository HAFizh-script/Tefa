-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2023 pada 06.01
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
-- Database: `perpus vito`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telp` text NOT NULL,
  `waktu_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `kode`, `nama`, `alamat`, `telp`, `waktu_daftar`) VALUES
(1, 'C9002', 'Yanto', 'Banguntapan', '08232122385', '2020-10-08'),
(2, 'B7228', 'Kasmi', 'Sorosutan', '08156231256', '2025-07-15'),
(3, 'A0001', 'Kisman', 'Surabaya', '08912732654', '2022-03-30'),
(4, 'A2003', 'Sigit Rendang', 'Mojokerto', '08251312154', '2023-01-02'),
(5, 'B0001', 'Gogon Tunjang', 'Sidoarjo', '08673561232', '2022-03-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(15) NOT NULL,
  `nama_buku` varchar(25) NOT NULL,
  `penulis_buku` varchar(25) NOT NULL,
  `tahun_terbit` int(4) NOT NULL,
  `stok_buku` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `nama_buku`, `penulis_buku`, `tahun_terbit`, `stok_buku`) VALUES
(1, 'Bulan', 'Tere Liye', 2013, 12),
(2, 'Cantik itu luka', 'Eka Kurniawan', 2018, 43),
(3, 'Laut Bercerita', 'Leila S.', 2012, 21),
(4, 'Saman', 'Ayu Utami', 2021, 14),
(5, 'Laskar Pelangi', 'Andra Hirata', 2009, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(15) NOT NULL,
  `nama_karyawan` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telp` text NOT NULL,
  `shift` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama_karyawan`, `alamat`, `telp`, `shift`) VALUES
(1, 'Rangga Gacor', 'Yogyakarta', '081273218973', 2),
(2, 'Santoso Toso', 'Cianjir', '081283722981', 2),
(3, 'Jauza Lele', 'Kepek', '082112978328', 1),
(4, 'Zua Santan', 'Tarakam', '081272312982', 2),
(5, 'Yadi Piatim', 'Manokwanti', '087821372187', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telp` text NOT NULL,
  `waktu_pinjam` date NOT NULL,
  `durasi_pinjam` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `nama`, `alamat`, `telp`, `waktu_pinjam`, `durasi_pinjam`) VALUES
(1, 'Yanto', 'Banguntapan', '08232122385', '2023-03-05', '5 Hari'),
(2, 'Kasmi', 'Sorosutan', '08156231256', '2023-06-07', '7 Hari'),
(3, 'Kisman', 'Surabaya', '08912732654', '2023-08-01', '7 Hari'),
(4, 'Sigit Rendang', 'Mojokerto', '08251312154', '2023-01-09', '3 Hari'),
(5, 'Gogon Tunjang', 'Sidoarjo', '08673561232', '2023-05-10', '15 Hari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(15) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `Terlambat` int(1) NOT NULL,
  `Hilang` int(1) NOT NULL,
  `Rusak` int(1) NOT NULL,
  `Total` int(9) NOT NULL,
  `Dikembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `nama`, `Terlambat`, `Hilang`, `Rusak`, `Total`, `Dikembalikan`) VALUES
(1, 'Yanto', 0, 0, 0, 0, '2023-03-10'),
(2, 'Kasmi', 0, 0, 0, 0, '2023-06-14'),
(3, 'Kisman', 1, 1, 0, 2000, '2023-08-08'),
(4, 'Sigit Rendang', 5, 1, 0, 6000, '2023-01-12'),
(5, 'Gogon Tunjang', 3, 2, 0, 6000, '2023-05-23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
