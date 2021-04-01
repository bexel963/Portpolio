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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(20) NOT NULL,
  `user_pw` varchar(255) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_age` varchar(50) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_grade` int DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_homeCall` varchar(50) DEFAULT NULL,
  `user_gender` varchar(45) NOT NULL DEFAULT '남성',
  `user_nickName` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aa','$2a$10$Pph7MMiT3dg4KQ/MOwpn/.PvhMTnjqb7hiCq6oNuWpzqTPBOIdxou','홍길동','1880.2.12','010-5784-0457','sdr123@naver.com',1,'서울 동대문구 청계천로 539','070-1234-574','여성','가나'),('bb','$2a$10$kR.sjaa3sJtFNvGvMkE8J.EIS6xfUdCzOsRbso2hjz7Wp4RCot662','임꺽정','1990.1.15','010-1245-7541','sdr@naver.com',1,'서울 동대문구 청계천로 539','070-1257-5651','남성','다라'),('cc','$2a$10$nYlrviwDibAuQq4GeM8tVOS621owVccbtdgrGvze3VXWlm.yFsjAK','자바','1992.5.25','010-7567-4867','serst@gmail.com',0,'서울 동대문구 청계천로 539','070-5684-9875','여성','마바'),('dd','$2a$10$p7HW6y3fUfR8lmENumbFJeNg1sjia/oy0Ph5XRxZvcFN1NbCaG9w6','임꺽정','1885.4.24','010-4567-1567','sdfser@daum.com',1,'서울 동대문구 청계천로 539','070-2654-7845','여성','사아'),('ee','$2a$10$Umv5D2sEgWGEAXLo.w29A.b01288QTQ8eUuEsps9ezj4HvLKUQMom','스프링','1860.5.12','010-9547-1257','asdf@hanmail.net',1,'서울 동대문구 청계천로 539','070-2589-1624','남성','자차'),('ff','$2a$10$okDkrbsFDSuY4YjrZllAMuLXv7JYDa1LULCnT9GXyzWE7E9./beQC','이순신','1858.12.17','010-9876-5432','qwer1234@daum.com',1,'서울 동대문구 청계천로 539','070-1234-5678','남성','안녕하세요'),('zz','$2a$10$V5P4WfZCgMH41LvQZZeP9OObZeNLI/3Ae31KiEWz8Da3u1v.hH9J.','장길산','1999.5.12','010-7525-4784','sadgasdg@google.com',1,'서울 동대문구 청계천로 539','070-1234-5679','남성','파하');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01 17:42:01
