-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	5.5.27

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

CREATE DATABASE IF NOT EXISTS project1;
GRANT ALL PRIVILEGES ON project1.* to 'findGift'@'localhost' identified by 'project';
USE project1;
--
-- Table structure for table `catagories`
--

DROP TABLE IF EXISTS `catagories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catagories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catagory` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catagories`
--

LOCK TABLES `catagories` WRITE;
/*!40000 ALTER TABLE `catagories` DISABLE KEYS */;
INSERT INTO `catagories` VALUES (1,'Babies'),(2,'Men'),(3,'Women'),(4,'Kids'),(5,'Teens'),(6,'Friends'),(7,'Family'),(8,'Pet'),(9,'Birthday'),(10,'Holiday'),(11,'Special Event');
/*!40000 ALTER TABLE `catagories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gifts`
--

DROP TABLE IF EXISTS `gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(90) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `productDescription` blob,
  `photoURL` varchar(150) DEFAULT NULL,
  `company` varchar(40) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
INSERT INTO `gifts` VALUES (1,'Bicycle Multi Tool',25.49,'http://www.amazon.com/gp/product/B0012Q41HY?ie=UTF8&tag=findgicom-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=B0012Q41HY','The Multi 19 has seven hex wrenches, four spoke wrench sizes, small and large Phillips and flathead screwdrivers, a t-25 Torx driver for disc brakes, and a universal chain tool to tackle any task.','http://img1.findgift.com/Graphics/Gifts/250/296/PR_261296.jpg','Crank Brothers',NULL),(2,'Acoustic Immersion Pod',3000.00,'http://www.hammacher.com/Product/11727?source=CMPSHOP&cm_ven=CompShop&cm_cat=FindGift&cm_pla=FindGift&cm_ite=&zmam=36352540&zmas=1&zmac=6&zmap=11727','This pod immerses a listener in an acoustically optimized chamber, providing an enveloping audio experience with its robust 6-speaker surround sound system. Ideal for movies, sporting events, music, or games. In Red or Black.','http://img1.findgift.com/Graphics/Gifts/250/159/PR_255159.jpg','Hammacher Schlemmer',NULL),(3,'Colored iPhone Alarm Dock',30.00,'http://www.uncommongoods.com/product/colored-iphone-alarm-docks?utm_medium=shopping+sites&utm_source=findgift&utm_campaign=21750','Give their desk or night stand a retro vibe that\'s contemporary cool. This awesome dock is a place they can put their iPhone. It will recharge it while they\'re sleeping and working, and beep when it\'s time to get up and go.','http://img1.findgift.com/Graphics/Gifts/250/640/PR_347640.jpg','Uncommon Goods',NULL),(4,'Photo Cube Compact Printer',155.00,'http://www.magellans.com/photo-cube-compact-printer?Partner_ID=FGFT3','Mom wants a copy of that photo on your iPhone right now, so give her what she wants with this compact printer that docks with a smart phone or tablet and creates photo prints in mere seconds! Charges the phone, too!','http://img1.findgift.com/Graphics/Gifts/250/403/PR_363403.jpg','Magellan\'s Travel Supplies',NULL);
/*!40000 ALTER TABLE `gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `junction`
--

DROP TABLE IF EXISTS `junction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `junction` (
  `gift_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `junction`
--

LOCK TABLES `junction` WRITE;
/*!40000 ALTER TABLE `junction` DISABLE KEYS */;
INSERT INTO `junction` VALUES (1,2),(1,5),(2,5),(2,6),(2,7),(3,2),(3,3),(3,4),(3,5),(3,7),(4,2),(4,3),(4,5),(4,7),(4,9);
/*!40000 ALTER TABLE `junction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'stemmler','stemm'),(3,'stemmler010','403926033d001b5279df37cbbe5287b7c7c267fa'),(4,'lol','403926033d001b5279df37cbbe5287b7c7c267fa');
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

-- Dump completed on 2013-03-19  3:05:42
