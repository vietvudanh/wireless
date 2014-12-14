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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='asnwers for each vars. each vars has 4 answers.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'7',1,1),(2,'3',1,0),(3,'6',1,0),(4,'5',1,0),(5,'2',2,1),(6,'1',2,0),(7,'4',2,0),(9,'4',2,0),(10,'20',3,0),(11,'10',3,0),(12,'30',3,1),(14,'40',3,0),(15,'5',4,0),(16,'8',4,0),(17,'10',4,0),(18,'12',4,1);
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
INSERT INTO `chapters` VALUES (1,'Cộng trừ khoảng 10',2),(2,'Cộng trừ khoảng 20',2),(3,'Nhân khoảng 10',2),(4,'Bảng cửu chương',3),(5,'Bài toán tìm quãng đường',5),(6,'Bài toán tổng và tỷ',5),(7,'Bài toán tìm quãng đường hơn kém nhau',5),(8,'Bài toán phần trăm',5),(9,'Bài toán tìm thời gian',5),(10,'Bài toán đổi đơn vị',4),(11,'Bài tóan chia 1 số thập phân cho 10',5),(12,'Bài toán vòi nước',5),(13,'Dạng toán tỉ số',5),(14,'Dạng toán cộng vận tốc',5),(15,'Dạng toán năng suất lao động',5),(16,'Dạng toán thêm bớt',5),(17,'Dạng toán công suất không đồng đều',5),(18,'Dạng toán tính giá của các mặt hàng khác nhau',5),(19,'Bài toán hiệu và tỷ',5),(20,'Bài Toán Cộng Trừ Số Dưới 10.000',3),(21,'Nhân Chia 2 Số ',3),(22,'Tính Toán Biểu Thức',3),(23,'Bài Toán Quy Đổi ',3),(24,'Tính Diện Tích Chu Vi Các Hình Đơn Giản',3),(25,'bài toán tính tuổi ',3),(26,'bài toán tính thời gian',3),(27,'bài toán tìm số dựa trên tổng và hiệu',3),(28,'bài toán về nhân chia liên quan tới rút gọn',3),(29,'bài toán về quan hệ nhiều hơn , ít hơn , gấp hay giảm đi số lần',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='each questions has an entity type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entities`
--

LOCK TABLES `entities` WRITE;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` VALUES (1,'Lan,Bình,Nam,An,Bình','hoc_sinh'),(2,'Nhà máy A,Nhà máy B','vat_the'),(3,'Cô giáo Thủy, Cô giáo Thảo, Cô giáo Thơm, Cô giáo Vân','giao_vien'),(4,'Hoa,Mai,Lan,Cúc,Hùng,Trúc,Toàn,Tường,Trường','PEOPLE_NAME'),(5,'Hoa,Lan,Mai,Bảy,Tám,Chín','PEOPLE_NAME_BA'),(6,'Nguyễn Đình Chiểu,Lê Quý Đôn,Hoàng Văn Thụ,Nguyễn Tất Thành','SCHOOL_NAME'),(7,'Sáu,Bảy,Năm,Hải','PEOPLE_NAME_ONG'),(8,'Mật Ong, Nước Cam, Trái Cây','NUOC_UONG'),(9,'lít nước , lít dầu ','DON_VI_NUOC'),(10,'lít, mililit, mét, centimet, decimet, kilogam, gam, m2, m3','DON_VI');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (7,'http://wireless-vietvudanh.c9.io/public/images/CAM00526.jpg',1,'2014-12-14 21:07:55','2014-12-14 21:07:55'),(8,'http://wireless-vietvudanh.c9.io/public/images/199-katakana, hiragana.jpg',NULL,'2014-12-14 21:10:16','2014-12-14 21:10:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='format of the question';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'$VAR + $VAR = ?',20,0,'',1,''),(2,'$ENT có $VAR $ATT, $ENT có $VAR $ATT. Hỏi cả 2 có bao nhiêu $ATT?',2,0,NULL,1,'Tổng số $ATT là $VAR + $VAR = ...'),(3,'$ENT có $VAR $ATT, $ENT có hơn $ENT $VAR $ATT. Hỏi $ENT có bao nhiêu $ATT?',2,NULL,NULL,1,NULL),(5,'$ENT có $VAR chân $ATT , $VAR chân $ATT . hỏi $ENT đếm được bao nhiêu $ATT.',28,0,'',1,' Tổng của nó là ($VAR + $VAR) /4 = '),(6,'tìm số lớn nhất $VAR. với $VAR < $ATT',10,0,'',1,''),(7,'cho số có 2 chữ số $VAR $ATT . mà $VAR+ ATT = $ ANN. tìm số có 2 chữ số đó . ',27,0,'',1,'số có 2 chữ số đó là : 0 <$VAR , $ATT =< 9 . $VAR + $ATT = $ANN.  ....'),(8,'Hiện tại , $VAR hơn $VAR $ATT tuổi.  sau $ATT năm nữa. thì $VAR gấp đôi $VAR.',25,0,'',1,'Ta có ( $VAR - $VAR) = $ATT . mà [($VAR +$ATT) - ($VAR + $ATT ) ] = $ATT'),(9,'để cưa 1 khúc gỗ làm 2 hết $VAR phút. hỏi để cưa khúc gỗ thành $ ATT . thì cần bao nhiêu $VAR phút.',26,0,'',1,'cần thời gian là ( $ATT - 1 ) x $ VAR = '),(10,'Xe của {PEOPLE_NAME}_1 đi từ A đến B với vận tốc _NUMBER_ km/h. Xe của {PEOPLE_NAME}_2 đi từ B đến A với vận tốc _NUMBER_ km/h. Sau _NUMBER_ giờ 2 xe gặp nhau. Hỏi quãng đường AB dài bao nhiêu km ?<br/>',5,0,'',NULL,'Quãng đường AB có độ dài bằng tổng quãng đường 2 xe đi được.<br/>Vậy quãng đường AB dài là: <br/>_NUMBER_ x _NUMBER_ + _NUMBER_ x _NUMBER_ = _NUMBER_ (km)<br/>Đáp số: quãng đường AB dài: <DS>_NUMBER_ km</DS>'),(11,'Số M lớn hơn số N _NUMBER_ đơn vị. Số M bằng _NUMBER_/_NUMBER_ lần số N. Tìm 2 số M và N?',19,0,'',NULL,'Số M nhiều hơn số N số phần là: _NUMBER_ - _NUMBER_ = _NUMBER_ (phần)\\nĐặt giá trị của 1 phần là P, ta có P = _NUMBER_ : (_NUMBER_ - _NUMBER_) = _NUMBER_\\nVậy số M bằng: M = _NUMBER_ x _NUMBER_ = _NUMBER_\\nVậy số N bằng: N = _NUMBER_ x _NUMBER_ = _NUMBER_\\nĐáp số: <DS>M = _NUMBER_, N = _NUMBER_</DS>\\n'),(12,'Tổng 2 số M và N là _NUMBER_. Số M bằng _NUMBER_/_NUMBER_ lần số N. Tìm 2 số M, N ?',6,0,'',NULL,'Tổng số phần của 2 số là: _NUMBER_ + _NUMBER_ = _NUMBER_(phần)\\nĐặt giá trị của 1 phần là P, ta có P = _NUMBER_ : (_NUMBER_ + _NUMBER_) = _NUMBER_\\nVậy số M bằng: M = _NUMBER_ x _NUMBER_ = _NUMBER_\\nVậy số N bằng: N = _NUMBER_ x _NUMBER_ = _NUMBER_\\nĐáp số: <DS>M = _NUMBER_, N = _NUMBER_</DS>\\n'),(13,'Xe của {PEOPLE_NAME}_1 chạy với vận tốc _NUMBER_ km/h trong thời gian _NUMBER_ giờ ,xe của {PEOPLE_NAME}_2 chạy với vận tốc _NUMBER_ km/h trong thời gian _NUMBER_ giờ. Hỏi của {PEOPLE_NAME}_1 chạy hơn hay kém xe của {PEOPLE_NAME}_2 bao nhiêu km ?\\n',7,0,'',NULL,'Quãng đường xe của {PEOPLE_NAME}_1 chạy được là: \\n_NUMBER_ x _NUMBER_ = _NUMBER_ (km)\\nQuãng đường xe của {PEOPLE_NAME}_2 chạy được là: \\n_NUMBER_ x _NUMBER_ = _NUMBER_ (km)\\n|Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số km là: \\n_NUMBER_ - _NUMBER_ = _NUMBER_ (km)\\nĐáp số: <DS>Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 _NUMBER_ km</DS>\\n|Xe của {PEOPLE_NAME}_2 chạy hơn xe của {PEOPLE_NAME}_1 số km là: \\n_NUMBER_ - _NUMBER_ = _NUMBER_ (km)\\nĐáp số: <DS>Xe của {PEOPLE_NA'),(14,'Bạn {PEOPLE_NAME}_1 có chiều cao là _NUMBER_ cm, sau một thời gian phát triển chiều cao, chiều cao của {PEOPLE_NAME}_1 tăng lên _NUMBER_ cm. Hỏi phần trăm chiều cao tăng thêm của A so với ban đầu là bao nhiêu (làm tròn đến số thập phân số 2)\\n',8,0,'',NULL,'Chiều cao tăng thêm của {PEOPLE_NAME}_1 so với ban đầu là : _NUMBER_ - _NUMBER_ = _NUMBER_ (cm)\\nPhần trăm chiều cao tăng thêm của {PEOPLE_NAME}_1 so với ban đầu là: _NUMBER_ : _NUMBER_ x 100% = _NUMBER_ %\\nĐáp số: <DS>_NUMBER_ %</DS>\\n'),(15,'Xe của {PEOPLE_NAME}_1 chạy với vận tốc _NUMBER_ km/h trên _NUMBER_ km, xe của {PEOPLE_NAME}_2 chạy với vận tốc _NUMBER_ km/h trên quãng đường _NUMBER_ km. Hỏi thời gian xe của {PEOPLE_NAME}_1 chay hơn hay kém xe của {PEOPLE_NAME}_2 bao nhiêu ?\\n',9,0,'',NULL,'Thời gian xe {PEOPLE_NAME}_1 chạy là: \\n_NUMBER_ : _NUMBER_ = _NUMBER_ (giờ)\\nThời gian xe {PEOPLE_NAME}_2 chạy là: \\n_NUMBER_ : _NUMBER_ = _NUMBER_ (giờ)\\n|Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số thời gian là: \\n_NUMBER_ - _NUMBER_ = _NUMBER_ (giờ)\\nĐáp số: <DS>Xe của {PEOPLE_NAME}_1 chạy hơn xe của {PEOPLE_NAME}_2 số giờ là: _NUMBER_ giờ</DS>\\n|Xe của {PEOPLE_NAME}_1 chạy kém xe {PEOPLE_NAME}_2 số thời gian là: \\n_NUMBER_ - _NUMBER_ = _NUMBER_ (giờ)\\nĐáp số: <DS>Xe {PEOPLE_NA'),(16,'Trong 3 ngày cửa hàng bà {PEOPLE_NAME}_1 bán được _NUMBER_ tấn quả {QUA}_1. Ngày 1 bán được _NUMBER_ kg, ngày 2 bán được _NUMBER_ kg. Hỏi ngày 3 cửa hàng bán được bao nhiêu kg biết trong kho còn tồn kho _NUMBER_ kg quả {QUA}_1 ?',10,0,'',NULL,'Đổi : _NUMBER_ tấn = _NUMBER_ kg\\nSố quả {QUA}_1 của cửa hàng bán được trong ngày thứ 3 là :\\n_NUMBER_ - _NUMBER_ - _NUMBER_ - _NUMBER_ = _NUMBER_ (kg)\\nĐáp số: Số quả {QUA}_1 của cửa hàng bà {PEOPLE_NAME}_1 bán được trong ngày thứ 3 là : <DS>_NUMBER_ kg</DS>\\n'),(17,'Kho nhà bà {PEOPLE_NAME}_1 có _NUMBER_ tấn {QUA}_1, người ta lấy ra _NUMBER_/10 số {QUA}_1 trong kho. Hỏi trong kho còn bao nhiêu tấn {QUA}_1 ?\\n',11,0,'',NULL,'1/10 trong _NUMBER_ tấn {QUA}_1 là _NUMBER_/10 tấn\\n_NUMBER_/10 trong _NUMBER_ tấn {QUA}_1 là: _NUMBER_/10 tấn\\nSố {QUA}_1 còn lại trong kho là: _NUMBER_ – _NUMBER_/10 = _NUMBER_(tấn)\\nĐáp số : số {QUA}_1 còn lại trong kho là <DS>_NUMBER_ tấn</DS>\\n'),(18,'Cả 2 vòi cùng chảy vào bể nước thì mất _NUMBER_ phút. Nếu vòi 2 chảy một mình thì mất _NUMBER_ phút. Hỏi vòi thứ 1 chảy một mình thì mất bao lâu?\\n',12,0,'',NULL,'1 phút 2 vòi cùng chảy được là: 1/_NUMBER_ (bể nước)\\n1 phút vòi thứ 2 chảy được là: 1/_NUMBER_ (bể nước)\\n1 phút vòi thứ 1 chảy được là: 1/_NUMBER_ - 1/_NUMBER_ = _NUMBER_/_NUMBER_ ( bể nước)\\nThời gian để vòi thứ nhất chảy đầy bể là: \\n1 : _NUMBER_/_NUMBER_ = _NUMBER_ (phút)\\nĐáp số: Thời gian để vòi thứ nhất chảy đầy bể là: <DS>_NUMBER_ phút</DS>\\n'),(19,'Tỉ số số học sinh nam so với số học sinh nữ của trường {SCHOOL_NAME}_1 đầu năm là _NUMBER_/_NUMBER_. Nếu chuyển thêm _NUMBER_ học sinh nam từ trường khác đến thì tỉ số giữa học sinh nam và nữ là _NUMBER_/_NUMBER_. Tìm số học sinh nữ của trường?',13,0,'',NULL,'Trước khi chuyển tỉ số học sinh nam và học sinh nữ là _NUMBER_/_NUMBER_ , sau khi thêm _NUMBER_ học sinh nam tỷ số giữa học sinh nam và học snh nữ là _NUMBER_/_NUMBER_. Vậy _NUMBER_ học sinh nam bằng số phần của số học sinh nữ là: _NUMBER_/_NUMBER_ - _NUMBER_/_NUMBER_ = 1/_NUMBER_(phần)\\nVậy số học sinh nữ của trường là: _NUMBER_ : 1/_NUMBER_ = _NUMBER_ (học sinh)\\nĐáp số: Trường {SCHOOL_NAME}_1 có <DS>_NUMBER_</DS> học sinh nữ\\n'),(20,'{PEOPLE_NAME}_1 ngồi trên 1 ô tô có vận tốc _NUMBER_ km/h trông thấy 1 tàu hỏa dài _NUMBER_ m đi ngược chiều chạy qua mắt mình trong _NUMBER_ giây. Tính vận tốc của tàu hỏa.\\n',14,0,'',NULL,'Vận tốc của cả tàu hỏa và ô tô là: _NUMBER_ x 3600 : _NUMBER_ = _NUMBER_ (m/h) = _NUMBER_ (km/h)\\nVậy vận tốc của tàu hỏa là: _NUMBER_ - _NUMBER_ = _NUMBER_ (km)\\nĐáp số: <DS>_NUMBER_</DS> km\\n'),(21,'1 tổ thợ mộc có _NUMBER_ người trong _NUMBER_ ngày đóng được _NUMBER_ cái ghế. Hỏi nếu tổ có _NUMBER_ người làm trong _NUMBER_ ngày thì sẽ đóng được bao nhiêu ghế. Biết năng suất mỗi người là như nhau.\\n',15,0,'',NULL,'_NUMBER_ người trong _NUMBER_ ngày đóng được _NUMBER_ cái ghế. Vậy 1 người trong _NUMBER_ ngày sẽ đóng được số ghế là: _NUMBER_ : _NUMBER_ = _NUMBER_ (ghế)\\n1 người trong 1 ngày sẽ đóng được số ghế là: _NUMBER_ : _NUMBER_ = _NUMBER_ (ghế)\\n_NUMBER_ người trong _NUMBER_ ngày sẽ đóng được số ghế là: _NUMBER_ x _NUMBER_ x _NUMBER_ = _NUMBER_ (ghế)\\nĐáp số: <DS>_NUMBER_ ghế</DS>\\n'),(22,'{PEOPLE_NAME}_1, {PEOPLE_NAME}_2, {PEOPLE_NAME}_3 sưu tầm được tất cả _NUMBER_ con tem. Nếu {PEOPLE_NAME}_1 cho Bình {PEOPLE_NAME}_2 _NUMBER_ cái. {PEOPLE_NAME}_2 cho {PEOPLE_NAME}_3 _NUMBER_ cái, thì số tem của 3 bạn sẽ bằng nhau. Hỏi lúc đầu mỗi bạn sưu tầm được bao nhiêu tem.\\n',16,0,'',NULL,'Sau khi cho tem, mỗi người có số tem là: _NUMBER_ : 3 = _NUMBER_ (cái)\\nSố tem trước đó của {PEOPLE_NAME}_1 là: _NUMBER_ + _NUMBER_ = _NUMBER_ (cái)\\nSố tem trước đó của {PEOPLE_NAME}_3 là: _NUMBER_ - _NUMBER_ = _NUMBER_ (cái)\\nSố tem của {PEOPLE_NAME}_2 trước đó là: _NUMBER_ - _NUMBER_ - _NUMBER_ = _NUMBER_ (cái)\\nĐáp số: <DS>{PEOPLE_NAME}_1 _NUMBER_ cái, {PEOPLE_NAME}_2 _NUMBER_ cái, {PEOPLE_NAME}_3 _NUMBER_ cái</DS>\\n'),(23,'Có _NUMBER_ xe chở gạo gồm 2 loại. Loại I chở được _NUMBER_ tạ và loại II chở được _NUMBER_ tạ. Tất cả đã chở được _NUMBER_ tấn _NUMBER_ tạ gạo. Hỏi có bao nhiêu xe mỗi loại?\\n',17,0,'',NULL,'Đổi _NUMBER_ tấn _NUMBER_ tạ = _NUMBER_ tạ\\n1 xe loại I chở được hơn 1 xe loại II số tạ là: _NUMBER_ - _NUMBER_ = _NUMBER_ (tạ)\\nNếu cả _NUMBER_ xe đều là loại I thì sẽ chở được số gạo là: _NUMBER_ x _NUMBER_ = _NUMBER_ (tạ)\\nSố gạo này nhiều hơn số gạo thực tế là: _NUMBER_ - _NUMBER_ = _NUMBER_ (tạ)\\nSố gạo ít hơn này là do đã thay 1 số lượng xe I bằng xe II. Vậy số xe II đã dùng là: _NUMBER_ : _NUMBER_ = _NUMBER_ (xe)\\nSố xe I đã dùng là: _NUMBER_ - _NUMBER_ = _NUMBER_ (xe)\\nĐáp số: <DS>Loại I'),(24,'_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 giá _NUMBER_ đồng. _NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 giá _NUMBER_ đồng. Tìm giá tiền 1 lọ mực mỗi loại?\\n',18,0,'',NULL,'_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 có giá là: _NUMBER_ + _NUMBER_ = _NUMBER_ (đồng)\\n_NUMBER_ lọ mực {MAU}_1 và _NUMBER_ lọ mực {MAU}_2 có giá là: _NUMBER_ : _NUMBER_ x _NUMBER_ = _NUMBER_ (đồng)\\n1 lọ mực {MAU}_1 có giá là: (_NUMBER_ - _NUMBER_) : _NUMBER_ = _NUMBER_/_NUMBER_ (đồng)\\n1 lọ mực {MAU}_2 có giá là: (_NUMBER_ - _NUMBER_) : _NUMBER_ = _NUMBER_(đồng)\\nĐáp số: <DS>lọ mực {MAU}_1 _NUMBER_ đồng, lọ mực {MAU}_2 _NUMBER_ đồng</DS>\\n'),(26,'bạn $VAR làm được $ATT bông hoa. bạn $VAR làm ít hơn bạn $VAR $ANT bông và chỉ bằng  một nửa số bông của bạn $VAR. hỏi ba bạn có bao nhiêu bông',29,0,'',NULL,'ba bạn có : $ATT + ($ATT + $ANT ) + ($ATT x 2) = '),(27,'Tính $VAR + $ATT - $ENT = ?',20,0,'',1,'Kết Quả Là : $VAR +$ATT -$ENT ='),(28,'Tính $VAR : $VAR= ?',21,0,'',NULL,'Kết Quả $VAR : $VAR= '),(29,'$VAR x $VAR= ?',4,0,'',0,''),(30,'Có $VAR lít NUOC_UONG chia đều vào  $ENT. Hỏi mỗi $ENT có mấy lít ?',22,0,'',NULL,''),(31,'$VAR x $VAR = ???',21,0,'',0,''),(32,'X + $VAR = $VAR . hỏi X bằng bao nhiêu',20,0,'',NULL,''),(33,'$VAR - X = $VAR . X bằng bao nhiêu.',20,0,'',NULL,''),(34,'X x $VAR = $VAR. Hỏi X bằng bao nhiêu.',21,0,'',NULL,''),(35,'X + $VAR = $VAR - $VAR . X bằng bao nhiêu.',20,0,'',NULL,''),(36,'X : $VAR = $VAR . Hỏi X bằng bao nhiêu',21,0,'',NULL,''),(37,'1 số có 2 chữ số. mà khi cộng với $VAR thì ra được số có 3 chữ số giống nhau. tìm số đó.',22,0,'',NULL,''),(38,'$VAR x $ATT = $ENT , $ENT = 5 x $VAR . Hỏi $ENT gấp mấy lần $ATT',22,0,'',NULL,''),(39,'Năm 2014 , $VAR $ATT tuổi. Hỏi $VAR sinh năm bao nhiêu.',25,0,'',NULL,'$VAR sinh năm : 2014 - $ATT = '),(40,'A cây cam và B cây táo, hỏi số cây là bao nhiêu',NULL,0,'',NULL,'lop2'),(41,'Có ',NULL,0,'',NULL,'lop2.d1'),(42,'A lít rượu trong bình , đổ thêm B lít vào bình. Hỏi bình có bao nhiêu lít rượu',NULL,0,'lop2.d1|+',NULL,'lop2.t1'),(43,'A lít rượu trong bình , sau đó bán B lít rượu đi . Hỏi  trong bình còn bao nhiêu rượu ? ',NULL,0,'lop2.d1|-',NULL,'lop2.t2'),(44,'A chiếc  ghế trong 1 hàng .Hỏi  B hàng như thế thì có bao nhiêu chiếc ghế ?',NULL,0,'lop2.d1|x',NULL,'lop2.t3'),(45,'A chiếc ghế xếp đều thành B  hàng bằng nhau . Hỏi mỗi hàng có nhiêu chiếc ghế ?',NULL,0,'lop2d1|\\',NULL,'lop2.t4'),(47,'Mỗi Hình Vuông bé có diện tích là $ATT cm2. TÍnh diện tích khối hình vuông bên dưới ?',24,0,'https://www.dropbox.com/s/vdsljdp22w7iimu/Hinhvuong.PNG?dl=0',NULL,'Diện tích khối hình là : 4x$ATT (Cm2)'),(48,'Tính diện tích hình vuông dưới biết mỗi cạnh là @ATT cm ?',24,0,'https://www.dropbox.com/s/028fr7l9iljbzld/HinhVuong1.PNG?dl=0',NULL,'Diện tích hình vuông là : 4x$ATT ( Cm2)'),(49,'$ATT DON_VI  $VAR  DON_VI thì bằng bao nhiêu  DON_VI ??',23,0,'',NULL,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='user of the system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'vietvd','*6691484EA6B50DDDE1926A220DA01FA9E575C18A','UET','K56CLC','1993-03-27'),(2,'thanhpv','e99a18c428cb38d5f260853678922e03','UET','VNU','2014-08-05'),(3,'Duy','81dc9bdb52d04dc20036dbd8313ed055','uet','34','2014-12-09'),(4,'Hiếu','81dc9bdb52d04dc20036dbd8313ed055','UET','K56','2014-12-30'),(5,'UnName','ec6a6536ca304edf844d1d248a4f08dc','4.0|0:0:7|5 Ph','1.1','1970-01-01'),(6,'defaultUser','4c8f54894ca541fa7e69ddadcf305b59','UET','XXX','2014-12-29');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vars`
--

LOCK TABLES `vars` WRITE;
/*!40000 ALTER TABLE `vars` DISABLE KEYS */;
INSERT INTO `vars` VALUES (1,'3,4',1),(2,'1,1',1),(3,'10,20',2),(4,'5,7',2),(5,'5,6',3),(6,'2,6',29),(7,'3,6',29),(8,'1,6',29),(9,'4,6',29),(10,'5,6',29),(11,'6,6',29),(12,'7,6',29),(13,'8,6',29),(14,'9,6',29),(15,'1,7',29),(16,'2,7',29),(17,'3,7',29),(18,'4,7',29),(19,'5,7',29),(20,'6,7',29),(21,'12,20',1),(22,'17,32',1),(23,'56,345',1),(24,'6324,1231',1),(25,'224,653',1),(26,'456,413',1),(27,'7654,34',1),(28,'3345,32',1),(29,'956,6342',1),(30,'6,3',28),(31,'8,2',28),(32,'15,3',28),(33,'7,7',28),(34,'21,7',28);
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

-- Dump completed on 2014-12-14 14:14:30
