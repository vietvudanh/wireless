-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: wireless
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  `var_id` int(11) DEFAULT '0',
  `correct` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_answers_vars` (`var_id`),
  CONSTRAINT `FK_answers_vars` FOREIGN KEY (`var_id`) REFERENCES `vars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=utf8 COMMENT='asnwers for each vars. each vars has 4 answers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'7',1,1),(2,'3',1,0),(3,'6',1,0),(4,'5',1,0),(5,'2',2,1),(6,'1',2,0),(7,'4',2,0),(9,'4',2,0),(10,'20',3,0),(11,'10',3,0),(12,'30',3,1),(14,'40',3,0),(15,'5',4,0),(16,'8',4,0),(17,'10',4,0),(18,'12',4,1),(20,'12',6,1),(21,'14',6,0),(22,'10',6,0),(23,'15',6,0),(24,'18',7,1),(25,'16',7,0),(26,'14',7,0),(27,'19',7,0),(28,'8',8,0),(29,'1',8,0),(30,'6',8,1),(31,'5',8,0),(32,'10',9,0),(33,'24',9,1),(34,'2',9,0),(35,'14',9,0),(36,'30',10,1),(37,'25',10,0),(38,'35',10,0),(39,'34',10,0),(40,'32',11,0),(41,'36',11,1),(42,'34',11,0),(43,'35',11,0),(44,'42',12,1),(45,'43',12,0),(46,'44',12,0),(47,'45',12,0),(48,'1100',35,1),(49,'47',13,0),(50,'48',13,1),(51,'49',13,0),(52,'51',13,0),(53,'36',38,1),(54,'24',39,1),(55,'54',14,1),(56,'56',14,0),(57,'48',14,0),(58,'49',14,0),(59,'28',39,0),(60,'20',39,0),(61,'36',39,0),(62,'48',38,0),(63,'7',15,1),(64,'1',15,0),(65,'8',15,0),(66,'16',38,0),(67,'6',15,0),(68,'15',16,0),(69,'14',16,1),(70,'16',16,0),(71,'18',16,0),(72,'27',17,0),(73,'21',17,1),(74,'25',17,0),(75,'29',17,0),(76,'110',35,0),(77,'1010',35,0),(78,'11000',35,0),(79,'24',38,0),(80,'27',18,0),(81,'28',18,1),(82,'35',18,0),(83,'32',18,0),(84,'54',66,1),(85,'11',66,0),(86,'16',66,0),(87,'23',66,0),(88,'25',19,0),(89,'45',19,0),(90,'72',65,1),(91,'35',19,1),(92,'84',65,0),(93,'45',65,0),(94,'27',65,0),(95,'55',19,0),(96,'60',64,0),(97,'63',64,1),(98,'45',64,0),(99,'70',64,0),(100,'40',20,0),(101,'45',20,0),(102,'47',20,0),(103,'42',20,1),(104,'34',63,0),(105,'28',63,0),(106,'63',63,1),(107,'23',63,0),(108,'3',47,1),(109,'1',47,0),(110,'2',47,0),(111,'4',47,0),(112,'10',70,0),(113,'8',70,1),(114,'9',70,0),(116,'6',70,0),(117,'4',46,0),(118,'6',46,1),(119,'2',46,0),(120,'3',46,0),(121,'3',45,0),(122,'5',45,1),(123,'7',45,0),(124,'9',45,0),(125,'10',44,0),(126,'15',44,0),(127,'20',44,1),(128,'5',44,0),(129,'35',71,0),(130,'32',71,0),(131,'34',71,1),(132,'33',71,0),(133,'3',55,0),(134,'5',55,0),(135,'7',55,1),(136,'9',55,0),(137,'6',56,0),(138,'1448',72,0),(139,'7',56,0),(140,'1428',72,1),(141,'8',56,0),(142,'1424',72,0),(143,'9',56,1),(144,'1440',72,0),(145,'4',57,0),(146,'5',57,1),(147,'6',57,0),(148,'7',57,0),(149,'2',58,0),(150,'4',58,0),(151,'6',58,1),(152,'8',58,0),(153,'701',73,0),(154,'768',73,0),(155,'821',73,0),(156,'798',73,1),(157,'57',52,0),(158,'59',52,0),(159,'61',52,1),(160,'63',52,0),(161,'6',74,0),(162,'12',74,0),(163,'8',74,1),(164,'10',53,0),(165,'20',53,0),(166,'9',74,0),(167,'30',53,1),(168,'40',53,0),(169,'70',54,0),(170,'24',75,0),(171,'80',54,0),(172,'90',54,1),(173,'48',75,0),(174,'60',54,0),(175,'36',75,1),(176,'34',75,0),(177,'160',76,0),(178,'50',59,0),(179,'9',76,1),(180,'60',59,1),(181,'12',76,0),(182,'70',59,0),(183,'8',76,0),(184,'80',59,0),(185,'120',60,0),(186,'124',60,0),(187,'142',60,0),(188,'144',60,1),(189,'389',61,0),(190,'80',77,0),(191,'84',77,1),(192,'390',61,0),(193,'74',77,0),(194,'391',61,1),(195,'392',61,0),(196,'82',77,0),(198,'89',62,0),(199,'90',62,0),(200,'91',62,1),(201,'63',62,0),(202,'20',67,0),(203,'21',67,0),(204,'22',67,1),(205,'23',67,0),(206,'10',68,0),(207,'12',68,1),(208,'14',68,0),(209,'16',68,0),(210,'20',69,0),(211,'22',69,0),(212,'24',69,1),(213,'26',69,0),(214,'1',30,0),(215,'2',30,1),(216,'3',30,0),(217,'4',30,0),(218,'2',31,0),(219,'3',31,0),(220,'4',31,1),(221,'5',31,0),(222,'5',32,1),(223,'7',32,0),(224,'9',32,0),(225,'11',32,0),(226,'4',33,0),(227,'3',33,0),(228,'2',33,0),(229,'1',33,1),(230,'2',34,0),(231,'3',34,1),(232,'4',34,0),(233,'5',34,0),(234,'40',48,0),(235,'50',48,0),(236,'60',48,1),(237,'70',48,0),(238,'48',49,1),(239,'49',49,0),(240,'50',49,0),(241,'51',49,0),(242,'10',50,0),(243,'20',50,1),(244,'30',50,0),(245,'40',50,0),(246,'130',51,0),(247,'132',51,0),(248,'134',51,0),(249,'136',51,1),(250,'30',21,0),(251,'32',21,1),(252,'34',21,0),(253,'36',21,0),(254,'49',22,1),(255,'50',22,0),(256,'51',22,0),(257,'52',22,0),(258,'7554',24,0),(259,'7555',24,1),(260,'7556',24,0),(261,'7557',24,0),(262,'873',25,0),(263,'875',25,0),(264,'877',25,1),(265,'879',25,0),(266,'7688',27,1),(267,'7686',27,0),(268,'7684',27,0),(269,'7682',27,0),(270,'3',40,0),(271,'5',40,0),(272,'7',40,0),(273,'9',40,1),(274,'3',41,0),(275,'5',41,1),(276,'7',41,0),(277,'9',41,0),(278,'2',42,0),(279,'4',42,0),(280,'6',42,0),(281,'8',42,1),(282,'0',43,1),(283,'1',43,0),(284,'2',43,0),(285,'3',43,0),(286,'15',36,0),(287,'20',36,1),(288,'25',36,0),(289,'30',36,0),(290,'8,3',78,1),(291,'7,2',78,0),(292,'6,1',78,0),(293,'9,4',78,0),(294,'10',79,0),(295,'11',79,1),(296,'12',79,0),(297,'13',79,0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='each type has list of corresponding attributes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'quả cam'),(2,'cái bút'),(3,'cái chén'),(4,'cái kẹo'),(5,'quả táo'),(6,'cái cốc'),(7,'phân xưởng'),(9,'cặp tài liệu'),(10,'Mật Ong'),(11,'Nước Cam'),(12,'Cái ca');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chapters_grades` (`grade_id`),
  CONSTRAINT `FK_chapters_grades` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='a chapter, contains many questions(format)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,'Cộng trừ khoảng 10',2),(2,'Cộng trừ khoảng 20',2),(3,'Nhân khoảng 10',2),(4,'Bảng cửu chương',3),(5,'Bài toán tìm quãng đường',5),(6,'Bài toán tổng và tỷ',5),(7,'Bài toán tìm quãng đường hơn kém nhau',5),(8,'Bài toán phần trăm',5),(9,'Bài toán tìm thời gian',5),(10,'Bài toán đổi đơn vị',4),(11,'Bài tóan chia 1 số thập phân cho 10',5),(12,'Bài toán vòi nước',5),(13,'Dạng toán tỉ số',5),(14,'Dạng toán cộng vận tốc',5),(15,'Dạng toán năng suất lao động',5),(16,'Dạng toán thêm bớt',5),(17,'Dạng toán công suất không đồng đều',5),(18,'Dạng toán tính giá của các mặt hàng khác nhau',5),(19,'Bài toán hiệu và tỷ',5),(20,'Bài Toán Cộng Trừ Số Dưới 10.000',3),(21,'Nhân Chia 2 Số ',3),(22,'Tính Toán Biểu Thức',3),(23,'Bài Toán Quy Đổi ',3),(24,'Tính Diện Tích Chu Vi Các Hình Đơn Giản',3),(25,'Bài toán tính tuổi ',3),(26,'Bài toán tính thời gian',3),(27,'Bài toán tìm số dựa trên tổng và hiệu',3),(28,'Bài toán về nhân chia liên quan tới rút gọn',3),(29,'Bài toán về quan hệ nhiều hơn , ít hơn , gấp hay giảm đi số lần',3);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entities`
