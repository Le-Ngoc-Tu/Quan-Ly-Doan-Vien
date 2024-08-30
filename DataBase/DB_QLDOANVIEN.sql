-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: qldoanvien
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_doan`
--

DROP TABLE IF EXISTS `chi_doan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chi_doan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(10) DEFAULT NULL,
  `ma_chi_doan` varchar(100) NOT NULL,
  `ten_chi_doan` varchar(255) DEFAULT NULL,
  `khoa_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdqn9pubc0c8t2ktocqq1b14ac` (`khoa_id`),
  CONSTRAINT `FKdqn9pubc0c8t2ktocqq1b14ac` FOREIGN KEY (`khoa_id`) REFERENCES `khoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_doan`
--

LOCK TABLES `chi_doan` WRITE;
/*!40000 ALTER TABLE `chi_doan` DISABLE KEYS */;
INSERT INTO `chi_doan` VALUES (1,'Phan Thiết','0123456788','CĐCNTT1','K13THO1',1),(2,'Phan Thiết','0123456788','CĐCNTT2','K14THO1',1),(3,'Phan Thiết','0123456788','CĐKT3','K13KTO1',2),(4,'Phan Thiết- Bình Thuận','0123456799','CĐDLLH4','K15DLO1',3),(5,'Phan Thiết- Bình Thuận','0123456788','CĐDLLH5','K13DLO1',3);
/*!40000 ALTER TABLE `chi_doan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuc_vu`
--

DROP TABLE IF EXISTS `chuc_vu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chuc_vu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ma_chuc_vu` varchar(100) NOT NULL,
  `ten_chuc_vu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuc_vu`
--

LOCK TABLES `chuc_vu` WRITE;
/*!40000 ALTER TABLE `chuc_vu` DISABLE KEYS */;
INSERT INTO `chuc_vu` VALUES (1,'BT','Bí thư'),(2,'PBT','Phó bí thư'),(3,'ĐV','Đoàn viên');
/*!40000 ALTER TABLE `chuc_vu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doan_phi`
--

DROP TABLE IF EXISTS `doan_phi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doan_phi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ngay_nop` date DEFAULT NULL,
  `so_tien` int(11) DEFAULT NULL,
  `ten_phi` varchar(255) DEFAULT NULL,
  `doan_vien_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm3y94c7tjnd2hvwmp9jeqabdp` (`doan_vien_id`),
  CONSTRAINT `FKm3y94c7tjnd2hvwmp9jeqabdp` FOREIGN KEY (`doan_vien_id`) REFERENCES `doan_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doan_phi`
--

LOCK TABLES `doan_phi` WRITE;
/*!40000 ALTER TABLE `doan_phi` DISABLE KEYS */;
INSERT INTO `doan_phi` VALUES (1,'2024-01-01',100000,'Phí đoàn viên kì 1',1),(2,'2024-01-01',40000,'Phí đoàn viên kì 1',2),(3,'2024-01-01',50000,'Phí đoàn viên kì 1',3),(4,'2024-06-01',30000,'Phí đoàn viên kì 2',1),(5,'2024-06-01',20000,'Phí đoàn viên kì 1',20),(6,'2023-12-20',50000,'Đoàn phí kì 1',4),(7,'2024-04-07',50000,'Đoàn phí kì 1',21),(8,'2024-04-12',50000,'Đoàn phí kì 1',10),(12,'2024-04-02',55000,'Đoàn phí kì 2',2);
/*!40000 ALTER TABLE `doan_phi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doan_vien`
--

DROP TABLE IF EXISTS `doan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doan_vien` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dan_toc` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gioi_tinh` bit(1) DEFAULT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `ma_doan_vien` varchar(100) NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `ngay_vao_doan` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ten_doan_vien` varchar(255) DEFAULT NULL,
  `chi_doan_id` bigint(20) NOT NULL,
  `chuc_vu_id` bigint(20) NOT NULL,
  `phan_quyen_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK35lo6y6dapy4k1mhj8kol7m6p` (`chuc_vu_id`),
  KEY `FK48c5u9knwanr24xotjo8pt7wk` (`chi_doan_id`),
  KEY `FKfrkcuf7nhcs6bxusy6n4evbpl` (`phan_quyen_id`),
  CONSTRAINT `FK35lo6y6dapy4k1mhj8kol7m6p` FOREIGN KEY (`chuc_vu_id`) REFERENCES `chuc_vu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK48c5u9knwanr24xotjo8pt7wk` FOREIGN KEY (`chi_doan_id`) REFERENCES `chi_doan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKfrkcuf7nhcs6bxusy6n4evbpl` FOREIGN KEY (`phan_quyen_id`) REFERENCES `phan_quyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doan_vien`
--

LOCK TABLES `doan_vien` WRITE;
/*!40000 ALTER TABLE `doan_vien` DISABLE KEYS */;
INSERT INTO `doan_vien` VALUES (1,'Kinh','0373111459','dovanxuantrung2611@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_EOaDfBp1.jpg','ĐVCĐCNTT1001','2003-11-26','2018-01-12','trung2611','Đỗ Văn Xuân Trung',1,3,1),(2,'Kinh','0123456789','lengoctu@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_hrPaRGX2.jpg','ĐVCĐCNTT1002','2003-01-01','2018-01-01','trung2611','Lê Ngọc Tú',1,2,1),(3,'Kinh','0123456789','lenhattruong@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_FY4Njqw3.jpg','ĐVCĐCNTT1003','2000-01-01','2018-01-01','trung2611','Lê Nhật Trường',1,3,2),(4,'Kinh','0123456789','thuy@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_AmHiEVu4.jpg','ĐVCĐDLLH4004','2000-01-01','2018-01-01','ZUE6RRO','Nguyễn Thị Thúy',4,1,1),(5,'Kinh','0123456789','maithanhhau@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_jBu1U0q5.jpg','ĐVCĐCNTT1005','2003-01-01','2018-01-01','aSZbW7H','Mai Thanh Hậu',1,3,2),(6,'Kinh','0123456789','daoNhatTien@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_ZhHoMKq6.jpg','ĐVCĐCNTT1006','2003-01-01','2018-01-01','bbmsLTv','Đào Nhật Tiến',1,3,2),(7,'Kinh','0123456789','truongdinhhoang@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_kEAM2RT7.jpeg','ĐVCĐCNTT1007','2003-01-01','2018-01-01','iBEZ6yO','Trương Đình Hoàng',3,3,2),(8,'Kinh','0123456789','phanbaolong@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_z1zvxB68.jpg','ĐVCĐCNTT1008','2000-01-01','2018-01-01','Jyjsaxj','Phan Bảo Long',3,1,2),(9,'Nùng','0123456789','lethanhTru@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_2KUct9q9.jpg','ĐVCĐCNTT1009','2003-07-09','2024-04-17','2d8xwRw','Lê Thanh Trừ',1,3,2),(10,'Kinh','0123456789','quoctri@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_JxpKbYb10.png','ĐVCĐCNTT10010','2003-07-14','2024-04-24','z9CfZa2','Nguyễn Quốc Trí',1,3,2),(11,'Kinh','0123456789','lan@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_3XpIgfS11.jpg','ĐVCĐCNTT10011','2003-06-15','2018-10-16','rOiTMFr','Trần Thu Lan',1,1,2),(19,'Kinh','0123456782','tham@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_OXw0RuI19.jpg','ĐVCĐCNTT10012','2024-04-04','2024-04-08','p2dyHdk','Nguyễn Thị Thắm',5,1,2),(20,'Kinh','0123456789','tranngocdu@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_cdMdflA20.jpg','ĐVCĐDLLH50020','2003-09-29','2024-04-24','KEouXX8','Trần Ngọc Du',5,3,2),(21,'Kinh','0123456789','gialuat@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_7xCHjhu21.jpg','ĐVCĐCNTT10021','2024-04-24','2024-04-18','ptvoFPo','Võ Duy Gia Luật',1,3,2),(24,'Kinh','0111456111','thienly@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_3tbULA224.jpg','ĐVCĐDLLH40022','2004-09-13','2020-11-17','j7rawdj','Thiên Ý',5,3,2),(25,'Kinh','0123336789','tamle@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_toxbEqA25.png','ĐVCĐKT30025','2003-12-30','2018-02-01','bRixAll','Lê Thành Tâm',3,3,2),(26,'Kinh','0123456789','huyen@gmail.com',_binary '\0','http://localhost:8080/doanvien/image/hinh_anh_v5F4VPK26.jpg','ĐVCĐDLLH50026','2024-04-02','2024-04-09','huyen123','Nguyễn Huyền',5,2,2),(28,'Kinh','0123456789','phuhiep@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_wBDn1pi28.jpg','ĐVCĐCNTT10027','2000-09-10','2024-04-10','b7v9PQV','Phạm Phú Hiệp',1,3,2),(29,'Kinh','0123456559','tan@gmail.com',_binary '','http://localhost:8080/doanvien/image/hinh_anh_7yhSNnb29.jpg','ĐVCĐCNTT10029','2003-08-17','2024-01-02','GD2Qwm1','Cao Ngọc Tân',1,3,2);
/*!40000 ALTER TABLE `doan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa`
--

DROP TABLE IF EXISTS `khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `khoa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dien_thoai` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ma_khoa` varchar(100) NOT NULL,
  `ten_khoa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa`
--

LOCK TABLES `khoa` WRITE;
/*!40000 ALTER TABLE `khoa` DISABLE KEYS */;
INSERT INTO `khoa` VALUES (1,'0123456788','cntt@gmail.com','CNTT','Công Nghệ Thông Tin'),(2,'0123422111','KT@gmail.com','KT','Kĩ Thuật'),(3,'0123456789','DLlh@gmail.com','DLLH','Du lịch lữ hành');
/*!40000 ALTER TABLE `khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phan_quyen`
--

DROP TABLE IF EXISTS `phan_quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phan_quyen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_quyen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phan_quyen`
--

LOCK TABLES `phan_quyen` WRITE;
/*!40000 ALTER TABLE `phan_quyen` DISABLE KEYS */;
INSERT INTO `phan_quyen` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `phan_quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_taydv`
--

DROP TABLE IF EXISTS `so_taydv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `so_taydv` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `noi_dung` text,
  `doan_vien_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4t2eskjc0wdee57sdepc9u6ah` (`doan_vien_id`),
  CONSTRAINT `FK4t2eskjc0wdee57sdepc9u6ah` FOREIGN KEY (`doan_vien_id`) REFERENCES `doan_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_taydv`
--

LOCK TABLES `so_taydv` WRITE;
/*!40000 ALTER TABLE `so_taydv` DISABLE KEYS */;
INSERT INTO `so_taydv` VALUES (2,'Đóng quỹ đoàn',1),(3,'ăn cơm',2),(4,'Lao động hè',3),(5,'Làm đồ án',1),(6,'Search GPT',2),(9,'di choi net',2),(12,'tiep tuc fix',1),(35,'di net part 2',2),(36,'perfect',1);
/*!40000 ALTER TABLE `so_taydv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-22  8:28:57
