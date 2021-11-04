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
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `exam_id` int unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` int unsigned NOT NULL,
  `subject_code` int unsigned NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `total_questions` varchar(255) DEFAULT NULL,
  `total_marks` varchar(255) DEFAULT NULL,
  `exam_duration` time DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`exam_id`),
  UNIQUE KEY `uindex_teacher_id_subject_code` (`teacher_id`,`subject_code`),
  KEY `index_teacher_id` (`teacher_id`),
  KEY `index_subject_code` (`subject_code`),
  KEY `index_date_created` (`date_created`),
  CONSTRAINT `fk_subjectcode` FOREIGN KEY (`subject_code`) REFERENCES `subject_tbl` (`subject_code`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_teacherid` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,1,101,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 17:50:19'),(2,2,102,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 17:51:28'),(3,3,103,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 18:21:23'),(4,4,104,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 18:21:24'),(5,5,105,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 17:52:30'),(6,6,106,'Mid-Term','10','50','01:00:10','2021-10-20 17:36:02','2021-10-25 17:52:45'),(7,2,103,'End-Term',NULL,NULL,NULL,'2021-10-28 09:36:28','2021-10-28 09:36:28');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:36
