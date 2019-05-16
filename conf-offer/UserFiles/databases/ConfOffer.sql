-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: market4
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `ConferenceOffers`
--

DROP TABLE IF EXISTS `ConferenceOffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConferenceOffers` (
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `ExhibitsCost` decimal(18,2) DEFAULT NULL,
  `TalksCost` decimal(18,2) DEFAULT NULL,
  `Budget` decimal(18,2) DEFAULT NULL,
  `Approved` bit(1) DEFAULT NULL,
  `Events_binary` longblob,
  `MarketingProgramName` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `PartnerURL` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `PartnerAuth` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConferenceOffers`
--

LOCK TABLES `ConferenceOffers` WRITE;
/*!40000 ALTER TABLE `ConferenceOffers` DISABLE KEYS */;
INSERT INTO `ConferenceOffers` VALUES (1,'Sample Events (a secret)',NULL,NULL,NULL,'','',NULL,NULL,NULL),(2,'App Economy World',2000.00,0.00,10500.00,'','',NULL,NULL,NULL),(4,'Making Friends in Politics',0.00,0.00,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ConferenceOffers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Exhibits`
--

DROP TABLE IF EXISTS `Exhibits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Exhibits` (
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `Conferences_ident` int(11) DEFAULT NULL,
  `Cost` decimal(18,2) DEFAULT NULL,
  `Use` bit(1) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Amount` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ident`) USING BTREE,
  KEY `Exhibits_Conf_idx` (`Conferences_ident`),
  CONSTRAINT `Exhibits_Conf` FOREIGN KEY (`Conferences_ident`) REFERENCES `Conferences` (`ident`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Exhibits`
--

LOCK TABLES `Exhibits` WRITE;
/*!40000 ALTER TABLE `Exhibits` DISABLE KEYS */;
INSERT INTO `Exhibits` VALUES (1,'Sample Exhibits',1,100.00,NULL,1,1.00),(2,'Small Table',2,1000.00,'',2,2000.00),(3,'Multi-Booth Area',2,10000.00,'\0',1,10000.00),(5,'Card Table in Parking Lot',2,100.00,NULL,1,100.00),(6,'Booth',2,5000.00,NULL,1,5000.00);
/*!40000 ALTER TABLE `Exhibits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Talks`
--

DROP TABLE IF EXISTS `Talks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Talks` (
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `Conferences_ident` int(11) DEFAULT NULL,
  `Cost` decimal(18,2) DEFAULT NULL,
  `Use` bit(1) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Amount` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`ident`) USING BTREE,
  KEY `Exhibit_Conf_idx` (`Conferences_ident`),
  CONSTRAINT `Talks_Conf` FOREIGN KEY (`Conferences_ident`) REFERENCES `Conferences` (`ident`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Talks`
--

LOCK TABLES `Talks` WRITE;
/*!40000 ALTER TABLE `Talks` DISABLE KEYS */;
INSERT INTO `Talks` VALUES (1,'Sample Talks',1,300.00,NULL,1,0.00),(2,'Small Stage',2,10000.00,'\0',1,10000.00),(3,'Big Stage',2,4000.00,NULL,1,4000.00),(4,'Phone Booth',2,100.00,NULL,1,100.00);
/*!40000 ALTER TABLE `Talks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-20 14:43:17
