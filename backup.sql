-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_restaurant_booking
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `admin_add_menu`
--

DROP TABLE IF EXISTS `admin_add_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_add_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(45) DEFAULT NULL,
  `menu_type` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_add_menu`
--

LOCK TABLES `admin_add_menu` WRITE;
/*!40000 ALTER TABLE `admin_add_menu` DISABLE KEYS */;
INSERT INTO `admin_add_menu` VALUES (2,'Roti','Veg','Roti','Roti1.jpeg','15'),(3,'Biryani','Non-veg','Rice','Rice1.jpg','200'),(4,'Veg Special Thali','Veg','Thali','Thali1.jpeg','250'),(5,'Coke','Veg','Beverages','Cocolabv.jpg','50'),(6,'Coke','Non-veg','Beverages','Cocolabv.jpg','50'),(7,'Masala Papad','Veg','Starter','Starter2.jpeg','70'),(8,'Mega Veg Thali','Veg','Thali','VegThali.jpeg','300'),(9,'Tomato Sooup','Veg','Soup','Soup1.jpeg','150'),(10,'French Fries','Veg','Starter','Starter1.jpg','200');
/*!40000 ALTER TABLE `admin_add_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(45) DEFAULT NULL,
  `menu_type` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (5,1,'Sourabh','15/04/2023',7,'Masala Papad','Veg','Starter','Starter2.jpeg',70,1,'70'),(6,1,'Sourabh','15/04/2023',10,'French Fries','Veg','Starter','Starter1.jpg',200,1,'200');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `feedback` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Sourabh','sourabhtupe24@gmail.com','fheguef');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `cardno` bigint(20) DEFAULT NULL,
  `cvc` int(3) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `ownername` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `bikename` varchar(50) DEFAULT NULL,
  `chassisno` varchar(45) DEFAULT NULL,
  `fueltype` varchar(45) DEFAULT NULL,
  `braketype` varchar(100) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `transimission` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  `biketype` varchar(45) DEFAULT NULL,
  `fueltank` varchar(45) DEFAULT NULL,
  `milage` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Continental GT 650','MBLHA11EWC9M27378','Petrol','Disc Brakes','214 kg','Manual','5','Continental GT 650.jpg','Cafe-racer','12.5 Liters','25 kmpl','Rocker Red','Royal Enfield','The price of Royal Enfield Continental GT 650 in India starts at Rs. 3,19,000.and goes upto Rs. 3,45,000. Royal Enfield Continental GT 650 comes with 5 variants which includes Royal Enfield Continental GT 650 Rocker Red, Royal Enfield Continental GT 650 DUX Deluxe. The top variant is Royal Enfield Continental GT 650 Mr Clean which comes at a price tag of Rs. 3,45,000.'),(2,'Interceptor 650','MBLHA11EWC9M27378','Petrol','Disc Brakes','202 kg','Manual','1','Interceptor 650.jpg','Cruiser ','13.7 Litres','25 to 25.35 kmpl','Rocker Red','Royal Enfield','#Good Things:  Features a refined engine, Offers a comfortable riding position, Comes in variety of colour options  #Could be Better,  Could get better instrument cluster, Weight is on the heavier side, Slightly harsh ride quality'),(3,'Shotgun 650','MBLzA11EWC9M27378','Petrol','Disc Brakes','214 kg','Manual','1','Shotgun 650.webp','Cruiser ','15 Liters','25 kmpl','Black  ','Royal Enfield','Royal Enfield Shotgun 650 is expected to launch in India in June 2023 in the expected price range of â¹ 3,00,000 to â¹ 3,50,000. Currently available bikes which are similar to Shotgun 650 are Royal Enfield Interceptor 650, Royal Enfield Super Meteor 650 & Keeway K-Light 250V. Another bike similar to Shotgun 650 is Harley-Davidson X 350 which is launching in August 2023 in India.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `cpassword` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'Sourabh','sourabhtupe24@gmail.com',7410565544,'1122','1122');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_booking`
--

DROP TABLE IF EXISTS `user_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_date` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `guest_no` int(11) DEFAULT NULL,
  `shift` varchar(45) DEFAULT NULL,
  `room` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `bookingtype` varchar(45) DEFAULT NULL,
  `menu_name` varchar(45) DEFAULT NULL,
  `menu_type` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `bstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_booking`
--

LOCK TABLES `user_booking` WRITE;
/*!40000 ALTER TABLE `user_booking` DISABLE KEYS */;
INSERT INTO `user_booking` VALUES (1,'21/21/2121',1,'Sourabh','2023-04-07',2,'Dinner','NONAC','08.30 AM',NULL,'Hall',NULL,NULL,NULL,NULL,NULL,NULL),(2,'21/21/2121',1,'Sourabh','2023-04-07',1,'Lunch','NONAC','09.00 AM',NULL,'Table',NULL,NULL,NULL,NULL,NULL,NULL),(3,'21/21/2121',1,'Sourabh','2023-04-20',3,'Dinner','NONAC','08.00 AM',NULL,'Meeting',NULL,NULL,NULL,NULL,NULL,NULL),(4,'21/21/2121',1,'Sourabh','2023-04-01',3,'Lunch','NONAC','08.00 AM',NULL,'Family',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu_book`
--

DROP TABLE IF EXISTS `user_menu_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu_book` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `menu_name` varchar(45) DEFAULT NULL,
  `menu_type` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu_book`
--

LOCK TABLES `user_menu_book` WRITE;
/*!40000 ALTER TABLE `user_menu_book` DISABLE KEYS */;
INSERT INTO `user_menu_book` VALUES (1,1,'Sourabh','14/04/2023',7,'Masala Papad','Veg','Starter','Starter2.jpeg',70,6,'420','Pending'),(2,1,'Sourabh','14/04/2023',10,'French Fries','Veg','Starter','Starter1.jpg',200,5,'1000','Pending'),(3,1,'Sourabh','14/04/2023',6,'Coke','Non-veg','Beverages','Cocolabv.jpg',50,4,'200','Pending'),(4,1,'Sourabh','14/04/2023',7,'Masala Papad','Veg','Starter','Starter2.jpeg',70,6,'420','Pending'),(5,1,'Sourabh','14/04/2023',10,'French Fries','Veg','Starter','Starter1.jpg',200,5,'1000','Pending');
/*!40000 ALTER TABLE `user_menu_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15  1:38:26
