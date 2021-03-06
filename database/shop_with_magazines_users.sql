CREATE DATABASE  IF NOT EXISTS `shop_with_magazines` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop_with_magazines`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop_with_magazines
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Oleg','Nakhod','olegnakhod@gmail.com','12345678','USER'),(2,'admin','admin','admin','123456787','USER'),(3,'admin','admin','admin','admin','ADMINISTRATOR'),(4,'administrator','administrator','administrator','administrator','ADMINISTRATOR'),(5,'123456','123456','12345678','12345678','USER'),(6,'2345','2345','2345','12345678','USER'),(7,'2345','2345','45848','12345678','USER'),(8,'57457','48548','48548','12345678','USER'),(9,'253','236','123456787','12345678','USER'),(10,'253','236','1234567877','12345678','USER'),(11,'253','236','12345678777','12345678','USER'),(12,'253','236','123456787777','12345678','USER'),(13,'123','1223','123456788','12345678','USER'),(14,'235','235','123456782','12345678','USER'),(15,'y75','7457','123456783','12345678','USER'),(16,'4235','235','123456781','12345678','USER'),(17,'23145','253452','1234567812','12345678','USER'),(18,'325','235','12345678123','12345678','USER'),(19,'235','253','123456783467','12345678','USER'),(20,'13','13','1234567867','12345678','USER'),(21,'13','13','12345678674','12345678','USER'),(22,'312','3123','123456786742','12345678','USER'),(23,'412','52135','123456786743','12345678','USER'),(24,'3252','235','123456786741','12345678','USER'),(25,'3252','235','1234567867413','12345678','USER'),(26,'w','ds','12345678674w','12345678','USER');
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

-- Dump completed on 2022-02-19 16:26:06
