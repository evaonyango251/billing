# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------


#
# Delete any existing table `blok`
#

DROP TABLE IF EXISTS `blok`;


#
# Table structure of table `blok`
#

CREATE TABLE `blok` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `namablok` varchar(30) NOT NULL DEFAULT '',
  `isi` text NOT NULL,
  `posisi` tinyint(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `ordering` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Data contents of table blok (2 records)
#
 
INSERT INTO `blok` VALUES (2, 'Location Map', '<img src="images/map.jpg">', 1, 1, 2) ; 
INSERT INTO `blok` VALUES (6, 'Dasdasd', 'sadasd', 0, 1, 3) ;
#
# End of data contents of table blok
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu`
#

DROP TABLE IF EXISTS `bukutamu`;


#
# Table structure of table `bukutamu`
#

CREATE TABLE `bukutamu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sekarang` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homepage` varchar(60) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `komentar` text,
  `jawab` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu (3 records)
#
 
INSERT INTO `bukutamu` VALUES (1, '20-Aug-2015', 'Hari Pratomo', 'admin@klatenweb.com', 'http://klatenweb.com', 'Indonesia', 'Information about the school have been distributed properly through this website', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (2, '20-Aug-2015', 'Elisa Putri', 'elisaputri@websiteku.com', 'http://klatenlisa.com', 'Indonesia', 'Trial shipment testimonial', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (3, '20-Aug-2015', 'Kartika Kalista', 'kartika@klatensite.com', 'http://kartikalista.com', 'Indonesia', 'It is amazing, is already available in the website features discussion forums this school', 'Thank you very much for your visit and your comments') ;
#
# End of data contents of table bukutamu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu_config`
#

DROP TABLE IF EXISTS `bukutamu_config`;


#
# Table structure of table `bukutamu_config`
#

CREATE TABLE `bukutamu_config` (
  `config` text NOT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu_config (1 records)
#
 
INSERT INTO `bukutamu_config` VALUES ('a:2:{s:5:"limit";i:8;s:4:"char";i:500;}', 1) ;
#
# End of data contents of table bukutamu_config
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------


#
# Delete any existing table `client`
#

DROP TABLE IF EXISTS `client`;


#
# Table structure of table `client`
#

CREATE TABLE `client` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `user` varchar(99) NOT NULL,
  `hosting` varchar(99) NOT NULL DEFAULT 'Without Hosting',
  `domain1` varchar(455) NOT NULL,
  `domain2` varchar(99) NOT NULL DEFAULT '1',
  `domain3` varchar(99) NOT NULL,
  `domain` varchar(44) NOT NULL,
  `bayar` varchar(22) NOT NULL DEFAULT 'Unpaid',
  `tanggal` date NOT NULL,
  `cpanel` varchar(99) NOT NULL,
  `cpaneluser` varchar(99) NOT NULL,
  `cpanelpass` varchar(99) NOT NULL,
  `pesan` text NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '0',
  `lama` varchar(1) NOT NULL DEFAULT '1',
  `transfer` varchar(33) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ;

#
# Data contents of table client (5 records)
#
 
INSERT INTO `client` VALUES (28, 'tomo', 'Without Hosting', 'klatenweb', '.net', '', 'klatenweb.net', 'Paid', '2016-12-02', 'http://klatenweb.net/cpanel', '', '', '', '1', '1', '') ; 
INSERT INTO `client` VALUES (38, 'tomo', 'Paket Basic', '', '1', 'klatenweb.com', 'klatenweb.com', 'Paid', '2016-12-02', 'http://klatenweb.com/cpanel', 'klatenweb', '123456', '', '1', '1', '') ; 
INSERT INTO `client` VALUES (35, 'tomo', 'Paket Unlimited', 'situsita', '.com', '', 'situsita.com', 'Paid', '2016-12-02', 'http://situsita.com/cpanel', 'situsita', '123456', '', '1', '1', '') ; 
INSERT INTO `client` VALUES (34, 'tomo', 'Paket Unlimited', 'klatensite', '.com', '', 'klatensite.com', 'Paid', '2016-12-02', 'http://klatensite.com/cpanel', 'klatensite', '123456', '', '1', '1', '') ; 
INSERT INTO `client` VALUES (37, 'tomo', 'Without Hosting', 'grosir-mamypoko', '.com', '', 'grosir-mamypoko.com', 'Paid', '2016-12-02', 'http://grosir-mamypoko.com/cpanel', 'grosir', '123456', '', '1', '1', '234DFR2') ;
#
# End of data contents of table client
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------


#
# Delete any existing table `domain`
#

DROP TABLE IF EXISTS `domain`;


#
# Table structure of table `domain`
#

CREATE TABLE `domain` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ;

#
# Data contents of table domain (5 records)
#
 
INSERT INTO `domain` VALUES (6, '.com', '8', '1') ; 
INSERT INTO `domain` VALUES (8, '.net', '7.5', '1') ; 
INSERT INTO `domain` VALUES (9, '.info', '9', '1') ; 
INSERT INTO `domain` VALUES (10, '.org', '9', '1') ; 
INSERT INTO `domain` VALUES (1, '1', '0', '0') ;
#
# End of data contents of table domain
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------


#
# Delete any existing table `halaman`
#

DROP TABLE IF EXISTS `halaman`;


#
# Table structure of table `halaman`
#

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(80) NOT NULL DEFAULT '',
  `konten` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ;

#
# Data contents of table halaman (5 records)
#
 
INSERT INTO `halaman` VALUES (1, 'Prosedure Order', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (50, 'Profile Company', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (51, 'Client', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (52, 'Domain Price', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (53, 'Hosting Package', '<p>Fill in the Settings page ..</p>') ;
#
# End of data contents of table halaman
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------


#
# Delete any existing table `hosting`
#

DROP TABLE IF EXISTS `hosting`;


#
# Table structure of table `hosting`
#

CREATE TABLE `hosting` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '0',
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ;

#
# Data contents of table hosting (6 records)
#
 
INSERT INTO `hosting` VALUES (6, 'Paket Unlimited', '100', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (8, 'Paket Basic', '50', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (1, 'Tanpa Hosting', '0', '0', '') ; 
INSERT INTO `hosting` VALUES (13, 'Paket WP Basic', '25', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (14, 'Paket WP Extreme', '75', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (15, 'Paket WP Unlimited', '125', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ;
#
# End of data contents of table hosting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------


#
# Delete any existing table `menu`
#

DROP TABLE IF EXISTS `menu`;


#
# Table structure of table `menu`
#

CREATE TABLE `menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ;

#
# Data contents of table menu (2 records)
#
 
INSERT INTO `menu` VALUES (1, 'Top Menu', '#', 1, 1) ; 
INSERT INTO `menu` VALUES (2, 'Left Menu', '#', 1, 2) ;
#
# End of data contents of table menu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum`
#

DROP TABLE IF EXISTS `mod_forum`;


#
# Table structure of table `mod_forum`
#

CREATE TABLE `mod_forum` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(255) NOT NULL DEFAULT '',
  `forum_desc` text NOT NULL,
  `forum_replies` int(12) NOT NULL DEFAULT '0',
  `forum_lastpost` varchar(255) NOT NULL DEFAULT '',
  `lock` int(1) NOT NULL DEFAULT '0',
  `maxpost` int(10) NOT NULL DEFAULT '0',
  `hide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum (2 records)
#
 
INSERT INTO `mod_forum` VALUES (1, 'Extracurricular Activities', 'Forums that discuss the types of extracurricular activities and implementation schedule', 0, '', 0, 500, 0) ; 
INSERT INTO `mod_forum` VALUES (2, 'Communications Parents', 'A forum for communication between the parents with the school', 0, '', 0, 500, 0) ;
#
# End of data contents of table mod_forum
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_a`
#

DROP TABLE IF EXISTS `mod_forum_a`;


#
# Table structure of table `mod_forum_a`
#

CREATE TABLE `mod_forum_a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL,
  `signature` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_a (1 records)
#
 
INSERT INTO `mod_forum_a` VALUES (1, 'admin', 'images/adminku.png', '') ;
#
# End of data contents of table mod_forum_a
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_t`
#

DROP TABLE IF EXISTS `mod_forum_t`;


#
# Table structure of table `mod_forum_t`
#

CREATE TABLE `mod_forum_t` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `thread_name` varchar(255) NOT NULL DEFAULT '',
  `thread_reply` varchar(50) NOT NULL DEFAULT '',
  `thread_desc` text NOT NULL,
  `forum_id` int(12) NOT NULL DEFAULT '0',
  `thread_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thread_user` varchar(16) NOT NULL DEFAULT '',
  `thread_parent` int(12) NOT NULL DEFAULT '0',
  `thread_view` int(12) NOT NULL DEFAULT '0',
  `thread_lock` int(1) NOT NULL DEFAULT '0',
  `thread_a` int(2) NOT NULL DEFAULT '0',
  `thread_s` int(2) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_t (5 records)
#
 
INSERT INTO `mod_forum_t` VALUES (12, 'Tentang Kenekalan Remaja', '', '<p>pada sekarang ini kenakalan remaja merupakan masalah serius bagaimana sekolah menangani hal ini</p>', 26, '2014-10-11 05:28:03', 'salaffudin', 0, 7, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (13, '', 'Tentang Kenekalan Remaja', '<p>Terimakasih sudah posting kenakalan remaja merupakan tugas kita bersama</p>', 26, '2014-10-11 05:30:25', 'admin', 12, 0, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (14, '', 'Tentang Kenekalan Remaja', '<p>ok</p>', 26, '2014-10-12 21:10:48', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (15, '', 'Tentang Kenekalan Remaja', '<p>coba--coba</p>', 26, '2014-10-12 21:12:42', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (17, 'New extracurricular programs, football', '', '<p>New extracurricular programs, football</p>', 1, '2015-08-20 10:17:58', 'admin', 0, 2, 0, 0, 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36') ;
#
# End of data contents of table mod_forum_t
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------


#
# Delete any existing table `mod_online`
#

DROP TABLE IF EXISTS `mod_online`;


#
# Table structure of table `mod_online`
#

CREATE TABLE `mod_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `visitor` varchar(255) DEFAULT NULL,
  `ipd` varchar(30) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `timevisit` int(11) NOT NULL DEFAULT '0',
  `halaman` text,
  `mdhash` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_online (0 records)
#

#
# End of data contents of table mod_online
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------


#
# Delete any existing table `pcomment`
#

DROP TABLE IF EXISTS `pcomment`;


#
# Table structure of table `pcomment`
#

CREATE TABLE `pcomment` (
  `id` int(10) NOT NULL,
  `pengirim` int(10) NOT NULL,
  `penerima` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `direktori` varchar(150) NOT NULL,
  `komen` text CHARACTER SET cp866 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table pcomment (0 records)
#

#
# End of data contents of table pcomment
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------


#
# Delete any existing table `pengguna`
#

DROP TABLE IF EXISTS `pengguna`;


#
# Table structure of table `pengguna`
#

CREATE TABLE `pengguna` (
  `UserId` int(15) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT 'user@web-school.sch.id',
  `level` enum('Administrator','User') NOT NULL DEFAULT 'User',
  `tipe` varchar(250) NOT NULL DEFAULT 'Aktif',
  `nama` varchar(55) NOT NULL,
  `hp` varchar(21) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ;

#
# Data contents of table pengguna (3 records)
#
 
INSERT INTO `pengguna` VALUES (17, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@website.com', 'Administrator', 'aktif', 'Administrator', '', '') ; 
INSERT INTO `pengguna` VALUES (54, 'tomo', 'ca210a07f71dc289302b2f1d4f36cec9', 'admin@klatenweb.com', 'User', 'Aktif', 'Hari Pratomo', '08123123213', 'Klaten') ; 
INSERT INTO `pengguna` VALUES (56, 'elisa', '8070b0b01d9042fdbc54f095bd2832ef', 'elisa@klatenweb.com', 'User', 'Aktif', 'Elisa Putri', '081231222', 'Surabaya') ;
#
# End of data contents of table pengguna
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------


#
# Delete any existing table `posted_ip`
#

DROP TABLE IF EXISTS `posted_ip`;


#
# Table structure of table `posted_ip`
#

CREATE TABLE `posted_ip` (
  `id` bigint(21) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ;

#
# Data contents of table posted_ip (1 records)
#
 
INSERT INTO `posted_ip` VALUES (86, 'guestbook', '127.0.0.1', 1440035701) ;
#
# End of data contents of table posted_ip
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------


#
# Delete any existing table `sensor`
#

DROP TABLE IF EXISTS `sensor`;


#
# Table structure of table `sensor`
#

CREATE TABLE `sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

#
# Data contents of table sensor (9 records)
#
 
INSERT INTO `sensor` VALUES (1, 'Kontol') ; 
INSERT INTO `sensor` VALUES (2, 'Anjing') ; 
INSERT INTO `sensor` VALUES (3, 'Anjeng') ; 
INSERT INTO `sensor` VALUES (4, 'anjrit') ; 
INSERT INTO `sensor` VALUES (5, 'memek') ; 
INSERT INTO `sensor` VALUES (6, 'tempek') ; 
INSERT INTO `sensor` VALUES (7, 'Bangsat') ; 
INSERT INTO `sensor` VALUES (8, 'fuck') ; 
INSERT INTO `sensor` VALUES (9, 'eSDeCe') ;
#
# End of data contents of table sensor
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------


#
# Delete any existing table `slider`
#

DROP TABLE IF EXISTS `slider`;


#
# Table structure of table `slider`
#

CREATE TABLE `slider` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `nama` varchar(99) NOT NULL,
  `foto` varchar(99) NOT NULL,
  `ukuran` varchar(90) NOT NULL,
  `link` varchar(99) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ;

#
# Data contents of table slider (4 records)
#
 
INSERT INTO `slider` VALUES (36, 'Title Slider First', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (37, 'Title Slider Two', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (38, 'Title Slider Three', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (39, 'Title Slider Four', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ;
#
# End of data contents of table slider
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------


#
# Delete any existing table `stat_browse`
#

DROP TABLE IF EXISTS `stat_browse`;


#
# Table structure of table `stat_browse`
#

CREATE TABLE `stat_browse` (
  `pjudul` varchar(255) NOT NULL DEFAULT '',
  `ppilihan` text NOT NULL,
  `pjawaban` text NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Data contents of table stat_browse (5 records)
#
 
INSERT INTO `stat_browse` VALUES ('Browser yang sering digunakan dalam mengakses halaman ini', 'Netscape#Opera#MSIE 4.0#MSIE 5.0#MSIE 6.0#Lynx#WebTV#Konqueror#bot#Other', '83543#192#0#2#138#0#0#0#1685#730', 1) ; 
INSERT INTO `stat_browse` VALUES ('Operating system', 'Windows#Mac#Linux#FreeBSD#SunOS#IRIX#BeOS#OS/2#AIX#Other', '74783#97#283#0#0#0#0#0#0#11153', 2) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan hari', 'Minggu#Senin#Selasa#Rabu#Kamis#Jumat#Sabtu', '11720#2953#42082#15302#4127#2858#7282', 3) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan bulan', 'Januari#Februari#Maret#April#Mei#Juni#Juli#Agustus#September#Oktober#November#Desember', '1166#389#16#35#220#3443#71759#4033#733#3943#23#557', 4) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan jam', '0:00 - 0:59#1:00 - 1:59#2:00 - 2:59#3:00 - 3:59#4:00 - 4:59#5:00 - 5:59#6:00 - 6:59#7:00 - 7:59#8:00 - 8:59#9:00 - 9:59#10:00 - 10:59#11:00 - 11:59#12:00 - 12:59#13:00 - 13:59#14:00 - 14:59#15:00 - 15:59#16:00 - 16:59#17:00 - 17:59#18:00 - 18:59#19:00 - 19:59#20:00 - 20:59#21:00 - 21:59#22:00 - 22:59#23:00 - 23:59', '537#800#400#389#806#713#693#956#3647#7866#7733#5636#9506#7171#6924#2581#2620#9510#7464#2301#2273#2458#2137#1205', 5) ;
#
# End of data contents of table stat_browse
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------


#
# Delete any existing table `submenu`
#

DROP TABLE IF EXISTS `submenu`;


#
# Table structure of table `submenu`
#

CREATE TABLE `submenu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `parent` int(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

#
# Data contents of table submenu (10 records)
#
 
INSERT INTO `submenu` VALUES (35, 'Testimonial', 'index.php?pilih=guestbook&amp;modul=yes', 1, 1, 5) ; 
INSERT INTO `submenu` VALUES (34, 'Forum', 'index.php?pilih=forum&amp;modul=yes', 1, 1, 4) ; 
INSERT INTO `submenu` VALUES (32, 'Status Server', 'index.php?pilih=status&amp;modul=yes', 2, 1, 5) ; 
INSERT INTO `submenu` VALUES (33, 'Check the Expiration', 'index.php?pilih=aktif&amp;modul=yes', 2, 1, 6) ; 
INSERT INTO `submenu` VALUES (31, 'Whois? Lookup', 'index.php?pilih=whois&amp;modul=yes', 2, 1, 4) ; 
INSERT INTO `submenu` VALUES (29, 'Hosting Package', 'index.php?pilih=hal&amp;id=53', 2, 1, 2) ; 
INSERT INTO `submenu` VALUES (30, 'Procedures Order', 'index.php?pilih=hal&amp;id=1', 2, 1, 3) ; 
INSERT INTO `submenu` VALUES (28, 'Domain Price', 'index.php?pilih=hal&amp;id=52', 2, 1, 1) ; 
INSERT INTO `submenu` VALUES (26, 'Contact Us', 'index.php?pilih=contact&amp;modul=yes', 1, 1, 6) ; 
INSERT INTO `submenu` VALUES (24, 'Login Area', 'index.php?pilih=login&amp;modul=yes', 1, 1, 2) ;
#
# End of data contents of table submenu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------


#
# Delete any existing table `tb_setting`
#

DROP TABLE IF EXISTS `tb_setting`;


#
# Table structure of table `tb_setting`
#

CREATE TABLE `tb_setting` (
  `Meta_Desc` varchar(255) NOT NULL,
  `Meta_Key` varchar(255) NOT NULL,
  `Web_Title` varchar(255) NOT NULL,
  `Web_Desc` varchar(255) NOT NULL,
  `Email_Admin` varchar(100) NOT NULL,
  `Url_Situs` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table tb_setting (1 records)
#
 
INSERT INTO `tb_setting` VALUES ('PHP Script Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'admin@klatenmyhosting.com', 'http://klatenmyhosting.com') ;
#
# End of data contents of table tb_setting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Wednesday 2. December 2015 21:02 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `transaksi`
# --------------------------------------------------------


#
# Delete any existing table `transaksi`
#

DROP TABLE IF EXISTS `transaksi`;


#
# Table structure of table `transaksi`
#

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` text NOT NULL,
  `tglbayar` date NOT NULL,
  `jam` time NOT NULL,
  `jumlah` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 ;

#
# Data contents of table transaksi (5 records)
#
 
INSERT INTO `transaksi` VALUES (31, '33e75ff09dd601bbe69f351039152189', '2015-12-02', '19:57:45', '7.5') ; 
INSERT INTO `transaksi` VALUES (30, 'e369853df766fa44e1ed0ff613f563bd', '2015-12-02', '19:57:41', '108') ; 
INSERT INTO `transaksi` VALUES (29, '1c383cd30b7c298ab50293adfecb7b18', '2015-12-02', '19:57:37', '108') ; 
INSERT INTO `transaksi` VALUES (28, 'a5bfc9e07964f8dddeb95fc584cd965d', '2015-12-02', '19:57:28', '8') ; 
INSERT INTO `transaksi` VALUES (27, 'a5771bce93e200c36f7cd9dfd0e5deaa', '2015-12-02', '19:55:16', '50') ;
#
# End of data contents of table transaksi
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------


#
# Delete any existing table `blok`
#

DROP TABLE IF EXISTS `blok`;


#
# Table structure of table `blok`
#

CREATE TABLE `blok` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `namablok` varchar(30) NOT NULL DEFAULT '',
  `isi` text NOT NULL,
  `posisi` tinyint(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `ordering` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Data contents of table blok (2 records)
#
 
INSERT INTO `blok` VALUES (2, 'Location Map', '<img src="images/map.jpg">', 1, 1, 2) ; 
INSERT INTO `blok` VALUES (6, 'Dasdasd', 'sadasd', 0, 1, 3) ;
#
# End of data contents of table blok
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu`
#

DROP TABLE IF EXISTS `bukutamu`;


#
# Table structure of table `bukutamu`
#

CREATE TABLE `bukutamu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sekarang` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homepage` varchar(60) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `komentar` text,
  `jawab` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu (3 records)
#
 
INSERT INTO `bukutamu` VALUES (1, '20-Aug-2015', 'Hari Pratomo', 'admin@klatenweb.com', 'http://klatenweb.com', 'Indonesia', 'Information about the school have been distributed properly through this website', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (2, '20-Aug-2015', 'Elisa Putri', 'elisaputri@websiteku.com', 'http://klatenlisa.com', 'Indonesia', 'Trial shipment testimonial', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (3, '20-Aug-2015', 'Kartika Kalista', 'kartika@klatensite.com', 'http://kartikalista.com', 'Indonesia', 'It is amazing, is already available in the website features discussion forums this school', 'Thank you very much for your visit and your comments') ;
#
# End of data contents of table bukutamu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu_config`
#

DROP TABLE IF EXISTS `bukutamu_config`;


#
# Table structure of table `bukutamu_config`
#

CREATE TABLE `bukutamu_config` (
  `config` text NOT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu_config (1 records)
#
 
INSERT INTO `bukutamu_config` VALUES ('a:2:{s:5:"limit";i:8;s:4:"char";i:500;}', 1) ;
#
# End of data contents of table bukutamu_config
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------


#
# Delete any existing table `client`
#

DROP TABLE IF EXISTS `client`;


#
# Table structure of table `client`
#

CREATE TABLE `client` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `user` varchar(99) NOT NULL,
  `hosting` varchar(99) NOT NULL DEFAULT 'Without Hosting',
  `domain1` varchar(455) NOT NULL,
  `domain2` varchar(99) NOT NULL DEFAULT '1',
  `domain3` varchar(99) NOT NULL,
  `domain` varchar(44) NOT NULL,
  `bayar` varchar(22) NOT NULL DEFAULT 'Unpaid',
  `tanggal` date NOT NULL,
  `cpanel` varchar(99) NOT NULL,
  `cpaneluser` varchar(99) NOT NULL,
  `cpanelpass` varchar(99) NOT NULL,
  `pesan` text NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '0',
  `lama` varchar(1) NOT NULL DEFAULT '1',
  `transfer` varchar(33) NOT NULL,
  `paypal` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ;

#
# Data contents of table client (9 records)
#
 
INSERT INTO `client` VALUES (28, 'tomo', 'Without Hosting', 'klatenweb', '.net', '', 'klatenweb.net', 'Paid', '2016-12-02', 'http://klatenweb.net/cpanel', '', '', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (38, 'tomo', 'Paket Basic', '', '1', 'klatenweb.com', 'klatenweb.com', 'Paid', '2016-12-02', 'http://klatenweb.com/cpanel', 'klatenweb', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (35, 'tomo', 'Paket Unlimited', 'situsita', '.com', '', 'situsita.com', 'Paid', '2016-12-02', 'http://situsita.com/cpanel', 'situsita', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (34, 'tomo', 'Paket Unlimited', 'klatensite', '.com', '', 'klatensite.com', 'Paid', '2016-12-02', 'http://klatensite.com/cpanel', 'klatensite', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (37, 'tomo', 'Without Hosting', 'grosir-mamypoko', '.com', '', 'grosir-mamypoko.com', 'Paid', '2016-12-02', 'http://grosir-mamypoko.com/cpanel', 'grosir', '123456', '', '1', '1', '234DFR2', 0) ; 
INSERT INTO `client` VALUES (40, 'tomo', 'Paket WP Extreme', '', '1', 'suryaonline.com', 'suryaonline.com', 'Paid', '2016-12-03', 'http://suryaonline.com/cpanel', 'suryaon', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (41, 'elisa', 'Paket WP Unlimited', 'elisaputri', '.com', '', 'elisaputri.com', 'Paid', '0000-00-00', '', '', '', '', '0', '2', '', 1) ; 
INSERT INTO `client` VALUES (42, 'elisa', 'Without Hosting', 'klatenlisa', '.com', '', 'klatenlisa.com', 'Unpaid', '0000-00-00', '', '', '', '', '0', '1', '', 0) ; 
INSERT INTO `client` VALUES (43, 'tomo', 'Paket Basic', '', '1', 'klatenbersinar.com', 'klatenbersinar.com', 'Unpaid', '0000-00-00', '', '', '', '', '0', '2', '', 0) ;
#
# End of data contents of table client
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------


#
# Delete any existing table `domain`
#

DROP TABLE IF EXISTS `domain`;


#
# Table structure of table `domain`
#

CREATE TABLE `domain` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ;

#
# Data contents of table domain (5 records)
#
 
INSERT INTO `domain` VALUES (6, '.com', '8', '1') ; 
INSERT INTO `domain` VALUES (8, '.net', '7.5', '1') ; 
INSERT INTO `domain` VALUES (9, '.info', '9', '1') ; 
INSERT INTO `domain` VALUES (10, '.org', '9', '1') ; 
INSERT INTO `domain` VALUES (1, '1', '0', '0') ;
#
# End of data contents of table domain
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------


#
# Delete any existing table `halaman`
#

DROP TABLE IF EXISTS `halaman`;


#
# Table structure of table `halaman`
#

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(80) NOT NULL DEFAULT '',
  `konten` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ;

#
# Data contents of table halaman (5 records)
#
 
INSERT INTO `halaman` VALUES (1, 'Prosedure Order', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (50, 'Profile Company', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (51, 'Client', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (52, 'Domain Price', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (53, 'Hosting Package', '<p>Fill in the Settings page ..</p>') ;
#
# End of data contents of table halaman
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------


#
# Delete any existing table `hosting`
#

DROP TABLE IF EXISTS `hosting`;


#
# Table structure of table `hosting`
#

CREATE TABLE `hosting` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '0',
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ;

#
# Data contents of table hosting (6 records)
#
 
INSERT INTO `hosting` VALUES (6, 'Paket Unlimited', '100', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (8, 'Paket Basic', '50', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (1, 'Tanpa Hosting', '0', '0', '') ; 
INSERT INTO `hosting` VALUES (13, 'Paket WP Basic', '25', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (14, 'Paket WP Extreme', '75', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (15, 'Paket WP Unlimited', '125', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ;
#
# End of data contents of table hosting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------


#
# Delete any existing table `menu`
#

DROP TABLE IF EXISTS `menu`;


#
# Table structure of table `menu`
#

CREATE TABLE `menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ;

#
# Data contents of table menu (2 records)
#
 
INSERT INTO `menu` VALUES (1, 'Top Menu', '#', 1, 1) ; 
INSERT INTO `menu` VALUES (2, 'Left Menu', '#', 1, 2) ;
#
# End of data contents of table menu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum`
#

DROP TABLE IF EXISTS `mod_forum`;


#
# Table structure of table `mod_forum`
#

CREATE TABLE `mod_forum` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(255) NOT NULL DEFAULT '',
  `forum_desc` text NOT NULL,
  `forum_replies` int(12) NOT NULL DEFAULT '0',
  `forum_lastpost` varchar(255) NOT NULL DEFAULT '',
  `lock` int(1) NOT NULL DEFAULT '0',
  `maxpost` int(10) NOT NULL DEFAULT '0',
  `hide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum (4 records)
#
 
INSERT INTO `mod_forum` VALUES (4, 'Dedicate Server', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 0, 0) ; 
INSERT INTO `mod_forum` VALUES (3, 'PHP Script Billing Hosting', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ; 
INSERT INTO `mod_forum` VALUES (5, 'Domain Name', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ; 
INSERT INTO `mod_forum` VALUES (6, 'Submit Ticket', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ;
#
# End of data contents of table mod_forum
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_a`
#

DROP TABLE IF EXISTS `mod_forum_a`;


#
# Table structure of table `mod_forum_a`
#

CREATE TABLE `mod_forum_a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL,
  `signature` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_a (1 records)
#
 
INSERT INTO `mod_forum_a` VALUES (1, 'admin', 'images/adminku.png', '') ;
#
# End of data contents of table mod_forum_a
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_t`
#

DROP TABLE IF EXISTS `mod_forum_t`;


#
# Table structure of table `mod_forum_t`
#

CREATE TABLE `mod_forum_t` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `thread_name` varchar(255) NOT NULL DEFAULT '',
  `thread_reply` varchar(50) NOT NULL DEFAULT '',
  `thread_desc` text NOT NULL,
  `forum_id` int(12) NOT NULL DEFAULT '0',
  `thread_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thread_user` varchar(16) NOT NULL DEFAULT '',
  `thread_parent` int(12) NOT NULL DEFAULT '0',
  `thread_view` int(12) NOT NULL DEFAULT '0',
  `thread_lock` int(1) NOT NULL DEFAULT '0',
  `thread_a` int(2) NOT NULL DEFAULT '0',
  `thread_s` int(2) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_t (5 records)
#
 
INSERT INTO `mod_forum_t` VALUES (12, 'Tentang Kenekalan Remaja', '', '<p>pada sekarang ini kenakalan remaja merupakan masalah serius bagaimana sekolah menangani hal ini</p>', 26, '2014-10-11 05:28:03', 'salaffudin', 0, 7, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (13, '', 'Tentang Kenekalan Remaja', '<p>Terimakasih sudah posting kenakalan remaja merupakan tugas kita bersama</p>', 26, '2014-10-11 05:30:25', 'admin', 12, 0, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (14, '', 'Tentang Kenekalan Remaja', '<p>ok</p>', 26, '2014-10-12 21:10:48', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (15, '', 'Tentang Kenekalan Remaja', '<p>coba--coba</p>', 26, '2014-10-12 21:12:42', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (19, 'Resposive Design', '', '<p>I like it, simple and easy to use</p>', 3, '2015-12-02 21:08:42', 'tomo', 0, 1, 0, 0, 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36') ;
#
# End of data contents of table mod_forum_t
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------


#
# Delete any existing table `mod_online`
#

DROP TABLE IF EXISTS `mod_online`;


#
# Table structure of table `mod_online`
#

CREATE TABLE `mod_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `visitor` varchar(255) DEFAULT NULL,
  `ipd` varchar(30) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `timevisit` int(11) NOT NULL DEFAULT '0',
  `halaman` text,
  `mdhash` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_online (0 records)
#

#
# End of data contents of table mod_online
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------


#
# Delete any existing table `pcomment`
#

DROP TABLE IF EXISTS `pcomment`;


#
# Table structure of table `pcomment`
#

CREATE TABLE `pcomment` (
  `id` int(10) NOT NULL,
  `pengirim` int(10) NOT NULL,
  `penerima` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `direktori` varchar(150) NOT NULL,
  `komen` text CHARACTER SET cp866 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table pcomment (0 records)
#

#
# End of data contents of table pcomment
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------


#
# Delete any existing table `pengguna`
#

DROP TABLE IF EXISTS `pengguna`;


#
# Table structure of table `pengguna`
#

CREATE TABLE `pengguna` (
  `UserId` int(15) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT 'user@web-school.sch.id',
  `level` enum('Administrator','User') NOT NULL DEFAULT 'User',
  `tipe` varchar(250) NOT NULL DEFAULT 'Aktif',
  `nama` varchar(55) NOT NULL,
  `hp` varchar(21) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ;

#
# Data contents of table pengguna (3 records)
#
 
INSERT INTO `pengguna` VALUES (17, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@website.com', 'Administrator', 'aktif', 'Administrator', '', '') ; 
INSERT INTO `pengguna` VALUES (54, 'tomo', 'bcea36077206c2436ff2e3e3b836f6e9', 'admin@klatenweb.com', 'User', 'Aktif', 'Hari Pratomo', '08123123213', 'Klaten') ; 
INSERT INTO `pengguna` VALUES (57, 'elisa', '8070b0b01d9042fdbc54f095bd2832ef', 'elisa@website.com', 'User', 'aktif', 'Elisa Putri', '081', 'Surabaya') ;
#
# End of data contents of table pengguna
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------


#
# Delete any existing table `posted_ip`
#

DROP TABLE IF EXISTS `posted_ip`;


#
# Table structure of table `posted_ip`
#

CREATE TABLE `posted_ip` (
  `id` bigint(21) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ;

#
# Data contents of table posted_ip (1 records)
#
 
INSERT INTO `posted_ip` VALUES (86, 'guestbook', '127.0.0.1', 1440035701) ;
#
# End of data contents of table posted_ip
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------


#
# Delete any existing table `sensor`
#

DROP TABLE IF EXISTS `sensor`;


#
# Table structure of table `sensor`
#

CREATE TABLE `sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

#
# Data contents of table sensor (9 records)
#
 
INSERT INTO `sensor` VALUES (1, 'Kontol') ; 
INSERT INTO `sensor` VALUES (2, 'Anjing') ; 
INSERT INTO `sensor` VALUES (3, 'Anjeng') ; 
INSERT INTO `sensor` VALUES (4, 'anjrit') ; 
INSERT INTO `sensor` VALUES (5, 'memek') ; 
INSERT INTO `sensor` VALUES (6, 'tempek') ; 
INSERT INTO `sensor` VALUES (7, 'Bangsat') ; 
INSERT INTO `sensor` VALUES (8, 'fuck') ; 
INSERT INTO `sensor` VALUES (9, 'eSDeCe') ;
#
# End of data contents of table sensor
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------


#
# Delete any existing table `slider`
#

DROP TABLE IF EXISTS `slider`;


#
# Table structure of table `slider`
#

CREATE TABLE `slider` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `nama` varchar(99) NOT NULL,
  `foto` varchar(99) NOT NULL,
  `ukuran` varchar(90) NOT NULL,
  `link` varchar(99) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ;

#
# Data contents of table slider (4 records)
#
 
INSERT INTO `slider` VALUES (36, 'Title Slider First', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (37, 'Title Slider Two', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (38, 'Title Slider Three', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (39, 'Title Slider Four', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ;
#
# End of data contents of table slider
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------


#
# Delete any existing table `stat_browse`
#

DROP TABLE IF EXISTS `stat_browse`;


#
# Table structure of table `stat_browse`
#

CREATE TABLE `stat_browse` (
  `pjudul` varchar(255) NOT NULL DEFAULT '',
  `ppilihan` text NOT NULL,
  `pjawaban` text NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Data contents of table stat_browse (5 records)
#
 
INSERT INTO `stat_browse` VALUES ('Browser yang sering digunakan dalam mengakses halaman ini', 'Netscape#Opera#MSIE 4.0#MSIE 5.0#MSIE 6.0#Lynx#WebTV#Konqueror#bot#Other', '83777#192#0#2#138#0#0#0#1685#730', 1) ; 
INSERT INTO `stat_browse` VALUES ('Operating system', 'Windows#Mac#Linux#FreeBSD#SunOS#IRIX#BeOS#OS/2#AIX#Other', '75017#97#283#0#0#0#0#0#0#11153', 2) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan hari', 'Minggu#Senin#Selasa#Rabu#Kamis#Jumat#Sabtu', '11720#2953#42082#15443#4220#2858#7282', 3) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan bulan', 'Januari#Februari#Maret#April#Mei#Juni#Juli#Agustus#September#Oktober#November#Desember', '1166#389#16#35#220#3443#71759#4033#733#3943#23#791', 4) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan jam', '0:00 - 0:59#1:00 - 1:59#2:00 - 2:59#3:00 - 3:59#4:00 - 4:59#5:00 - 5:59#6:00 - 6:59#7:00 - 7:59#8:00 - 8:59#9:00 - 9:59#10:00 - 10:59#11:00 - 11:59#12:00 - 12:59#13:00 - 13:59#14:00 - 14:59#15:00 - 15:59#16:00 - 16:59#17:00 - 17:59#18:00 - 18:59#19:00 - 19:59#20:00 - 20:59#21:00 - 21:59#22:00 - 22:59#23:00 - 23:59', '537#800#400#389#806#713#693#1041#3655#7866#7733#5636#9506#7171#6924#2581#2620#9510#7464#2301#2273#2559#2177#1205', 5) ;
#
# End of data contents of table stat_browse
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------


#
# Delete any existing table `submenu`
#

DROP TABLE IF EXISTS `submenu`;


#
# Table structure of table `submenu`
#

CREATE TABLE `submenu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `parent` int(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

#
# Data contents of table submenu (11 records)
#
 
INSERT INTO `submenu` VALUES (35, 'Testimonial', 'index.php?pilih=guestbook&amp;modul=yes', 1, 1, 5) ; 
INSERT INTO `submenu` VALUES (34, 'Forum', 'index.php?pilih=forum&amp;modul=yes', 1, 1, 4) ; 
INSERT INTO `submenu` VALUES (32, 'Status Server', 'index.php?pilih=status&amp;modul=yes', 2, 1, 5) ; 
INSERT INTO `submenu` VALUES (33, 'Check the Expiration', 'index.php?pilih=aktif&amp;modul=yes', 2, 1, 6) ; 
INSERT INTO `submenu` VALUES (31, 'Whois? Lookup', 'index.php?pilih=whois&amp;modul=yes', 2, 1, 4) ; 
INSERT INTO `submenu` VALUES (29, 'Hosting Package', 'index.php?pilih=hal&amp;id=53', 2, 1, 2) ; 
INSERT INTO `submenu` VALUES (30, 'Procedures Order', 'index.php?pilih=hal&amp;id=1', 2, 1, 3) ; 
INSERT INTO `submenu` VALUES (28, 'Domain Price', 'index.php?pilih=hal&amp;id=52', 2, 1, 1) ; 
INSERT INTO `submenu` VALUES (26, 'Contact Us', 'index.php?pilih=contact&amp;modul=yes', 1, 1, 6) ; 
INSERT INTO `submenu` VALUES (23, 'Register', 'index.php?pilih=user&aksi=register', 1, 1, 1) ; 
INSERT INTO `submenu` VALUES (24, 'Login Area', 'index.php?pilih=login&amp;modul=yes', 1, 1, 2) ;
#
# End of data contents of table submenu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------


#
# Delete any existing table `tb_setting`
#

DROP TABLE IF EXISTS `tb_setting`;


#
# Table structure of table `tb_setting`
#

CREATE TABLE `tb_setting` (
  `Meta_Desc` varchar(255) NOT NULL,
  `Meta_Key` varchar(255) NOT NULL,
  `Web_Title` varchar(255) NOT NULL,
  `Web_Desc` varchar(255) NOT NULL,
  `Email_Admin` varchar(100) NOT NULL,
  `Url_Situs` varchar(225) NOT NULL,
  `Paypal_Account` varchar(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table tb_setting (1 records)
#
 
INSERT INTO `tb_setting` VALUES ('PHP Script Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'admin@klatenmyhosting.com', 'http://klatenmyhosting.com', 'paypal@klatenweb.com') ;
#
# End of data contents of table tb_setting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:01 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `transaksi`
# --------------------------------------------------------


#
# Delete any existing table `transaksi`
#

DROP TABLE IF EXISTS `transaksi`;


#
# Table structure of table `transaksi`
#

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` text NOT NULL,
  `tglbayar` date NOT NULL,
  `jam` time NOT NULL,
  `jumlah` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ;

#
# Data contents of table transaksi (6 records)
#
 
INSERT INTO `transaksi` VALUES (32, 'd645920e395fedad7bbbed0eca3fe2e0', '2015-12-03', '07:42:29', '75') ; 
INSERT INTO `transaksi` VALUES (31, '33e75ff09dd601bbe69f351039152189', '2015-12-02', '19:57:45', '7.5') ; 
INSERT INTO `transaksi` VALUES (30, 'e369853df766fa44e1ed0ff613f563bd', '2015-12-02', '19:57:41', '108') ; 
INSERT INTO `transaksi` VALUES (29, '1c383cd30b7c298ab50293adfecb7b18', '2015-12-02', '19:57:37', '108') ; 
INSERT INTO `transaksi` VALUES (28, 'a5bfc9e07964f8dddeb95fc584cd965d', '2015-12-02', '19:57:28', '8') ; 
INSERT INTO `transaksi` VALUES (27, 'a5771bce93e200c36f7cd9dfd0e5deaa', '2015-12-02', '19:55:16', '50') ;
#
# End of data contents of table transaksi
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------


#
# Delete any existing table `blok`
#

DROP TABLE IF EXISTS `blok`;


#
# Table structure of table `blok`
#

CREATE TABLE `blok` (
  `id` tinyint(11) NOT NULL AUTO_INCREMENT,
  `namablok` varchar(30) NOT NULL DEFAULT '',
  `isi` text NOT NULL,
  `posisi` tinyint(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '0',
  `ordering` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Data contents of table blok (2 records)
#
 
INSERT INTO `blok` VALUES (2, 'Location Map', '<img src="images/map.jpg">', 1, 1, 2) ; 
INSERT INTO `blok` VALUES (6, 'Dasdasd', 'sadasd', 0, 1, 3) ;
#
# End of data contents of table blok
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu`
#

DROP TABLE IF EXISTS `bukutamu`;


#
# Table structure of table `bukutamu`
#

CREATE TABLE `bukutamu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sekarang` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `homepage` varchar(60) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `komentar` text,
  `jawab` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu (3 records)
#
 
INSERT INTO `bukutamu` VALUES (1, '20-Aug-2015', 'Hari Pratomo', 'admin@klatenweb.com', 'http://klatenweb.com', 'Indonesia', 'Information about the school have been distributed properly through this website', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (2, '20-Aug-2015', 'Elisa Putri', 'elisaputri@websiteku.com', 'http://klatenlisa.com', 'Indonesia', 'Trial shipment testimonial', 'Thank you very much for your visit and your comments') ; 
INSERT INTO `bukutamu` VALUES (3, '20-Aug-2015', 'Kartika Kalista', 'kartika@klatensite.com', 'http://kartikalista.com', 'Indonesia', 'It is amazing, is already available in the website features discussion forums this school', 'Thank you very much for your visit and your comments') ;
#
# End of data contents of table bukutamu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------


#
# Delete any existing table `bukutamu_config`
#

DROP TABLE IF EXISTS `bukutamu_config`;


#
# Table structure of table `bukutamu_config`
#

CREATE TABLE `bukutamu_config` (
  `config` text NOT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ;

#
# Data contents of table bukutamu_config (1 records)
#
 
INSERT INTO `bukutamu_config` VALUES ('a:2:{s:5:"limit";i:8;s:4:"char";i:500;}', 1) ;
#
# End of data contents of table bukutamu_config
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------


#
# Delete any existing table `client`
#

DROP TABLE IF EXISTS `client`;


#
# Table structure of table `client`
#

CREATE TABLE `client` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `user` varchar(99) NOT NULL,
  `hosting` varchar(99) NOT NULL DEFAULT 'Without Hosting',
  `domain1` varchar(455) NOT NULL,
  `domain2` varchar(99) NOT NULL DEFAULT '1',
  `domain3` varchar(99) NOT NULL,
  `domain` varchar(44) NOT NULL,
  `bayar` varchar(22) NOT NULL DEFAULT 'Unpaid',
  `tanggal` date NOT NULL,
  `cpanel` varchar(99) NOT NULL,
  `cpaneluser` varchar(99) NOT NULL,
  `cpanelpass` varchar(99) NOT NULL,
  `pesan` text NOT NULL,
  `stat` varchar(1) NOT NULL DEFAULT '0',
  `lama` varchar(1) NOT NULL DEFAULT '1',
  `transfer` varchar(33) NOT NULL,
  `paypal` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ;

#
# Data contents of table client (9 records)
#
 
INSERT INTO `client` VALUES (28, 'tomo', 'Without Hosting', 'klatenweb', '.net', '', 'klatenweb.net', 'Paid', '2016-12-02', 'http://klatenweb.net/cpanel', '', '', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (38, 'tomo', 'Paket Basic', '', '1', 'klatenweb.com', 'klatenweb.com', 'Paid', '2016-12-02', 'http://klatenweb.com/cpanel', 'klatenweb', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (35, 'tomo', 'Paket Unlimited', 'situsita', '.com', '', 'situsita.com', 'Paid', '2016-12-02', 'http://situsita.com/cpanel', 'situsita', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (34, 'tomo', 'Paket Unlimited', 'klatensite', '.com', '', 'klatensite.com', 'Paid', '2016-12-02', 'http://klatensite.com/cpanel', 'klatensite', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (37, 'tomo', 'Without Hosting', 'grosir-mamypoko', '.com', '', 'grosir-mamypoko.com', 'Paid', '2016-12-02', 'http://grosir-mamypoko.com/cpanel', 'grosir', '123456', '', '1', '1', '234DFR2', 0) ; 
INSERT INTO `client` VALUES (40, 'tomo', 'Paket WP Extreme', '', '1', 'suryaonline.com', 'suryaonline.com', 'Paid', '2016-12-03', 'http://suryaonline.com/cpanel', 'suryaon', '123456', '', '1', '1', '', 0) ; 
INSERT INTO `client` VALUES (41, 'elisa', 'Paket WP Unlimited', 'elisaputri', '.com', '', 'elisaputri.com', 'Paid', '0000-00-00', '', '', '', '', '0', '2', '', 1) ; 
INSERT INTO `client` VALUES (42, 'elisa', 'Without Hosting', 'klatenlisa', '.com', '', 'klatenlisa.com', 'Unpaid', '0000-00-00', '', '', '', '', '0', '1', '', 0) ; 
INSERT INTO `client` VALUES (43, 'tomo', 'Paket Basic', '', '1', 'klatenbersinar.com', 'klatenbersinar.com', 'Unpaid', '0000-00-00', '', '', '', '', '0', '2', '', 0) ;
#
# End of data contents of table client
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------


#
# Delete any existing table `domain`
#

DROP TABLE IF EXISTS `domain`;


#
# Table structure of table `domain`
#

CREATE TABLE `domain` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ;

#
# Data contents of table domain (5 records)
#
 
INSERT INTO `domain` VALUES (6, '.com', '8', '1') ; 
INSERT INTO `domain` VALUES (8, '.net', '7.5', '1') ; 
INSERT INTO `domain` VALUES (9, '.info', '9', '1') ; 
INSERT INTO `domain` VALUES (10, '.org', '9', '1') ; 
INSERT INTO `domain` VALUES (1, '1', '0', '0') ;
#
# End of data contents of table domain
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------


#
# Delete any existing table `halaman`
#

DROP TABLE IF EXISTS `halaman`;


#
# Table structure of table `halaman`
#

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(80) NOT NULL DEFAULT '',
  `konten` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ;

#
# Data contents of table halaman (5 records)
#
 
INSERT INTO `halaman` VALUES (1, 'Prosedure Order', '<p>You must register before the transaction, after a successful registration and login and perform transactions with members click menu on the left.</p>') ; 
INSERT INTO `halaman` VALUES (50, 'Profile Company', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (51, 'Client', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (52, 'Domain Price', '<p>Fill in the Settings page ..</p>') ; 
INSERT INTO `halaman` VALUES (53, 'Hosting Package', '<p>Fill in the Settings page ..</p>') ;
#
# End of data contents of table halaman
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------


#
# Delete any existing table `hosting`
#

DROP TABLE IF EXISTS `hosting`;


#
# Table structure of table `hosting`
#

CREATE TABLE `hosting` (
  `id` bigint(44) NOT NULL AUTO_INCREMENT,
  `nama` varchar(44) NOT NULL,
  `harga` varchar(44) NOT NULL,
  `view` varchar(1) NOT NULL DEFAULT '0',
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ;

#
# Data contents of table hosting (6 records)
#
 
INSERT INTO `hosting` VALUES (6, 'Paket Unlimited', '100', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (8, 'Paket Basic', '50', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (1, 'Tanpa Hosting', '0', '0', '') ; 
INSERT INTO `hosting` VALUES (13, 'Paket WP Basic', '25', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (14, 'Paket WP Extreme', '75', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ; 
INSERT INTO `hosting` VALUES (15, 'Paket WP Unlimited', '125', '1', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.') ;
#
# End of data contents of table hosting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------


#
# Delete any existing table `menu`
#

DROP TABLE IF EXISTS `menu`;


#
# Table structure of table `menu`
#

CREATE TABLE `menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ;

#
# Data contents of table menu (2 records)
#
 
INSERT INTO `menu` VALUES (1, 'Top Menu', '#', 1, 1) ; 
INSERT INTO `menu` VALUES (2, 'Left Menu', '#', 1, 2) ;
#
# End of data contents of table menu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum`
#

DROP TABLE IF EXISTS `mod_forum`;


#
# Table structure of table `mod_forum`
#

CREATE TABLE `mod_forum` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(255) NOT NULL DEFAULT '',
  `forum_desc` text NOT NULL,
  `forum_replies` int(12) NOT NULL DEFAULT '0',
  `forum_lastpost` varchar(255) NOT NULL DEFAULT '',
  `lock` int(1) NOT NULL DEFAULT '0',
  `maxpost` int(10) NOT NULL DEFAULT '0',
  `hide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum (4 records)
#
 
INSERT INTO `mod_forum` VALUES (4, 'Dedicate Server', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 0, 0) ; 
INSERT INTO `mod_forum` VALUES (3, 'PHP Script Billing Hosting', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ; 
INSERT INTO `mod_forum` VALUES (5, 'Domain Name', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ; 
INSERT INTO `mod_forum` VALUES (6, 'Submit Ticket', 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0, '', 0, 500, 0) ;
#
# End of data contents of table mod_forum
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_a`
#

DROP TABLE IF EXISTS `mod_forum_a`;


#
# Table structure of table `mod_forum_a`
#

CREATE TABLE `mod_forum_a` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL,
  `signature` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_a (1 records)
#
 
INSERT INTO `mod_forum_a` VALUES (1, 'admin', 'images/adminku.png', '') ;
#
# End of data contents of table mod_forum_a
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------


#
# Delete any existing table `mod_forum_t`
#

DROP TABLE IF EXISTS `mod_forum_t`;


#
# Table structure of table `mod_forum_t`
#

CREATE TABLE `mod_forum_t` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `thread_name` varchar(255) NOT NULL DEFAULT '',
  `thread_reply` varchar(50) NOT NULL DEFAULT '',
  `thread_desc` text NOT NULL,
  `forum_id` int(12) NOT NULL DEFAULT '0',
  `thread_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `thread_user` varchar(16) NOT NULL DEFAULT '',
  `thread_parent` int(12) NOT NULL DEFAULT '0',
  `thread_view` int(12) NOT NULL DEFAULT '0',
  `thread_lock` int(1) NOT NULL DEFAULT '0',
  `thread_a` int(2) NOT NULL DEFAULT '0',
  `thread_s` int(2) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_forum_t (5 records)
#
 
INSERT INTO `mod_forum_t` VALUES (12, 'Tentang Kenekalan Remaja', '', '<p>pada sekarang ini kenakalan remaja merupakan masalah serius bagaimana sekolah menangani hal ini</p>', 26, '2014-10-11 05:28:03', 'salaffudin', 0, 7, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (13, '', 'Tentang Kenekalan Remaja', '<p>Terimakasih sudah posting kenakalan remaja merupakan tugas kita bersama</p>', 26, '2014-10-11 05:30:25', 'admin', 12, 0, 0, 0, 0, '39.253.211.110', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (14, '', 'Tentang Kenekalan Remaja', '<p>ok</p>', 26, '2014-10-12 21:10:48', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (15, '', 'Tentang Kenekalan Remaja', '<p>coba--coba</p>', 26, '2014-10-12 21:12:42', 'viva', 12, 0, 0, 0, 0, '114.124.28.87', 'Mozilla/5.0 (Windows NT 5.1; rv:33.0) Gecko/20100101 Firefox/33.0') ; 
INSERT INTO `mod_forum_t` VALUES (19, 'Resposive Design', '', '<p>I like it, simple and easy to use</p>', 3, '2015-12-02 21:08:42', 'tomo', 0, 1, 0, 0, 0, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36') ;
#
# End of data contents of table mod_forum_t
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------


#
# Delete any existing table `mod_online`
#

DROP TABLE IF EXISTS `mod_online`;


#
# Table structure of table `mod_online`
#

CREATE TABLE `mod_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL DEFAULT '0',
  `visitor` varchar(255) DEFAULT NULL,
  `ipd` varchar(30) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  `timevisit` int(11) NOT NULL DEFAULT '0',
  `halaman` text,
  `mdhash` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table mod_online (0 records)
#

#
# End of data contents of table mod_online
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------


#
# Delete any existing table `pcomment`
#

DROP TABLE IF EXISTS `pcomment`;


#
# Table structure of table `pcomment`
#

CREATE TABLE `pcomment` (
  `id` int(10) NOT NULL,
  `pengirim` int(10) NOT NULL,
  `penerima` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `direktori` varchar(150) NOT NULL,
  `komen` text CHARACTER SET cp866 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table pcomment (0 records)
#

#
# End of data contents of table pcomment
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------


#
# Delete any existing table `pengguna`
#

DROP TABLE IF EXISTS `pengguna`;


#
# Table structure of table `pengguna`
#

CREATE TABLE `pengguna` (
  `UserId` int(15) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT 'user@web-school.sch.id',
  `level` enum('Administrator','User') NOT NULL DEFAULT 'User',
  `tipe` varchar(250) NOT NULL DEFAULT 'Aktif',
  `nama` varchar(55) NOT NULL,
  `hp` varchar(21) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 ;

#
# Data contents of table pengguna (3 records)
#
 
INSERT INTO `pengguna` VALUES (17, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@website.com', 'Administrator', 'aktif', 'Administrator', '', '') ; 
INSERT INTO `pengguna` VALUES (54, 'tomo', 'bcea36077206c2436ff2e3e3b836f6e9', 'admin@klatenweb.com', 'User', 'Aktif', 'Hari Pratomo', '08123123213', 'Klaten') ; 
INSERT INTO `pengguna` VALUES (57, 'elisa', '8070b0b01d9042fdbc54f095bd2832ef', 'elisa@website.com', 'User', 'aktif', 'Elisa Putri', '081', 'Surabaya') ;
#
# End of data contents of table pengguna
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------


#
# Delete any existing table `posted_ip`
#

DROP TABLE IF EXISTS `posted_ip`;


#
# Table structure of table `posted_ip`
#

CREATE TABLE `posted_ip` (
  `id` bigint(21) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 ;

#
# Data contents of table posted_ip (1 records)
#
 
INSERT INTO `posted_ip` VALUES (86, 'guestbook', '127.0.0.1', 1440035701) ;
#
# End of data contents of table posted_ip
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------


#
# Delete any existing table `sensor`
#

DROP TABLE IF EXISTS `sensor`;


#
# Table structure of table `sensor`
#

CREATE TABLE `sensor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ;

#
# Data contents of table sensor (9 records)
#
 
INSERT INTO `sensor` VALUES (1, 'Kontol') ; 
INSERT INTO `sensor` VALUES (2, 'Anjing') ; 
INSERT INTO `sensor` VALUES (3, 'Anjeng') ; 
INSERT INTO `sensor` VALUES (4, 'anjrit') ; 
INSERT INTO `sensor` VALUES (5, 'memek') ; 
INSERT INTO `sensor` VALUES (6, 'tempek') ; 
INSERT INTO `sensor` VALUES (7, 'Bangsat') ; 
INSERT INTO `sensor` VALUES (8, 'fuck') ; 
INSERT INTO `sensor` VALUES (9, 'eSDeCe') ;
#
# End of data contents of table sensor
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------


#
# Delete any existing table `slider`
#

DROP TABLE IF EXISTS `slider`;


#
# Table structure of table `slider`
#

CREATE TABLE `slider` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `nama` varchar(99) NOT NULL,
  `foto` varchar(99) NOT NULL,
  `ukuran` varchar(90) NOT NULL,
  `link` varchar(99) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ;

#
# Data contents of table slider (4 records)
#
 
INSERT INTO `slider` VALUES (36, 'Title Slider First', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (37, 'Title Slider Two', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (38, 'Title Slider Three', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ; 
INSERT INTO `slider` VALUES (39, 'Title Slider Four', '800.png', '800px x 300px', '#', 'Fill explanation or description of the slider, you can add a few words in it, log in as an administrator and click menu management plus slider and then click on the slider or data, and input the information was in the form caption') ;
#
# End of data contents of table slider
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------


#
# Delete any existing table `stat_browse`
#

DROP TABLE IF EXISTS `stat_browse`;


#
# Table structure of table `stat_browse`
#

CREATE TABLE `stat_browse` (
  `pjudul` varchar(255) NOT NULL DEFAULT '',
  `ppilihan` text NOT NULL,
  `pjawaban` text NOT NULL,
  `id` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Data contents of table stat_browse (5 records)
#
 
INSERT INTO `stat_browse` VALUES ('Browser yang sering digunakan dalam mengakses halaman ini', 'Netscape#Opera#MSIE 4.0#MSIE 5.0#MSIE 6.0#Lynx#WebTV#Konqueror#bot#Other', '83781#192#0#2#138#0#0#0#1685#730', 1) ; 
INSERT INTO `stat_browse` VALUES ('Operating system', 'Windows#Mac#Linux#FreeBSD#SunOS#IRIX#BeOS#OS/2#AIX#Other', '75021#97#283#0#0#0#0#0#0#11153', 2) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan hari', 'Minggu#Senin#Selasa#Rabu#Kamis#Jumat#Sabtu', '11720#2953#42082#15443#4224#2858#7282', 3) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan bulan', 'Januari#Februari#Maret#April#Mei#Juni#Juli#Agustus#September#Oktober#November#Desember', '1166#389#16#35#220#3443#71759#4033#733#3943#23#795', 4) ; 
INSERT INTO `stat_browse` VALUES ('Pengunjung berdasarkan jam', '0:00 - 0:59#1:00 - 1:59#2:00 - 2:59#3:00 - 3:59#4:00 - 4:59#5:00 - 5:59#6:00 - 6:59#7:00 - 7:59#8:00 - 8:59#9:00 - 9:59#10:00 - 10:59#11:00 - 11:59#12:00 - 12:59#13:00 - 13:59#14:00 - 14:59#15:00 - 15:59#16:00 - 16:59#17:00 - 17:59#18:00 - 18:59#19:00 - 19:59#20:00 - 20:59#21:00 - 21:59#22:00 - 22:59#23:00 - 23:59', '537#800#400#389#806#713#693#1041#3659#7866#7733#5636#9506#7171#6924#2581#2620#9510#7464#2301#2273#2559#2177#1205', 5) ;
#
# End of data contents of table stat_browse
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------


#
# Delete any existing table `submenu`
#

DROP TABLE IF EXISTS `submenu`;


#
# Table structure of table `submenu`
#

CREATE TABLE `submenu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(127) NOT NULL DEFAULT '',
  `parent` int(2) NOT NULL DEFAULT '0',
  `published` int(1) NOT NULL DEFAULT '1',
  `ordering` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ;

#
# Data contents of table submenu (11 records)
#
 
INSERT INTO `submenu` VALUES (35, 'Testimonial', 'index.php?pilih=guestbook&amp;modul=yes', 1, 1, 5) ; 
INSERT INTO `submenu` VALUES (34, 'Forum', 'index.php?pilih=forum&amp;modul=yes', 1, 1, 4) ; 
INSERT INTO `submenu` VALUES (32, 'Status Server', 'index.php?pilih=status&amp;modul=yes', 2, 1, 5) ; 
INSERT INTO `submenu` VALUES (33, 'Check the Expiration', 'index.php?pilih=aktif&amp;modul=yes', 2, 1, 6) ; 
INSERT INTO `submenu` VALUES (31, 'Whois? Lookup', 'index.php?pilih=whois&amp;modul=yes', 2, 1, 4) ; 
INSERT INTO `submenu` VALUES (29, 'Hosting Package', 'index.php?pilih=hal&amp;id=53', 2, 1, 2) ; 
INSERT INTO `submenu` VALUES (30, 'Procedures Order', 'index.php?pilih=hal&amp;id=1', 2, 1, 3) ; 
INSERT INTO `submenu` VALUES (28, 'Domain Price', 'index.php?pilih=hal&amp;id=52', 2, 1, 1) ; 
INSERT INTO `submenu` VALUES (26, 'Contact Us', 'index.php?pilih=contact&amp;modul=yes', 1, 1, 6) ; 
INSERT INTO `submenu` VALUES (23, 'Register', 'index.php?pilih=user&aksi=register', 1, 1, 1) ; 
INSERT INTO `submenu` VALUES (24, 'Login Area', 'index.php?pilih=login&amp;modul=yes', 1, 1, 2) ;
#
# End of data contents of table submenu
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------


#
# Delete any existing table `tb_setting`
#

DROP TABLE IF EXISTS `tb_setting`;


#
# Table structure of table `tb_setting`
#

CREATE TABLE `tb_setting` (
  `Meta_Desc` varchar(255) NOT NULL,
  `Meta_Key` varchar(255) NOT NULL,
  `Web_Title` varchar(255) NOT NULL,
  `Web_Desc` varchar(255) NOT NULL,
  `Email_Admin` varchar(100) NOT NULL,
  `Url_Situs` varchar(225) NOT NULL,
  `Paypal_Account` varchar(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ;

#
# Data contents of table tb_setting (1 records)
#
 
INSERT INTO `tb_setting` VALUES ('PHP Script Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'Simple Billing Hosting', 'PHP Script Simple Billing Hosting', 'admin@klatenmyhosting.com', 'http://klatenmyhosting.com', 'paypal@klatenweb.com') ;
#
# End of data contents of table tb_setting
# --------------------------------------------------------

# KLATENWEB.com : Backup and Restore Database
# Author, Hari Pratomo
# Generated: Thursday 3. December 2015 08:03 WIT
# Hostname: localhost
# Database: `billing`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `blok`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `bukutamu_config`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `client`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `domain`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `halaman`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `hosting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `menu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_a`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_forum_t`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `mod_online`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pcomment`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `pengguna`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `posted_ip`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `sensor`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `slider`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `stat_browse`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `submenu`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tb_setting`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `transaksi`
# --------------------------------------------------------


#
# Delete any existing table `transaksi`
#

DROP TABLE IF EXISTS `transaksi`;


#
# Table structure of table `transaksi`
#

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` text NOT NULL,
  `tglbayar` date NOT NULL,
  `jam` time NOT NULL,
  `jumlah` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ;

#
# Data contents of table transaksi (6 records)
#
 
INSERT INTO `transaksi` VALUES (32, 'd645920e395fedad7bbbed0eca3fe2e0', '2015-12-03', '07:42:29', '75') ; 
INSERT INTO `transaksi` VALUES (31, '33e75ff09dd601bbe69f351039152189', '2015-12-02', '19:57:45', '7.5') ; 
INSERT INTO `transaksi` VALUES (30, 'e369853df766fa44e1ed0ff613f563bd', '2015-12-02', '19:57:41', '108') ; 
INSERT INTO `transaksi` VALUES (29, '1c383cd30b7c298ab50293adfecb7b18', '2015-12-02', '19:57:37', '108') ; 
INSERT INTO `transaksi` VALUES (28, 'a5bfc9e07964f8dddeb95fc584cd965d', '2015-12-02', '19:57:28', '8') ; 
INSERT INTO `transaksi` VALUES (27, 'a5771bce93e200c36f7cd9dfd0e5deaa', '2015-12-02', '19:55:16', '50') ;
#
# End of data contents of table transaksi
# --------------------------------------------------------

