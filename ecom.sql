-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admindata`
--

DROP TABLE IF EXISTS `admindata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admindata` (
  `adminemail` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text,
  `agree` enum('on','off') DEFAULT NULL,
  `profilepic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admindata`
--

LOCK TABLES `admindata` WRITE;
/*!40000 ALTER TABLE `admindata` DISABLE KEYS */;
INSERT INTO `admindata` VALUES ('konchadaswetha520@gmail.com','swetha ',_binary '$2b$12$ur9xZdB8dz5oZjH37z111OglS/u4ZGLkrl4BhCduelAP/hymgosLu','s','on','Ml6Qi4.jpg','456');
/*!40000 ALTER TABLE `admindata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` text,
  `quantity` mediumint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `category` enum('Home Applications','sports','Electronics','Grocery','Fashion') DEFAULT NULL,
  `imagename` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admindata` (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary 'J≈ÜVh\≤…îèûi6','Daikin 1.5 Ton 3 Star Inverter Split AC ','split ac with inverter swing compressor and hepta sense: dew clean technology; triple display; pm 2.5 filter to ensure healthy air\r\ncapacity 1.5 ton: suitable for small sized rooms (111 to 150 sq.ft); 572 cfm with an air throw of 16 meters\r\n3 star: energy efficiency\r\nwarranty: 1 years on product, 5 years on pcb, 10 years on compressor\r\ncopper condenser coil with patented dnns self heal coating for low maintenance & enhanced durability\r\nkey features- cooling capacity @ 43¬∞c: 100%; noise level: 30 db(a); ambient operation: 52¬∞c',34,234323.00,'Electronics','Dk7Ix9.jpg','2025-07-01 16:12:16','konchadaswetha520@gmail.com'),(_binary '1\‹jVl\≤…îèûi6','GoSriKi Women\'s Rayon Viscose Straight Bandhej Printed Kurta with Pant & Dupatta','About this item\r\nKurta Set Fabric: Rayon Blend || Kurta Set Color :- Red\r\nStyle: Straight || Length: Calf Length || Sleeves: 3/4 Sleeves || Size Chart- Kurta-S-36 in, M-38 in , L-40 in , XL-42 in , XXL-44 in,Pant :- S-28 in, M-30 in , L-32 in, XL- 34 in , XXL- 36 in,For More Please refer to the size Chart below.',1,450.00,'Fashion','Et5Uz4.jpg','2025-07-01 16:41:12','konchadaswetha520@gmail.com'),(_binary '/[ëVm\≤…îèûi6','Boldfit Cricket Stumps with Stand Cricket Kit','CRICKET STUMPS - Complete your cricket kit with the Boldfit\'s Cricket Stumps With Stand. Make your cricket dreams come true, and take wicket and wicket. These plastic stumps are durable and sturdy against tennis balls. They never bend or break, and the cricket stump stays stable when placed on hard and flat grounds. They are made from quality plastic and can be used anywhere on hard grounds.',1,1232.00,'sports','Jc3Dw1.jpg','2025-07-01 16:48:59','konchadaswetha520@gmail.com'),(_binary '=[àVl\≤…îèûi6','ANNI DESIGNER Women\'s Rayon Viscose Straight Embroidered Kurta with Pant & Dupatta','About this item\r\nKurta Set Fabric: Rayon Viscose (Rayon Viscose 100%) || Kurta Set Color :- Pink\r\nStyle: Straight || Length: Calf Length || Sleeves: 3/4 Sleeves || Size Chart- Kurta-S-36 in, M-38 in , L-40 in , XL-42 in , XXL-44 in,Pant :- S-28 in, M-30 in , L-32 in, XL- 34 in , XXL- 36 in,For More Please refer to the size Chart below.',1,432.00,'Fashion','Iy1Mv9.jpg','2025-07-01 16:42:13','konchadaswetha520@gmail.com'),(_binary 'qò¨3Vm\≤…îèûi6','KRISHIVAL NUTS Premium Dried Anjeer 250','About this item\r\nHealthy Snack: Anjeer is naturally sweet and can satisfy your cravings without guilt. It‚Äôs a perfect alternative to candy and junk food',1,123.00,'Grocery','An9Kh6.jpg','2025-07-01 16:50:50','konchadaswetha520@gmail.com'),(_binary 'ÜìVZVl\≤…îèûi6','Konex Full Size Plastic Cricket Bat for Adults','About this item\r\nStandard Plastic Cricket Bat: Konex Plastic Standard Cricket Bat designed for daily practice and casual play. Perfect for honing skills or enjoying a fun game with friends and family.\r\nDesigned for Adults: Crafted to suit adult players of all skill levels. Ideal for backyard matches, training sessions, or friendly games with optimum balance and control.',1,2323.00,'sports','Yu1Zt3.jpg','2025-07-01 16:44:16','konchadaswetha520@gmail.com'),(_binary '£Øu5Vm\≤…îèûi6','Maigreens Whole Black Pepper','About this item\r\nPackage Contents: Black Pepper - 100 gm, Bengal ‚Äì Golmuruch, Gujrati ‚Äì Mari, Punjabi ‚Äì Kali Mirch. Tamil - Milagu, Urdu ‚Äì Siyah Mirch, Malayalam - Kurumulagu',5,9876.00,'Grocery','Zn7Xg5.jpg','2025-07-01 16:52:14','konchadaswetha520@gmail.com'),(_binary '\‚Y\ %Vk\≤…îèûi6','LG 28 L Convection Microwave Combination OvenOven','About this item\r\nConvection Microwave Oven: For baking along with grilling, reheating, defrosting and cooking (Maximum temperature)\r\nCapacity: 28 Litres - Suitable for 4-6 members\r\nManufacturer Warranty: 1 Year on product from the date of purchase (T&C Apply)',1,4532.00,'Electronics','Ma9Ro3.jpg','2025-07-01 16:39:40','konchadaswetha520@gmail.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `total_amount` bigint unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `payment_by` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`order_id`),
  KEY `payment_by` (`payment_by`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_by`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Boldfit Cricket Stumps with Stand Cricket Kit',1232,1,'2025-07-14 15:21:25','bhavitha448@gmail.com','vijayawada');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviewid` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `itemid` binary(16) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`),
  KEY `itemid` (`itemid`),
  KEY `user` (`user`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'happy','4',_binary '1\‹jVl\≤…îèûi6','bhavitha448@gmail.com','2025-07-15 16:12:17'),(2,'good','5',_binary '/[ëVm\≤…îèûi6','bhavitha448@gmail.com','2025-07-15 17:08:50'),(3,'bnm,','5',_binary '/[ëVm\≤…îèûi6','bhavitha448@gmail.com','2025-07-15 17:32:39');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varbinary(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bhavitha','bhavitha448@gmail.com','vijayawada',_binary '$2b$12$TKkR1kxlFwYUf.WZeu3wHeEobe7lZuV18JyK2jX2xEIhNMd6N/8zW','male');
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

-- Dump completed on 2025-07-19 15:26:33
