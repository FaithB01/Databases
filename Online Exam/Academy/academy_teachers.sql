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
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `teacher_id` int unsigned NOT NULL AUTO_INCREMENT,
  `tsc_no` int unsigned NOT NULL,
  `phone_no` int unsigned NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Female','Male') DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `uindex_tsc_no` (`tsc_no`),
  KEY `index_tsc_no` (`tsc_no`),
  KEY `index_date_created` (`date_created`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,1,76123,'Lauryn','Hill','Female','1975-05-26','lauryn@gmail.com','4006','laura','2021-10-20 14:48:58','2021-10-20 14:48:58'),(2,2,761234,'Damian','Marley','Male','1978-07-21','damian@gmail.com','4007','damian','2021-10-20 14:52:50','2021-10-20 14:52:50'),(3,3,7612345,'Michael','Scofield','Male','1972-06-02','mikey@gmail.com','4008','mikey','2021-10-20 14:55:49','2021-10-20 14:55:49'),(4,4,76123456,'Kristen','Bell','Female','1980-06-18','mikey@gmail.com','4009','kristen','2021-10-20 15:04:50','2021-10-20 15:04:50'),(5,5,761234567,'Nigel','Barker','Male','1980-06-18','nigel@gmail.com','4010','nigel','2021-10-20 15:06:39','2021-10-20 15:06:39'),(6,6,761234566,'Tyra','Banks','Female','1985-12-04','tyra@gmail.com','4011','tyra','2021-10-20 15:09:02','2021-10-20 15:09:02');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
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