--

DROP TABLE IF EXISTS `entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='each questions has an entity type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'Lan,Bình,Nam,An,Bình','hoc_sinh'),(2,'Nhà máy A,Nhà máy B','vat_the'),(3,'Cô giáo Thủy, Cô giáo Thảo, Cô giáo Thơm, Cô giáo Vân','giao_vien'),(4,'Hoa,Mai,Lan,Cúc,Hùng,Trúc,Toàn,Tường,Trường','PEOPLE_NAME'),(5,'Hoa,Lan,Mai,Bảy,Tám,Chín','PEOPLE_NAME_BA'),(6,'Nguyễn Đình Chiểu,Lê Quý Đôn,Hoàng Văn Thụ,Nguyễn Tất Thành','SCHOOL_NAME'),(7,'Sáu,Bảy,Năm,Hải','PEOPLE_NAME_ONG'),(8,'Mật Ong, Nước Cam, Trái Cây','NUOC_UONG'),(9,'lít nước , lít dầu ','DON_VI_NUOC'),(10,'lít, mililit, mét, centimet, decimet, kilogam, gam, m2, m3','DON_VI'),(11,'Hoa,Mai,Lan,Hưng,Cúc,An,Bình','$TEN'),(12,'táo,hồng,đào,lựu,vải,nhãn','QUA'),(13,'đỏ,xanh,vàng,tìm,cam','MAU');
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_attribute`
--

