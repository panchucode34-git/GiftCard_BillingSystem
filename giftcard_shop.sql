-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: giftcard_shop
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bills` (
  `bill_id` int NOT NULL AUTO_INCREMENT,
  `card_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `Bill_id` (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,'Birthday Card',2,100),(2,'Birthday Card',2,100),(3,'Birthday Card',2,100),(4,'Birthday Card',2,100),(5,'Birthday Card',2,100),(6,'Birthday Card',2,100),(7,'Birthday Card',2,100),(8,'Birthday Card',2,100),(9,'Birthday Card',2,100),(10,'Birthday Card',2,100),(11,'Birthday Card',2,100),(12,'Birthday Card',2,100),(13,'Birthday Card',2,100),(14,'Birthday Card',2,100),(15,'Birthday Card',2,100),(16,'Birthday Card',2,100),(17,'Birthday Card',2,100),(18,'Birthday Card',2,100),(19,'Birthday Card',2,100),(20,'Birthday Card',2,100),(21,'Birthday Card',2,100),(22,'Birthday Card',2,100),(23,'Birthday Card',2,100),(24,'Birthday Card',2,100),(25,'Birthday Card',2,100),(26,'Birthday Card',2,100),(27,'Birthday Card',2,100),(28,'Birthday Card',2,100),(29,'Birthday Card',2,100),(30,'Birthday Card',2,100),(31,'Birthday Card',2,100),(32,'Birthday Card',2,100),(33,'Birthday Card',2,100),(34,'Birthday Card',2,100),(35,'Birthday Card',2,100),(36,'Birthday Card',2,100),(37,'Birthday Card',2,100),(38,'Birthday Card',2,100),(39,'Birthday Card',2,100),(40,'Birthday Card',2,100),(41,'Birthday Card',2,100),(42,'Birthday Card',2,100),(43,'Birthday Card',2,100),(44,'Birthday Card',2,100),(45,'Birthday Card',2,100),(46,'Birthday Card',2,100),(47,'Birthday Card',2,100),(48,'Birthday Card',2,100),(49,'Birthday Card',2,100),(50,'Birthday Card',2,100),(51,'Birthday Card',2,100),(52,'Birthday Card',2,100),(53,'Birthday Card',2,100),(54,'Birthday Card',2,100),(55,'Birthday Card',2,100),(56,'Birthday Card',2,100),(57,'Birthday Card',2,100),(58,'Birthday Card',2,100),(59,'Birthday Card',2,100),(60,'Birthday Card',2,100),(61,'Birthday Card',2,100),(62,'Birthday Card',2,100),(63,'Birthday Card',2,100);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giftcards`
--

DROP TABLE IF EXISTS `giftcards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giftcards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giftcards`
--

LOCK TABLES `giftcards` WRITE;
/*!40000 ALTER TABLE `giftcards` DISABLE KEYS */;
INSERT INTO `giftcards` VALUES (2,'Mother\'s Day Card',90,'2026-03-10'),(3,'Women\'s Day Card',100,'2026-03-10'),(4,'Anniversary Card',150,'2026-03-10');
/*!40000 ALTER TABLE `giftcards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-10 17:37:36
