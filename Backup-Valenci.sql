-- Las tablas son: clientes, estado, factura, forma_pago, ordenes_de_trabajo, ordenes_logs, tecnicos, usuarios.

-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mitaller
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,1155889977,30258147,'beth','gibbons'),(2,1155998877,30258148,'roger','waters'),(3,1155998822,30258149,'tom','yorke'),(4,1155889999,30258162,'jimmy','hendrix'),(5,1155998832,30258150,'bjork','gum'),(6,1155889977,30258147,'JHONY','GREENWOOD'),(8,1127712261,32518231,'DAVID','GILMOUR'),(9,1122614000,32987654,'HILDA','LIZARAZU');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'recibido'),(2,'diagnostico'),(3,'presupuestado'),(4,'esperando_aprobacion'),(5,'en_curso'),(6,'finalizado'),(7,'Facturado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,2,1,2,2500,'2023-10-20'),(2,2,2,2,3000,'2023-10-21'),(3,3,3,3,1500,'2023-10-22'),(4,4,4,3,4000,'2023-10-22'),(5,5,5,5,5000,'2023-10-24'),(6,2,1,2,2500,'2023-10-28');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'contado'),(2,'debito'),(3,'credito'),(4,'ahora12'),(5,'ahora18'),(6,'cheque');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordenes_de_trabajo`
--

LOCK TABLES `ordenes_de_trabajo` WRITE;
/*!40000 ALTER TABLE `ordenes_de_trabajo` DISABLE KEYS */;
INSERT INTO `ordenes_de_trabajo` VALUES (1,1,2,7,1,'soldadora','2023-10-10','2023-10-20'),(2,2,2,6,1,'amoladora','2023-10-10','2023-10-23'),(3,3,3,2,2,'taladro','2023-10-11','2023-10-11'),(4,4,3,6,3,'lijadora','2023-10-12','2023-10-19'),(5,5,5,4,3,'caladora','2023-10-13','2023-10-13'),(6,1,2,6,1,'soldadora','2023-10-10','2023-10-28'),(7,1,2,6,1,'nivel laser','2023-05-11','2023-07-11'),(8,1,2,6,1,'nivel laser','2023-05-11','2023-07-11'),(16,1,2,6,1,'nivel laser','2023-05-11','2023-07-11'),(17,9,1,5,2,'depiladora','2023-10-11',NULL),(18,9,1,5,2,'depiladora','2023-10-11',NULL),(19,9,1,5,2,'depiladora','2023-10-11',NULL);
/*!40000 ALTER TABLE `ordenes_de_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordenes_logs`
--

LOCK TABLES `ordenes_logs` WRITE;
/*!40000 ALTER TABLE `ordenes_logs` DISABLE KEYS */;
INSERT INTO `ordenes_logs` VALUES (1,'ordenes_de_trabajo',16,'2023-11-06 22:10:36','root@localhost','2023-11-06 22:10:36','root@localhost'),(2,'ordenes_de_trabajo',17,'2023-11-15 23:31:27','root@localhost','2023-11-15 23:31:27','root@localhost'),(3,'ordenes_de_trabajo',18,'2023-11-15 23:32:58','root@localhost','2023-11-15 23:32:58','root@localhost'),(4,'ordenes_de_trabajo',19,'2023-11-15 23:33:36','root@localhost','2023-11-15 23:33:36','root@localhost');
/*!40000 ALTER TABLE `ordenes_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES (1,'ricardo','mollo'),(2,'indio','solari'),(3,'adrian','dargelos'),(4,'axel','krygier'),(5,'norberto','napolitano');
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1234,'supervisor','fito','paez'),(2,2255,'vendedor','luis','spinetta'),(3,4321,'tecnico','luca','prodan'),(4,3412,'supervisor','gustavo','cerati'),(5,5522,'tecnico','charly','garcia');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20 21:58:36
