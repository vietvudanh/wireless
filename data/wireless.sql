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
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) DEFAULT NULL,
  `var_id` int(11) DEFAULT '0',
  `correct` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_answers_vars` (`var_id`),
  CONSTRAINT `FK_answers_vars` FOREIGN KEY (`var_id`) REFERENCES `vars` (`var_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='asnwers for each vars. each vars has 4 answers.';

-- Dumping data for table wireless.answers: ~4 rows (approximately)
DELETE FROM `answers`;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`id`, `value`, `var_id`, `correct`) VALUES
	(1, '1', 1, 0),
	(2, '2', 1, 0),
	(3, '3', 1, 1),
	(4, '4', 1, 0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;


-- Dumping structure for table wireless.attributes
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_attributes_entities` (`entity_id`),
  CONSTRAINT `FK_attributes_entities` FOREIGN KEY (`entity_id`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each type has list of corresponding attributes';

-- Dumping data for table wireless.attributes: ~0 rows (approximately)
DELETE FROM `attributes`;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;


-- Dumping structure for table wireless.chapters
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
	(1, 'Cộng trừ khoảng 10', 1),
	(2, 'Cộng trừ khoảng 20', 1),
	(3, 'Nhân khoảng 10', 2),
	(4, 'Bảng cửu chương', 3);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;


-- Dumping structure for table wireless.entities
CREATE TABLE IF NOT EXISTS `entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `ent_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='each questions has an entity type';

-- Dumping data for table wireless.entities: ~0 rows (approximately)
DELETE FROM `entities`;
/*!40000 ALTER TABLE `entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `entities` ENABLE KEYS */;


-- Dumping structure for table wireless.grades
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='a grade, contains many chapters';

-- Dumping data for table wireless.grades: ~5 rows (approximately)
DELETE FROM `grades`;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` (`id`, `name`) VALUES
	(1, '1'),
	(2, '2'),
	(3, '3'),
	(4, '4'),
	(5, '5');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;


-- Dumping structure for table wireless.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `format` varchar(200) DEFAULT NULL,
  `entity_type` int(11) DEFAULT NULL,
  `img` tinyint(4) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_questions_entities` (`entity_type`),
  KEY `FK_questions_chapters_idx` (`chapter_id`),
  CONSTRAINT `FK_questions_chapters` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_questions_entities` FOREIGN KEY (`entity_type`) REFERENCES `entities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='format of the question';

-- Dumping data for table wireless.questions: ~1 rows (approximately)
DELETE FROM `questions`;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`id`, `format`, `entity_type`, `img`, `img_path`, `chapter_id`) VALUES
	(2, '$VAL + $VAL = $VAL', NULL, 0, NULL, 1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


-- Dumping structure for table wireless.vars
CREATE TABLE IF NOT EXISTS `vars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `var_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(200) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`var_id`),
  KEY `FK_vars_questions_idx` (`question_id`),
  KEY `var_id` (`var_id`),
  CONSTRAINT `FK_vars_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table wireless.vars: ~3 rows (approximately)
DELETE FROM `vars`;
/*!40000 ALTER TABLE `vars` DISABLE KEYS */;
INSERT INTO `vars` (`id`, `var_id`, `value`, `question_id`) VALUES
	(1, 1, '1', 2),
	(2, 1, '2', 2),
	(3, 1, '3', 2);
/*!40000 ALTER TABLE `vars` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
