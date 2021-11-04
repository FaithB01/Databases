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
-- Table structure for table `choice`
--

DROP TABLE IF EXISTS `choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `choice` (
  `choice_id` int unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int unsigned NOT NULL,
  `label` enum('A','B','C','D') DEFAULT NULL,
  `choice_name` varchar(255) NOT NULL,
  `correct_choice` enum('yes','no') DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`choice_id`),
  KEY `index_question_id` (`question_id`),
  KEY `index_date_created` (`date_created`),
  CONSTRAINT `fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice`
--

LOCK TABLES `choice` WRITE;
/*!40000 ALTER TABLE `choice` DISABLE KEYS */;
INSERT INTO `choice` VALUES (1,1,'A','Jomo Kenyatta','yes','2021-10-20 18:26:02','2021-10-20 18:26:02'),(2,1,'B','Uhuru Kenyatta','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(3,1,'C','Mwai Kibaki','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(4,1,'D','Daniel Arap Moi','no','2021-10-20 18:26:02','2021-10-20 18:28:49'),(5,2,'A','Mombasa','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(6,2,'B','Nakuru','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(7,2,'C','Kisumu','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(8,2,'D','Nairobi','yes','2021-10-20 18:26:02','2021-10-20 18:26:02'),(9,3,'A','Uhuru Kenyatta','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(10,3,'B','Jomo Kenyatta','yes','2021-10-20 18:26:02','2021-10-20 18:26:02'),(11,3,'C','Mwai Kibaki','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(12,3,'D','Daniel Moi','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(13,4,'A','Mombasa','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(14,4,'B','Nakuru','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(15,4,'C','Nairobi','yes','2021-10-20 18:26:02','2021-10-20 18:26:02'),(16,4,'D','Kisumu','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(17,5,'A','Uhuru Kenyatta','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(18,5,'B','Mwai Kibaki','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(19,5,'C','Jomo Kenyatta','yes','2021-10-20 18:26:02','2021-10-20 18:26:02'),(20,5,'D','Daniel Moi','no','2021-10-20 18:26:02','2021-10-20 18:26:02'),(21,6,'A','Loaf','no','2021-10-29 10:06:27','2021-10-29 10:06:27'),(22,6,'B','Meat','no','2021-10-29 10:00:33','2021-10-29 10:06:27'),(23,6,'C','PineApple','yes','2021-10-29 10:06:27','2021-10-29 10:06:27'),(24,6,'D','Grass','no','2021-10-29 10:06:27','2021-10-29 10:06:27'),(25,7,'A','B','no','2021-10-29 10:06:27','2021-10-29 10:06:27'),(26,7,'B','A','yes','2021-10-29 10:06:28','2021-10-29 10:06:28'),(27,7,'C','F','no','2021-10-29 10:06:28','2021-10-29 10:06:28'),(28,7,'D','X','no','2021-10-29 10:06:28','2021-10-29 10:06:28'),(29,8,'A','3','no','2021-10-29 10:08:06','2021-10-29 10:08:06'),(30,8,'B','6','no','2021-10-29 10:08:06','2021-10-29 10:08:06'),(31,8,'C','9','no','2021-10-29 10:08:06','2021-10-29 10:08:06'),(32,8,'D','12','yes','2021-10-29 10:08:06','2021-10-29 10:08:06'),(33,9,'A','Meals','yes','2021-10-29 10:13:04','2021-10-29 10:13:04'),(34,9,'B','dancing','no','2021-10-29 10:13:04','2021-10-29 10:13:04'),(35,9,'C','singing','no','2021-10-29 10:13:05','2021-10-29 10:13:05'),(36,9,'D','running','no','2021-10-29 10:13:05','2021-10-29 10:13:05'),(37,10,'A','Cheetah','no','2021-10-29 10:13:05','2021-10-29 10:13:05'),(38,10,'B','Hen','yes','2021-10-29 10:13:05','2021-10-29 10:13:05'),(39,10,'C','Lion','no','2021-10-29 10:13:05','2021-10-29 10:13:05'),(40,10,'D','Leopard','no','2021-10-29 10:13:05','2021-10-29 10:13:05'),(43,17,'A','Sun','no','2021-11-01 13:31:10','2021-11-01 13:31:10'),(44,17,'B','Mars','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(45,17,'C','Venus','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(46,17,'D','Moon','yes','2021-11-01 13:31:11','2021-11-01 13:31:11'),(47,18,'A','Dog','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(48,18,'B','Cat','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(49,18,'C','Duck','yes','2021-11-01 13:31:11','2021-11-01 13:31:11'),(50,18,'D','Sheep','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(51,19,'A','Ox','yes','2021-11-01 13:31:11','2021-11-01 13:31:11'),(52,19,'B','Dog','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(53,19,'C','Sheep','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(54,19,'D','Monkey','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(55,20,'A','Eyelids','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(56,20,'B','nostrils','yes','2021-11-01 13:31:11','2021-11-01 13:31:11'),(57,20,'C','hair','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(58,20,'D','Nails','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(59,21,'A','Ankles','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(60,21,'B','Pelvis','no','2021-11-01 13:31:11','2021-11-01 13:31:11'),(61,21,'C','Hands','yes','2021-11-01 13:31:11','2021-11-01 13:31:11'),(62,21,'D','Skull','no','2021-11-01 13:31:11','2021-11-01 13:31:11');
/*!40000 ALTER TABLE `choice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:37
