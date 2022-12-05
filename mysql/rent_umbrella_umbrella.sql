-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: rent_umbrella
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `umbrella`
--

DROP TABLE IF EXISTS `umbrella`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umbrella` (
  `umid` int NOT NULL,
  `rental_status` tinyint NOT NULL DEFAULT '0',
  `condition` tinyint DEFAULT '0',
  `pid` int NOT NULL,
  PRIMARY KEY (`umid`),
  KEY `fk_umbrella_pid_idx` (`pid`),
  CONSTRAINT `fk_umbrella_pid` FOREIGN KEY (`pid`) REFERENCES `rental_place` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umbrella`
--

LOCK TABLES `umbrella` WRITE;
/*!40000 ALTER TABLE `umbrella` DISABLE KEYS */;
INSERT INTO `umbrella` VALUES (1,0,0,1),(2,0,0,1),(3,0,0,1),(4,0,0,1),(5,0,0,1),(6,0,0,1),(7,0,0,1),(8,0,0,1),(9,0,0,1),(10,0,0,1),(11,0,0,2),(12,0,0,2),(13,0,0,2),(14,0,0,2),(15,0,0,2),(16,0,0,2),(17,0,0,2),(18,0,0,2),(19,0,0,2),(20,0,0,2),(21,0,0,3),(22,0,0,3),(23,0,0,3),(24,0,0,3),(25,0,0,3),(26,0,0,3),(27,0,0,3),(28,0,0,3),(29,0,0,3),(30,0,0,3),(31,0,0,4),(32,0,0,4),(33,0,0,4),(34,0,0,4),(35,0,0,4),(36,0,0,4),(37,0,0,4),(38,0,0,4),(39,0,0,4),(40,0,0,4),(41,0,0,5),(42,0,0,5),(43,0,0,5),(44,0,0,5),(45,0,0,5),(46,0,0,5),(47,0,0,5),(48,0,0,5),(49,0,0,5),(50,0,0,5),(51,0,0,6),(52,0,0,6),(53,0,0,6),(54,0,0,6),(55,0,0,6),(56,0,0,6),(57,0,0,6),(58,0,0,6),(59,0,0,6),(60,0,0,6),(61,0,0,7),(62,0,0,7),(63,0,0,7),(64,0,0,7),(65,0,0,7),(66,0,0,7),(67,0,0,7),(68,0,0,7),(69,0,0,7),(70,0,0,7),(71,0,0,8),(72,0,0,8),(73,0,0,8),(74,0,0,8),(75,0,0,8),(76,0,0,8),(77,0,0,8),(78,0,0,8),(79,0,0,8),(80,0,0,8),(81,0,0,9),(82,0,0,9),(83,0,0,9),(84,0,0,9),(85,0,0,9),(86,0,0,9),(87,0,0,9),(88,0,0,9),(89,0,0,9),(90,0,0,9),(91,0,0,10),(92,0,0,10),(93,0,0,10),(94,0,0,10),(95,0,0,10),(96,0,0,10),(97,0,0,10),(98,0,0,10),(99,0,0,10),(100,0,0,10),(101,0,0,11),(102,0,0,11),(103,0,0,11),(104,0,0,11),(105,0,0,11),(106,0,0,11),(107,0,0,11),(108,0,0,11),(109,0,0,11),(110,0,0,11),(111,0,0,12),(112,0,0,12),(113,0,0,12),(114,0,0,12),(115,0,0,12),(116,0,0,12),(117,0,0,12),(118,0,0,12),(119,0,0,12),(120,0,0,12),(121,0,0,13),(122,0,0,13),(123,0,0,13),(124,0,0,13),(125,0,0,13),(126,0,0,13),(127,0,0,13),(128,0,0,13),(129,0,0,13),(130,0,0,13),(131,0,0,14),(132,0,0,14),(133,0,0,14),(134,0,0,14),(135,0,0,14),(136,0,0,14),(137,0,0,14),(138,0,0,14),(139,0,0,14),(140,0,0,14),(141,0,0,15),(142,0,0,15),(143,0,0,15),(144,0,0,15),(145,0,0,15),(146,0,0,15),(147,0,0,15),(148,0,0,15),(149,0,0,15),(150,0,0,15),(151,0,0,16),(152,0,0,16),(153,0,0,16),(154,0,0,16),(155,0,0,16),(156,0,0,16),(157,0,0,16),(158,0,0,16),(159,0,0,16),(160,0,0,16),(161,0,0,17),(162,0,0,17),(163,0,0,17),(164,0,0,17),(165,0,0,17),(166,0,0,17),(167,0,0,17),(168,0,0,17),(169,0,0,17),(170,0,0,17),(171,0,0,18),(172,0,0,18),(173,0,0,18),(174,0,0,18),(175,0,0,18),(176,0,0,18),(177,0,0,18),(178,0,0,18),(179,0,0,18),(180,0,0,18);
/*!40000 ALTER TABLE `umbrella` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 17:46:23
