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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `question_id` int unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` int unsigned NOT NULL,
  `question_title` varchar(255) NOT NULL,
  `Marks` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`),
  KEY `index_exam_id` (`exam_id`),
  KEY `index_date_created` (`date_created`),
  CONSTRAINT `fk_exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,1,'First President of Kenya',2,'2021-10-20 17:59:25','2021-10-30 21:52:56'),(2,1,'Capital City of Kenya',2,'2021-10-20 17:59:25','2021-10-30 21:52:56'),(3,1,'First Presodent of Kenya',2,'2021-10-20 17:59:25','2021-10-30 21:52:56'),(4,1,'Capital City of Kenya',2,'2021-10-20 17:59:25','2021-10-30 21:52:56'),(5,1,'First President of Kenya',2,'2021-10-20 17:59:25','2021-10-30 21:52:56'),(6,2,'Which One is not a fruit',2,'2021-10-29 09:52:57','2021-10-30 21:52:56'),(7,2,'Select Vowel',2,'2021-10-29 09:58:55','2021-10-30 21:52:56'),(8,2,'What is a dozen',2,'2021-10-29 09:58:55','2021-10-30 21:52:56'),(9,2,'We brush our teeth before?',2,'2021-10-29 09:58:55','2021-10-30 21:52:56'),(10,2,'Domestic Animal',2,'2021-10-29 09:58:55','2021-10-30 21:52:56'),(17,3,'Earth Natural satelitte',3,'2021-11-01 13:22:40','2021-11-01 13:22:40'),(18,3,'Which Animal lay egg',2,'2021-11-01 13:22:40','2021-11-01 13:22:40'),(19,3,'A male cow is called',3,'2021-11-01 13:22:40','2021-11-01 13:22:40'),(20,3,'Two holes of the nose',3,'2021-11-01 13:22:40','2021-11-01 13:22:40'),(21,3,'Legs have feet and arms have',1,'2021-11-01 13:22:40','2021-11-01 13:22:40');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:38