DROP TABLE IF EXISTS `entity_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_entities_attributes_entities` (`entity_id`),
  KEY `FK_entities_attributes_attributes` (`attribute_id`),
  CONSTRAINT `FK_entities_attributes_attributes` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `FK_entities_attributes_entities` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_attribute`
--

LOCK TABLES `entity_attribute` WRITE;
/*!40000 ALTER TABLE `entity_attribute` DISABLE KEYS */;
INSERT INTO `entity_attribute` VALUES (1,1,2),(2,1,3),(3,1,6),(4,1,4),(5,1,1),(6,1,5),(7,2,7),(8,3,9),(9,9,12);
/*!40000 ALTER TABLE `entity_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='a grade, contains many chapters';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,'Lớp 1'),(2,'Lớp 2'),(3,'Lớp 3'),(4,'Lớp 4'),(5,'Lớp 5');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `var_id` int(11) DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_histories_users` (`user_id`),
  KEY `FK_histories_vars` (`var_id`),
  KEY `FK_histories_questions` (`question_id`),
  CONSTRAINT `FK_histories_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `FK_histories_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_histories_vars` FOREIGN KEY (`var_id`) REFERENCES `vars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='test history of the system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (1,1,2,3,0),(2,1,1,1,1);
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(500) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'http://wireless-vietvudanh.c9.io/public/images/IELTS_task1.jpg',11,'2014-12-14 21:55:22','2014-12-14 21:26:52'),(2,'http://wireless-vietvudanh.c9.io/public/images/2.jpg',1,'2014-12-14 21:49:54','2014-12-14 21:49:54');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_entity`
--

DROP TABLE IF EXISTS `question_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_questions_entities_questions` (`question_id`),
  KEY `FK_questions_entities_entities` (`entity_id`),
  CONSTRAINT `FK_questions_entities_entities` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `FK_questions_entities_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_entity`
--

