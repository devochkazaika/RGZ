-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `fast_memory`
--

DROP TABLE IF EXISTS `fast_memory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fast_memory` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `socket` varchar(255) DEFAULT NULL,
  `form_fact` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fast_memory`
--

LOCK TABLES `fast_memory` WRITE;
/*!40000 ALTER TABLE `fast_memory` DISABLE KEYS */;
INSERT INTO `fast_memory` VALUES (1,'superfastmemory','ddr4',NULL,'124mzh'),(2,'superfastmemory','ddr4',NULL,'124mzh'),(23,'NASVAY','image_idpc_idasd','safasf','12'),(33,'UGA_BUGA','image_idpc_idasd','safasf','12');
/*!40000 ALTER TABLE `fast_memory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fast_memory_seq`
--

DROP TABLE IF EXISTS `fast_memory_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fast_memory_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fast_memory_seq`
--

LOCK TABLES `fast_memory_seq` WRITE;
/*!40000 ALTER TABLE `fast_memory_seq` DISABLE KEYS */;
INSERT INTO `fast_memory_seq` VALUES (1);
/*!40000 ALTER TABLE `fast_memory_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `originalFileName` varchar(255) DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `contentType` varchar(255) DEFAULT NULL,
  `isPreviewImage` tinyint(1) DEFAULT NULL,
  `bytes` tinyblob,
  `content_type` varchar(255) DEFAULT NULL,
  `is_preview_image` bit(1) DEFAULT NULL,
  `original_file_name` varchar(255) DEFAULT NULL,
  `pc_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6uenkr3e0snfeirgdsfk2ac8w` (`pc_id`),
  CONSTRAINT `FK6uenkr3e0snfeirgdsfk2ac8w` FOREIGN KEY (`pc_id`) REFERENCES `pc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'superfastmemory',NULL,124,NULL,NULL,NULL,NULL,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_seq`
--

DROP TABLE IF EXISTS `images_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_seq`
--

LOCK TABLES `images_seq` WRITE;
/*!40000 ALTER TABLE `images_seq` DISABLE KEYS */;
INSERT INTO `images_seq` VALUES (1);
/*!40000 ALTER TABLE `images_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `math`
--

DROP TABLE IF EXISTS `math`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `math` (
  `id` bigint NOT NULL,
  `image_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `socket` varchar(255) DEFAULT NULL,
  `form_fact` varchar(255) DEFAULT NULL,
  `from_fact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `math`
--

LOCK TABLES `math` WRITE;
/*!40000 ALTER TABLE `math` DISABLE KEYS */;
INSERT INTO `math` VALUES (1,124,'ssdsd','ADSD',NULL,NULL),(2,124,'ssdsd','ADSD',NULL,NULL),(3,124,'ssdsd','ADSD',NULL,NULL),(4,124,'ssdsd','ADSD',NULL,NULL),(5,0,NULL,NULL,NULL,NULL),(12,2,'ASd','asd','safasf',NULL),(15,2,'ASd','asd','safasf',NULL),(16,567,'ASd','asd','safasf',NULL),(22,567,'UGA_BUGA','image_idpc_idasd','safasf',NULL);
/*!40000 ALTER TABLE `math` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `math_seq`
--

DROP TABLE IF EXISTS `math_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `math_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `math_seq`
--

LOCK TABLES `math_seq` WRITE;
/*!40000 ALTER TABLE `math_seq` DISABLE KEYS */;
INSERT INTO `math_seq` VALUES (1);
/*!40000 ALTER TABLE `math_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc`
--

DROP TABLE IF EXISTS `pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc` (
  `id` bigint NOT NULL,
  `id_math` bigint NOT NULL,
  `id_fast_memory` bigint NOT NULL,
  `id_graphics` bigint NOT NULL,
  `id_fast_memory_2` bigint DEFAULT NULL,
  `id_math_2` bigint DEFAULT NULL,
  `id_mather` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKasjfmg6s54yqiwy5p20mddffg` (`id_fast_memory_2`),
  KEY `FKn4dx1bldqeernadjekxd6k6d0` (`id_math_2`),
  CONSTRAINT `FKasjfmg6s54yqiwy5p20mddffg` FOREIGN KEY (`id_fast_memory_2`) REFERENCES `fast_memory` (`id`),
  CONSTRAINT `FKn4dx1bldqeernadjekxd6k6d0` FOREIGN KEY (`id_math_2`) REFERENCES `math` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc`
--

LOCK TABLES `pc` WRITE;
/*!40000 ALTER TABLE `pc` DISABLE KEYS */;
INSERT INTO `pc` VALUES (402,1,1,0,NULL,NULL,NULL),(403,22,1,0,NULL,NULL,NULL),(404,1,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_seq`
--

DROP TABLE IF EXISTS `pc_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pc_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_seq`
--

LOCK TABLES `pc_seq` WRITE;
/*!40000 ALTER TABLE `pc_seq` DISABLE KEYS */;
INSERT INTO `pc_seq` VALUES (501);
/*!40000 ALTER TABLE `pc_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req`
--

DROP TABLE IF EXISTS `req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req` (
  `id` bigint NOT NULL,
  `fast_memory` varchar(255) DEFAULT NULL,
  `mather` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req`
--

LOCK TABLES `req` WRITE;
/*!40000 ALTER TABLE `req` DISABLE KEYS */;
/*!40000 ALTER TABLE `req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `req_seq`
--

DROP TABLE IF EXISTS `req_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `req_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `req_seq`
--

LOCK TABLES `req_seq` WRITE;
/*!40000 ALTER TABLE `req_seq` DISABLE KEYS */;
INSERT INTO `req_seq` VALUES (1);
/*!40000 ALTER TABLE `req_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 22:40:00
