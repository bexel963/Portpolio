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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_num` int NOT NULL AUTO_INCREMENT,
  `payment_num` int NOT NULL,
  `delivery_address` varchar(100) NOT NULL,
  `delevery_state` varchar(45) NOT NULL DEFAULT '대기중',
  `recipient` varchar(20) DEFAULT NULL,
  `demand` varchar(200) DEFAULT NULL,
  `home_call` varchar(45) DEFAULT NULL,
  `phone_call` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`delivery_num`),
  KEY `payment_num3_idx` (`payment_num`),
  CONSTRAINT `payment_num3` FOREIGN KEY (`payment_num`) REFERENCES `payment` (`payment_num`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (83,83,',서울 동대문구 청계천로 539','대기중',',임꺽정','안녕하세요',NULL,NULL),(84,84,',서울 동대문구 청계천로 539','대기중',',임꺽정','안녕하세요',NULL,NULL),(85,85,',서울 동대문구 청계천로 539','대기중',',홍길동','안녕하세요',NULL,NULL),(86,86,',서울 동대문구 청계천로 539\r\nxxxx아파트 xxx동 xxx호,,충북 청주시 서원구\r\nxxx로 xxx번지,,서울 동대문구 청계천로 539\r\nxxx로 xxx번지','대기중',',홍길동,,관리인,,직원','안녕하세요',',010-2461-0601,,010-1234-5678,,010-4578-5412',',070-4578-6421,,043-292-4875,,043-291-1248'),(87,87,',서울 동대문구 청계천로 539\r\nxxxx아파트 xxx동 xxx호,,충북 청주시 서원구\r\nxxx로 xxx번지,,서울 동대문구 청계천로 539\r\nxxx로 xxx번지','대기중',',홍길동,,관리인,,직원','안녕하세요',',010-2461-0601,,010-1234-5678,,010-4578-5412',',070-4578-6421,,043-292-4875,,043-291-1248'),(88,88,',서울 동대문구 청계천로 539','대기중',',장길산','안녕하세요',NULL,NULL),(89,89,',서울 동대문구 청계천로 539\r\nxxxx아파트 xxx동 xxx호','대기중',',홍길동','안녕하세요',',010-2461-0601',',070-4578-6421');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
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
