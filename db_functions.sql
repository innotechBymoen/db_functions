-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.15 (x86_64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car_for_sale`
--

DROP TABLE IF EXISTS `car_for_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_for_sale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dealership_id` int(10) unsigned DEFAULT NULL,
  `make` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `model` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `year` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `car_for_sale_FK` (`dealership_id`),
  CONSTRAINT `car_for_sale_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_for_sale`
--

LOCK TABLES `car_for_sale` WRITE;
/*!40000 ALTER TABLE `car_for_sale` DISABLE KEYS */;
INSERT INTO `car_for_sale` VALUES
(1,1,'Mercedes','E-350','2022-01-01'),
(2,1,'Acura','RDX','2021-01-01'),
(3,1,'Toyota','Corolla','2016-01-01'),
(4,1,'Mercedes','GLK','2020-01-01'),
(5,2,'Jeep','Wrangler','2022-01-01'),
(6,2,'Jeep','Gladiator','2022-01-01'),
(7,3,'Tesla','Model S','2020-01-01'),
(8,3,'Tesla','Model Y','2019-01-01'),
(9,3,'Porche','Tycan','2022-01-01'),
(10,3,'Ford','Mach1 Mustang','2022-01-01'),
(11,3,'Ford','F-150 Lighting','2022-01-01');
/*!40000 ALTER TABLE `car_for_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `location` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES
(1,'Dealership One','Calagry','1990-02-04'),
(2,'Dealership Two','Toronto','2022-05-01'),
(3,'Dealership Three','Vancouver','2013-01-01');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-17 14:16:45