LOCK TABLES `question_entity` WRITE;
/*!40000 ALTER TABLE `question_entity` DISABLE KEYS */;
INSERT INTO `question_entity` VALUES (1,2,1),(2,2,2),(3,2,3),(4,3,1);
/*!40000 ALTER TABLE `question_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `format` varchar(1000) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `difficulty` tinyint(4) DEFAULT '1',
  `solution` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_questions_chapters_idx` (`chapter_id`),
  CONSTRAINT `FK_questions_chapters` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='format of the question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'$VAR + $VAR = ?',20,0,'',1,''),(2,'$ENT có $VAR $ATT, $ENT có $VAR $ATT. Hỏi cả 2 có bao nhiêu $ATT?',2,0,NULL,1,'Tổng số $ATT là $VAR + $VAR = ...'),(3,'$ENT có $VAR $ATT, $ENT có hơn $ENT $VAR $ATT. Hỏi $ENT có bao nhiêu $ATT?',2,NULL,NULL,1,NULL),(5,'$ENT có $VAR chân $ATT , $VAR chân $ATT . hỏi $ENT đếm được bao nhiêu $ATT.',28,0,'',1,' Tổng của nó là ($VAR + $VAR) /4 = '),(6,'tìm số lớn nhất $VAR. với $VAR < $ATT',10,0,'',1,''),(7,'cho số có 2 chữ số $VAR $VAR . mà $VAR+ $VAR = $VAR . tìm số có 2 chữ số đó .',27,0,'',1,''),(8,'Hiện tại , $TEN hơn $TEN $ATT tuổi.  sau $ATT năm nữa. thì $TEN gấp đôi $TEN.',25,0,'',1,'Ta có ( $TEN - $TEN) = $ATT . mà [($TEN +$ATT) - ($TEN + $ATT ) ] = $ATT'),(9,'để cưa 1 khúc gỗ làm 2 hết $VAR phút. hỏi để cưa khúc gỗ thành $ ATT . thì cần bao nhiêu $VAR phút.',26,0,'',1,'cần thời gian là ( $ATT - 1 ) x $ VAR = '),(10,'Xe của {PEOPLE_NAME}_1 đi từ A đến B với vận tốc _NUMBER_ km/h. Xe của {PEOPLE_NAME}_2 đi từ B đến A với vận tốc _NUMBER_ km/h. Sau _NUMBER_ giờ 2 xe gặp nhau. Hỏi quãng đường AB dài bao nhiêu km ?',5,0,'',NULL,'Quãng đường AB có độ dài bằng tổng quãng đường 2 xe đi được.<br/>Vậy quãng đường AB dài là: <br/>_NUMBER_ x _NUMBER_ + _NUMBER_ x _NUMBER_ = _NUMBER_ (km)<br/>Đáp số: quãng đường AB dài: <DS>_NUMBER_ km</DS>'),(11,'Số M lớn hơn số N _NUMBER_ đơn vị. Số M bằng _NUMBER_/_NUMBER_ lần số N. Tìm 2 số M và N?',19,0,'',NULL,'Số M nhiều hơn số N số phần là: <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (phần)<br/>Đặt giá trị của 1 phần là P, ta có P = _NUMBER_ : (_NUMBER_ - _NUMBER_) = _NUMBER_<br/>Vậy số M bằng: M = _NUMBER_ x _NUMBER_ = _NUMBER_<br/>Vậy số N bằng: N = _NUMBER_ x _NUMBER_ = _NUMBER_<br/>Đáp số: <DS>M = _NUMBER_, N = _NUMBER_</DS>'),(12,'Tổng 2 số M và N là _NUMBER_. Số M bằng _NUMBER_/_NUMBER_ lần số N. Tìm 2 số M, N?',6,0,'',NULL,'Tổng số phần của 2 số là:<br/>_NUMBER_ + _NUMBER_ = _NUMBER_(phần)<br/>Đặt giá trị của 1 phần là P, ta có P = _NUMBER_ : (_NUMBER_ + _NUMBER_) = _NUMBER_<br/>Vậy số M bằng: M = _NUMBER_ x _NUMBER_ = _NUMBER_<br/>Vậy số N bằng: N = _NUMBER_ x _NUMBER_ = _NUMBER_<br/>Đáp số: <DS>M = _NUMBER_, N = _NUMBER_</DS>'),(13,'Xe của {PEOPLE_NAME}_1 chạy với vận tốc _NUMBER_ km/h trong thời gian _NUMBER_ giờ ,xe của {PEOPLE_NAME}_2 chạy với vận tốc _NUMBER_ km/h trong thời gian _NUMBER_ giờ. Hỏi của {PEOPLE_NAME}_1 chạy hơn hay kém xe của {PEOPLE_NAME}_2 bao nhiêu km ?',7,0,'',NULL,'Quãng đường xe của {PEOPLE_NAME}_1 chạy được là: <br/>_NUMBER_ x _NUMBER_ = _NUMBER_ (km)<br/>Quãng đường xe của {PEOPLE_NAME}_2 chạy được là: <br/>_NUMBER_ x _NUMBER_ = _NUMBER_ (km)<br/>|Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số km là: <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (km)<br/>Đáp số: <DS>Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 _NUMBER_ km</DS><br/>|Xe của {PEOPLE_NAME}_2 chạy hơn xe của {PEOPLE_NAME}_1 số km là: <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (km)<br/>Đáp số: <DS>Xe của {PEOPLE_NAME}_2 chạy hơn xe của {PEOPLE_NAME}_1 _NUMBER_ km</DS>'),(14,'Bạn {PEOPLE_NAME}_1 có chiều cao là _NUMBER_ cm, sau một thời gian phát triển chiều cao, chiều cao của {PEOPLE_NAME}_1 tăng lên _NUMBER_ cm. Hỏi phần trăm chiều cao tăng thêm của A so với ban đầu là bao nhiêu (làm tròn đến số thập phân số 2)',8,0,'',NULL,'Chiều cao tăng thêm của {PEOPLE_NAME}_1 so với ban đầu là : <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (cm)<br/>Phần trăm chiều cao tăng thêm của {PEOPLE_NAME}_1 so với ban đầu là:<br/>_NUMBER_ : _NUMBER_ x 100% = _NUMBER_ %<br/>Đáp số: <DS>_NUMBER_ %</DS>'),(15,'Xe của {PEOPLE_NAME}_1 chạy với vận tốc _NUMBER_ km/h trên _NUMBER_ km, xe của {PEOPLE_NAME}_2 chạy với vận tốc _NUMBER_ km/h trên quãng đường _NUMBER_ km. Hỏi thời gian xe của {PEOPLE_NAME}_1 chay hơn hay kém xe của {PEOPLE_NAME}_2 bao nhiêu?',9,0,'',NULL,'Thời gian xe {PEOPLE_NAME}_1 chạy là: <br/>_NUMBER_ : _NUMBER_ = _NUMBER_ (giờ)<br/>Thời gian xe {PEOPLE_NAME}_2 chạy là: <br/>_NUMBER_ : _NUMBER_ = _NUMBER_ (giờ)<br/>|Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số thời gian là: <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (giờ)<br/>Đáp số: <DS>Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số giờ là: _NUMBER_ giờ</DS>|Xe của {PEOPLE_NAME}_1 chạy kém xe {PEOPLE_NAME}_2 số thời gian là: <br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (giờ)<br/>Đáp số: <DS>Xe của {PEOPLE_NAME}_1 chạy kém xe {PEOPLE_NAME}_2 số giờ là: _NUMBER_ giờ</DS>'),(16,'Trong 3 ngày cửa hàng bà {PEOPLE_NAME}_1 bán được _NUMBER_ tấn quả {QUA}_1. Ngày 1 bán được _NUMBER_ kg, ngày 2 bán được _NUMBER_ kg. Hỏi ngày 3 cửa hàng bán được bao nhiêu kg biết trong kho còn tồn kho _NUMBER_ kg quả {QUA}_1 ?',10,0,'',NULL,'Đổi : _NUMBER_ tấn = _NUMBER_ kg<br/>Số quả {QUA}_1 của cửa hàng bán được trong ngày thứ 3 là :<br/>_NUMBER_ - _NUMBER_ - _NUMBER_ - _NUMBER_ = _NUMBER_ (kg)<br/>Đáp số: Số quả {QUA}_1 của cửa hàng bà {PEOPLE_NAME}_1 bán được trong ngày thứ 3 là : <DS>_NUMBER_ kg</DS>\\n'),(17,'Kho nhà bà {PEOPLE_NAME}_1 có _NUMBER_ tấn {QUA}_1, người ta lấy ra _NUMBER_/10 số {QUA}_1 trong kho. Hỏi trong kho còn bao nhiêu tấn {QUA}_1 ?',11,0,'',NULL,'1/10 trong _NUMBER_ tấn {QUA}_1 là _NUMBER_/10 tấn<br/>_NUMBER_/10 trong _NUMBER_ tấn {QUA}_1 là: _NUMBER_/10 tấn<br/>Số {QUA}_1 còn lại trong kho là: _NUMBER_ – _NUMBER_/10 = _NUMBER_(tấn)<br/>Đáp số : số {QUA}_1 còn lại trong kho là <DS>_NUMBER_ tấn</DS>'),(18,'Cả 2 vòi cùng chảy vào bể nước thì mất _NUMBER_ phút. Nếu vòi 2 chảy một mình thì mất _NUMBER_ phút. Hỏi vòi thứ 1 chảy một mình thì mất bao lâu?',12,0,'',NULL,'1 phút 2 vòi cùng chảy được là: 1/_NUMBER_ (bể nước)<br/>1 phút vòi thứ 2 chảy được là:<br/> 1/_NUMBER_ (bể nước)<br/>1 phút vòi thứ 1 chảy được là:<br/> 1/_NUMBER_ - 1/_NUMBER_ = _NUMBER_/_NUMBER_ ( bể nước)<br/>Thời gian để vòi thứ nhất chảy đầy bể là: <br/>1 : _NUMBER_/_NUMBER_ = _NUMBER_ (phút)<br/>Đáp số: Thời gian để vòi thứ nhất chảy đầy bể là: <DS>_NUMBER_ phút</DS>'),(19,'Tỉ số số học sinh nam so với số học sinh nữ của trường {SCHOOL_NAME}_1 đầu năm là _NUMBER_/_NUMBER_. Nếu chuyển thêm _NUMBER_ học sinh nam từ trường khác đến thì tỉ số giữa học sinh nam và nữ là _NUMBER_/_NUMBER_. Tìm số học sinh nữ của trường?',13,0,'',NULL,'Trước khi chuyển tỉ số học sinh nam và học sinh nữ là _NUMBER_/_NUMBER_ , sau khi thêm _NUMBER_ học sinh nam tỷ số giữa học sinh nam và học snh nữ là _NUMBER_/_NUMBER_. <br/>Vậy _NUMBER_ học sinh nam bằng số phần của số học sinh nữ là:<br/>_NUMBER_/_NUMBER_ - _NUMBER_/_NUMBER_ = 1/_NUMBER_(phần)<br/>Vậy số học sinh nữ của trường là:<br/>_NUMBER_ : 1/_NUMBER_ = _NUMBER_ (học sinh)<br/>Đáp số: Trường {SCHOOL_NAME}_1 có <DS>_NUMBER_</DS> học sinh nữ'),(20,'{PEOPLE_NAME}_1 ngồi trên 1 ô tô có vận tốc _NUMBER_ km/h trông thấy 1 tàu hỏa dài _NUMBER_ m đi ngược chiều chạy qua mắt mình trong _NUMBER_ giây. Tính vận tốc của tàu hỏa.\\n',14,0,'',NULL,'Vận tốc của cả tàu hỏa và ô tô là:<br/>_NUMBER_ x 3600 : _NUMBER_ = _NUMBER_ (m/h) = _NUMBER_ (km/h)<br/>Vậy vận tốc của tàu hỏa là:<br/>_NUMBER_ - _NUMBER_ = _NUMBER_ (km)<br/>Đáp số: <DS>_NUMBER_ km</DS>'),(21,'1 tổ thợ mộc có _NUMBER_ người trong _NUMBER_ ngày đóng được _NUMBER_ cái ghế. Hỏi nếu tổ có _NUMBER_ người làm trong _NUMBER_ ngày thì sẽ đóng được bao nhiêu ghế. Biết năng suất mỗi người là như nhau?',15,0,'',NULL,'_NUMBER_ người trong _NUMBER_ ngày đóng được _NUMBER_ cái ghế.<br/>Vậy 1 người trong _NUMBER_ ngày sẽ đóng được số ghế là:<br/>_NUMBER_ : _NUMBER_ = _NUMBER_ (ghế)<br/>1 người trong 1 ngày sẽ đóng được số ghế là:<br/>_NUMBER_ : _NUMBER_ = _NUMBER_ (ghế)<br/>_NUMBER_ người trong _NUMBER_ ngày sẽ đóng được số ghế là:<br/>_NUMBER_ x _NUMBER_ x _NUMBER_ = _NUMBER_ (ghế)<br/>Đáp số: <DS>_NUMBER_ ghế</DS>'),(22,'{PEOPLE_NAME}_1, {PEOPLE_NAME}_2, {PEOPLE_NAME}_3 sưu tầm được tất cả _NUMBER_ con tem. Nếu {PEOPLE_NAME}_1 cho {PEOPLE_NAME}_2 _NUMBER_ cái. {PEOPLE_NAME}_2 cho {PEOPLE_NAME}_3 _NUMBER_ cái, thì số tem của 3 bạn sẽ bằng nhau. Hỏi lúc đầu mỗi bạn sưu tầm được bao nhiêu tem?',16,0,'',NULL,'Sau khi cho tem, mỗi người có số tem là:<br/> _NUMBER_ : 3 = _NUMBER_ (cái)<br/>Số tem trước đó của {PEOPLE_NAME}_1 là:<br/> _NUMBER_ + _NUMBER_ = _NUMBER_ (cái)<br/>Số tem trước đó của {PEOPLE_NAME}_3 là:<br/> _NUMBER_ - _NUMBER_ = _NUMBER_ (cái)<br/>Số tem của {PEOPLE_NAME}_2 trước đó là:<br/> _NUMBER_ - _NUMBER_ - _NUMBER_ = _NUMBER_ (cái)<br/>Đáp số: <DS>{PEOPLE_NAME}_1 _NUMBER_ cái, {PEOPLE_NAME}_2 _NUMBER_ cái, {PEOPLE_NAME}_3 _NUMBER_ cái</DS>'),(23,'Có _NUMBER_ xe chở gạo gồm 2 loại. Loại I chở được _NUMBER_ tạ và loại II chở được _NUMBER_ tạ. Tất cả đã chở được _NUMBER_ tấn _NUMBER_ tạ gạo. Hỏi có bao nhiêu xe mỗi loại?',17,0,'',NULL,'Đổi _NUMBER_ tấn _NUMBER_ tạ = _NUMBER_ tạ<br/>1 xe loại I chở được hơn 1 xe loại II số tạ là: _NUMBER_ - _NUMBER_ = _NUMBER_ (tạ)<br/>Nếu cả _NUMBER_ xe đều là loại I thì sẽ chở được số gạo là:<br/> _NUMBER_ x _NUMBER_ = _NUMBER_ (tạ)<br/>Số gạo này nhiều hơn số gạo thực tế là:<br/> _NUMBER_ - _NUMBER_ = _NUMBER_ (tạ)<br/>Số gạo ít hơn này là do đã thay 1 số lượng xe I bằng xe II.<br/> Vậy số xe II đã dùng là: <br/>_NUMBER_ : _NUMBER_ = _NUMBER_ (xe)<br/>Số xe I đã dùng là:<br/> _NUMBER_ - _NUMBER_ = _NUMBER_ (xe)<br/>Đáp số: <DS>Loại I _NUMBER_ xe, loại II _NUMBER_ xe</DS>'),(24,'_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 giá _NUMBER_ đồng. _NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 giá _NUMBER_ đồng. Tìm giá tiền 1 lọ mực mỗi loại?<br/>',18,0,'',NULL,'_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 có giá là: _NUMBER_ + _NUMBER_ = _NUMBER_ (đồng)<br/>_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 có giá là: <br/>_NUMBER_ : _NUMBER_ x _NUMBER_ = _NUMBER_ (đồng)<br/>1 lọ mực {MAU}_1 có giá là:<br/> (_NUMBER_ - _NUMBER_) : _NUMBER_ = _NUMBER_/_NUMBER_ (đồng)<br/>1 lọ mực {MAU}_2 có giá là:<br/> (_NUMBER_ - _NUMBER_) : _NUMBER_ = _NUMBER_(đồng)<br/>Đáp số: <DS>lọ mực {MAU}_1 _NUMBER_ đồng, lọ mực {MAU}_2 _NUMBER_ đồng</DS><br/>'),(26,'bạn $VAR làm được $ATT bông hoa. bạn $VAR làm ít hơn bạn $VAR $ANT bông và chỉ bằng  một nửa số bông của bạn $VAR. hỏi ba bạn có bao nhiêu bông',29,0,'',NULL,'ba bạn có : $ATT + ($ATT + $ANT ) + ($ATT x 2) = '),(27,'Tính $VAR + $VAR- $VAR = ?',20,0,'',1,''),(28,'Tính $VAR : $VAR= ?',21,0,'',NULL,'Kết Quả $VAR : $VAR= '),(29,'$VAR x $VAR= ?',4,0,'',0,''),(30,'Có $VAR lít NUOC_UONG chia đều vào  $ENT. Hỏi mỗi $ENT có mấy lít ?',22,0,'',NULL,''),(31,'$VAR x $VAR = ???',21,0,'',0,''),(32,'X + $VAR = $VAR . hỏi X bằng bao nhiêu',20,0,'',NULL,''),(33,'$VAR - X = $VAR . X bằng bao nhiêu.',20,0,'',NULL,''),(34,'X x $VAR = $VAR. Hỏi X bằng bao nhiêu.',21,0,'',NULL,''),(35,'X + $VAR = $VAR - $VAR . X bằng bao nhiêu.',20,0,'',NULL,''),(36,'X : $VAR = $VAR . Hỏi X bằng bao nhiêu',21,0,'',NULL,''),(37,'1 số có 2 chữ số. mà khi cộng với $VAR thì ra được số có 3 chữ số giống nhau. tìm số đó.',22,0,'',NULL,''),(38,'$VAR x $ATT = $ENT , $ENT = 5 x $VAR . Hỏi $ENT gấp mấy lần $ATT',22,0,'',NULL,''),(39,'Năm 2014 , $ENT $ATT tuổi. Hỏi $ENT sinh năm bao nhiêu.',25,0,'',NULL,'$VAR sinh năm : 2014 - $ATT = '),(41,'Có ',1,0,'',NULL,'lop2.d1'),(42,'A lít rượu trong bình, đổ thêm B lít vào bình. Hỏi bình có bao nhiêu lít rượu?',1,1,'lop2.d1|+',NULL,'lop2.t1'),(43,'A lít rượu trong bình, sau đó bán B lít rượu đi. Hỏi  trong bình còn bao nhiêu rượu ? ',1,1,'lop2.d1|-',NULL,'lop2.t2'),(44,'A chiếc ghế trong 1 hàng. Hỏi  B hàng như thế thì có bao nhiêu chiếc ghế ?',1,1,'lop2.d1|x',NULL,'lop2.t3'),(45,'A chiếc ghế xếp đều thành B  hàng bằng nhau. Hỏi mỗi hàng có nhiêu chiếc ghế ?',1,1,'lop2d1|\\',NULL,'lop2.t4'),(47,'Mỗi Hình Vuông bé có diện tích là $ATT cm2. TÍnh diện tích khối hình vuông bên dưới ?',24,1,'https://www.dropbox.com/s/vdsljdp22w7iimu/Hinhvuong.PNG?dl=0',NULL,'Diện tích khối hình là : 4x$ATT (Cm2)'),(48,'Tính diện tích hình vuông dưới biết mỗi cạnh là $ATT cm ?',24,1,'https://www.dropbox.com/s/028fr7l9iljbzld/HinhVuong1.PNG?dl=0',NULL,'Diện tích hình vuông là : 4x$ATT ( Cm2)'),(49,'$VAR DON_VI  $VAR  DON_VI thì bằng bao nhiêu  DON_VI ??',23,0,'',NULL,''),(50,'Tìm X biết : X -  $VAR x ($VAR - $VAR) = 0',20,0,'',NULL,'X là : ');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='user of the system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vietvd','*6691484EA6B50DDDE1926A220DA01FA9E575C18A','UET','K56CLC','1993-03-27'),(2,'thanhpv','e99a18c428cb38d5f260853678922e03','UET','VNU','2014-08-05'),(3,'Duy','81dc9bdb52d04dc20036dbd8313ed055','uet','34','2014-12-09'),(4,'Hiếu','81dc9bdb52d04dc20036dbd8313ed055','UET','K56','2014-12-30'),(5,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:7|5 Ph','1.1','1970-01-01'),(6,'defaultUser','4c8f54894ca541fa7e69ddadcf305b59','UET','XXX','2014-12-29'),(7,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:18|5 Ph','1.2','1970-01-01'),(8,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:18|5 Ph','1.2','1970-01-01'),(9,'UnName','ec6a6536ca304edf844d1d248a4f08dc','6.0|0:0:50|5 Ph','2.4','1970-01-01'),(10,'UnName','ec6a6536ca304edf844d1d248a4f08dc','6.0|0:0:50|5 Ph','2.4','1970-01-01'),(11,'UnName','ec6a6536ca304edf844d1d248a4f08dc','6.0|0:0:50|5 Ph','2.4','1970-01-01'),(12,'UnName','ec6a6536ca304edf844d1d248a4f08dc','6.0|0:0:50|5 Ph','2.4','1970-01-01'),(13,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:13|5 Ph','1.1','1970-01-01'),(14,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:43|5 Ph','1.1','1970-01-01'),(15,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:43|5 Ph','1.1','1970-01-01'),(16,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:43|5 Ph','1.1','1970-01-01'),(17,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:43|5 Ph','1.1','1970-01-01'),(18,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:43|5 Ph','1.1','1970-01-01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vars`
--

DROP TABLE IF EXISTS `vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_vars_questions_idx` (`question_id`),
  CONSTRAINT `FK_vars_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vars`
--

LOCK TABLES `vars` WRITE;
/*!40000 ALTER TABLE `vars` DISABLE KEYS */;
INSERT INTO `vars` VALUES (1,'3,4',1),(2,'1,1',1),(3,'10,20',2),(4,'5,7',2),(5,'5,6',3),(6,'2,6',29),(7,'3,6',29),(8,'1,6',29),(9,'4,6',29),(10,'5,6',29),(11,'6,6',29),(12,'7,6',29),(13,'8,6',29),(14,'9,6',29),(15,'1,7',29),(16,'2,7',29),(17,'3,7',29),(18,'4,7',29),(19,'5,7',29),(20,'6,7',29),(21,'12,20',1),(22,'17,32',1),(24,'6324,1231',1),(25,'224,653',1),(27,'7654,34',1),(30,'6,3',28),(31,'8,2',28),(32,'15,3',28),(33,'7,7',28),(34,'21,7',28),(35,'1,100',49),(36,'10,3',9),(37,'10,2004',39),(38,'6',48),(39,'6',47),(40,'5,8,4',27),(41,'6,1,2',27),(42,'9,12,13',27),(43,'10,15,25',27),(44,'25,5',33),(45,'17,12',33),(46,'8,2',33),(47,'4,1',33),(48,'5,12',31),(49,'6,8',31),(50,'4,5',31),(51,'8,17',31),(52,'12,89,16',35),(53,'34,120,56',35),(54,'128,230,12',35),(55,'5,35',34),(56,'7,63',34),(57,'12,60',34),(58,'15,90',34),(59,'5,12',36),(60,'12,12',36),(61,'17,23',36),(62,'13,7',36),(63,'714',37),(64,'825',37),(65,'927',37),(66,'612',37),(67,'22,5,110',38),(68,'12,5,60',38),(69,'24,5,120',38),(70,'4,12',32),(71,'238,7',30),(72,'238,6',33),(73,'133,211,205',50),(74,'48,6',28),(75,'12,3',31),(76,'20,180',34),(77,'7,12',36),(78,'5,2',8),(79,'5,3',26);
/*!40000 ALTER TABLE `vars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-19  3:28:54
