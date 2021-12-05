-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bdpost
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Temporary table structure for view `detalles`
--

DROP TABLE IF EXISTS `detalles`;
/*!50001 DROP VIEW IF EXISTS `detalles`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `detalles` (
  `id` tinyint NOT NULL,
  `id_usuario` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `tema` tinyint NOT NULL,
  `contenido` tinyint NOT NULL,
  `fecha` tinyint NOT NULL,
  `img` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tpost`
--

DROP TABLE IF EXISTS `tpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `tema` varchar(50) NOT NULL,
  `contenido` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `tpost_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tusuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpost`
--

LOCK TABLES `tpost` WRITE;
/*!40000 ALTER TABLE `tpost` DISABLE KEYS */;
INSERT INTO `tpost` VALUES (1,1,'09072021','Naturalez','La naturaleza es una maravilla',NULL),(2,1,'09072021','Contaminacion','La contaminacion esta acabando el mundo xblablabla',NULL),(3,1,'2021-06-02','sadasadsa','asdsadsa',NULL),(4,1,'2021-06-02','Videojuegos','sadjhksaldhlj;l;alsl;;d;asljkdhasdaskhdjsakgdsajgdasjhdgasldhjakdhbashbxhsja x asxh ashxbsajhdbsahgd asbd asb',NULL),(5,1,'2021-06-02','Tema nuevo ','sdklhsadjklhalskjldnbaklkskldsadsa',NULL),(7,1,'2021-06-02','valeryyyyyyyyyyyyyyyyyyyyyyy','valeryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy\r\n',NULL),(8,1,'2021-06-02','La drogadiccion','lkash,msa jkndasjkd jknnjklasknjll kdksanjklkldk knosa ,dnjkllska jkldanlsdnjasnjkll ',NULL),(9,1,'2021-06-02','La drogadiccion','lkash,msa jkndasjkd jknnjklasknjll kdksanjklkldk knosa ,dnjkllska jkldanlsdnjasnjkll ',NULL),(10,1,'2021-06-03','Locos','asjdas dkhsajkdhjskahdksja das','alancamo'),(11,1,'2021-06-03','123','1sdadasdas','alancamo'),(12,7,'2021-06-03','Loco Pello','Un tema muy interesante','usuario'),(17,7,'2021-06-03','laosjd','prahsdnasd','usuario'),(20,11,'2021-06-06','Lol','123','fanysita'),(26,13,'2021-06-06','Canciones','lolisa','valery'),(28,9,'2021-06-08','hola','21hdaskas','alexito'),(29,9,'2021-06-08','fasd','Esto es una edicion','alexito'),(30,16,'2021-06-08','Lola','123','kale');
/*!40000 ALTER TABLE `tpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trespuesta`
--

DROP TABLE IF EXISTS `trespuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trespuesta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `trespuesta_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `tpost` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trespuesta`
--

LOCK TABLES `trespuesta` WRITE;
/*!40000 ALTER TABLE `trespuesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `trespuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tusuario`
--

DROP TABLE IF EXISTS `tusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `contrasena` varchar(80) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tusuario`
--

LOCK TABLES `tusuario` WRITE;
/*!40000 ALTER TABLE `tusuario` DISABLE KEYS */;
INSERT INTO `tusuario` VALUES (1,'1005440678','alex','carlo','alancamo','123',NULL),(3,'123','alex','carlo','alex','123','images/icons/2.png'),(4,'123','asd','asd','sasa','123','images/icons/1.png'),(5,'12312','alancamo','carlo','alancamo','123','images/icons/1.png'),(6,'1005440678','loco','pello','usuario','123','images/icons/1.png'),(7,'1005440678','loco','pello','usuario','123','images/icons/1.png'),(8,'1005440678','Alex','Carlo','alexito','123','images/icons/1.png'),(9,'1005440678','Alex','Carlo','alexito','123','images/icons/1.png'),(10,'12317','Fany','Castro','fanysita','123','images/icons/2.png'),(11,'12317','Fany','Castro','fanysita','123','images/icons/2.png'),(12,'261281','Valeria','Diaz','valery','123','images/icons/3.png'),(13,'261281','Valeria','Diaz','valery','123','images/icons/3.png'),(14,'00009','Kamilo','Mendez','kamilo1','123','images/icons/3.png'),(15,'123','sa','sa','sa','123','images/icons/1.png'),(16,'10281','alex','carlo','kale','123','images/icons/1.png'),(17,'1345446547','gdfhxh','hfddfhdfhfgh','yoyome','123456','images/icons/1.png'),(18,'1','as','sa','ssss','123','images/icons/1.png'),(19,'12','alex','carlo','123','123','images/icons/1.png'),(20,'123457181','lopez','carraquiel','lilota','123','images/icons/1.png'),(21,'12','palex','pcarlo','alexcarlo12','123','images/icons/1.png'),(22,'000991','yassir','carlo','yassirito','123','images/icons/1.png'),(23,'000991','pepe','123','pepito','123','images/icons/1.png'),(24,'123521891','pepe','kijote','kijote','123','images/icons/1.png'),(25,'00091271','Exito','Exito','exito','123','images/icons/1.png');
/*!40000 ALTER TABLE `tusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `detalles`
--

/*!50001 DROP TABLE IF EXISTS `detalles`*/;
/*!50001 DROP VIEW IF EXISTS `detalles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `detalles` AS select `tpost`.`id` AS `id`,`tpost`.`id_usuario` AS `id_usuario`,`tusuario`.`username` AS `username`,`tpost`.`tema` AS `tema`,`tpost`.`contenido` AS `contenido`,`tpost`.`fecha` AS `fecha`,`tusuario`.`img` AS `img` from (`tpost` join `tusuario` on(`tpost`.`id_usuario` = `tusuario`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-08 18:07:07
