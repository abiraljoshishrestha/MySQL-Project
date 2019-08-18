-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: MotorcycleCompany
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealership` (
  `SNo` int(11) NOT NULL,
  `Dealership` varchar(255) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `ID` (`ID`),
  CONSTRAINT `dealership_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `manufacturer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,' MAW Enterprises ',' Teku ',1),(2,' Jyoti Group ',' Teku ',2),(3,' Hansraj Hulaschand ',' Teku ',3),(4,' Hansraj Hulaschand ',' Naxal ',4),(5,' Dugar Brothers ',' Naxal ',5);
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount` (
  `SNo` int(11) NOT NULL,
  `Discount` varchar(255) DEFAULT NULL,
  `Validity` date DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `ID` (`ID`),
  CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `manufacturer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,' 5% ','2018-12-24',1),(2,' 10% ','2018-10-10',2),(3,' 15% ','2018-07-04',3),(4,' 20% ','2018-09-07',4),(5,' 20% ','2018-10-04',5);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `ID` int(11) NOT NULL,
  `Manufacturer` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,' Yamaha ',' Japan '),(2,' Honda ',' Japan '),(3,' Bajaj ',' India '),(4,' KTM ',' Austria '),(5,' Royal Enfield ',' India ');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `SNo` int(11) NOT NULL,
  `Model` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `ID` (`ID`),
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `manufacturer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,' FZ25 ',350000,2017,1),(2,' CRF 250 L ',950000,2017,2),(3,' NS 200 ',296000,2017,3),(4,' Duke 250 ',560000,2017,4),(5,'Bullet 350 ',440000,2016,5);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `SNo` int(11) NOT NULL,
  `Customer` varchar(255) DEFAULT NULL,
  `Purchase` varchar(255) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SNo`),
  KEY `ID` (`ID`),
  CONSTRAINT `register_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `manufacturer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,' Chris Brown ',' FZ25 ',1),(2,' Kurt Cobain ',' CRF 250 L ',2),(3,' Samragyee RL Shah ',' NS 200 ',3),(4,' Ninjas Hyper ',' Duke 250 ',4),(5,' The Myth ',' Bullet 350 ',5);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-23 20:55:12
