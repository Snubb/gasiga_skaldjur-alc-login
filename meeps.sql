-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: te19
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meeps`
--

DROP TABLE IF EXISTS `meeps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` varchar(140) NOT NULL,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeps`
--

LOCK TABLES `meeps` WRITE;
/*!40000 ALTER TABLE `meeps` DISABLE KEYS */;
INSERT INTO `meeps` VALUES (2,'This is a test with a bit longer body i am a sausage aiondawnbhdebalhkejbd cjhahwjkdebhauhsdfyulhehfayhigef','2022-03-18 08:32:23','2022-03-18 08:32:23','Test'),(3,'asjdnqaiwudhaeuiohdjrfbakuilebahjn','2022-03-18 09:15:33','2022-03-18 09:15:33','Ännu mer testing'),(4,'öaoihföiwh<IQUWEFBHWPIFU9hpiufhesöiojegiogjkmsrpjovsevlsmfnjk.nrfalnrvjk.wnaizdjk.vnöuoinsrzuilknsruiljnailiubhujhvfv','2022-03-18 09:15:59','2022-03-18 09:15:59','sefhio'),(5,'TESTING','2022-03-23 11:49:37','2022-03-23 11:49:37','TEST'),(6,'mwkaldklawmcknwadmklwkaklcmwkdaldmklawmmwkaldklawmcknwadmklwkaklcmwkdaldmklawmmwkaldklawmcknwadmklwkaklcmwkdaldmklawm','2022-03-23 12:26:16','2022-03-23 12:26:16','En lång jävla meep'),(7,'mwkaldklawmcknwadmklwkaklcmwkdaldmklawmmwkaldklawmcknwadmklwkaklcmwkdaldmklawmmwkaldklawmcknwadmklwkaklcmwkdaldmklawmmwkaldklawmcknwadmklwka','2022-03-23 12:27:27','2022-03-23 12:27:27','En lite längre meep'),(8,'asdwasdwasc','2022-03-23 12:57:44','2022-03-23 12:57:44','edas'),(9,'asdwacaw','2022-03-30 11:53:16','2022-03-30 11:53:16','rea'),(10,'asdcwaeca','2022-03-30 11:53:20','2022-03-30 11:53:20','bvasf'),(11,'cadfrvasdf','2022-03-30 11:53:24','2022-03-30 11:53:24','ceavbasd'),(12,'adsfvgrefasd','2022-03-30 11:53:29','2022-03-30 11:53:29','advfgwaed'),(13,'','2022-04-04 08:57:04','2022-04-04 08:57:04','empty body'),(14,'','2022-04-04 08:57:29','2022-04-04 08:57:29','');
/*!40000 ALTER TABLE `meeps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `task` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'haha it wroks :d',1,'2022-03-14 10:00:47','2022-01-21 08:08:15'),(2,'bläj bideo game',1,'2022-03-14 10:05:13','2022-01-21 08:09:00'),(3,'äta',1,'2022-02-11 09:17:53','2022-01-21 08:10:42'),(4,'soffa but edited',1,'2022-02-18 09:40:48','2022-01-21 08:10:55'),(6,'invade the Danish government',1,'2022-01-21 08:27:09','2022-01-21 08:17:56'),(7,'make new tasks',1,'2022-02-18 07:42:58','2022-01-21 08:26:21'),(8,'😳',1,'2022-02-11 09:18:10','2022-01-21 08:28:31'),(11,'sova mer',1,'2022-02-18 11:14:14','2022-01-21 09:08:53'),(32,'Kirby car kirby car',0,'2022-03-02 11:47:01','2022-03-02 11:47:01'),(37,'hhaehehahehaehaeh',1,'2022-03-14 09:53:02','2022-03-02 12:22:35'),(38,'hhaehehahehaehaeh',0,'2022-03-02 12:23:11','2022-03-02 12:23:11'),(40,'new task eheehe',0,'2022-03-02 12:31:55','2022-03-02 12:31:55'),(43,'faefascea',0,'2022-03-02 12:35:15','2022-03-02 12:35:15');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(140) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Oliver',''),(2,'Oliver2','PASSWORD');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08  8:49:30
