-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: academy
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pupils`
--

DROP TABLE IF EXISTS `pupils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pupils` (
  `pupil_id` int unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int unsigned NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Female','Male') DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pupil_id`),
  KEY `index_class_id` (`class_id`),
  KEY `index_date_created` (`date_created`),
  CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pupils`
--

LOCK TABLES `pupils` WRITE;
/*!40000 ALTER TABLE `pupils` DISABLE KEYS */;
INSERT INTO `pupils` VALUES (1,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(2,1,'Samurai','Jack','Male','2015-12-04','jenny','2021-10-20 17:38:18','2021-10-31 02:23:57'),(3,1,'Lisa','Simpson','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(4,1,'Marvin','Gaye','Male','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(5,1,'Jay','Manuel','Male','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(6,1,'Rita','Ora','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(7,1,'Ketty','Perry','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(8,1,'Ariana','Grande','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(9,1,'Ken','Lemar','Male','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(10,1,'Bobby','Brown','Male','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(11,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(12,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(13,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(14,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(15,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(16,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(17,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(18,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(19,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(20,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(21,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(22,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(23,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(24,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(25,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(26,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(27,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(28,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(29,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(30,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(31,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(32,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(33,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(34,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(35,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(36,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(37,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(38,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(39,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(40,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(41,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(42,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(43,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(44,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(45,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(46,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(47,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(48,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(49,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(50,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(51,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(52,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(53,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(54,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(55,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(56,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(57,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(58,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(59,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(60,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(61,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(62,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(63,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(64,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(65,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(66,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(67,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(68,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(69,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(70,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(71,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(72,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(73,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(74,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(75,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(76,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(78,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(79,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18'),(80,1,'Jennifer','Davis','Female','1985-12-04','jenny','2021-10-20 17:38:18','2021-10-20 17:38:18');
/*!40000 ALTER TABLE `pupils` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:39
