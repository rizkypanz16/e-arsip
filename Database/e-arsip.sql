/*
 Navicat Premium Data Transfer

 Source Server         : project
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : e-arsip

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 17/01/2022 21:41:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_config
-- ----------------------------
DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE `tbl_config`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `thn_dokumen` int(11) NOT NULL,
  `nm_group` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `CreateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_config
-- ----------------------------
INSERT INTO `tbl_config` VALUES (1, 2021, 'SKM', 1, '2021-02-01 16:16:41');

-- ----------------------------
-- Table structure for tbl_dok_keluar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dok_keluar`;
CREATE TABLE `tbl_dok_keluar`  (
  `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_dokumen` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jns_dokumen` int(11) NOT NULL,
  `dari` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `unit_tujuan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perihal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pembuat` int(11) NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kategori` char(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sts_dokumen` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `catatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `path_folder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_dokumen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tgl_dokumen` datetime NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_dokumen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dok_keluar
-- ----------------------------
INSERT INTO `tbl_dok_keluar` VALUES (1, '', '421.2/0129.-SDN.SKM.09/XI/2021', 4, 'SKM', 'a:1:{i:0;s:29:\"IRWAN MUSTOFA - IRWAN MUSTOFA\";}', 'ANBK', 3, 1, '2', 'Sent', NULL, 'berkas-keluar/2022-01', 'ANBK_2021_-_20225.pdf', '2021-11-16 00:00:00', '2022-01-15 22:52:40');
INSERT INTO `tbl_dok_keluar` VALUES (3, '', '421.2/0131.-SDN.SKM.09/XII/2021', 4, 'SKM', 'a:1:{i:0;s:31:\"YANA NURROHMAN - YANA NURROHMAN\";}', 'PEMBINAAN GURU PAI', 3, 1, '1', 'Sent', NULL, 'berkas-keluar/2022-01', 'Acara_Pembinaan_Guru_Pai1.pdf', '2021-12-17 00:00:00', '2022-01-16 15:06:24');

-- ----------------------------
-- Table structure for tbl_dok_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dok_masuk`;
CREATE TABLE `tbl_dok_masuk`  (
  `id_dokumen` int(11) NOT NULL AUTO_INCREMENT,
  `no_dokumen` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jns_dokumen` int(11) NOT NULL,
  `dari` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `perihal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lampiran` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `tgl_dokumen` date NOT NULL,
  `tgl_disposisi` date NULL DEFAULT NULL,
  `disposisi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `catatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `path_folder` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_dokumen` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tgl_diterima` date NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_dokumen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_dok_masuk
-- ----------------------------
INSERT INTO `tbl_dok_masuk` VALUES (1, '055/4656-DISDIK', 4, 'DPK - DINAS PENDIDIKAN KABUPATEN BANDUNG', 'PEMBERITAHUAN &AMP; UNDANGAN', 1, 2, '2021-12-26', '2021-12-31', 'a:1:{i:0;s:14:\"santi yuniarti\";}', NULL, 'berkas-masuk/2021-12', 'Surat_Undangan_Pengesahan_RKAS_Perubahan_BOS_Tahun_2021.pdf', '2021-12-27', '2021-12-31 11:10:49');
INSERT INTO `tbl_dok_masuk` VALUES (2, '005/4656-DISDIK', 4, 'DPK - DINAS PENDIDIKAN KABUPATEN BANDUNG', 'PEMBERITAHUAN &AMP; UNDANGAN', 1, 2, '2021-10-26', NULL, NULL, NULL, 'berkas-masuk/2022-01', 'Surat_Undangan_Pengesahan_RKAS_Perubahan_BOS_Tahun_2021.pdf', '2021-11-01', '2022-01-16 16:00:01');

-- ----------------------------
-- Table structure for tbl_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jabatan`;
CREATE TABLE `tbl_jabatan`  (
  `id_jabatan` int(11) NOT NULL AUTO_INCREMENT,
  `nm_jabatan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_jabatan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_jabatan
-- ----------------------------
INSERT INTO `tbl_jabatan` VALUES (1, 'KEPALA SEKOLAH', '2021-12-31 10:50:26');
INSERT INTO `tbl_jabatan` VALUES (2, 'WAKIL KEPALA SEKOLAH', '2021-12-31 10:51:56');
INSERT INTO `tbl_jabatan` VALUES (3, 'GURU KELAS', '2021-12-31 10:52:07');
INSERT INTO `tbl_jabatan` VALUES (4, 'TU', '2021-12-31 11:17:21');
INSERT INTO `tbl_jabatan` VALUES (5, 'GURU OPERATOR', '2022-01-01 16:00:46');

-- ----------------------------
-- Table structure for tbl_jns_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jns_dokumen`;
CREATE TABLE `tbl_jns_dokumen`  (
  `id_jns_dokumen` int(11) NOT NULL AUTO_INCREMENT,
  `jns_dokumen` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `counter_dokumen` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_jns_dokumen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_jns_dokumen
-- ----------------------------
INSERT INTO `tbl_jns_dokumen` VALUES (1, 'Memo', 'Memo Group', 6, '2021-01-27 00:00:00');
INSERT INTO `tbl_jns_dokumen` VALUES (2, 'Nota', 'Nota Group', 14, '2021-01-27 00:00:00');
INSERT INTO `tbl_jns_dokumen` VALUES (4, 'Surat', 'Surat Group', 131, '2022-01-01 00:02:35');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `jns_kategori` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'Umum', 'Dokumen biasa', '2021-01-28 09:59:30');
INSERT INTO `tbl_kategori` VALUES (2, 'Urgent', 'Dokumen segera dikirim', '2021-01-28 10:08:38');
INSERT INTO `tbl_kategori` VALUES (3, 'Private', 'Dokumen pribadi', '2021-01-28 10:09:42');
INSERT INTO `tbl_kategori` VALUES (4, 'Confidential', 'Dokumen rahasia', '2021-01-28 10:10:02');
INSERT INTO `tbl_kategori` VALUES (5, 'Private &amp; Confidential', 'Dokumen pribadi dan rahasia', '2021-01-28 10:11:06');

-- ----------------------------
-- Table structure for tbl_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pegawai`;
CREATE TABLE `tbl_pegawai`  (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nm_pegawai` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pegawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_pegawai
-- ----------------------------
INSERT INTO `tbl_pegawai` VALUES (1, 'Santi Yuniarti', 3, '2021-12-31 10:53:08');
INSERT INTO `tbl_pegawai` VALUES (2, 'Irwan Mustofa', 3, '2021-12-31 11:16:52');
INSERT INTO `tbl_pegawai` VALUES (3, 'Kurniawati Nur Azizah', 4, '2021-12-31 11:17:37');
INSERT INTO `tbl_pegawai` VALUES (4, 'Lilis Holisoh', 1, '2022-01-01 15:53:34');
INSERT INTO `tbl_pegawai` VALUES (5, 'Yana Nurrohman', 5, '2022-01-01 16:01:18');
INSERT INTO `tbl_pegawai` VALUES (6, 'Nani Rohaeni', 3, '2022-01-01 16:09:52');

-- ----------------------------
-- Table structure for tbl_unit
-- ----------------------------
DROP TABLE IF EXISTS `tbl_unit`;
CREATE TABLE `tbl_unit`  (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `kd_unit` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_unit` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_unit
-- ----------------------------
INSERT INTO `tbl_unit` VALUES (1, 'GURU', 'SDN SUKAMENAK 09', '2021-12-31 10:49:43');
INSERT INTO `tbl_unit` VALUES (2, 'DPP', 'DINAS PENDIDIKAN PROVINSI JAWABARAT', '2021-12-31 10:53:58');
INSERT INTO `tbl_unit` VALUES (3, 'DPK', 'DINAS PENDIDIKAN KABUPATEN BANDUNG', '2021-12-31 10:54:18');
INSERT INTO `tbl_unit` VALUES (4, 'YANA NURROHMAN', 'YANA NURROHMAN', '2022-01-01 16:00:20');
INSERT INTO `tbl_unit` VALUES (5, 'IRWAN MUSTOFA', 'IRWAN MUSTOFA', '2022-01-01 16:03:34');
INSERT INTO `tbl_unit` VALUES (6, 'NANI ROHAENI', 'NANI ROHAENI', '2022-01-01 16:10:24');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `username` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nm_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lv_user` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('admin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');
INSERT INTO `tbl_user` VALUES ('user', 'User', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

SET FOREIGN_KEY_CHECKS = 1;
