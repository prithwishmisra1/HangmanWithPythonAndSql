-- MySQL dump 10.13  Distrib 5.1.53, for Win64 (unknown)
--
-- Host: localhost    Database: hangman
-- ------------------------------------------------------
-- Server version	5.1.53-community-log

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
-- Table structure for table `football`
--

DROP TABLE IF EXISTS `football`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `football` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hint` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `football`
--

LOCK TABLES `football` WRITE;
/*!40000 ALTER TABLE `football` DISABLE KEYS */;
INSERT INTO `football` VALUES (1,'URUGUAY','South American country to win first FIFA World Cup'),(2,'BOBBY CHARLTON','This Manchester United great named the legendary Old Trafford as Theatre of Dreams'),(3,'LIONEL MESSI','Argentinian player to win 4 Champions Leagues with FC Barcelona'),(4,'GERMANY','European team to win maximum no of FIFA World Cups'),(5,'SUNIL CHETRI','Indian Captain to play 100 games for Indian National Team'),(6,'OLIVER KAHN','Only goalkeeper to win the golden ball'),(7,'PELE','highest goal scorer of all time'),(8,'REAL MADRID','This club has won the UEFA Champions League for 13 times, highest in history'),(9,'ALEX FERGUSION','The manager who managed the club Manchester United for 26 years'),(10,'ZINEDINE ZIDANE','Which French legend Headbutted a player to the chest in 2006 World cup finals?');
/*!40000 ALTER TABLE `football` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high_score`
--

DROP TABLE IF EXISTS `high_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `high_score` (
  `name` varchar(30) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `topic` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high_score`
--

LOCK TABLES `high_score` WRITE;
/*!40000 ALTER TABLE `high_score` DISABLE KEYS */;
INSERT INTO `high_score` VALUES ('Prithwish',1,'football'),('Nibir',2,'india'),('Nibir',3,'football');
/*!40000 ALTER TABLE `high_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `india`
--

DROP TABLE IF EXISTS `india`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `india` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hint` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `india`
--

LOCK TABLES `india` WRITE;
/*!40000 ALTER TABLE `india` DISABLE KEYS */;
INSERT INTO `india` VALUES (1,'PEAKOCK','National bird of India'),(2,'INDIRA GANDHI','First Lady Prime Minister of India'),(3,'NEW DELHI','Capital of India'),(4,'ROYAL BENGAL TIGER','National Animal of India'),(5,'BABUR','This Mughal ruler was the first to rule in India'),(6,'MUMBAI','Largest city in India in terms of area'),(7,'BANGALORE','Known as the IT capital of India'),(8,'NEW DELHI','Red Fort, Qutub Minar, India gate, are a few monuments present in this city'),(9,'PRATIBHA PATIL','First Lady President of India');
/*!40000 ALTER TABLE `india` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-12  9:41:52
