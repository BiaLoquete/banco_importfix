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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cargo` enum('funcionario_geral','funcionario_manutencao','chefe_manutencao') NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (12,'123456710','Lais','scrypt:32768:8:1$oiYN3mGLKEO37NDH$49bdcfe92876e76310cf3b92a5fd25e5ae6655b80bb9d2e5fd7ff7c76591a682dc92121468220ec90937bf95e297dda2e8fcffbcfdb29df7d801c4bafa1fba7a','funcionario_geral'),(13,'123456788','Lais','scrypt:32768:8:1$mRTfoyE32nBeR6sl$fd8839c87771b63a30b3ca63036bdbf5ef0e4d26caa38703a74b33aaac884cb1a73d98d4d66d3e2b234095a589e31ac86cc4be1dbd46130bdf6f59d4063b00ce','funcionario_geral'),(14,'123456711','caue','scrypt:32768:8:1$t9iCegygavzSQEAE$9635de5fbc038e11512db0d547f036fcbbbb54b7f259fdb35392d5806752bd3a13c38b058b2c5517a7cd4a77fa951ba7114aa75713452ad63a4c16eab6958b1d','funcionario_geral'),(15,'123456777','Lais','scrypt:32768:8:1$AyYECskuMqDdW2sj$83c4b6fa83e5a44263359be9942d227dd1705f5e8684195b441050075d211ce4e4255bfb9395c4a894613e9a0e32de9884aa10dabc8c4facbbb6173531747915','chefe_manutencao'),(16,'123456888','bianca','scrypt:32768:8:1$DxXlM6tgt8MX4iKh$309a3fe2add9f256983ab8133e1ae3d770e75069ca04f35b90176995c11f6eb52d2d10fb238187a6db5575d6606804e5957718e6178a579447ea293d09a889ec','funcionario_geral'),(21,'202020','Nicolas','scrypt:32768:8:1$lTWJbzCGSqMOsCOk$42ba1ca35cd44c78d9779d2f46cab134d2690d01b770f7fb5bf9c29dc82843ce7aed594020dfd1e2d9ddf8c92f0f8b0a7839c6aeba1b20308162846ebdef0be1','funcionario_manutencao'),(22,'33333','claudia','scrypt:32768:8:1$q3hqkhqNT4EDDClA$784fdfebb844530a5c4dc61cae80f8de34b191dcac7fe855c8d74e94e6b06751e0319c2ff0a4c462f477d065e0abd1bd7c80e427619f221aa7801fb2f54b50eb','funcionario_geral'),(23,'333','marcelo','scrypt:32768:8:1$ga95Ppq8i2epakZQ$442487a92e5c1f80172e144c0a8c528b4403f47fe68550f7607d4e9a64b3125452a8359a9f2a0480f34bc0f62b37d5d6cdd0bd8430816e7ce47fd0549c1e91d7','funcionario_geral'),(24,'222','vivi','scrypt:32768:8:1$wcPLZDquHl7ZjeHr$538e672e715a2dcad82838f04dc18aa064830649f32080ca2718d1717720d1b05253a841a9576de67dcf35227b59c787db90a19430a74f156e46c6fb31e64246','funcionario_geral'),(25,'4567','brenda','scrypt:32768:8:1$wM4rrQBHlm63KEQy$b4f37a81d75efdb1dc071a0738d990caaee518a302cb485db04bd1433d7881ca838469ee4ea5c9a0373c0b6ce06afe21b70ea50e5100637c15b8eaf8a24281e6','funcionario_manutencao'),(26,'12345600','brenda','scrypt:32768:8:1$eq59Bu6Znoxe6YXh$bc3fa2060481b944b9528024472f0259b2d6e95bb0d46364310c2e68c828bb997b924a2ea7da11b6c31a9e7b93e8f67aa386c4fd6d9793642c7d96775766fc92','funcionario_manutencao');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
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
