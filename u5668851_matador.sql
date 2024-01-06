-- MySQL dump 10.13  Distrib 5.7.44, for Linux (x86_64)
--
-- Host: localhost    Database: u5668851_matador
-- ------------------------------------------------------
-- Server version	5.7.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `teknisi`
--

DROP TABLE IF EXISTS `teknisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teknisi` (
						   `id` int(4) NOT NULL AUTO_INCREMENT,
						   `crew` varchar(10) NOT NULL,
						   `nama` varchar(30) NOT NULL,
						   `nik` varchar(10) NOT NULL,
						   `mitra` varchar(55) NOT NULL,
						   `sto` varchar(6) NOT NULL,
						   `sektor` varchar(10) NOT NULL,
						   `jadwal` varchar(6) NOT NULL,
						   `ket` varchar(10) NOT NULL,
						   `status` varchar(10) DEFAULT NULL,
						   `teknisi` varchar(55) DEFAULT NULL,
						   `presensi_masuk` datetime NOT NULL,
						   `prensensi_pulang` datetime NOT NULL,
						   `last_work_log` datetime NOT NULL,
						   PRIMARY KEY (`id`),
						   UNIQUE KEY `id` (`id`),
						   UNIQUE KEY `nik` (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teknisi`
--

LOCK TABLES `teknisi` WRITE;
/*!40000 ALTER TABLE `teknisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `teknisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
						  `id` int(11) NOT NULL AUTO_INCREMENT,
						  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
						  `user_id` int(10) NOT NULL,
						  `created` date NOT NULL,
						  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,'3b4b8fc4c47daa73c4e3ee8b57d47c',1,'2023-11-20'),(2,'29d2b3e1f1daea8275c6f47fc53786',1,'2023-11-20'),(3,'c708388b57fddc11331c29aab22070',1,'2023-11-20'),(4,'b99cabf3af2a8557ef064c0dcb20e8',1,'2023-11-20'),(5,'56346fe82a0f92870542575d8ce7ef',1,'2023-11-20'),(6,'40a2515249febef1b455ee603b0c08',1,'2023-11-20'),(7,'581a8ed69cf5d505b989c438becd65',1,'2023-11-20'),(8,'05b0de78ab18971052ca42ce09b998',1,'2023-11-20'),(9,'7e937ee5012d0c239c5700c8aff8a7',1,'2023-11-20'),(10,'1371d1233e291f7122780850da519a',1,'2023-11-20'),(11,'7c4060085e93fc9c01081afdc3a5cc',1,'2023-11-20'),(12,'d98211a9dd10e628b96b32b50dafa9',1,'2023-11-20'),(13,'dc5c05b23bf8d7910b92ddb2f8ef6a',1,'2023-11-20'),(14,'c6dc7ebdb9f2ee6aead8fe4ff65aa8',1,'2023-11-20'),(15,'ede9a6c8afbd8739c70f306fb837a2',1,'2023-11-20'),(16,'3e65f84cccbd3f2d10608292edf324',1,'2023-11-20'),(17,'b34ed846214850bb6f2c9a553e7c02',1,'2023-11-20'),(18,'974a6a84a65959918a1e6c90e2fefb',1,'2023-11-20'),(19,'497536ed66696f2c5edaf3a5571fec',1,'2023-11-20'),(20,'e027ffab7df2161c39c43e2906a93d',1,'2023-11-20'),(21,'5ecfe69c0974145394d4625478fabf',1,'2023-11-20'),(22,'5badc3e0d63d322db83dc67c291529',1,'2023-11-20'),(23,'97ffc88426a0f56170d192dae87124',1,'2023-11-20'),(24,'f36f25fefd8ce009dda4a4970e2d69',1,'2023-11-20');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
						`id` int(11) NOT NULL AUTO_INCREMENT,
						`name` varchar(128) NOT NULL,
						`username` varchar(128) NOT NULL,
						`password` varchar(256) NOT NULL,
						`reset_password` varchar(100) NOT NULL,
						`email` varchar(50) NOT NULL,
						`jabatan` varchar(55) NOT NULL,
						`area` varchar(6) NOT NULL,
						`sektor` varchar(6) NOT NULL,
						`role_id` int(11) NOT NULL,
						`is_active` int(1) NOT NULL,
						PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ngadmin','ngadmin','$2y$10$E3CelCm3x1lQ4RCs7y8Gw.Ma.KlasWrFEurtF/TpUr7mhVlYCj9WO','','rahmawanbd@gmail.com','ngadmin','ALL','ALL',0,1),(2,'Test','Test','$2y$10$L0D54fpF4D40c9KID.0LF.jaMGKsDkSnyOtUs27h2Q1QgtHpW8uEu','','rahmawanbd@gmail.com','ngadmin','WTS','BTL',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access_menu`
--

DROP TABLE IF EXISTS `user_access_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access_menu` (
									`id` int(11) NOT NULL AUTO_INCREMENT,
									`role_id` int(11) NOT NULL,
									`menu_id` int(11) NOT NULL,
									PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_menu`
--

LOCK TABLES `user_access_menu` WRITE;
/*!40000 ALTER TABLE `user_access_menu` DISABLE KEYS */;
INSERT INTO `user_access_menu` VALUES (1,0,1),(2,0,2),(3,0,3),(4,0,4),(5,0,5),(6,0,6),(7,0,7),(8,0,8),(11,0,9),(12,0,10),(13,0,11),(14,0,12),(15,0,13),(16,0,14),(24,1,6),(25,2,6),(26,3,6),(27,4,6),(28,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(38,1,8),(39,2,8),(40,3,8),(41,4,8),(42,5,8),(45,1,9),(46,2,9),(47,3,9),(48,4,9),(49,5,9),(52,1,10),(53,2,10),(54,3,10),(55,4,10),(56,5,10),(59,1,11),(60,2,11),(61,3,11),(62,4,11),(63,5,11),(66,1,12),(67,2,12),(68,3,12),(69,4,12),(70,5,12),(73,1,13),(74,2,13),(75,3,13),(76,4,13),(77,5,13),(80,1,14),(81,2,14),(82,3,14),(83,4,14),(84,5,14);
/*!40000 ALTER TABLE `user_access_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu`
--

DROP TABLE IF EXISTS `user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu` (
							 `id` int(11) NOT NULL AUTO_INCREMENT,
							 `menu` varchar(250) NOT NULL,
							 `grup` int(5) NOT NULL,
							 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu`
--

LOCK TABLES `user_menu` WRITE;
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
INSERT INTO `user_menu` VALUES (1,'search',0),(2,'mappingAO',1),(3,'mappingPDA',1),(4,'mappingFFG',1),(5,'mappingADDON',1),(6,'material',0),(7,'dashboard',0),(8,'databasePS',1),(11,'databasePDA',1);
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
							 `id` int(11) NOT NULL AUTO_INCREMENT,
							 `role` varchar(128) NOT NULL,
							 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (0,'ngadmin'),(1,'ASO'),(2,'SITE MANAGER'),(3,'TEAM LEADER'),(4,'HELPDESK'),(5,'TEKNISI');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sub_menu`
--

DROP TABLE IF EXISTS `user_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sub_menu` (
								 `id` int(11) NOT NULL AUTO_INCREMENT,
								 `menu_id` int(11) NOT NULL,
								 `title` varchar(128) NOT NULL,
								 `url` varchar(250) NOT NULL,
								 `icon` varchar(128) NOT NULL,
								 `is_active` int(1) NOT NULL,
								 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sub_menu`
--

LOCK TABLES `user_sub_menu` WRITE;
/*!40000 ALTER TABLE `user_sub_menu` DISABLE KEYS */;
INSERT INTO `user_sub_menu` VALUES (1,1,'Search','search','fas fa-fw fa-search',1),(2,2,'AO','mappingAO','',1),(3,3,'PDA','mappingPDA','',1),(4,4,'FFG','mappingFFG','',1),(5,5,'ADD ON','mappingADDON','',1),(6,6,'Material','material','fas fa-fw fa-th',1),(7,7,'Dashboard','dashboard','fas fa-fw fa-bullseye',1),(8,8,'PS','databasePS','',2),(12,11,'WO PDA','databasePDA','',2);
/*!40000 ALTER TABLE `user_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_order`
--

DROP TABLE IF EXISTS `work_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_order` (
							  `no` int(10) NOT NULL AUTO_INCREMENT,
							  `scid` varchar(10) NOT NULL,
							  `trackid` varchar(25) NOT NULL,
							  `datel` varchar(10) NOT NULL,
							  `sto` varchar(10) NOT NULL,
							  `workzone` varchar(10) NOT NULL,
							  `unit` varchar(4) NOT NULL,
							  `type_wo` varchar(50) NOT NULL,
							  `type_trans` varchar(20) NOT NULL,
							  `type_layanan` varchar(5) NOT NULL,
							  `type_channel` varchar(50) NOT NULL,
							  `group_channel` varchar(50) NOT NULL,
							  `it_tools` varchar(10) NOT NULL,
							  `status_resume` varchar(50) NOT NULL,
							  `status_message` text NOT NULL,
							  `order_date` datetime NOT NULL,
							  `appointment` datetime NOT NULL,
							  `last_update` datetime NOT NULL,
							  `package_name` text NOT NULL,
							  `odp_input` varchar(30) NOT NULL,
							  `odp_survey` varchar(30) NOT NULL,
							  `koordinat_odp` text NOT NULL,
							  `idvalins` int(20) NOT NULL,
							  `ncli` int(20) NOT NULL,
							  `pots` varchar(15) NOT NULL,
							  `speedy` varchar(15) NOT NULL,
							  `cust_name` varchar(50) NOT NULL,
							  `hp` varchar(15) NOT NULL,
							  `alamat` text NOT NULL,
							  `kordinat` text NOT NULL,
							  `kcontact` text NOT NULL,
							  `umur` varchar(20) NOT NULL,
							  `status_lapangan` varchar(50) NOT NULL,
							  `kendala` varchar(100) NOT NULL,
							  `ket` text NOT NULL,
							  `teknisi` varchar(50) NOT NULL,
							  `teknisi_helper` varchar(50) NOT NULL,
							  `mitra` varchar(50) NOT NULL,
							  `marking_kabel` varchar(20) NOT NULL,
							  `qr_code` varchar(20) NOT NULL,
							  `port` int(2) NOT NULL,
							  `sn_ont` varchar(20) NOT NULL,
							  `sn_stb` varchar(50) NOT NULL,
							  `panjang_dc` int(9) NOT NULL,
							  `soc` int(9) NOT NULL,
							  `precon` int(9) NOT NULL,
							  `roset` int(9) NOT NULL,
							  `rj45` int(9) NOT NULL,
							  `utp` int(9) NOT NULL,
							  `sklem` int(9) NOT NULL,
							  `briket` int(9) NOT NULL,
							  `tray` int(9) NOT NULL,
							  `klem_spiral` int(9) NOT NULL,
							  `tiang` int(9) NOT NULL,
							  `otp` int(9) NOT NULL,
							  `prekso` int(9) NOT NULL,
							  `selisih_dc` int(9) NOT NULL,
							  `update_by` varchar(50) NOT NULL,
							  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_order`
--

LOCK TABLES `work_order` WRITE;
/*!40000 ALTER TABLE `work_order` DISABLE KEYS */;
INSERT INTO `work_order` VALUES (3,'123321321','adsaadsdsa','BANTUL','BTL','BTL','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','2022-09-11 14:01:43','2022-09-11 14:01:43','2022-09-11 16:32:52','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196,1104028',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196,1104028','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(4,'500682783','MYID-2122206220318','SLEMAN','SMN','SMN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(5,'500682783','MYID-2122206220319','SLEMAN','KEN','KEN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(6,'500682783','MYID-2122206220320','BANTUL','BTL','BTL','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(7,'500682783','MYID-2122206220318','SLEMAN','SMN','SMN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(8,'500682783','MYID-2122206220319','SLEMAN','KEN','KEN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(9,'500682783','MYID-2122206220320','BANTUL','BTL','BTL','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(10,'500682783','MYID-2122206220318','SLEMAN','SMN','SMN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(11,'500682783','MYID-2122206220319','SLEMAN','KEN','KEN','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN'),(12,'500682783','MYID-2122206220320','BANTUL','BTL','BTL','DCS','FRESH_SC','ADD SERVICE','2P','147','Digital','RISMA','11 | TIBS - FULFILL BILLING FAIL','Can not Cancel this Order : 3-329726426244. Status is Cancel In Progress','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','50 Mbps, 100 Menit','ODP-BTL-FCB/037 FCB/D02/037.01','ODP-BTL-FCB/037','-77937196.110403',14260331,58865305,'2744359623','143132111047','PRAWITA RIANASARI','85268880759','GUNUNGKIDUL, PAMPANG PALIYAN, Dusun PAMPANG, 0000, RT/RW 01/02','-77937196.110403','MI;MYIRX-1643862873144;CUST;KEVIN;087726947394','2','ON PROGRES','KENDALA TEKNIK|PERLU TANAM TIANG > BLM ADA IZIN TATI','TATI 2 IJIN BLM ADA PAKAI PORT UN','EDI+EKO','','SSK','750-500','TVT0AV12FP88',4,'ZTEGD05241FA','44100499007042400000FC449F2F631A',250,2,0,1,2,20,2,1,3,1,1,1,1,20,'NGADMIN');
/*!40000 ALTER TABLE `work_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-22  6:29:17
