-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Jan 2022 pada 02.41
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e-arsip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_config`
--

CREATE TABLE IF NOT EXISTS `tbl_config` (
`no` int(11) NOT NULL,
  `thn_dokumen` int(11) NOT NULL,
  `nm_group` varchar(25) NOT NULL,
  `status` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_config`
--

INSERT INTO `tbl_config` (`no`, `thn_dokumen`, `nm_group`, `status`, `CreateDate`) VALUES
(1, 2021, 'SKM', 1, '2021-02-01 16:16:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dok_keluar`
--

CREATE TABLE IF NOT EXISTS `tbl_dok_keluar` (
`id_dokumen` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `no_dokumen` varchar(50) NOT NULL,
  `jns_dokumen` int(11) NOT NULL,
  `dari` varchar(25) NOT NULL,
  `unit_tujuan` text NOT NULL,
  `perihal` text NOT NULL,
  `pembuat` int(11) NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kategori` char(25) NOT NULL,
  `sts_dokumen` varchar(50) NOT NULL,
  `catatan` text,
  `path_folder` varchar(50) DEFAULT NULL,
  `file_dokumen` text,
  `tgl_dokumen` datetime NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_dok_keluar`
--

INSERT INTO `tbl_dok_keluar` (`id_dokumen`, `no_surat`, `no_dokumen`, `jns_dokumen`, `dari`, `unit_tujuan`, `perihal`, `pembuat`, `lampiran`, `kategori`, `sts_dokumen`, `catatan`, `path_folder`, `file_dokumen`, `tgl_dokumen`, `createDate`) VALUES
(3, '421.2/ 058.-SDN.SKM. 09 /XI/ 2021', '01/0002-4/SKM', 4, 'SKM', 'a:1:{i:0;s:26:"GURU KELAS - IRWAN MUSTOFA";}', 'PEMBINAAN GURU PAI', 3, 1, '1', 'Sent', NULL, 'berkas-keluar/2022-01', 'Acara_Pembinaan_Guru_Pai.pdf', '2021-11-17 00:00:00', '2022-01-01 15:40:46'),
(4, '421.2/ 059.-SDN.SKM. 09 /XI/ 2021', '01/0003-4/SKM', 4, 'SKM', 'a:1:{i:0;s:30:"GURU OPERATOR - YANA NURROHMAN";}', 'ANBK', 3, 1, '1', 'Sent', NULL, 'berkas-keluar/2022-01', 'ANBK_2021_-_2022.pdf', '2021-11-16 00:00:00', '2022-01-01 15:55:42'),
(5, '421.2/ 061.-SDN.SKM.09/XII/ 2021', '01/0004-4/SKM', 4, 'SKM', 'a:1:{i:0;s:27:"NANI ROHAENI - NANI ROHAENI";}', 'PENGAMBILAN DANA PEGAWAI', 4, 1, '3', 'Sent', NULL, 'berkas-keluar/2022-01', 'Pengambilan_Dana_Pegawai_Desember.pdf', '2021-12-01 00:00:00', '2022-01-01 16:12:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dok_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_dok_masuk` (
`id_dokumen` int(11) NOT NULL,
  `no_dokumen` varchar(50) NOT NULL,
  `jns_dokumen` int(11) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `perihal` text NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `tgl_dokumen` date NOT NULL,
  `tgl_disposisi` date DEFAULT NULL,
  `disposisi` text,
  `catatan` text,
  `path_folder` varchar(50) DEFAULT NULL,
  `file_dokumen` text,
  `tgl_diterima` date NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_dok_masuk`
--

INSERT INTO `tbl_dok_masuk` (`id_dokumen`, `no_dokumen`, `jns_dokumen`, `dari`, `perihal`, `lampiran`, `kategori`, `tgl_dokumen`, `tgl_disposisi`, `disposisi`, `catatan`, `path_folder`, `file_dokumen`, `tgl_diterima`, `createDate`) VALUES
(1, '055/4656-DISDIK', 3, 'DPK - DINAS PENDIDIKAN KABUPATEN BANDUNG', 'PEMBERITAHUAN &AMP; UNDANGAN', 1, 2, '2021-12-26', '2021-12-31', 'a:1:{i:0;s:14:"santi yuniarti";}', NULL, 'berkas-masuk/2021-12', 'Surat_Undangan_Pengesahan_RKAS_Perubahan_BOS_Tahun_2021.pdf', '2021-12-27', '2021-12-31 11:10:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jabatan`
--

CREATE TABLE IF NOT EXISTS `tbl_jabatan` (
`id_jabatan` int(11) NOT NULL,
  `nm_jabatan` varchar(100) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `nm_jabatan`, `createDate`) VALUES
(1, 'KEPALA SEKOLAH', '2021-12-31 10:50:26'),
(2, 'WAKIL KEPALA SEKOLAH', '2021-12-31 10:51:56'),
(3, 'GURU KELAS', '2021-12-31 10:52:07'),
(4, 'TU', '2021-12-31 11:17:21'),
(5, 'GURU OPERATOR', '2022-01-01 16:00:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jns_dokumen`
--

CREATE TABLE IF NOT EXISTS `tbl_jns_dokumen` (
`id_jns_dokumen` int(11) NOT NULL,
  `jns_dokumen` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `counter_dokumen` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_jns_dokumen`
--

INSERT INTO `tbl_jns_dokumen` (`id_jns_dokumen`, `jns_dokumen`, `keterangan`, `counter_dokumen`, `createDate`) VALUES
(1, 'Memo', 'Memo Group', 6, '2021-01-27 00:00:00'),
(2, 'Nota', 'Nota Group', 12, '2021-01-27 00:00:00'),
(4, 'Surat', 'Surat Group', 4, '2022-01-01 00:02:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
`id_kategori` int(11) NOT NULL,
  `jns_kategori` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `jns_kategori`, `keterangan`, `createDate`) VALUES
(1, 'Umum', 'Dokumen biasa', '2021-01-28 09:59:30'),
(2, 'Urgent', 'Dokumen segera dikirim', '2021-01-28 10:08:38'),
(3, 'Private', 'Dokumen pribadi', '2021-01-28 10:09:42'),
(4, 'Confidential', 'Dokumen rahasia', '2021-01-28 10:10:02'),
(5, 'Private &amp; Confidential', 'Dokumen pribadi dan rahasia', '2021-01-28 10:11:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE IF NOT EXISTS `tbl_pegawai` (
`id_pegawai` int(11) NOT NULL,
  `nm_pegawai` varchar(100) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `nm_pegawai`, `id_jabatan`, `createDate`) VALUES
(1, 'Santi Yuniarti', 3, '2021-12-31 10:53:08'),
(2, 'Irwan Mustofa', 3, '2021-12-31 11:16:52'),
(3, 'Kurniawati Nur Azizah', 4, '2021-12-31 11:17:37'),
(4, 'Lilis Holisoh', 1, '2022-01-01 15:53:34'),
(5, 'Yana Nurrohman', 5, '2022-01-01 16:01:18'),
(6, 'Nani Rohaeni', 3, '2022-01-01 16:09:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_unit`
--

CREATE TABLE IF NOT EXISTS `tbl_unit` (
`no` int(11) NOT NULL,
  `kd_unit` varchar(50) NOT NULL,
  `nm_unit` text NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tbl_unit`
--

INSERT INTO `tbl_unit` (`no`, `kd_unit`, `nm_unit`, `createDate`) VALUES
(1, 'GURU', 'SDN SUKAMENAK 09', '2021-12-31 10:49:43'),
(2, 'DPP', 'DINAS PENDIDIKAN PROVINSI JAWABARAT', '2021-12-31 10:53:58'),
(3, 'DPK', 'DINAS PENDIDIKAN KABUPATEN BANDUNG', '2021-12-31 10:54:18'),
(4, 'YANA NURROHMAN', 'YANA NURROHMAN', '2022-01-01 16:00:20'),
(5, 'IRWAN MUSTOFA', 'IRWAN MUSTOFA', '2022-01-01 16:03:34'),
(6, 'NANI ROHAENI', 'NANI ROHAENI', '2022-01-01 16:10:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `username` varchar(25) NOT NULL,
  `nm_user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lv_user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `nm_user`, `password`, `lv_user`) VALUES
('admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('user', 'User', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
 ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_dok_keluar`
--
ALTER TABLE `tbl_dok_keluar`
 ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `tbl_dok_masuk`
--
ALTER TABLE `tbl_dok_masuk`
 ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
 ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jns_dokumen`
--
ALTER TABLE `tbl_jns_dokumen`
 ADD PRIMARY KEY (`id_jns_dokumen`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
 ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
 ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_dok_keluar`
--
ALTER TABLE `tbl_dok_keluar`
MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_dok_masuk`
--
ALTER TABLE `tbl_dok_masuk`
MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_jns_dokumen`
--
ALTER TABLE `tbl_jns_dokumen`
MODIFY `id_jns_dokumen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
