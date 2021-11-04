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
-- Table structure for table `tsc`
--

DROP TABLE IF EXISTS `tsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsc` (
  `tsc_id` int unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int unsigned NOT NULL,
  `subject_code` int unsigned NOT NULL,
  `class_id` int unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tsc_id`),
  UNIQUE KEY `uindex_teacher_id_subject_code_class_id` (`teacher_id`,`subject_code`,`class_id`),
  KEY `index_teacher_id` (`teacher_id`),
  KEY `index_subject_code` (`subject_code`),
  KEY `index_class_id` (`class_id`),
  KEY `index_date_created` (`date_created`),
  CONSTRAINT `fk_classid` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_subject_code` FOREIGN KEY (`subject_code`) REFERENCES `subject_tbl` (`subject_code`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsc`
--

LOCK TABLES `tsc` WRITE;
/*!40000 ALTER TABLE `tsc` DISABLE KEYS */;
INSERT INTO `tsc` VALUES (1,1,101,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(2,2,102,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(3,3,103,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(4,4,104,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(5,5,105,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(6,6,106,1,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(7,3,103,2,'2021-10-20 19:45:05','2021-10-20 19:45:05'),(8,5,101,6,'2021-10-20 19:45:05','2021-10-20 19:45:05');
/*!40000 ALTER TABLE `tsc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:40
