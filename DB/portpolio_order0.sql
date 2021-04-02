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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (123,3,75000,15,'2021-03-31 14:21:45','dd','Y','N'),(124,4,760000,16,'2021-03-31 14:21:47','dd','Y','N'),(125,5,950000,17,'2021-03-31 14:21:48','dd','Y','N'),(126,2,50000,15,'2021-03-31 14:34:32','dd','Y','N'),(127,3,570000,16,'2021-03-31 14:34:33','dd','Y','N'),(128,4,760000,17,'2021-03-31 14:34:35','dd','Y','N'),(129,1,100000,7,'2021-03-31 15:05:18','aa','Y','N'),(130,3,300000,7,'2021-04-02 11:22:15','zz','Y','N'),(131,1,190000,17,'2021-04-02 13:03:33','zz','Y','N'),(132,3,300000,7,'2021-04-02 13:07:29','zz','Y','N'),(133,3,300000,7,'2021-04-02 14:24:51','aa','N','N'),(134,1,70000,13,'2021-04-02 14:34:16','zz','Y','N'),(135,3,570000,16,'2021-04-02 14:39:25','zz','N','N');
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

-- Dump completed on 2021-04-02 15:40:41
