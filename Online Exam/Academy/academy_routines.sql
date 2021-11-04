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
-- Temporary view structure for view `exam_set`
--

DROP TABLE IF EXISTS `exam_set`;
/*!50001 DROP VIEW IF EXISTS `exam_set`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `exam_set` AS SELECT 
 1 AS `exam_id`,
 1 AS `exam_name`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `subject_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `answers_provided`
--

DROP TABLE IF EXISTS `answers_provided`;
/*!50001 DROP VIEW IF EXISTS `answers_provided`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `answers_provided` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `class`,
 1 AS `exam_name`,
 1 AS `subject_name`,
 1 AS `question_title`,
 1 AS `label`,
 1 AS `choice_name`,
 1 AS `correct_choice`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `exam_set`
--

/*!50001 DROP VIEW IF EXISTS `exam_set`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `exam_set` AS select `exam`.`exam_id` AS `exam_id`,`exam`.`exam_name` AS `exam_name`,`teachers`.`first_name` AS `first_name`,`teachers`.`last_name` AS `last_name`,`subject_tbl`.`subject_name` AS `subject_name` from ((`exam` join `teachers` on((`exam`.`teacher_id` = `teachers`.`teacher_id`))) join `subject_tbl` on((`exam`.`subject_code` = `subject_tbl`.`subject_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `answers_provided`
--

/*!50001 DROP VIEW IF EXISTS `answers_provided`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `answers_provided` AS select `p`.`first_name` AS `first_name`,`p`.`last_name` AS `last_name`,`c`.`class` AS `class`,`e`.`exam_name` AS `exam_name`,`st`.`subject_name` AS `subject_name`,`q`.`question_title` AS `question_title`,`co`.`label` AS `label`,`co`.`choice_name` AS `choice_name`,`co`.`correct_choice` AS `correct_choice` from ((((((`pupil_answer` `pa` join `pupils` `p` on((`pa`.`pupil_id` = `p`.`pupil_id`))) join `class` `c` on((`p`.`class_id` = `c`.`class_id`))) join `choice` `co` on((`pa`.`choice_id` = `co`.`choice_id`))) join `question` `q` on((`co`.`question_id` = `q`.`question_id`))) join `exam` `e` on((`q`.`exam_id` = `e`.`exam_id`))) join `subject_tbl` `st` on((`e`.`subject_code` = `st`.`subject_code`))) where ((`p`.`pupil_id` = 1) and (`e`.`exam_id` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-04 16:34:41
