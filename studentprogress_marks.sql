CREATE DATABASE  IF NOT EXISTS `studentprogress` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `studentprogress`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: studentprogress
-- ------------------------------------------------------
-- Server version	5.5.40-log

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
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pair_term_discipline` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `id_student` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk5_idx` (`id_pair_term_discipline`),
  KEY `fk6_idx` (`id_student`),
  CONSTRAINT `fk5` FOREIGN KEY (`id_pair_term_discipline`) REFERENCES `term_discipline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk6` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (2,2,5,1),(3,3,5,1),(4,1,4,2),(5,2,4,2),(6,3,5,2),(7,7,5,1),(8,7,4,2),(9,8,1,1),(10,8,3,2),(11,4,5,1),(12,4,3,2),(13,5,4,1),(14,5,4,2),(15,6,3,1),(16,6,5,2),(17,23,4,1),(18,24,5,1),(27,23,3,2),(28,24,3,2),(29,1,5,3),(30,2,5,3),(31,3,5,3),(32,4,5,3),(33,6,5,3),(34,5,5,3),(35,7,2,3),(36,8,2,3),(37,23,5,3),(38,24,5,3),(46,1,4,1),(47,21,5,1),(48,22,5,1),(49,26,5,2),(50,27,3,2),(51,19,4,2),(52,20,0,2),(53,28,0,2),(54,21,0,2),(55,22,5,2);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-27 18:24:58
