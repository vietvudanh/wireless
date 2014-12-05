-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.20 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for wireless
CREATE DATABASE IF NOT EXISTS `wireless` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wireless`;


-- Dumping structure for table wireless.answers
DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  `var_id` int(11) DEFAULT '0',
  `correct` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_answers_vars` (`var_id`),
  CONSTRAINT `FK_answers_vars` FOREIGN KEY (`var_id`) REFERENCES `vars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='asnwers for each vars. each vars has 4 answers.';

-- Dumping data for table wireless.answers: ~16 rows (approximately)
DELETE FROM `answers`;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`id`, `value`, `var_id`, `correct`) VALUES
	(1, '7', 1, 1),
	(2, '3', 1, 0),
	(3, '6', 1, 0),
	(4, '5', 1, 0),
	(5, '2', 2, 1),
	(6, '1', 2, 0),
	(7, '4', 2, 0),
	(9, '4', 2, 0),
	(10, '20', 3, 0),
	(11, '10', 3, 0),
	(12, '30', 3, 1),
	(14, '40', 3, 0),
	(15, '5', 4, 0),
	(16, '8', 4, 0),
	(17, '10', 4, 0),
	(18, '12', 4, 1);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;


-- Dumping structure for table wireless.attributes
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='each type has list of corresponding attributes';

-- Dumping data for table wireless.attributes: ~8 rows (approximately)
DELETE FROM `attributes`;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` (`id`, `name`) VALUES
	(1, 'quả cam'),
	(2, 'cái bút'),
	(3, 'cái chén'),
	(4, 'cái kẹo'),
	(5, 'quả táo'),
	(6, 'cái cốc'),
	(7, 'phân xưởng'),
	(9, 'cặp tài liệu');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;


-- Dumping structure for table wireless.chapters
DROP TABLE IF EXISTS `chapters`;
CREATE TABLE IF NOT EXISTS `chapters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_chapters_grades` (`grade_id`),
  CONSTRAINT `FK_chapters_grades` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='a chapter, contains many questions(format)';

-- Dumping data for table wireless.chapters: ~4 rows (approximately)
DELETE FROM `chapters`;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` (`id`, `name`, `grade_id`) VALUES
	(1, 'Cộng trừ khoảng 10', 2),
	(2, 'Cộng trừ khoảng 20', 2),
	(3, 'Nhân khoảng 10', 2),
	(4, 'Bảng cửu chương', 3);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;


-- Dumping structure for table wireless.entities
DROP TABLE IF EXISTS `entities`;
CREATE TABLE IF NOT EXISTS `entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='each questions has an entity type';

-- Dumping data for table wireless.entities: ~3 rows (approximately)
DELETE FROM `entities`;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
INSERT INTO `entities` (`id`, `name`, `type`) VALUES
	(1, 'Lan,Bình,Nam,An,Bình', 'Học sinh'),
	(2, 'Nhà máy A,Nhà máy B', 'Vật'),
	(3, 'Cô giáo Thủy, Cô giáo Thảo, Cô giáo Thơm', 'Cô giáo');
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;


-- Dumping structure for table wireless.entity_attribute
DROP TABLE IF EXISTS `entity_attribute`;
CREATE TABLE IF NOT EXISTS `entity_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_entities_attributes_entities` (`entity_id`),
  KEY `FK_entities_attributes_attributes` (`attribute_id`),
  CONSTRAINT `FK_entities_attributes_attributes` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  CONSTRAINT `FK_entities_attributes_entities` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table wireless.entity_attribute: ~8 rows (approximately)
DELETE FROM `entity_attribute`;
/*!40000 ALTER TABLE `entity_attribute` DISABLE KEYS */;
INSERT INTO `entity_attribute` (`id`, `entity_id`, `attribute_id`) VALUES
	(1, 1, 2),
	(2, 1, 3),
	(3, 1, 6),
	(4, 1, 4),
	(5, 1, 1),
	(6, 1, 5),
	(7, 2, 7),
	(8, 3, 9);
/*!40000 ALTER TABLE `entity_attribute` ENABLE KEYS */;


-- Dumping structure for table wireless.grades
DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='a grade, contains many chapters';

-- Dumping data for table wireless.grades: ~5 rows (approximately)
DELETE FROM `grades`;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` (`id`, `name`) VALUES
	(1, 'Lớp 1'),
	(2, 'Lớp 2'),
	(3, 'Lớp 3'),
	(4, 'Lớp 4'),
	(5, 'Lớp 5');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;


-- Dumping structure for table wireless.histories
DROP TABLE IF EXISTS `histories`;
CREATE TABLE IF NOT EXISTS `histories` (
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

-- Dumping data for table wireless.histories: ~2 rows (approximately)
DELETE FROM `histories`;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` (`id`, `user_id`, `question_id`, `var_id`, `result`) VALUES
	(1, 1, 2, 3, 0),
	(2, 1, 1, 1, 1);
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;


-- Dumping structure for table wireless.questions
DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `format` varchar(200) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `difficulty` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_questions_chapters_idx` (`chapter_id`),
  CONSTRAINT `FK_questions_chapters` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='format of the question';

-- Dumping data for table wireless.questions: ~2 rows (approximately)
DELETE FROM `questions`;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `format`, `chapter_id`, `img`, `img_path`, `difficulty`) VALUES
	(1, '$VAR + $VAR = ?', 1, 0, NULL, 1),
	(2, '$ENT có $VAR $ATT, $ENT có $VAR $ATT. Hỏi cả 2 có $ATT', 2, 0, NULL, 1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table wireless.question_entity
DROP TABLE IF EXISTS `question_entity`;
CREATE TABLE IF NOT EXISTS `question_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_questions_entities_questions` (`question_id`),
  KEY `FK_questions_entities_entities` (`entity_id`),
  CONSTRAINT `FK_questions_entities_entities` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`),
  CONSTRAINT `FK_questions_entities_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table wireless.question_entity: ~3 rows (approximately)
DELETE FROM `question_entity`;
/*!40000 ALTER TABLE `question_entity` DISABLE KEYS */;
INSERT INTO `question_entity` (`id`, `question_id`, `entity_id`) VALUES
	(1, 2, 1),
	(2, 2, 2),
	(3, 2, 3);
/*!40000 ALTER TABLE `question_entity` ENABLE KEYS */;


-- Dumping structure for table wireless.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `school_name` varchar(50) DEFAULT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='user of the system';

-- Dumping data for table wireless.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `school_name`, `class_name`, `date_of_birth`) VALUES
	(1, 'vietvd', '*6691484EA6B50DDDE1926A220DA01FA9E575C18A', 'UET', 'K56CLC', '1993-03-27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table wireless.vars
DROP TABLE IF EXISTS `vars`;
CREATE TABLE IF NOT EXISTS `vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_vars_questions_idx` (`question_id`),
  CONSTRAINT `FK_vars_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table wireless.vars: ~4 rows (approximately)
DELETE FROM `vars`;
/*!40000 ALTER TABLE `vars` DISABLE KEYS */;
INSERT INTO `vars` (`id`, `value`, `question_id`) VALUES
	(1, '3,4', 1),
	(2, '1,1', 1),
	(3, '10,20', 2),
	(4, '5,7', 2);
/*!40000 ALTER TABLE `vars` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
