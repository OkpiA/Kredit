-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 17 Okt 2018 pada 09.29
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `db_kredit_1kj2n3`
--
CREATE DATABASE IF NOT EXISTS `db_kredit_1kj2n3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_kredit_1kj2n3`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `id_admin` varchar(255) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `pass_admin` varchar(255) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `level_admin` varchar(10) NOT NULL,
  `stat_admin` int(5) NOT NULL,
  PRIMARY KEY (`id_admin`,`username_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `username_admin`, `pass_admin`, `nama_admin`, `level_admin`, `stat_admin`) VALUES
('ADM01', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'admin', 1),
('ADM010', 'Okpi', 'ebf11d217bfb7290f3130b6c26f9db24', 'Okpi', 'user', 1),
('ADM02', 'ahmad', '51cdf3a63cc51c5a00a0de41afd14c8d', 'Ahmad', 'user', 0),
('ADM03', 'hafiizh', '9ecd5368d38d4e5e55bd916f43288dda', 'Hafiizh', 'user', 1),
('ADM04', 'bubu', '098eb8ba2cc924fad0ec05acd869a4eb', 'Bubu', 'user', 0),
('ADM05', 'pras', 'd41d8cd98f00b204e9800998ecf8427e', 'Prasetyo', 'admin', 0),
('ADM06', 'fathur', 'c2b1a7a28ace620c96223bf66bd037cf', 'Fathur', 'user', 0),
('ADM07', 'zain', '3ed9b95e4b6f2c345836def81e570ef1', 'Zain', 'admin', 1),
('ADM08', 'kiki', 'd41d8cd98f00b204e9800998ecf8427e', 'Kiki', 'admin', 0),
('ADM09', 'hasan', '828a1a44262869c1ba7714c7e7289dc9', 'Hasan', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_angsuran`
--

CREATE TABLE IF NOT EXISTS `t_angsuran` (
  `kode_angsuran` int(255) NOT NULL AUTO_INCREMENT,
  `kode_pelanggan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `tgl_angsuran` date NOT NULL,
  `denda_angsuran` int(100) NOT NULL,
  `stat_bayar_angsuran` int(5) NOT NULL,
  `stat_angsuran` int(5) NOT NULL,
  PRIMARY KEY (`kode_angsuran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `t_angsuran`
--

INSERT INTO `t_angsuran` (`kode_angsuran`, `kode_pelanggan`, `id_admin`, `tgl_angsuran`, `denda_angsuran`, `stat_bayar_angsuran`, `stat_angsuran`) VALUES
(1, 'PLGN01', 'ADM01', '2015-06-05', 0, 1, 1),
(2, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(3, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(4, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(5, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(6, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(7, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(8, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(9, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(10, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(11, 'PLGN02', 'ADM01', '2015-06-07', 0, 1, 1),
(12, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(13, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(14, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(15, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(16, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(17, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(18, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(19, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(20, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(21, 'PLGN03', 'ADM01', '2015-06-07', 0, 1, 1),
(22, 'PLGN05', 'ADM01', '2015-06-08', 0, 1, 1),
(23, 'PLGN05', 'ADM01', '2015-06-08', 0, 1, 1),
(24, 'PLGN08', 'ADM01', '2016-01-24', 0, 1, 1),
(25, 'PLGN08', 'ADM01', '2016-01-24', 0, 1, 1),
(26, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1),
(27, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1),
(28, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1),
(29, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1),
(30, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1),
(31, 'PLGN09', 'ADM01', '2016-01-24', 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_merk`
--

CREATE TABLE IF NOT EXISTS `t_merk` (
  `kode_merk` varchar(255) NOT NULL,
  `gambar_merk` varchar(255) NOT NULL,
  `nama_merk` varchar(255) NOT NULL,
  `stat_merk` int(5) NOT NULL,
  PRIMARY KEY (`kode_merk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_merk`
--

INSERT INTO `t_merk` (`kode_merk`, `gambar_merk`, `nama_merk`, `stat_merk`) VALUES
('MRK01', 'MRK01-Honda-Vario-150cc-Motor-Matik-Terbaru-Segera-Meluncur.png', 'Honda', 0),
('MRK02', 'MRK02-Yamaha.png', 'Yamaha', 0),
('MRK03', 'MRK03-suzuki-logo-vector.png', 'Suzuki', 1),
('MRK04', 'MRK04-HAFIIZ.jpg', 'asdsad', 0),
('MRK05', 'MRK05-toyota.png', 'Toyota', 1),
('MRK06', 'MRK06-nissan.jpg', 'Nissan', 1),
('MRK07', 'MRK07-Daihatsu.png', 'Daihatsu', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pelanggan`
--

CREATE TABLE IF NOT EXISTS `t_pelanggan` (
  `kode_pelanggan` varchar(255) NOT NULL,
  `id_admin` varchar(255) NOT NULL,
  `tgl_pelanggan` date NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `telp_pelanggan` varchar(50) NOT NULL,
  `alamat_pelanggan` longtext NOT NULL,
  `no_ktp_pelanggan` varchar(255) NOT NULL,
  `berkas_ktp` varchar(255) NOT NULL,
  `berkas_kk` varchar(255) NOT NULL,
  `berkas_slip` varchar(255) NOT NULL,
  `stat_pelanggan` int(5) NOT NULL,
  PRIMARY KEY (`kode_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pelanggan`
--

INSERT INTO `t_pelanggan` (`kode_pelanggan`, `id_admin`, `tgl_pelanggan`, `nama_pelanggan`, `telp_pelanggan`, `alamat_pelanggan`, `no_ktp_pelanggan`, `berkas_ktp`, `berkas_kk`, `berkas_slip`, `stat_pelanggan`) VALUES
('PLGN01', 'ADM01', '2015-06-05', 'Muhammad Hafiizh', '0812039213', 'Perjuangan', '81218321893122', 'ktp-PLGN01-Brosur Tugas B.ing.jpg', 'kk-PLGN01-brosur2.jpg', 'kosong', 1),
('PLGN02', 'ADM01', '2015-06-07', 'Ahmad', '0892342341231', 'Perjuangan', '213213212', 'kosong', 'kosong', 'kosong', 1),
('PLGN03', 'ADM01', '2015-06-07', 'Budi', '12839213213', 'asdsad', '12312312', 'kosong', 'kosong', 'kosong', 1),
('PLGN04', 'ADM01', '2015-06-07', 'Jay', '13213213', 'asdsad', '12321321', 'kosong', 'kosong', 'kosong', 1),
('PLGN05', 'ADM01', '2015-06-07', 'Hafiizh', '085323814201', 'Kepompongan', '61283781238912', 'ktp-PLGN05-HAFIIZ.jpg', 'kosong', 'kosong', 1),
('PLGN06', 'ADM01', '2015-07-30', 'Atieka Bunga Aprilia', '0835792689658', 'Jln. perjuangan ', '65368', 'kosong', 'kosong', 'kosong', 1),
('PLGN07', 'ADM01', '2016-01-21', 'Cahya', '1123213', 'asdas', '213', 'kosong', 'kosong', 'kosong', 1),
('PLGN08', 'ADM01', '2016-01-24', 'Cahya', '08912939123', 'Majasem', '08123912321', 'kosong', 'kosong', 'kosong', 1),
('PLGN09', 'ADM01', '2016-01-24', 'Farrel', '0', '', '2', 'kosong', 'kosong', 'kosong', 1);

--
-- Trigger `t_pelanggan`
--
DROP TRIGGER IF EXISTS `tambah_pelanggan`;
DELIMITER //
CREATE TRIGGER `tambah_pelanggan` AFTER INSERT ON `t_pelanggan`
 FOR EACH ROW insert into t_pembelian values (new.kode_pelanggan,'','0','0','0','0','0','0','0')
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pembelian`
--

CREATE TABLE IF NOT EXISTS `t_pembelian` (
  `kode_pelanggan` varchar(255) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `uang_muka_pembelian` double NOT NULL,
  `hasil_cicilan` double NOT NULL,
  `sisa_pembayaran` int(100) NOT NULL,
  `stat_cicilan` int(5) NOT NULL,
  `bayar_terakhir` varchar(100) NOT NULL,
  `batas_bayar` varchar(100) NOT NULL,
  `stat_beli` int(5) NOT NULL,
  PRIMARY KEY (`kode_pelanggan`,`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pembelian`
--

INSERT INTO `t_pembelian` (`kode_pelanggan`, `kode_produk`, `uang_muka_pembelian`, `hasil_cicilan`, `sisa_pembayaran`, `stat_cicilan`, `bayar_terakhir`, `batas_bayar`, `stat_beli`) VALUES
('PLGN01', 'PRDK09', 5000000, 766000, 16186000, 22, '05-06-2015', '10-8-2015', 1),
('PLGN02', 'PRDK04', 10000000, 1214000, 2000000, 10, '07-06-2015', '10-5-2016', 1),
('PLGN03', 'PRDK04', 10000000, 1214000, 0, 10, '07-06-2015', '10-5-2016', 1),
('PLGN04', 'PRDK04', 1000000, 1459625, 23354000, 16, '0', '07-7-2015', 1),
('PLGN05', 'PRDK09', 2500000, 1571000, 12568000, 10, '08-06-2015', '10-9-2015', 1),
('PLGN06', '', 0, 0, 0, 0, '0', '0', 0),
('PLGN07', '', 0, 0, 0, 0, '0', '0', 0),
('PLGN08', 'PRDK01', 8000000, 704500, 9863000, 16, '24-01-2016', '10-4-2016', 1),
('PLGN09', 'PRDK02', 1000000, 5327500, 21310000, 10, '24-01-2016', '10-8-2016', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_perusahaan`
--

CREATE TABLE IF NOT EXISTS `t_perusahaan` (
  `kode_perusahaan` varchar(255) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat_perusahaan` varchar(255) NOT NULL,
  `telp_perusahaan` varchar(50) NOT NULL,
  `mail_perusahaan` varchar(255) NOT NULL,
  `web_perusahaan` varchar(255) NOT NULL,
  PRIMARY KEY (`kode_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_perusahaan`
--

INSERT INTO `t_perusahaan` (`kode_perusahaan`, `nama_perusahaan`, `alamat_perusahaan`, `telp_perusahaan`, `mail_perusahaan`, `web_perusahaan`) VALUES
('si_kredit', 'Kredit Mobil Panda', 'Jl. Pandanaran No. 20', '0241234123', 'kreditmobilpanda@admin.com', 'kreditmobilpanda.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_produk`
--

CREATE TABLE IF NOT EXISTS `t_produk` (
  `kode_produk` varchar(255) NOT NULL,
  `kode_merk` varchar(255) NOT NULL,
  `gambar_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `stok_produk` int(25) NOT NULL,
  `harga_produk` double NOT NULL,
  `uang_muka_produk` double NOT NULL,
  `bunga_produk` double NOT NULL,
  `desk_produk` longtext NOT NULL,
  `stat_produk` int(5) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_produk`
--

INSERT INTO `t_produk` (`kode_produk`, `kode_merk`, `gambar_produk`, `nama_produk`, `stok_produk`, `harga_produk`, `uang_muka_produk`, `bunga_produk`, `desk_produk`, `stat_produk`) VALUES
('PRDK01', 'MRK01', 'PRDK01-beat-fi-cbs-blue.png', 'Beat FI CBS', 1, 14600000, 2500000, 2, 'Beat FI CBS', 0),
('PRDK010', 'MRK01', 'PRDK010-images.jpg', 'Hamzah', 89, 9000000, 0, 1, 'hjkjn', 0),
('PRDK011', 'MRK05', 'PRDK011-toyota rush.jpg', 'Toyota Rush', 2, 245000000, 0, 9, 'Tempat Duduk : 7 Kursi\r\nMesin : 1496 cc\r\nTenaga : 103 hp', 0),
('PRDK012', 'MRK05', 'PRDK012-toyota rush1.jpg', 'Rush', 3, 245000000, 0, 9, 'Tempat Duduk : 7 Kursi <br>\r\nMesin : 1496 cc <br>\r\nTenaga : 103 hp', 1),
('PRDK013', 'MRK05', 'PRDK013-toyota agya.jpg', 'Agya', 5, 138500000, 0, 7, 'Mesin : 998 cc <br>\r\nTempat Duduk : 5 Kursi <br>\r\nTenaga : 66 hp', 1),
('PRDK014', 'MRK05', 'PRDK014-toyota calya.png', 'Calya', 8, 133450000, 0, 7, 'Tempat Duduk : 7 Kursi <br>\r\nMesin : 1197 cc <br>\r\nTenaga : 87 hp', 1),
('PRDK015', 'MRK07', 'PRDK015-daihatsu terios.jpg', 'Terios', 4, 198500000, 0, 8, 'Tempat Duduk : 7 Kursi <br>\r\nMesin : 1496 cc <br>\r\nTenaga : 103 hp', 1),
('PRDK016', 'MRK07', 'PRDK016-daihatsu sirion.png', 'Sirion', 8, 186750000, 0, 7, 'Tempat Duduk : 5 Kursi <br>\r\nMesin : 1329 cc <br>\r\nTenaga : 94 hp', 1),
('PRDK017', 'MRK07', 'PRDK017-daihatsu luxio.jpg', 'Luxio', 10, 186350000, 0, 7, 'Tempat Duduk : 8 Kursi <br>\r\nMesin : 1495 cc <br>\r\nTenaga : 96 hp', 1),
('PRDK018', 'MRK06', 'PRDK018-nissan march.png', 'March', 4, 182000000, 0, 9, 'Tempat Duduk : 5 Kursi <br>\r\nMesin : 1198 cc <br>\r\nTenaga : 75 hp', 1),
('PRDK019', 'MRK06', 'PRDK019-nissan navara.jpg', 'Navara', 4, 418000000, 0, 9, 'Tempat Duduk : 4 Kursi <br>\r\nMesin : 2488 cc <br>\r\nTenaga : 163 hp', 1),
('PRDK02', 'MRK01', 'PRDK02-honda-cbr-150-20131231-12.jpg', 'CBR 150 R', 26, 41750000, 0, 3, 'CBR Bla Bla Bla', 0),
('PRDK020', 'MRK06', 'PRDK020-nissan xtrail.png', 'X-Trail', 5, 420000000, 0, 9, 'empat Duduk : 7 Kursi <br>\r\nMesin : 1997 cc <br>\r\nTenaga : 142 hp', 1),
('PRDK03', 'MRK01', 'PRDK03-csonemerah.png', 'City Sport 1', 23, 17300000, 2500000, 2, 'CS 1', 0),
('PRDK04', 'MRK03', 'PRDK04-5.png', 'Satria F150 New', 13, 18450000, 2500000, 2, 'F1', 0),
('PRDK05', 'MRK03', 'PRDK05-pic_1372229466_1.png', 'Shogun Axello 125 NR', 19, 14900000, 2250000, 2, 'Shogun', 0),
('PRDK06', 'MRK03', 'PRDK06-6.png', 'Nex Black Fire', 22, 13025000, 2100000, 2, 'Nex', 0),
('PRDK07', 'MRK02', 'PRDK07-motogp-2.png', 'Mio GT Moto GP Livery', 12, 13950000, 2250000, 2, 'Mio GT', 0),
('PRDK08', 'MRK02', 'PRDK08-vegazr-green.png', 'Vega ZR', 15, 11300000, 2750000, 2, 'Vega ZR', 0),
('PRDK09', 'MRK02', 'PRDK09-Jupiter MX AT - Putih - White 0314 -autoformula-mt27.com - Dealer Kredit Motor Murah Yamaha Jakarta, COD, Mudah, Aman, Ringan Terjangkau.png', 'Jupiter MX', 207, 15175000, 2000000, 2, 'Jupiter MX', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
