CREATE DATABASE  IF NOT EXISTS `carniceria` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `carniceria`;
-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: carniceria
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL AUTO_INCREMENT,
  `idVenta` int(11) NOT NULL,
  PRIMARY KEY (`idClientes`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_venta`
--

DROP TABLE IF EXISTS `detalles_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_venta` (
  `idDetalles_venta` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad_kilos` double NOT NULL,
  `idProducto` int(11) NOT NULL,
  `idVentas` int(11) NOT NULL,
  PRIMARY KEY (`idDetalles_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_venta`
--

LOCK TABLES `detalles_venta` WRITE;
/*!40000 ALTER TABLE `detalles_venta` DISABLE KEYS */;
INSERT INTO `detalles_venta` VALUES (1,1,1,1),(2,1,5,1),(3,1,7,1),(4,1,2,1),(5,1,11,2),(6,1,1,2),(7,1,2,2),(8,2,39,2),(9,2,29,3),(10,2,1,3),(11,1,1,4),(12,1,1,5),(13,3,1,6),(14,4,11,6),(15,1,1,7),(16,1,1,8),(17,1,1,9),(18,1,1,10),(19,1,1,11),(20,1,2,12),(21,1,5,13),(22,1,6,14),(23,1,4,15),(24,1,5,16),(25,1,8,17),(26,1,6,18),(27,2,7,19),(28,1,4,20),(29,1,3,21),(30,1,5,22),(31,3,12,23),(32,1,14,24),(33,2,15,25),(34,3,16,26),(35,2,24,27),(36,1,40,28),(37,1,39,29),(38,1,35,30);
/*!40000 ALTER TABLE `detalles_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `idPersonal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido_paterno` varchar(45) DEFAULT NULL,
  `apellido_materno` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idTipo_personal` int(11) NOT NULL,
  PRIMARY KEY (`idPersonal`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES (1,'Salvador','Gómez','Valdez','4651188323',1),(2,'Gabriela','López','Ocaña','4651186772',2),(3,'Fernando','Andrade','Rangel','4652212123',2),(4,'Ruben','Zapata','Perez','4652283920',2),(5,'Marco Antonio','Reyes','Rodríguez','4651354273',2),(6,'Jesus','Romo',NULL,'4651223321',2);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(45) NOT NULL,
  `precio_por_kilo` double NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Bisteck_res',160),(2,'Bisteck_trocito_pierna_cerdo',96),(3,'Bisteck_trocito_lomo_cerdo',100),(4,'Bisteck_pollo',150),(5,'Molida_pierna_cerdo',96),(6,'Molida_lomo_cerdo',100),(7,'Molida_normal_res',130),(8,'Molida_pulpa_res',170),(9,'Chuleta_natural_puerco',110),(10,'Chuleta_ahumada_puerco',110),(11,'Chuleta_res',130),(12,'Costilla_puerco_normal',70),(13,'Costilla_puerco_asar',86),(14,'Costilla_puerco_bbq',100),(15,'Costilla_res_asar',130),(16,'Cocido_res',110),(17,'Espinazo_cerdo',70),(18,'Chamorro_cerdo',70),(19,'Pata_cerdo',56),(20,'Jamón_viva',78),(21,'Jamón_ros_pavo',120),(22,'Jamón_ros_econom',72),(23,'Jamón_fud_pierna',125),(24,'Jamón_fud_pavo',146),(25,'Salchicha_viva',50),(26,'Salchicha_ros_econom',42),(27,'Salchicha_ros_pavo',52),(28,'Tocino_ahumado_cerdo',180),(29,'Queso',91),(30,'Chicharrón_prensado',160),(31,'Chicharrón_normal_botanero',200),(32,'Carnitas',200),(33,'Pollo_pierna_muslo',76),(34,'Pollo_parejo',78),(35,'Pollo_muslo_pierna_sola',80),(36,'Pollo_pechuga',116),(37,'Pollo_pechuga_sin_hueso',150),(38,'Deshebrada_res',150),(39,'Deshebrada_pierna_cerdo',96),(40,'Deshebrada_lomo_cerdo',100);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_personal`
--

DROP TABLE IF EXISTS `tipo_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_personal` (
  `idTipo_personal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_de_personal` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_personal`
--

LOCK TABLES `tipo_personal` WRITE;
/*!40000 ALTER TABLE `tipo_personal` DISABLE KEYS */;
INSERT INTO `tipo_personal` VALUES (1,'Dueño'),(2,'Empleado');
/*!40000 ALTER TABLE `tipo_personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `idVentas` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonal` int(11) NOT NULL,
  `idClientes` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`idVentas`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,2,1,'2020-01-02',482),(2,3,2,'2020-01-03',578),(3,4,3,'2020-01-04',502),(4,5,4,'2020-01-05',160),(5,3,5,'2020-01-10',160),(6,3,6,'2020-02-05',1000),(7,2,7,'2020-02-06',160),(8,3,8,'2020-02-06',160),(9,2,9,'2020-02-16',160),(10,4,10,'2020-03-17',160),(11,4,11,'2020-03-17',160),(12,5,12,'2020-03-17',96),(13,5,13,'2020-03-19',96),(14,5,14,'2020-04-22',100),(15,4,15,'2020-04-26',150),(16,3,16,'2020-04-27',96),(17,2,17,'2020-05-18',170),(18,2,18,'2020-05-18',100),(19,3,19,'2020-05-19',260),(20,4,20,'2020-05-19',150),(21,2,21,'2020-05-19',100),(22,5,22,'2020-05-20',96),(23,4,23,'2020-05-21',210),(24,3,24,'2020-05-23',100),(25,3,25,'2020-05-24',260),(26,2,26,'2020-05-28',330),(27,2,27,'2020-05-29',292),(28,5,28,'2020-05-30',100),(29,5,29,'2020-07-05',96),(30,4,30,'2020-07-14',80);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 15:10:57
