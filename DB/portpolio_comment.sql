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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_num` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `comment_content` varchar(300) NOT NULL,
  `comment_registerDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_num` int DEFAULT NULL,
  `star_view` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_num`),
  KEY `user_id11_idx` (`user_id`),
  KEY `product_num11_idx` (`product_num`),
  KEY `star_view_idx` (`product_num`),
  CONSTRAINT `product_num11` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`),
  CONSTRAINT `user_id11` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'aa','에 한해 등록 가능합니다. 별점과 사진 후기는 같이 1회 등록 가능합니다.\n본 댓글 & 사진후기란을 통한 취소나 환불, 반품 등은 처리되지 않습니다\n구매평은 3일 이내에 삭제가 가능 합니다.','2021-03-29 16:15:30',13,0),(2,'aa','sdfsadrwer','2021-03-29 17:27:52',13,4),(3,'aa',' 구매자에 한해 등록 가능합니다. 별점과 사진 후기는 같이 1회 등록 가능합니다.\r\n본 댓글 & 사진후기란을 통한 취소나 환불, 반품 등은 처리되지 않습니다\r\n구매평은 3일 이내에 삭제가 가능 합니다.','2021-03-29 17:33:14',13,4),(4,'aa','sdf','2021-03-29 17:39:38',13,0),(5,'aa','관계없는 내용, 타 사이트 및 가격비교, 기타 통신 예절에 어긋나거나 펀샵의 취지와 맞지 않은 글은 예고 없이\r\n삭제 및 수정될 수 있습니다.\r\n운영자가 모든 글에 답글을 달 수는 없음을 양해 바랍니다.\r\n별점과 사진 후기는 상품 구매자에 한해','2021-03-29 17:42:33',13,4),(6,'aa','관계없는 내용, 타 사이트 및 가격비교, 기타 통신 예절에 어긋나거나 펀샵의 취지와 맞지 않은 글은 예고 없이\r\n삭제 및 수정될 수 있습니다.\r\n운영자가 모든 글에 답글을 달 수는 없음을 양해 바랍니다.\r\n별점과 사진 후기는 상품 구매자에 한해','2021-03-29 17:45:13',13,4);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-29 17:51:17
