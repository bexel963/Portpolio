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
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `file_num` int NOT NULL AUTO_INCREMENT,
  `product_num` int NOT NULL,
  `file_oriName` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `isDel` varchar(45) NOT NULL DEFAULT 'N',
  `main` varchar(45) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`file_num`),
  KEY `product_num_idx` (`product_num`),
  CONSTRAINT `product_num` FOREIGN KEY (`product_num`) REFERENCES `product` (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (2,5,'에어리스트 공기청정기1.png','/2021/02/18/3cde6209-d7a6-44d5-95a8-9575e8eb72ac_에어리스트 공기청정기1.png','Y','Y'),(3,5,'에어리스트 공기 청정기2.png','/2021/02/18/56711062-65e4-4d63-bf87-3696784c32c1_에어리스트 공기 청정기2.png','Y','N'),(4,5,'에어리스트 공기 청정기3.png','/2021/02/18/15e5b5ad-72ec-4fb7-9e73-260ef3c2b85a_에어리스트 공기 청정기3.png','Y','N'),(5,6,'열풍건조식 음식물처리기1.png','/2021/02/18/40cf65c3-dcd3-4056-9e96-2c58766ca361_열풍건조식 음식물처리기1.png','N','Y'),(6,6,'열풍건조식 음식물처리기2.png','/2021/02/18/aab5ddbc-3417-44da-86c3-da0a2ca1e7f0_열풍건조식 음식물처리기2.png','N','N'),(7,6,'열풍건조식 음식물처리기3.png','/2021/02/18/2ea7295e-a03a-463b-9b0b-5760fed1ecf3_열풍건조식 음식물처리기3.png','N','N'),(8,7,'로봇청소기1.png','/2021/02/19/0462056e-246f-4ab6-bf96-f6a654093f4f_로봇청소기1.png','N','Y'),(9,7,'로봇청소기2.png','/2021/02/19/0c8f4696-0803-4e90-8027-c80655a5db2a_로봇청소기2.png','N','N'),(10,7,'로봇청소기3.png','/2021/02/19/12550741-83b1-4209-b9a8-08bdc11e8817_로봇청소기3.png','N','N'),(11,7,'로봇청소기4.png','/2021/02/19/13d0e9e3-4bd8-462d-b3ec-e0646277dfb1_로봇청소기4.png','N','N'),(12,7,'로봇청소기5.png','/2021/02/19/dea160c1-0cc8-4a1f-93df-1fc2226b75c9_로봇청소기5.png','N','N'),(13,7,'로봇청소기6.png','/2021/02/19/3b72b2b3-cb41-4fe8-8207-0422a05b5ab7_로봇청소기6.png','N','N'),(40,13,'미니마사지기1.jpg','/2021/02/19/ae5fabf2-8aa6-4017-963a-1c33f9d608d2_미니마사지기1.jpg','N','Y'),(41,13,'미니마사지기2.png','/2021/02/19/a940b277-7fa3-45cc-b718-f0cde7b98356_미니마사지기2.png','N','N'),(42,13,'미니마사지기3.png','/2021/02/19/82c18b0d-36cc-41be-b8e9-16b243ac3836_미니마사지기3.png','N','N'),(43,13,'미니마사지기4.png','/2021/02/19/86e0a94a-081c-43f0-a015-99c43f8ef7f1_미니마사지기4.png','N','N'),(44,13,'미니마사지기5.png','/2021/02/19/a640108d-6f99-4cd4-8098-8504d2e4db8a_미니마사지기5.png','N','N'),(45,13,'미니마사지기6.png','/2021/02/19/788d13e5-4f53-45ba-b1c0-086dc14802ec_미니마사지기6.png','N','N'),(46,14,'링크시스 벨롭 메시 와이파이 공유기1.jpg','/2021/02/19/415ac15c-2874-4e59-828b-0621e4c16b54_링크시스 벨롭 메시 와이파이 공유기1.jpg','N','Y'),(47,14,'공유기2.png','/2021/02/19/e5c766de-47ce-4085-844f-37751d4cfa28_공유기2.png','N','N'),(48,14,'공유기3.png','/2021/02/19/7109745a-30c5-486e-ad58-d6b6225d320a_공유기3.png','N','N'),(49,14,'공유기4.png','/2021/02/19/5fc33d78-921c-47a3-830e-8329ff991031_공유기4.png','N','N'),(50,14,'공유기5.png','/2021/02/19/edf49b63-01e1-4be7-a08d-398e8b875d81_공유기5.png','N','N'),(51,15,'핸디형 LED 조명거울1.jpg','/2021/02/22/ead0fe2e-65a0-4b09-931f-a1b85f90ce82_핸디형 LED 조명거울1.jpg','N','Y'),(52,15,'핸디형 LED 조명거울2.png','/2021/02/22/9d894dab-8d98-4811-9fcb-308f5336837f_핸디형 LED 조명거울2.png','N','N'),(53,15,'핸디형 LED 조명거울3.png','/2021/02/22/3d00b703-90f2-4015-8636-e6ffe469d496_핸디형 LED 조명거울3.png','N','N'),(54,15,'핸디형 LED 조명거울4.png','/2021/02/22/34b00f1f-f17d-449c-b27d-b1e5466251b8_핸디형 LED 조명거울4.png','N','N'),(55,15,'핸디형 LED 조명거울5.png','/2021/02/22/c917f95c-d042-4bcb-accc-92a39b34c3be_핸디형 LED 조명거울5.png','N','N'),(56,16,'15지지고 휴대용 쑥뜸기1.jpg','/2021/02/23/100a995c-418f-4011-b765-f4b8a119a58b_15지지고 휴대용 쑥뜸기1.jpg','N','Y'),(57,16,'15지지고 휴대용 쑥뜸기2.jpg','/2021/02/23/9428768a-327d-4b12-9068-bde91dc05680_15지지고 휴대용 쑥뜸기2.jpg','N','N'),(58,16,'15지지고 휴대용 쑥뜸기3.jpg','/2021/02/23/fafe3eaf-c25a-4682-a1e2-c69b6ddcecfb_15지지고 휴대용 쑥뜸기3.jpg','N','N'),(59,16,'15지지고 휴대용 쑥뜸기4.jpg','/2021/02/23/1ce6f266-332a-472b-9a7b-70121f39dd68_15지지고 휴대용 쑥뜸기4.jpg','N','N'),(60,16,'15지지고 휴대용 쑥뜸기5.jpg','/2021/02/23/d7d17e60-1640-4120-8531-fd810ed39fda_15지지고 휴대용 쑥뜸기5.jpg','N','N'),(61,16,'15지지고 휴대용 쑥뜸기6.jpg','/2021/02/23/b9435e6a-e601-4f8d-8287-3aaa78de256e_15지지고 휴대용 쑥뜸기6.jpg','N','N'),(62,17,'크레버팟 초고속 진공 블렌더 BL-018V1.jpg','/2021/02/23/6743967c-6dac-466d-8800-7e20adcdea62_크레버팟 초고속 진공 블렌더 BL-018V1.jpg','N','Y'),(63,17,'15지지고 휴대용 쑥뜸기2.jpg','/2021/02/23/02c9888b-7154-4227-a889-a98df50a02b4_15지지고 휴대용 쑥뜸기2.jpg','N','N'),(64,17,'15지지고 휴대용 쑥뜸기3.jpg','/2021/02/23/e6d3eafc-8e71-4027-ba8c-e464b4d41f92_15지지고 휴대용 쑥뜸기3.jpg','N','N'),(65,17,'15지지고 휴대용 쑥뜸기4.jpg','/2021/02/23/37d4a2f7-e66d-444d-a32a-6297db60b03e_15지지고 휴대용 쑥뜸기4.jpg','N','N'),(66,17,'15지지고 휴대용 쑥뜸기5.jpg','/2021/02/23/76bf0ae3-9460-4430-b023-4ad8e12b64bf_15지지고 휴대용 쑥뜸기5.jpg','N','N'),(67,17,'15지지고 휴대용 쑥뜸기6.jpg','/2021/02/23/60321b17-4561-4c76-8106-3545ebb3a626_15지지고 휴대용 쑥뜸기6.jpg','N','N'),(68,18,'무디 나노 분사 오토 미스트1.jpg','/2021/02/23/53f81406-98df-47d1-8445-286a650329cd_무디 나노 분사 오토 미스트1.jpg','N','Y'),(69,18,'무디 나노 분사 오토 미스트2.jpg','/2021/02/23/bf4cdbc0-a934-4592-9ba2-517fa3526f67_무디 나노 분사 오토 미스트2.jpg','N','N'),(70,18,'무디 나노 분사 오토 미스트3.jpg','/2021/02/23/89407feb-d787-4736-b952-57484b32a339_무디 나노 분사 오토 미스트3.jpg','N','N'),(71,18,'무디 나노 분사 오토 미스트4.jpg','/2021/02/23/aef9aacd-23f0-4bd3-b40d-e40a5209746e_무디 나노 분사 오토 미스트4.jpg','N','N'),(72,18,'무디 나노 분사 오토 미스트5.jpg','/2021/02/23/14e720fe-782e-44c2-bd1f-0f4d04c01ae2_무디 나노 분사 오토 미스트5.jpg','N','N'),(73,18,'무디 나노 분사 오토 미스트6.jpg','/2021/02/23/9238a574-6ebb-42be-8976-31ca643b7102_무디 나노 분사 오토 미스트6.jpg','N','N'),(85,21,'눈 마사지기.jpg','/2021/03/16/7a48109c-72fa-4201-9beb-1cea7d7ebb33_눈 마사지기.jpg','N','Y'),(86,21,'눈마사지기1.png','/2021/03/16/30f45740-44fc-4303-ad58-5c782b507f08_눈마사지기1.png','N','N'),(87,21,'눈마사지기2.png','/2021/03/16/d1a390ee-0592-4597-991e-c0ea0237385c_눈마사지기2.png','N','N'),(88,21,'눈마사지기3.png','/2021/03/16/4c24fca2-e63d-4d77-b4f5-6bde1f556f40_눈마사지기3.png','N','N'),(89,21,'눈마사지기4.png','/2021/03/16/93bb1570-6269-40a2-ab09-447ed9113f34_눈마사지기4.png','N','N'),(90,21,'눈마사지기5.png','/2021/03/16/b18dfbd4-7735-4ada-b546-f15fa22bd68a_눈마사지기5.png','N','N'),(91,21,'눈마사지기6.png','/2021/03/16/2ee88fe9-e774-4788-9f9a-237248988aae_눈마사지기6.png','N','N'),(92,22,'방수 전기 면도기.jpg','/2021/03/23/31e7ef07-8dd1-4178-814e-3868dab13f41_방수 전기 면도기.jpg','N','Y'),(93,22,'방수 전기 면도기1.jpg','/2021/03/23/05bb1b3d-fecf-427d-82ae-31e58f66be8b_방수 전기 면도기1.jpg','N','N'),(94,22,'방수 전기 면도기2.jpg','/2021/03/23/8d6321d3-e812-4150-8aa7-98e7f6f30597_방수 전기 면도기2.jpg','N','N'),(95,22,'눈마사지기3.png','/2021/03/23/f2f7b6e3-51d6-4e88-808e-032979080d9f_눈마사지기3.png','N','N'),(96,22,'방수 전기 면도기4.jpg','/2021/03/23/c266e6d1-42a1-44fb-99a1-180f7983c872_방수 전기 면도기4.jpg','N','N'),(97,22,'방수 전기 면도기5.jpg','/2021/03/23/d655f6db-98a0-4033-95ae-73be56d58ca3_방수 전기 면도기5.jpg','N','N'),(98,23,'휴대용 스마트폰 짐벌.jpg','/2021/03/23/81549765-c3b2-425f-a9ce-824b569a90ba_휴대용 스마트폰 짐벌.jpg','N','Y'),(99,23,'휴대용 스마트폰 짐벌1.jpg','/2021/03/23/fbfbd795-7a7d-4d9c-910c-4c279baa5136_휴대용 스마트폰 짐벌1.jpg','N','N'),(100,23,'휴대용 스마트폰 짐벌2.jpg','/2021/03/23/47714d87-0753-4bb4-8323-41de463515fc_휴대용 스마트폰 짐벌2.jpg','N','N'),(101,23,'휴대용 스마트폰 짐벌3.jpg','/2021/03/23/02d3a5d6-8415-40f6-bae0-334cff8909fe_휴대용 스마트폰 짐벌3.jpg','N','N'),(102,23,'휴대용 스마트폰 짐벌4.jpg','/2021/03/23/eef9e313-df06-417b-893e-c494483677f6_휴대용 스마트폰 짐벌4.jpg','N','N'),(103,23,'휴대용 스마트폰 짐벌5.jpg','/2021/03/23/ea1f3039-db49-49ae-ab8d-bb4b27414a78_휴대용 스마트폰 짐벌5.jpg','N','N');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-01 17:42:00
