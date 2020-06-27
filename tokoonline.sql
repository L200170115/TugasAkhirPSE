-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 15.12
-- Versi server: 10.2.4-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(25) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'windis', '1234', 'windi saputri'),
(2, 'ati', '107', 'Sri HajiAti'),
(3, 'Palistya', '108', 'Palistya Nesti'),
(4, 'intan', '110', 'intan larasati'),
(5, 'udin', 'muhamad khoirudin', '111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `nomor` int(20) NOT NULL,
  `nama_dok` varchar(45) NOT NULL,
  `jenis_dok` varchar(45) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`nomor`, `nama_dok`, `jenis_dok`, `link`) VALUES
(111, 'persetujuan ', 'Masuk', 'persetujuan.pdf'),
(115, 'permintaan produk', 'Keluar', 'prouduk.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `human_resource`
--

CREATE TABLE `human_resource` (
  `id` int(225) NOT NULL,
  `nama_karyawan` varchar(225) NOT NULL,
  `jabatan` varchar(45) NOT NULL,
  `divisi` varchar(20) NOT NULL,
  `foto_karyawan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `human_resource`
--

INSERT INTO `human_resource` (`id`, `nama_karyawan`, `jabatan`, `divisi`, `foto_karyawan`) VALUES
(98, 'Intan Larasati', 'karyawan', 'Purchasing', 'WhatsApp Image 2020-06-27 at 13.13.30.jpeg'),
(109, 'Palistya Nesti', 'karyawan', 'payroll', 'WhatsApp Image 2020-06-27 at 13.10.59.jpeg'),
(115, 'Windi Saputri ', 'manager', 'marketing', 'windis.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `marketing`
--

CREATE TABLE `marketing` (
  `id_market` int(20) NOT NULL,
  `nama_market` varchar(225) NOT NULL,
  `tanggal_market` date NOT NULL,
  `biaya` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `marketing`
--

INSERT INTO `marketing` (`id_market`, `nama_market`, `tanggal_market`, `biaya`) VALUES
(1, 'iklan', '2020-06-05', 650000),
(45, 'endorse', '2020-06-04', 650000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(11) NOT NULL,
  `nama_kota` varchar(45) NOT NULL,
  `tarif` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `nama_kota`, `tarif`) VALUES
(1, 'pemalang', 19000),
(2, 'pekalongan', 17000),
(3, 'surakarta', 21000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll`
--

CREATE TABLE `payroll` (
  `ID` int(20) NOT NULL,
  `nama_karyawan` varchar(225) NOT NULL,
  `tanggal` date NOT NULL,
  `pendapatan` int(20) NOT NULL,
  `foto_karyawan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `payroll`
--

INSERT INTO `payroll` (`ID`, `nama_karyawan`, `tanggal`, `pendapatan`, `foto_karyawan`) VALUES
(1, 'Windi Saputri ', '2020-06-27', 20000000, 'windis.jpeg'),
(2, 'Sri HajiAti', '2020-06-27', 15000000, 'WhatsApp Image 2020-06-27 at 13.04.55.jpeg'),
(3, 'Muhammad Khoirudin', '2020-06-05', 10000000, 'WhatsApp Image 2020-06-27 at 13.06.20.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(225) NOT NULL,
  `password_pelanggan` varchar(45) NOT NULL,
  `nama_pelanggan` varchar(225) NOT NULL,
  `telepon_pelanggan` varchar(225) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(2, 'win@gmail.com', '123', 'windi saputri', '12467889890890', ''),
(3, 'arina@gmail.coom', '1234', 'Arina', '456788786866', ''),
(4, 'putri@gmail.com', '12345', 'putri', '098786776524', ''),
(5, 'Desty@gmail.com', '12345', 'Desty Ramadhanti ', '08976752845', 'Salatiga'),
(6, 'sasa@gmail.com', '1234', 'sasa', '0898998989', 'solo'),
(7, 'ihsan@gmail.com', '123456', 'ihsan', '8978672673625', 'boyolali'),
(8, 'windiputri1998@gmail.com', '098765', 'Windi Saputri ', '08976752845', 'pemalang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(22) NOT NULL,
  `id_pelanggan` int(225) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(225) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengirirman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `nama_kota`, `tarif`, `alamat_pengirirman`) VALUES
(2, 2, 1, '2019-12-19', 369000, 'pemalang', 19000, ''),
(31, 2, 2, '2019-12-19', 367000, 'pekalongan', 17000, ''),
(32, 2, 1, '2019-12-19', 369000, 'pemalang', 19000, 'pemalang'),
(33, 2, 1, '2019-12-20', 1419000, 'pemalang', 19000, ''),
(34, 2, 2, '2019-12-20', 667000, 'pekalongan', 17000, ''),
(41, 2, 2, '2020-06-27', 7017000, 'pekalongan', 17000, 'Pekalongan'),
(42, 2, 1, '2020-06-27', 719000, 'pemalang', 19000, 'pml'),
(43, 2, 1, '2020-06-27', 1769000, 'pemalang', 19000, 'pml\r\n'),
(44, 2, 1, '2020-06-27', 1419000, 'pemalang', 19000, 'pkl'),
(45, 2, 2, '2020-06-27', 1417000, 'pekalongan', 17000, 'pkl'),
(46, 2, 1, '2020-06-27', 669000, 'pemalang', 19000, 'Pemalang jawa tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subharga` int(20) NOT NULL,
  `subberat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subharga`, `subberat`) VALUES
(3, 2, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(60, 31, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(61, 32, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(62, 33, 1, 4, 'Bunga Matahari', 350000, 200, 1400000, 800),
(63, 34, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(64, 34, 20, 1, 'Bunga Mawar', 300000, 350, 300000, 350),
(65, 35, 20, 1, 'Bunga Mawar', 300000, 350, 300000, 350),
(66, 36, 21, 5, 'Bunga Lili', 450000, 400, 2250000, 2000),
(67, 37, 1, 4, 'Bunga Matahari', 350000, 200, 1400000, 800),
(68, 38, 20, 10, 'Bunga Mawar', 300000, 350, 3000000, 3500),
(69, 38, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(70, 38, 21, 1, 'Bunga Lili', 450000, 400, 450000, 400),
(71, 38, 22, 1, 'Bunga Tulip Ungu', 500000, 500, 500000, 500),
(72, 0, 20, 1, 'Bunga Mawar', 300000, 350, 300000, 350),
(73, 0, 20, 1, 'Bunga Mawar', 300000, 350, 300000, 350),
(74, 39, 21, 1, 'Bunga Lili', 450000, 400, 450000, 400),
(75, 40, 20, 2, 'Bunga Mawar', 300000, 350, 600000, 700),
(76, 40, 1, 12, 'Bunga Matahari', 350000, 200, 4200000, 2400),
(77, 40, 21, 1, 'Bunga Lili', 450000, 400, 450000, 400),
(78, 40, 23, 1, 'Bunga Lavender', 500000, 250, 500000, 250),
(79, 41, 1, 20, 'Bunga Matahari', 350000, 200, 7000000, 4000),
(80, 42, 1, 2, 'Bunga Matahari', 350000, 200, 700000, 400),
(81, 43, 1, 5, 'Bunga Matahari', 350000, 200, 1750000, 1000),
(82, 44, 1, 4, 'Bunga Matahari', 350000, 200, 1400000, 800),
(83, 45, 1, 4, 'Bunga Matahari', 350000, 200, 1400000, 800),
(84, 46, 1, 1, 'Bunga Matahari', 350000, 200, 350000, 200),
(85, 46, 20, 1, 'Bunga Mawar', 300000, 350, 300000, 350);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(100) NOT NULL,
  `nama_produk` varchar(225) NOT NULL,
  `harga_produk` int(45) NOT NULL,
  `berat_produk` int(25) NOT NULL,
  `foto_produk` varchar(225) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `stok_produk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`) VALUES
(1, 'Bunga Matahari', 350000, 200, 'bunga_mataharim.jpg', '                                bunga matahari segar                                ', 8),
(20, 'Bunga Mawar', 300000, 350, 'bunga_mawarm.jpg', '                Bunga segar tahan seminggu                ', 9),
(21, 'Bunga Lili', 450000, 400, 'bunga_lilip.jpg', '        Bunga Lili Segar tahan seminggu        ', 10),
(22, 'Bunga Tulip Ungu', 500000, 500, 'bunga_tulip.jpg', 'Bunga Tulip Segar tahan seminggu lebih', 10),
(23, 'Bunga Lavender', 500000, 250, 'bunga_lavenderp.jpeg', '        bunga lavender segar         ', 10),
(24, 'Bunga Mawar Putih', 400000, 350, 'bunga_mawarp.jpg', '        Bunga Mawar Putih Segar        ', 10),
(25, 'Bunga Anthurium', 450000, 300, 'bunga_Anthurium.jpg', 'Bunga Hydrangea segar', 10),
(26, 'Bunga Edelweiss', 450000, 400, 'bunga_edelweissp.jpg', '        Bunga Edelweiss asli rinjani        ', 10),
(28, 'Bunga  Daisy Ungu', 450000, 300, 'daisy ungu.jpg', '', 10),
(29, 'Bunga Rose Lyly', 300000, 350, 'roselili.jpg', 'bunga rose lyly', 10),
(32, 'bunga random', 500000, 500, 'bunga_edelweissp.jpg', '', 10),
(33, 'Bunga Rose Lylyd', 600000, 600, 'bunga mawarputih.jpg', '                ', 10),
(34, 'Bunga Mawar pink', 450000, 360, 'bunga_mawarpink.jpg', '', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchasing`
--

CREATE TABLE `purchasing` (
  `id` int(20) NOT NULL,
  `nama_supplier` varchar(225) NOT NULL,
  `nama_beli` varchar(225) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `biaya_beli` int(25) NOT NULL,
  `foto_produk` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `purchasing`
--

INSERT INTO `purchasing` (`id`, `nama_supplier`, `nama_beli`, `tanggal_beli`, `biaya_beli`, `foto_produk`) VALUES
(107, 'Supplier Bunga Sarkem', 'Bunga Matahari', '2020-06-05', 300000, 'bunga_mataharim.jpg'),
(115, 'Supplier Bunga Karanganyar', 'Bunga Mawar', '2020-06-02', 250000, 'bunga_mawarm.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`nomor`);

--
-- Indeks untuk tabel `human_resource`
--
ALTER TABLE `human_resource`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id_market`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `purchasing`
--
ALTER TABLE `purchasing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
