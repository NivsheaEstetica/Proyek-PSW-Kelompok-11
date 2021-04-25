-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2021 pada 14.46
-- Versi Server: 5.5.27
-- Versi PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `labotarium`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `Np` varchar(25) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `alamat_dosen` varchar(50) NOT NULL,
  PRIMARY KEY (`Np`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE IF NOT EXISTS `inventaris` (
  `Id_Inventaris` char(10) NOT NULL,
  `Nama_alat` varchar(30) NOT NULL,
  `Jenis_alat` varchar(20) NOT NULL,
  `Model` varchar(20) NOT NULL,
  `Ruangan` varchar(15) NOT NULL,
  `Keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`Id_Inventaris`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `koordinatorlab`
--

CREATE TABLE IF NOT EXISTS `koordinatorlab` (
  `Id_koordinator` varchar(8) NOT NULL,
  `nama_koordinator` varchar(50) NOT NULL,
  `alamat_koordinator` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_koordinator`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `Nim_mahasiswa` varchar(8) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `alamat_mahasiswa` varchar(50) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  PRIMARY KEY (`Nim_mahasiswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE IF NOT EXISTS `peminjaman` (
  `Id_Peminjaman` char(10) NOT NULL,
  `Id_inventaris` varchar(50) NOT NULL,
  `Nim_Mahasiswa` varchar(20) NOT NULL,
  `Tanggal_Peminjaman` int(50) NOT NULL,
  `Tanggal_Pengembalian` date NOT NULL,
  `Waktu_Pinjam` time NOT NULL,
  `Jumlah_Pinjaman` int(11) NOT NULL,
  `Keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
