-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: portpolio
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `comment_files`
--

DROP TABLE IF EXISTS `comment_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_files` (
  `comment_files_num` int NOT NULL AUTO_INCREMENT,
  `comment_num` int NOT NULL,
  `file_oriName` varchar(45) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`comment_files_num`),
  KEY `comment_num_idx` (`comment_num`),
  CONSTRAINT `comment_num` FOREIGN KEY (`comment_num`) REFERENCES `comment` (`comment_num`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_files`
--

LOCK TABLES `comment_files` WRITE;
/*!40000 ALTER TABLE `comment_files` DISABLE KEYS */;
INSERT INTO `comment_files` VALUES (1,8,'myquestion.gif','/2021/03/30/3f4364bb-7e95-492c-a680-a7ebcdfe0b5c_myquestion.gif'),(3,11,'question.gif','/2021/03/30/07462c1f-73b1-4e36-a5e3-4f455ce2abfc_question.gif'),(4,12,'icon_answer_complete.gif','/2021/03/30/1e6eb9b8-91d0-49dc-bf63-e88d8cf2c99e_icon_answer_complete.gif'),(5,13,'icon_answer_complete.gif','/2021/03/30/1323966e-cd37-436a-880d-237c5dae2f37_icon_answer_complete.gif'),(6,14,'search1.gif','/2021/03/30/e217d641-7f12-42c8-8cfb-a6d7efb5b8bd_search1.gif'),(7,15,'question1.gif','/2021/03/30/c97df4b7-0893-4a7f-8333-554a57be8533_question1.gif'),(8,16,'myquestion.gif','/2021/03/30/5ad4f673-801a-4711-ae93-674915a07bfc_myquestion.gif'),(10,18,'seeall_question.gif','/2021/03/30/40a0b3c4-c128-4d5b-9169-af5c53fc03bb_seeall_question.gif'),(11,19,'icon_answer_complete.gif','/2021/03/30/2a169ca0-4a63-459f-b82f-7aea9dc845d3_icon_answer_complete.gif'),(14,27,'question.gif','/2021/03/30/958e2557-d6e3-4dfc-9e12-baba613f4ea0_question.gif');
/*!40000 ALTER TABLE `comment_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-31 17:46:04
