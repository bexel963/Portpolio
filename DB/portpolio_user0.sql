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
  `user_age` int NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_grade` int DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('aa','$2a$10$Pph7MMiT3dg4KQ/MOwpn/.PvhMTnjqb7hiCq6oNuWpzqTPBOIdxou','홍길동',21,'010-5784-0457','sdr123@naver.com',1,'서울 동대문구 청계천로 539'),('bb','$2a$10$kR.sjaa3sJtFNvGvMkE8J.EIS6xfUdCzOsRbso2hjz7Wp4RCot662','임꺽정',26,'010-1245-7541','sdr@naver.com',1,'서울 동대문구 청계천로 539'),('cc','$2a$10$nYlrviwDibAuQq4GeM8tVOS621owVccbtdgrGvze3VXWlm.yFsjAK','자바',24,'010-7567-4867','serst@gmail.com',0,'서울 동대문구 청계천로 539'),('dd','$2a$10$p7HW6y3fUfR8lmENumbFJeNg1sjia/oy0Ph5XRxZvcFN1NbCaG9w6','임꺽정',32,'010-4567-1567','sdfser@daum.com',1,'서울 동대문구 청계천로 539'),('ee','$2a$10$Umv5D2sEgWGEAXLo.w29A.b01288QTQ8eUuEsps9ezj4HvLKUQMom','스프링',29,'010-9547-1257','asdf@hanmail.net',1,'서울 동대문구 청계천로 539'),('ff','$2a$10$wxeFX9ambKC.FBgAlRKTAORSPsz5ieXYSHKiUzLxr3.yBbPyqtJe6','이순신',30,'010-9514-7512','qwer@naver.com',1,'서울 동대문구 청계천로 539'),('zz','$2a$10$V5P4WfZCgMH41LvQZZeP9OObZeNLI/3Ae31KiEWz8Da3u1v.hH9J.','장길산',29,'010-7525-4784','sadgasdg@google.com',1,'서울 동대문구 청계천로 539');
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

-- Dump completed on 2021-03-31 17:46:05
