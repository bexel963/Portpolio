CREATE DATABASE  IF NOT EXISTS `portpolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portpolio`;
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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `num` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `writer` varchar(45) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `registerDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `views` int DEFAULT '0',
  `isDel` varchar(5) DEFAULT 'N',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (12,'수정된 게시글','cc','수정된 게시글','2021-02-09 12:40:28',0,'Y'),(13,'등록5','cc','등록5','2021-02-09 12:40:30',0,'Y'),(14,'등록5','cc','등록5','2021-02-09 12:45:16',0,'Y'),(15,'등록','cc','등록','2021-02-09 13:03:13',0,'Y'),(16,'수정된 게시글','cc','수정테스트','2021-02-09 13:03:17',0,'N'),(20,'수정테스트','cc','수정테스트','2021-02-09 14:29:39',0,'N'),(21,'수정된 게시글','cc','수정된 게시글','2021-02-09 14:32:13',0,'N'),(22,'첨부파일 테스트','cc','test','2021-02-09 14:36:55',0,'N'),(23,'게시글 등록 복습','cc','게시글 등록 복습','2021-02-09 14:37:15',0,'N'),(24,'게시글111','cc','게시글111','2021-02-09 14:37:56',0,'N'),(25,'게시글 수정','cc','게시글 수정','2021-02-09 15:01:52',0,'N'),(26,'wqe','cc','qwe','2021-02-09 15:03:53',0,'Y'),(27,'sdfas','cc','sdrer','2021-02-09 15:04:06',0,'Y'),(28,'sdfas','cc','sdrer','2021-02-09 15:05:20',0,'Y'),(29,'xcfsdr','cc','sdrwer','2021-02-09 15:05:35',0,'Y'),(30,'2021년 2월 9일','cc','2021년 2월 9일','2021-02-09 16:30:23',0,'N'),(31,'2021년 2월 9일 2번째','cc','2021년 2월 9일 2번째','2021-02-09 16:30:41',1,'N'),(32,'2021년 2월 9일 3번째','cc','2021년 2월 9일 3번째','2021-02-09 16:30:49',0,'N'),(33,'2021년 2월 9일 4번째','cc','2021년 2월 9일 4번째','2021-02-09 16:30:58',0,'N'),(34,'2021년 2월 9일 5번째','cc','2021년 2월 9일 5번째','2021-02-09 16:31:06',0,'N'),(35,'2021년 2월 9일 6번째','cc','2021년 2월 9일 6번째','2021-02-09 16:31:16',3,'N'),(36,'2021년 2월 15일 1번','cc','2021년 2월 15일 1번','2021-02-15 12:26:07',0,'N'),(37,'2021년 2월 15일 2번','cc','2021년 2월 15일 2번','2021-02-15 12:26:15',2,'N'),(38,'2021년 2월 15일 3번','cc','2021년 2월 15일 3번','2021-02-15 12:26:23',11,'N'),(39,'2021년 2월 15일 4번','cc','2021년 2월 15일 4번','2021-02-15 12:26:32',11,'N'),(40,'2021년 2월 15일 5번','cc','2021년 2월 15일 5번','2021-02-15 12:26:39',112,'N'),(41,'서머노트','cc','<p>서머노트</p>','2021-02-17 10:25:10',8,'N');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 17:44:48
