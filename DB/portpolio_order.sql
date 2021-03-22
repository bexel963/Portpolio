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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_num` int NOT NULL AUTO_INCREMENT,
  `order_amount` int NOT NULL DEFAULT '1',
  `order_cost` int NOT NULL DEFAULT '0',
  `product_num` int NOT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(20) NOT NULL,
  `payment_completion` varchar(2) NOT NULL DEFAULT 'N',
  `isDel` varchar(2) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`order_num`),
  KEY `product_num3_idx` (`product_num`),
  KEY `user_id3_idx` (`user_id`),
  CONSTRAINT `product_num3` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`),
  CONSTRAINT `user_id3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (8,1,12000,18,'2021-03-02 15:08:05','cc','N','N'),(9,1,25000,15,'2021-03-02 15:10:24','cc','N','N'),(11,1,190000,17,'2021-03-02 16:44:53','cc','N','N'),(22,2,200000,7,'2021-03-05 15:40:34','ee','Y','N'),(23,1,190000,16,'2021-03-05 15:44:30','cc','N','N'),(24,2,140000,13,'2021-03-05 15:45:54','ee','Y','N'),(25,1,190000,16,'2021-03-08 09:33:50','ee','Y','N'),(26,1,25000,15,'2021-03-08 14:20:13','ee','N','N'),(27,1,25000,15,'2021-03-08 14:31:28','bb','N','N'),(28,1,12000,18,'2021-03-08 14:31:51','bb','N','N'),(29,1,190000,16,'2021-03-08 14:32:20','bb','N','N'),(30,3,300000,6,'2021-03-08 16:07:19','bb','N','N'),(48,5,500000,6,'2021-03-09 15:47:09','aa','Y','N'),(49,3,300000,7,'2021-03-09 15:47:10','aa','Y','N'),(50,2,0,13,'2021-03-09 15:47:11','aa','Y','N'),(51,1,30000,21,'2021-03-16 16:31:26','cc','N','N'),(52,10,300000,21,'2021-03-16 17:24:45','aa','N','N'),(53,3,0,14,'2021-03-17 12:50:13','aa','N','N'),(54,3,0,16,'2021-03-17 13:05:47','aa','N','N'),(55,3,0,15,'2021-03-17 13:06:09','aa','N','N'),(56,3,0,6,'2021-03-17 14:11:01','ee','N','N'),(57,4,0,6,'2021-03-17 14:11:26','ee','N','N'),(58,3,0,6,'2021-03-17 14:11:37','ee','N','N'),(59,5,0,7,'2021-03-17 14:11:42','ee','N','N'),(60,1,0,7,'2021-03-17 14:12:31','aa','N','N'),(61,1,0,18,'2021-03-17 14:13:16','aa','N','N'),(62,2,0,18,'2021-03-17 14:13:32','aa','N','N'),(100,6,420000,13,'2021-03-17 17:20:53','zz','Y','N'),(101,5,150000,21,'2021-03-17 17:38:10','zz','Y','N'),(102,2,50000,15,'2021-03-17 17:38:40','zz','Y','N');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 17:44:47
