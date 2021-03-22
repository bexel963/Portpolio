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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` int NOT NULL AUTO_INCREMENT,
  `product_category` int NOT NULL,
  `product_title` varchar(45) NOT NULL,
  `product_content` varchar(500) NOT NULL,
  `product_amount` int NOT NULL,
  `product_cost` int NOT NULL,
  `isDel` varchar(2) NOT NULL DEFAULT 'N',
  `product_registerDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `product_origin` varchar(45) DEFAULT NULL,
  `product_sale` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5,1,'에어레스트 공기 청정기','<p><b>미세먼지가 심한 요즘 같은 날씨에</b></p><p><b>꼭 필요한 공기청정기!</b></p><p>① 20평대 집의 거실에 사용할 공기청정기가 필요하신 분</p><p>② 가격도 성능도 모두 잡고 싶은 경우</p><p>③ 필수 사용편의 기능은 모두 있었으면 하는 분</p><p>(미세먼지 농도 표기, 취침, 청소 알림 등)</p><p>이 외에 어떤 제품을 사야 할지 몰라</p><p>공기청정기 구입을 망설였다면</p><p>이번 기회에 구입해보시는 것을 추천 드립니다.</p>',30,190000,'Y','2021-02-18 14:47:01','중국',45),(6,2,'열풍건조식 음식물처리기','<p><b>음식물쓰레기 걱정에서&nbsp;<span style=\"font-size: 1rem;\">탈출시켜 줄 음식물처리기!!</span></b></p><p>노써치 가성비픽 동일모델&nbsp;<span style=\"font-size: 1rem;\">루펜 SSW 입니다.</span></p><p>음식물처리기 중 최고의 가성비 제품이며,</p><p>디자인 선호도가 매우 높은 제품입니다.</p><div><br></div>',20,100000,'N','2021-02-18 15:14:54','중국',25),(7,1,'로봇 청소기','<p>자동 먼지통 비움 기능이 탑재된&nbsp;<span style=\"font-size: 1rem;\">프리미엄급 모델인</span></p><p>레노버 T1s PRO 입니다.</p><p>청소가 끝나면 클린스테이션으로 돌아가</p><p>자동으로 먼지통을 비워주기 때문에</p><p>먼지통 비우는 것을 잊어버려도 괜찮고,</p><p>먼지통 비우기 귀찮아 미뤘던 분들에게는</p><p>강력히 추천드리는 제품입니다.&nbsp;</p>',12,100000,'N','2021-02-19 15:00:00','중국',13),(13,1,'미니 마사지기','<p>스마트한 삶을 살지만 항상 피로를 몰고다니는 당신</p><p>어디든 쉬운일은 없고 어느샌가 스트레스는 쌓여있죠.</p><p>누군가 물러줬으면 하지만, 다들 지쳐있어 부탁하기 미안해요.</p><p>무거운 안마기는 싫고, 마사지 받으러 가는 시간과 비용도 아까워요.</p><p>홀대했던 목,</p><p>가볍지만 전신 포인트 마사지가 가능한&nbsp;</p><ol><li>일넥트릭 저주파 마사지기로 관리해주세요.</li></ol>',20,70000,'N','2021-02-19 17:12:08','중국',23),(14,4,'링크시스 벨롭 메시 와이파이 공유기','<p>우리가 가장 많은 시간을 보내는 실내에서 와이파이 환경은 매우 중요합니다.</p><p>하지만, 공간이 구분된 넓은 집이나 사무실은 최적의 와이파이 환경을 즐기기에</p><p style=\"text-align: center; \">공유기의 한계가 있었습니다. 그런 한계를 충분히 해소해줄 제품이 바로&nbsp;</p><p style=\"text-align: center;\">메시 와이파이 공유기 입니다. 자주 끊기는 와이파이 환경으로</p><p style=\"text-align: center;\">많은 불편함과 답답함 속에서 이리저리 뒤척이던 공간, 그 공간을</p><p >링크시스 벨롭 메시 와이파이 공유기로 속 시원하게 뚫어버리세요!</p>',21,210000,'N','2021-02-19 17:26:13','중국',58),(15,3,'핸드용 LED조명 거울','<p>국민거울조명으로 자리잡고 있는 아미로 메이크업 거울.</p><p>완벽한 메이크업을 유지할 수 있도록 도와주는 뷰티 아이템.</p><p>이제는 간편하게 휴대할 수 있게 되었습니다.</p>',10,25000,'N','2021-02-22 17:40:01','중국',22),(16,1,'15지지고 휴대용 쑥뜸기','<p><b>집에서 즐길 수 있는 간단한 쑥뜸기입니다.&nbsp;</b></p><p><b>쑥패치를 뜯자마자 건강해질 것만 같은 쑥 향기가 맴돌아요.&nbsp;</b></p><p><b>일하면서 배에 잠시 붙여보기도 하고, 손목에도 살포시 올려놔봅니다.&nbsp;</b></p><p><b>정말 간편한 뜸 놓기!&nbsp;</b></p><p><b>멀리 가지 않아도 편하게 즐길 수 있어서 추천드립니다!</b></p>',30,190000,'N','2021-02-23 14:43:15','중국',21),(17,2,'클레버팟 초고속 진공 블렌더 BL-018v','<p><b>블렌딩시 영양소 파괴는 블렌더 안에 있는 산소와</b></p><p><b>식재료의 산화 반응 때문에 일어나게 됩니다.</b></p><p><b>블렌더 안을 진공에 가깝게 만들어 영양소 파괴를</b></p><p><b>줄이고 고속/강력 분쇄로 더욱 곱게 갈아주어</b></p><p><b>더욱 부드럽고 신선하게 즐길 수 있습니다.</b></p>',30,190000,'N','2021-02-23 15:13:06','중국',15),(18,3,'무디 나노 분사 오토 미스트','<p><b>주머니, 가방 파우치 어디에나 수납 가능!</b></p><p><b>세로 12cm에 79g 밖에 안되는 가볍고 슬림한 무게로</b></p><p><b>언제 어디서나 촉촉할 수 있도록 휴대성이 높아요</b></p>',30,12000,'N','2021-02-23 15:33:45','중국',19),(21,1,'눈 마사지기','<p><b>장시간 블루라이트 노출로 피곤한 눈!</b></p><p>스마트폰, 컴퓨터 발달로 장시간 블루라이트 노출로 피곤해진</p><p>눈을 부드럽게 눈 피로를 풀어주세요.</p>',20,30000,'N','2021-03-16 16:14:59','중국',32);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
