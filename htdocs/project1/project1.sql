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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catagories`
--

LOCK TABLES `catagories` WRITE;
/*!40000 ALTER TABLE `catagories` DISABLE KEYS */;
INSERT INTO `catagories` VALUES (1,'Babies'),(2,'Men'),(3,'Women'),(4,'Kids'),(5,'Teens'),(6,'Friends'),(7,'Family'),(8,'Pet'),(9,'Birthday'),(10,'Holiday'),(11,'Special Event'),(12,'Just Because');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gifts`
--

LOCK TABLES `gifts` WRITE;
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
INSERT INTO `gifts` VALUES (1,'Bicycle Multi Tool','25.49','http://www.amazon.com/gp/product/B0012Q41HY?ie=UTF8&tag=findgicom-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=B0012Q41HY','The Multi 19 has seven hex wrenches, four spoke wrench sizes, small and large Phillips and flathead screwdrivers, a t-25 Torx driver for disc brakes, and a universal chain tool to tackle any task.','http://img1.findgift.com/Graphics/Gifts/250/296/PR_261296.jpg','Crank Brothers',NULL),(2,'Acoustic Immersion Pod','3000.00','http://www.hammacher.com/Product/11727?source=CMPSHOP&cm_ven=CompShop&cm_cat=FindGift&cm_pla=FindGift&cm_ite=&zmam=36352540&zmas=1&zmac=6&zmap=11727','This pod immerses a listener in an acoustically optimized chamber, providing an enveloping audio experience with its robust 6-speaker surround sound system. Ideal for movies, sporting events, music, or games. In Red or Black.','http://img1.findgift.com/Graphics/Gifts/250/159/PR_255159.jpg','Hammacher Schlemmer',NULL),(3,'Colored iPhone Alarm Dock','30.00','http://www.uncommongoods.com/product/colored-iphone-alarm-docks?utm_medium=shopping+sites&utm_source=findgift&utm_campaign=21750','Give their desk or night stand a retro vibe that\'s contemporary cool. This awesome dock is a place they can put their iPhone. It will recharge it while they\'re sleeping and working, and beep when it\'s time to get up and go.','http://img1.findgift.com/Graphics/Gifts/250/640/PR_347640.jpg','Uncommon Goods',NULL),(4,'Photo Cube Compact Printer','155.00','http://www.magellans.com/photo-cube-compact-printer?Partner_ID=FGFT3','Mom wants a copy of that photo on your iPhone right now, so give her what she wants with this compact printer that docks with a smart phone or tablet and creates photo prints in mere seconds! Charges the phone, too!','http://img1.findgift.com/Graphics/Gifts/250/403/PR_363403.jpg','Magellan\'s Travel Supplies',NULL),(5,'Trunk-It Golf Gear Organizer Case','27.99','http://www.golfhq.com/trunk-it-golf-gear-case.html','This organizer is made to fit in the trunk of his car, so he can go straight from wherever he is to the golf course. Now there won\'t be any reason to stuff valuable closet space full of his golf gear.','http://img1.findgift.com/Graphics/Gifts/250/011/PR_355011.jpg','ProActive',NULL),(6,'Godiva Collection Gift Basket','140.00','http://www.sendliquorbaskets.com/id100248list436product.html?ovchn=OTHER&ovcpn=WineBaskets&ovcrn=FindGiftWineBaskets&ovtac=PPC','magine the happiness when they open this elegantly presented basket filled with goodies from Godiva. Includes Godiva\'s chocolate liqueur, assorted truffles, chocolates and coffee.','http://img1.findgift.com/Graphics/Gifts/250/847/PR_33847.jpg','Send.com',NULL),(7,'Candy Grabber','29.95','http://www.gadgetbargains.com/fm-jb-014.html','This Candy Grabber is just like the fairground, use the controls to move the claw & try to capture a prize! Fill this candy grabber with treats, and feel the excitement as you try to extract one from this challenging machine!','http://img1.findgift.com/Graphics/Gifts/250/749/PR_51749.jpg','Gadget Bargains',NULL),(8,'Baby\'s First Year Frame','11.95','http://www.rumors.com/baby-first-year-frame-5116.html','Each month our little one grows and changes what better way to remember these times with this Babys First Year Frame. This frame will make a great gift for every expecting parent or far away relatives.','http://img1.findgift.com/Graphics/Gifts/250/752/PR_261752.jpg','Rumors',NULL),(9,'Doctor Who Tardis Life-Size Standup','39.95','http://www.whatonearthcatalog.com/cgi-bin/hazel.cgi?action=DETAIL&ITEM=CJ4892&websource=findgift&keyword=CJ4892&source_code=S02FG1','Rendered in 2 dimensions instead of the usual 4, this Tardis will capture the attention of any Whovian on the premises! See their face as they attempt to open the door, only to realize they\'ve forgotten their key and sonic screwdriver.','http://img1.findgift.com/Graphics/Gifts/250/581/PR_322581.jpg','What on earth',NULL),(10,'Paw Print Memorial Stone','14.00','http://www.terrysvillage.com/ui/browse/processRequest.do?requestURI=processProductsCatalog&categoryId=122645&BP=7180&cm_mmc=Findgift.com-_-datafeed-_-','You miss your pet now that he\'s gone. This Paw Print Memorial Stone is a sweet way to keep his memory alive.','http://img1.findgift.com/Graphics/Gifts/250/948/PR_306948.jpg','Terry\'s Village',NULL),(11,'Huge Wooly Dog Bone Toy','19.00','http://www.orvis.com/store/product.aspx?pf_id=03PB&cm_mmc=Froogle*Prod_feeds*Prod_feeds*12082&cm_ven=performics&cm_cat=FindGift.com&cm_pla=&cm_ite=875','Maybe Fido has never been able to catch the neighborhood squirrels that he\'s so sure are up to no good. But he can comfort himself with this big, fluffy, and fun wooly bone. For the dog who has always been a good boy.','http://img1.findgift.com/Graphics/Gifts/250/834/PR_339834.jpg','Orvis',NULL),(12,'Happy Birthday Candy Bouquet','55.00','http://www.chocolate.com/products/happy-birthday-box-bouquet/','Send sweet birthday wishes on their big day with this irresistible gift box. This festive birthday box is overflowing with delectable treats including full size and snack size candy and candy bars.','http://img1.findgift.com/Graphics/Gifts/250/850/PR_374850.jpg','Chocolate.com',NULL),(13,'Photo-opoly Personalized Board Game','28.95','http://www.fantasytoyland.com/lfs-64071.html','The Photo-Opoly personalized board game is perfect for any special occasion. Creators use their own photos, create their own titles or use pre-printed titles included in the game.','http://img1.findgift.com/Graphics/Gifts/250/768/PR_83768.jpg','Fantasy Toyland',NULL),(14,'Personalized Man Cave Mug','14.99','http://gifts.personalcreations.com/productdetail.aspx?cobrand=PCR&pid=30028768&ssid=4&REF=PCRFeedFindgift','Beer mug holds 13 oz. We personalize with any name, up to 9 characters.','http://img1.findgift.com/Graphics/Gifts/250/618/PR_252618.jpg','Personal Creations.com',NULL),(15,'Cheyenne Leather Cowboys Boots','189.95','http://www.seventhavenue.com/catalog/product.jsp?productId=70877&source=alt-partner&code=FindGift&link=057431','She\'ll be boot scootin\' into Spring wearing these vibrant red cowboy boots. A floral embroidered design gives them a touch of Spring that will look great with jeans, shorts or skirts.','http://img1.findgift.com/Graphics/Gifts/250/815/PR_376815.jpg','Seventh Avenue',NULL),(16,'Doodle Washable Twin Duvet','49.95','http://www.cgets.com/Doodle-Duvet-Draw-on-it-Wash-it-Do-it-again.html','Kids can think of this as just a giant sheet of paper to draw on to express their creativity or test new decor ideas because it all washes out in the end! Special markers let them draw on the duvet and not on the walls.','http://img1.findgift.com/Graphics/Gifts/250/158/PR_353158.jpg','Convenient Gadgets & Gifts',NULL),(17,'Comfy Feet NFL Sneakers Slippers','29.99','http://www.vat19.com/dvds/nfl-sneaker-slippers.cfm?adid=FGnflslip','With an ice cold brew in hand and these plush slippers on foot, game day is complete. These officially licensed NFL slippers are the ultimate for lounging.','http://img1.findgift.com/Graphics/Gifts/250/229/PR_308229.jpg','VAT 19',NULL),(18,'NFL Football Dart Board','159.95','http://www.brookstone.com/football-dartboards-pittsburgh-steelers?bkeid=compare%7Cchanneladvisor%7Cfindgift%7Cdatafeed','Show your team spirit with one of our officially licensed football dartboards! With authentic logos for your favorite NFL team, it\'s an awesome addition to your den, games room, bar or garage','http://img1.findgift.com/Graphics/Gifts/250/035/PR_213035.jpg','Brookstone',NULL),(19,'Beachcomber Spa Gift Basket','39.99','http://www.pleasantsurprises.com/beachcomber-gift-p-143.html?utm_campaign=export_feed&amp;utm_medium=cse&amp;utm_source=FindGifts&amp;m1track=custom','It\'s next best thing to being at the beach. The spa and pedicure products in this bucket include cute shell-shaped soaps, seashell bath salts, flip flops and more.','http://img1.findgift.com/Graphics/Gifts/250/860/PR_254860.jpg','Pleasant Surprises',NULL),(20,'Baby\'s 1st Birthday Personalized Magazine Cover','19.95','https://www.yourcover.com/Browse-Covers/birthday-magazine-cover-templates/1st-birthday/?utm_source=FindGift&utm_medium=referral&utm_term=Baby&utm_camp','Baby stars on the front cover with custom headlines celebrating baby\'s 1st birthday. Unique gift Mom & Dad will treasure. Stunning photo print is affordable or print it yourself. Frames available.','http://img1.findgift.com/Graphics/Gifts/250/555/PR_9555.jpg','Your cover',NULL),(21,'Bluetooth Shower Speaker','99.95','http://www.hammacher.com/Product/82701?source=CMPSHOP&cm_ven=CompShop&cm_cat=FindGift&cm_pla=FindGift&cm_ite=&zmam=36352540&zmas=1&zmac=6&zmap=82701','Sluggish mornings get an extra kick to the tune of favorite songs. Compatible with iPads and iPods, this shower speaker is a faithful shower or poolside companion, cranking out playlists, apps, and streaming services. ','http://img1.findgift.com/Graphics/Gifts/250/166/PR_373166.jpg','Hammacher Schlemmer',NULL),(22,'Ultimate Prank Gift Pack','19.99','http://www.stupid.com/the-ultimate-prank-pack.html#','All these classic pranks and a book to incite so many more! You\'ll be hell on wheels and we mean that in a a good way. However, your friends and family will probably have other thoughts.','http://www.stupid.com/thumbnail.asp?file=assets/images/ULTPRK_1.jpg&maxx=400&maxy=0','Stupid.com',NULL),(23,'Blacklight Nail Polish','5.99','http://www.stupid.com/blacklight-nail-polish.html','apply this light, glossy nail polish and your nails will glow super bright under blacklight whenever the lights go out and light up the night with fluorescent power.','http://www.stupid.com/thumbnail.asp?file=/assets/images/graphics/00000001/glow_nailpolish1.jpg&maxx=400&maxy=0','Stupid.com',NULL),(24,'Laughing Mirror','9.99','http://www.stupid.com/laughing-mirror.html','The laughter from this magical mirror spits out a storm of hysterical Ha Ha Has the minute someone picks it up.','http://www.stupid.com/thumbnail.asp?file=assets/images/LMRRR_1.jpg&maxx=400&maxy=0','Stupid.com',NULL),(25,'Universal Portable Charging Mat with Powercube','84.99','http://www.accessorygeeks.com/powermat-universal-charging-mat-for-home-office-pmm-ho100.html?utm_source=findgift&utm_medium=comparisonshopping&utm_ter','Slim sleek charging mat for home or office. Wirelessly charges up to 3 Powermat-enabled devices simultaneously plus one USB power port.','http://img1.findgift.com/Graphics/Gifts/250/911/PR_249911.jpg','Accessory Geeks',NULL),(26,'Platinum Gourment Wine Gift Basket','188.00','http://www.sendliquorbaskets.com/id100262list435product.html?ovchn=OTHER&ovcpn=WineBaskets&ovcrn=FindGiftWineBaskets&ovtac=PPC','When only the best will do, this is the basket to send. Your recipient will be overjoyed with the quantity and quality of gourmet foods and delicacies. Three boutique wines are hand-picked.','http://img1.findgift.com/Graphics/Gifts/250/859/PR_33859.jpg','Send.com',NULL),(27,'Japanese Red Maple Tree','39.00','http://www.eternitree.com/all-gift-trees/japanese-red-maple&ad=FindGift','The Japanese Red Maple produces a delicate cut, brilliant ruby-red leaves in spring time, giving way to darker maroon then purple as summer progresses. Brighter in sun. A small landscape tree. ','http://img1.findgift.com/Graphics/Gifts/250/766/PR_27766.jpg','Eternitree',NULL),(28,'Pop Up Pet Playpen','34.98','http://www.taylorgifts.com/item/POP_UP_PET_PLAYPEN/37175?src=FINDGIFT&utm_source=findgift&utm_medium=cse&utm_term=37175','If they want Fido or Fluffy with them but need the beloved pet contained, this pop up playpen is the perfect solution. Made of breathable nylon & mesh, the playpen easily folds and unfolds and helps the pet stay comfortable.','http://img1.findgift.com/Graphics/Gifts/250/848/PR_361848.jpg','Taylor Gifts',NULL),(29,'Power Pet Medium Electronic Pet Door','299.99','http://www.petsmart.com/product/index.jsp?productId=2755310&utm_source=findgift&utm_campaign=2755310&utm_medium=cse&mr:trackingCode=8257328E-C881-DE11','A fully automatic, motor driven door that opens completely under its own power. The door is activated by an ultrasonic pet collar. Has an automatic, dead bolt locking feature that guards against would-be intruders. ','http://img1.findgift.com/Graphics/Gifts/250/708/PR_250708.jpg','Petsmart',NULL),(30,'Constellation Projecting Turtle Night Light','34.95','http://www.hammacher.com/Product/75869?source=CMPSHOP&cm_ven=CompShop&cm_cat=FindGift&cm_pla=FindGift&cm_ite=&zmam=36352540&zmas=1&zmac=6&zmap=75869','The Constellation Night Light is a soft turtle with tiny holes in the shell that display the night time sky and all its constellations in accurate detail. Includes star guide and automatic shut off. ','http://img1.findgift.com/Graphics/Gifts/250/710/PR_185710.jpg','Hammacher Schlemmer',NULL),(31,'Personalized Photo Guitar Pics','24.95','http://www.personalizationmall.com/Personalized-Photo-Guitar-Picks-i33339.item?productid=11444&storeid=28&categoryid=1339&did=237878&utm_source=findgi','These fun Personalized Photo Guitar Picks are the perfect favor for any party! You upload your photo for the front, then add text, font and color for the back. Set of 20.','http://img1.findgift.com/Graphics/Gifts/250/801/PR_296801.jpg','Personalization Mall.com',NULL),(32,'Kid\'s Wooden Domino Race Set','67.98','http://www.hearthsong.com/product.asp?utm_source=findgift.com&utm_medium=comparisonshopping&utm_campaign=default&r=hsfindgift&pcode=2142','They\'ll create crazy loops, make awesome curves, and do everything they can to set up a cool, unique domino course. But that won\'t be half as fun as pushing that first domino and then seeing them all fall.','http://img1.findgift.com/Graphics/Gifts/250/274/PR_374274.jpg','HearthSong',NULL),(33,'15-Foot Outdoor Trampoline','286.95','http://www.fantasytoyland.com/pure-fun-trampoline-15-ft.html','Whether you\'re an aspiring gymnast or just enjoy jumping around, this 15-foot trampoline is great fun for all. It features a stable Polypro jump mat and high performance steel springs, and holds up to 250 lbs. at once. ','http://img1.findgift.com/Graphics/Gifts/250/966/PR_376966.jpg','Fantasy Toyland',NULL),(34,'Black and Gray Lumbar Massage Cushion','59.99','http://www.brookstone.com/ineed-lumbar-massage-pillow?bkeid=compare%7Cchanneladvisor%7Cfindgift%7Cdatafeed','This massage cushion is the perfect cure to soothe your back pains, any time, at any place. Four dual-rotating massage nodes give your lumbar area a kneading Shiatsu massage, while adjustable straps hold the pillow in place.','http://img1.findgift.com/Graphics/Gifts/250/233/PR_366233.jpg','Brookstone',NULL),(35,'Antique Bronze Popcorn Popper Machine','279.95','http://www.homewetbar.com/princeton-antique-bronze-popcorn-popper-machine-p-2136.html','Make movie night the talk of the neighborhood with this popcorn popper that\'s right out of the theatre! Pop enough for a crowd and keep them coming back for more as it keeps the popcorn warm, too. Includes bags and scoop.','http://img1.findgift.com/Graphics/Gifts/250/815/PR_347815.jpg','Home Wet Bar.com',NULL);
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
INSERT INTO `junction` VALUES (1,2),(1,5),(2,5),(2,6),(2,7),(3,2),(3,3),(3,4),(3,5),(3,7),(4,2),(4,3),(4,5),(4,7),(4,9),(5,2),(6,3),(6,2),(6,9),(6,10),(7,4),(7,9),(7,10),(7,11),(7,6),(8,1),(8,7),(8,10),(9,6),(9,5),(9,9),(9,10),(10,8),(11,8),(12,2),(12,3),(12,4),(12,5),(12,6),(12,9),(12,11),(13,2),(13,3),(13,6),(13,9),(13,10),(14,2),(14,6),(14,9),(14,10),(14,11),(15,3),(15,6),(15,9),(15,10),(15,11),(16,4),(16,9),(16,10),(17,2),(17,5),(17,6),(17,9),(17,10),(17,11),(18,2),(18,5),(18,6),(18,7),(18,9),(18,10),(18,11),(19,3),(19,6),(19,9),(19,10),(19,11),(20,1),(20,7),(20,9),(21,2),(21,3),(21,5),(21,6),(21,9),(22,4),(22,5),(23,4),(23,5),(23,6),(24,3),(24,4),(24,5),(25,2),(25,5),(25,6),(25,7),(25,9),(25,10),(25,11),(1,12),(2,12),(3,12),(4,12),(5,12),(7,12),(14,12),(15,12),(17,12),(18,12),(19,12),(21,12),(22,12),(24,12),(25,12),(26,2),(26,3),(26,6),(26,7),(26,9),(26,10),(26,11),(26,12),(27,3),(27,7),(27,12),(28,8),(29,8),(30,1),(30,4),(30,9),(30,12),(31,2),(31,5),(31,6),(31,7),(31,9),(31,10),(31,12),(32,4),(32,9),(33,4),(33,5),(33,12),(34,2),(34,3),(34,6),(34,7),(34,9),(34,10),(34,12),(35,2),(35,9),(35,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'stemmler','stemm'),(3,'stemmler010','403926033d001b5279df37cbbe5287b7c7c267fa'),(4,'lol','403926033d001b5279df37cbbe5287b7c7c267fa'),(5,'wmar9599','54cc4a7d779c9a8f71a16353cb42a05c9b7c8333');
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

-- Dump completed on 2013-03-20 14:17:43
