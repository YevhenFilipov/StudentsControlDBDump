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
-- Table structure for table `term_discipline`
--

DROP TABLE IF EXISTS `term_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_term` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk3_idx` (`id_term`),
  KEY `fk4_idx` (`id_discipline`),
  CONSTRAINT `fk3` FOREIGN KEY (`id_term`) REFERENCES `term` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk4` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_discipline`
--

LOCK TABLES `term_discipline` WRITE;
/*!40000 ALTER TABLE `term_discipline` DISABLE KEYS */;
INSERT INTO `term_discipline` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,3),(5,3,3),(6,3,2),(7,4,4),(8,4,5),(19,7,3),(20,7,4),(21,6,2),(22,6,4),(23,5,1),(24,5,3),(26,7,1),(27,7,2),(28,7,5);
/*!40000 ALTER TABLE `term_discipline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-27 18:24:51
