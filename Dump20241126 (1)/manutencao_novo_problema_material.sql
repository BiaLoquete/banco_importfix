-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manutencao_novo
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `problema_material`
--

DROP TABLE IF EXISTS `problema_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `problema_material` (
  `id_problema_material` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) DEFAULT NULL,
  `id_problema` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_problema_material`),
  KEY `id_problema` (`id_problema`),
  KEY `id_material` (`id_material`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `problema_material_ibfk_1` FOREIGN KEY (`id_problema`) REFERENCES `problema` (`id_problema`),
  CONSTRAINT `problema_material_ibfk_2` FOREIGN KEY (`id_material`) REFERENCES `materiais` (`id_material`),
  CONSTRAINT `problema_material_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problema_material`
--

LOCK TABLES `problema_material` WRITE;
/*!40000 ALTER TABLE `problema_material` DISABLE KEYS */;
/*!40000 ALTER TABLE `problema_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 16:45:09
