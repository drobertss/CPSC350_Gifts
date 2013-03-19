-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	5.1.44

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
INSERT INTO `gifts` VALUES (1,'Bicycle Multi Tool','25.49','http://www.amazon.com/gp/product/B0012Q41HY?ie=UTF8&tag=findgicom-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=B0012Q41HY','The Multi 19 has seven hex wrenches, four spoke wrench sizes, small and large Phillips and flathead screwdrivers, a t-25 Torx driver for disc brakes, and a universal chain tool to tackle any task.','http://img1.findgift.com/Graphics/Gifts/250/296/PR_261296.jpg','Crank Brothers',NULL),(2,'Acoustic Immersion Pod','3000.00','http://www.hammacher.com/Product/11727?source=CMPSHOP&cm_ven=CompShop&cm_cat=FindGift&cm_pla=FindGift&cm_ite=&zmam=36352540&zmas=1&zmac=6&zmap=11727','This pod immerses a listener in an acoustically optimized chamber, providing an enveloping audio experience with its robust 6-speaker surround sound system. Ideal for movies, sporting events, music, or games. In Red or Black.','http://img1.findgift.com/Graphics/Gifts/250/159/PR_255159.jpg','Hammacher Schlemmer',NULL),(3,'Colored iPhone Alarm Dock','30.00','http://www.uncommongoods.com/product/colored-iphone-alarm-docks?utm_medium=shopping+sites&utm_source=findgift&utm_campaign=21750','Give their desk or night stand a retro vibe that\'s contemporary cool. This awesome dock is a place they can put their iPhone. It will recharge it while they\'re sleeping and working, and beep when it\'s time to get up and go.','http://img1.findgift.com/Graphics/Gifts/250/640/PR_347640.jpg','Uncommon Goods',NULL),(4,'Photo Cube Compact Printer','155.00','http://www.magellans.com/photo-cube-compact-printer?Partner_ID=FGFT3','Mom wants a copy of that photo on your iPhone right now, so give her what she wants with this compact printer that docks with a smart phone or tablet and creates photo prints in mere seconds! Charges the phone, too!','http://img1.findgift.com/Graphics/Gifts/250/403/PR_363403.jpg','Magellan\'s Travel Supplies',NULL),(5,'Trunk-It Golf Gear Organizer Case','27.99','http://www.golfhq.com/trunk-it-golf-gear-case.html','This organizer is made to fit in the trunk of his car, so he can go straight from wherever he is to the golf course. Now there won\'t be any reason to stuff valuable closet space full of his golf gear.','http://img1.findgift.com/Graphics/Gifts/250/011/PR_355011.jpg','ProActive',NULL),(6,'Godiva Collection Gift Basket','140.00','http://www.sendliquorbaskets.com/id100248list436product.html?ovchn=OTHER&ovcpn=WineBaskets&ovcrn=FindGiftWineBaskets&ovtac=PPC','magine the happiness when they open this elegantly presented basket filled with goodies from Godiva. Includes Godiva\'s chocolate liqueur, assorted truffles, chocolates and coffee.','http://img1.findgift.com/Graphics/Gifts/250/847/PR_33847.jpg','Send.com',NULL),(7,'Candy Grabber','29.95','http://www.gadgetbargains.com/fm-jb-014.html','This Candy Grabber is just like the fairground, use the controls to move the claw & try to capture a prize! Fill this candy grabber with treats, and feel the excitement as you try to extract one from this challenging machine!','http://img1.findgift.com/Graphics/Gifts/250/749/PR_51749.jpg','Gadget Bargains',NULL),(8,'Baby\'s First Year Frame','11.95','http://www.rumors.com/baby-first-year-frame-5116.html','Each month our little one grows and changes what better way to remember these times with this Babys First Year Frame. This frame will make a great gift for every expecting parent or far away relatives.','http://img1.findgift.com/Graphics/Gifts/250/752/PR_261752.jpg','Rumors',NULL),(9,'Doctor Who Tardis Life-Size Standup','39.95','http://www.whatonearthcatalog.com/cgi-bin/hazel.cgi?action=DETAIL&ITEM=CJ4892&websource=findgift&keyword=CJ4892&source_code=S02FG1','Rendered in 2 dimensions instead of the usual 4, this Tardis will capture the attention of any Whovian on the premises! See their face as they attempt to open the door, only to realize they\'ve forgotten their key and sonic screwdriver.','http://img1.findgift.com/Graphics/Gifts/250/581/PR_322581.jpg','What on earth',NULL),(10,'Paw Print Memorial Stone','14.00','http://www.terrysvillage.com/ui/browse/processRequest.do?requestURI=processProductsCatalog&categoryId=122645&BP=7180&cm_mmc=Findgift.com-_-datafeed-_-','You miss your pet now that he\'s gone. This Paw Print Memorial Stone is a sweet way to keep his memory alive.','http://img1.findgift.com/Graphics/Gifts/250/948/PR_306948.jpg','Terry\'s Village',NULL),(11,'Huge Wooly Dog Bone Toy','19.00','http://www.orvis.com/store/product.aspx?pf_id=03PB&cm_mmc=Froogle*Prod_feeds*Prod_feeds*12082&cm_ven=performics&cm_cat=FindGift.com&cm_pla=&cm_ite=875','Maybe Fido has never been able to catch the neighborhood squirrels that he\'s so sure are up to no good. But he can comfort himself with this big, fluffy, and fun wooly bone. For the dog who has always been a good boy.','http://img1.findgift.com/Graphics/Gifts/250/834/PR_339834.jpg','Orvis',NULL),(12,'Happy Birthday Candy Bouquet','55.00','http://www.chocolate.com/products/happy-birthday-box-bouquet/','Send sweet birthday wishes on their big day with this irresistible gift box. This festive birthday box is overflowing with delectable treats including full size and snack size candy and candy bars.','http://img1.findgift.com/Graphics/Gifts/250/850/PR_374850.jpg','Chocolate.com',NULL),(13,'Photo-opoly Personalized Board Game','28.95','http://www.fantasytoyland.com/lfs-64071.html','The Photo-Opoly personalized board game is perfect for any special occasion. Creators use their own photos, create their own titles or use pre-printed titles included in the game.','http://img1.findgift.com/Graphics/Gifts/250/768/PR_83768.jpg','Fantasy Toyland',NULL),(14,'Personalized Man Cave Mug','14.99','http://gifts.personalcreations.com/productdetail.aspx?cobrand=PCR&pid=30028768&ssid=4&REF=PCRFeedFindgift','Beer mug holds 13 oz. We personalize with any name, up to 9 characters.','http://img1.findgift.com/Graphics/Gifts/250/618/PR_252618.jpg','Personal Creations.com',NULL),(15,'Cheyenne Leather Cowboys Boots','189.95','http://www.seventhavenue.com/catalog/product.jsp?productId=70877&source=alt-partner&code=FindGift&link=057431','She\'ll be boot scootin\' into Spring wearing these vibrant red cowboy boots. A floral embroidered design gives them a touch of Spring that will look great with jeans, shorts or skirts.','http://img1.findgift.com/Graphics/Gifts/250/815/PR_376815.jpg','Seventh Avenue',NULL);
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
INSERT INTO `junction` VALUES (1,2),(1,5),(2,5),(2,6),(2,7),(3,2),(3,3),(3,4),(3,5),(3,7),(4,2),(4,3),(4,5),(4,7),(4,9),(5,2),(6,3),(6,2),(6,9),(6,10),(7,4),(7,9),(7,10),(7,11),(7,6),(8,1),(8,7),(8,10),(9,6),(9,5),(9,9),(9,10),(10,8),(11,8),(12,2),(12,3),(12,4),(12,5),(12,6),(12,9),(12,11),(13,2),(13,3),(13,6),(13,9),(13,10),(14,2),(14,6),(14,9),(14,10),(14,11),(15,3),(15,6),(15,9),(15,10),(15,11);
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

-- Dump completed on 2013-03-19 13:38:24
