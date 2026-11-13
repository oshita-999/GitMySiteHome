CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `member_types`
--

DROP TABLE IF EXISTS `member_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_types` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_types`
--

LOCK TABLES `member_types` WRITE;
/*!40000 ALTER TABLE `member_types` DISABLE KEYS */;
INSERT INTO `member_types` VALUES (1,'通常会員'),(2,'プレミアム会員');
/*!40000 ALTER TABLE `member_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `member_id` varchar(45) DEFAULT NULL,
  `member_pass` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_members_member_types` (`type_id`),
  CONSTRAINT `fk_members_member_types` FOREIGN KEY (`type_id`) REFERENCES `member_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (58,'山田 太郎',27,'静岡県',1,'2026-11-05 08:58:16','taro','$2a$08$wCTVd3JwUYGv1beOV2lL6OGc3j8UOea9qMoVAzMBC7NVPIbCIip7C'),(59,'大平 直紀',34,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(60,'田上 三起',18,'栃木県',1,'2026-11-05 08:58:16',NULL,NULL),(61,'黒川 希久',77,'岡山県',2,'2026-11-05 08:58:16',NULL,NULL),(62,'大島 郁穂',65,'福島県',1,'2026-11-05 08:58:16',NULL,NULL),(63,'大崎 貞久',43,'新潟県',2,'2026-11-05 08:58:16',NULL,NULL),(64,'沼田 道彦',24,'高知県',1,'2026-11-05 08:58:16',NULL,NULL),(65,'木村 都義',47,'栃木県',1,'2026-11-05 08:58:16',NULL,NULL),(66,'岡 鋼三郎',44,'福島県',1,'2026-11-05 08:58:16',NULL,NULL),(67,'比嘉 千勢',35,'静岡県',1,'2026-11-05 08:58:16',NULL,NULL),(68,'小野 亜里',14,'埼玉県',2,'2026-11-05 08:58:16',NULL,NULL),(69,'北野 真理',98,'三重県',1,'2026-11-05 08:58:16',NULL,NULL),(70,'中西 利克',23,'山形県',1,'2026-11-05 08:58:16',NULL,NULL),(71,'大森 澄夫',46,'熊本県',1,'2026-11-05 08:58:16',NULL,NULL),(72,'園田 克明',47,'東京都',2,'2026-11-05 08:58:16',NULL,NULL),(73,'戸田 順子',26,'熊本県',2,'2026-11-05 08:58:16',NULL,NULL),(74,'村井 八洲',41,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(75,'吉井 美則',33,'岡山県',1,'2026-11-05 08:58:16',NULL,NULL),(76,'中山 玲子',47,'栃木県',1,'2026-11-05 08:58:16',NULL,NULL),(77,'村井 晴仁',74,'北海道',1,'2026-11-05 08:58:16',NULL,NULL),(78,'山村 菊江',36,'和歌山',1,'2026-11-05 08:58:16',NULL,NULL),(79,'竹本 隆司',25,'新潟県',1,'2026-11-05 08:58:16',NULL,NULL),(80,'西田 芳尚',35,'熊本県',2,'2026-11-05 08:58:16',NULL,NULL),(81,'沼田 房男',14,'秋田県',1,'2026-11-05 08:58:16',NULL,NULL),(82,'川端 美喜',88,'新潟県',1,'2026-11-05 08:58:16',NULL,NULL),(83,'竹中 敬久',23,'福岡県',1,'2026-11-05 08:58:16',NULL,NULL),(84,'竹内 昭子',46,'三重県',1,'2026-11-05 08:58:16',NULL,NULL),(85,'遠藤 秋徳',47,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(86,'相沢 一世',26,'北海道',1,'2026-11-05 08:58:16',NULL,NULL),(87,'野村 護助',41,'福岡県',1,'2026-11-05 08:58:16',NULL,NULL),(88,'甲斐 喜治',36,'北海道',1,'2026-11-05 08:58:16',NULL,NULL),(89,'遠藤 達生',25,'青森県',1,'2026-11-05 08:58:16',NULL,NULL),(90,'古川 鉄次',35,'青森県',2,'2026-11-05 08:58:16',NULL,NULL),(91,'宮内 虎之',14,'愛知県',1,'2026-11-05 08:58:16',NULL,NULL),(92,'中山 好利',27,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(93,'古田 好博',34,'愛知県',2,'2026-11-05 08:58:16',NULL,NULL),(94,'大城 圭子',18,'埼玉県',1,'2026-11-05 08:58:16',NULL,NULL),(95,'栗田 礼子',77,'福島県',1,'2026-11-05 08:58:16',NULL,NULL),(96,'長谷 百里',65,'三重県',2,'2026-11-05 08:58:16',NULL,NULL),(97,'若林 洋昌',43,'和歌山',1,'2026-11-05 08:58:16',NULL,NULL),(98,'浅田 晃義',24,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(99,'酒井 里江',47,'福井県',1,'2026-11-05 08:58:16',NULL,NULL),(100,'大田 新太',44,'東京都',1,'2026-11-05 08:58:16',NULL,NULL),(101,'古田 圭郎',35,'福岡県',1,'2026-11-05 08:58:16',NULL,NULL),(102,'井口 美里',44,'青森県',2,'2026-11-05 08:58:16',NULL,NULL),(103,'吉川 喜代',35,'神奈川',1,'2026-11-05 08:58:16',NULL,NULL),(104,'小柳 勝英',98,'千葉県',1,'2026-11-05 08:58:16',NULL,NULL),(105,'中嶋 為一',23,'青森県',2,'2026-11-05 08:58:16',NULL,NULL),(106,'佐伯 聡美',46,'岡山県',1,'2026-11-05 08:58:16',NULL,NULL),(107,'窪田 愛郎',47,'岡山県',1,'2026-11-05 08:58:16',NULL,NULL),(108,'青木 益已',26,'福井県',1,'2026-11-05 08:58:16',NULL,NULL),(109,'稲田 俊康',41,'千葉県',1,'2026-11-05 08:58:16',NULL,NULL),(110,'鎌田 菊江',34,'栃木県',1,'2026-11-05 08:58:16',NULL,NULL),(111,'稲垣 啓矩',18,'東京都',2,'2026-11-05 08:58:16',NULL,NULL),(112,'永田 次生',77,'茨城県',1,'2026-11-05 08:58:16',NULL,NULL),(113,'長谷川 千',65,'福島県',1,'2026-11-05 08:58:16',NULL,NULL),(114,'松尾 朋子',43,'奈良県',1,'2026-11-05 08:58:16',NULL,NULL),(115,'佐藤 次郎',NULL,NULL,NULL,NULL,'jiro','$2a$10$X7jW9j5EAr1wZfkpVrTn1eIaH8Bqbkn2IJps7R/n5B9rxHR86iVwy');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-13 10:36:31
