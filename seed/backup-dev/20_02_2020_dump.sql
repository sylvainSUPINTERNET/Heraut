-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: heraut
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animals_type`
--

DROP TABLE IF EXISTS `animals_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `animals_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals_type`
--

LOCK TABLES `animals_type` WRITE;
/*!40000 ALTER TABLE `animals_type` DISABLE KEYS */;
INSERT INTO `animals_type` VALUES (1,'chien'),(2,'chat'),(3,'rongeur'),(4,'reptile'),(5,'oiseaux'),(6,'insectes');
/*!40000 ALTER TABLE `animals_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces`
--

DROP TABLE IF EXISTS `announces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `dept` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `fare_per_day` decimal(19,2) DEFAULT NULL,
  `fare_per_hour` decimal(19,2) DEFAULT NULL,
  `fare_per_month` decimal(19,2) DEFAULT NULL,
  `street_address` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhrk61v9pg80cuogbbjiknubcb` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces`
--

LOCK TABLES `announces` WRITE;
/*!40000 ALTER TABLE `announces` DISABLE KEYS */;
INSERT INTO `announces` VALUES (1,_binary '','Paris','2020-01-27 08:08:27','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 08:08:27','db33d8b3-b138-4963-85d8-abea0a7cbcc3',1),(2,_binary '','Paris','2020-01-27 08:31:39','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 08:31:39','dba77f99-d075-4d8d-8108-cff06c1d4f48',1),(3,_binary '','Paris','2020-01-27 09:25:52','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:52','1e4be04d-3264-4548-9e5e-14b20e17084a',1),(4,_binary '','Paris','2020-01-27 09:25:53','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:53','278b8076-3568-43bb-8d57-3ce25f0c1586',1),(5,_binary '','Paris','2020-01-27 09:25:54','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:54','53edadf6-9c7b-4f89-a80a-a9cbafa454c2',1),(6,_binary '','Paris','2020-01-27 09:25:55','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:55','74ed2965-3676-4f10-96af-aafb4beb0b46',1),(7,_binary '','Paris','2020-01-27 09:25:56','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:56','08ef2623-1522-4207-9523-2a247de801b7',1),(8,_binary '','Paris','2020-01-27 09:25:56','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-27 09:25:56','4fccc7b6-8148-4ed4-8ce4-e730310c3591',1),(9,_binary '','Paris','2020-02-09 10:51:13','Euro','75','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis metus massa, in molestie orci pretium sed. Integer cursus pellentesque quam quis tempus. Vivamus blandit orci at lorem auctor, ut malesuada tortor iaculis. Pellentesque blandit ante et nibh fermentum mattis. Nam blandit augue ut rutrum consectetur. In lobortis sagittis vehicula. Proin sed dolor id felis malesuada tempus. Nunc dictum metus finibus, euismod est eget, interdum lorem.Sed lacinia dolor at scelerisque pulvinar. Pellentesque non bibendum lectus. Sed congue quis lectus vitae ultrices. Praesent augue nulla cursus eget lacus non, dignissim iaculis risus. Sed blandit volutpat tellus nec semper. Nullam ex orci, malesuada sit amet auctor non efficitur vestibulum enim. Quisque ante dolor, semper quis ante vitae, facilisis aliquet neque. Aliquam ac cursus sem. Nunc elementum blandit lacus, vitae fringilla felis lobortis eu.',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-02-09 10:51:13','a9cb0f91-23fd-4329-816b-04ec3f773efb',1);
/*!40000 ALTER TABLE `announces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_animals_type`
--

DROP TABLE IF EXISTS `announces_animals_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_animals_type` (
  `announces_id` bigint(20) NOT NULL,
  `animals_type_id` bigint(20) NOT NULL,
  KEY `FKk610cvu8fhub2yl3b2rfwf1lh` (`animals_type_id`),
  KEY `FKrc49qnwg2ytybqugguvdgrvf6` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_animals_type`
--

LOCK TABLES `announces_animals_type` WRITE;
/*!40000 ALTER TABLE `announces_animals_type` DISABLE KEYS */;
INSERT INTO `announces_animals_type` VALUES (9,2);
/*!40000 ALTER TABLE `announces_animals_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_equipments`
--

DROP TABLE IF EXISTS `announces_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_equipments` (
  `announces_id` bigint(20) NOT NULL,
  `equipments_id` bigint(20) NOT NULL,
  KEY `FKcuo2tn860645t9lt91u031jfj` (`equipments_id`),
  KEY `FKaii0strpy25h6rr0ujr1bulye` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_equipments`
--

LOCK TABLES `announces_equipments` WRITE;
/*!40000 ALTER TABLE `announces_equipments` DISABLE KEYS */;
INSERT INTO `announces_equipments` VALUES (9,1),(9,2);
/*!40000 ALTER TABLE `announces_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces_services`
--

DROP TABLE IF EXISTS `announces_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `announces_services` (
  `announces_id` bigint(20) NOT NULL,
  `services_id` bigint(20) NOT NULL,
  KEY `FKi7yrltc6w8kevodu047y7vuim` (`services_id`),
  KEY `FKss70dxs79frvqp9xkop0t79mh` (`announces_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces_services`
--

LOCK TABLES `announces_services` WRITE;
/*!40000 ALTER TABLE `announces_services` DISABLE KEYS */;
INSERT INTO `announces_services` VALUES (9,2);
/*!40000 ALTER TABLE `announces_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `created` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `exp_month` varchar(255) DEFAULT NULL,
  `exp_year` varchar(255) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `last_card_numbers` varchar(255) DEFAULT NULL,
  `network` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url_receipt` varchar(255) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe4mlsjdf8jo93ntvxah5sk6xj` (`booking_id`),
  KEY `FKokk5gba50p3ummllh9al64ojs` (`user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bills`
--

LOCK TABLES `bills` WRITE;
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` VALUES (1,_binary '',5000,'1234',127476492,'2020-02-20 08:35:23','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:35:23','http://local.com',1,1,'US'),(2,_binary '',5000,'1234',127476492,'2020-02-20 08:40:45','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:40:45','http://local.com',1,1,'US'),(3,_binary '',5000,'tok_1GEAfzJArVWS6ptEn6fqvnGc',127476492,'2020-02-20 08:46:33','eur','11','2019',_binary '\0','4242','visa','card','card','2020-02-20 08:46:33','http://local.com',1,1,'US'),(4,_binary '',6400,'tok_1GEApIJArVWS6ptEgqPn5foI',NULL,'2020-02-20 08:56:10',NULL,'11','2019',_binary '\0','4242','visa','card',NULL,'2020-02-20 08:56:10','TODO',1,1,NULL),(5,_binary '',2500,'tok_1GEBCWJArVWS6ptEXFhDthif',NULL,'2020-02-20 09:20:09',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 09:20:09','TODO',1,1,NULL),(6,_binary '',7100,'tok_1GEBDhJArVWS6ptE7mHd2xsC',NULL,'2020-02-20 09:21:23',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 09:21:23','TODO',1,1,NULL),(7,_binary '',8400,'tok_1GEBsfJArVWS6ptEr9WYeJ5Z',NULL,'2020-02-20 10:03:44',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:03:44','TODO',1,1,NULL),(8,_binary '',5100,'tok_1GEC54JArVWS6ptELsprcfga',NULL,'2020-02-20 10:16:33',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:16:33','TODO',19,1,NULL),(9,_binary '',5800,'tok_1GECCWJArVWS6ptEHWLWmHN2',NULL,'2020-02-20 10:24:15',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:24:15','TODO',22,1,NULL),(10,_binary '',1800,'tok_1GECJkJArVWS6ptEZnQZGSDC',NULL,'2020-02-20 10:31:42',NULL,NULL,NULL,_binary '\0',NULL,'token',NULL,NULL,'2020-02-20 10:31:42','TODO',28,1,NULL),(11,_binary '',1200,'tok_1GECOSJArVWS6ptEyQIJlPUU',1582194992,'2020-02-20 10:36:34',NULL,'2','2039',_binary '\0','4242','Visa','card','card','2020-02-20 10:36:34','TODO',29,1,'US'),(12,_binary '',5100,'tok_1GECZuJArVWS6ptEHTbJqYj9',1582195702,'2020-02-20 10:48:25','Eur','4','2024',_binary '\0','4242','Visa','card','card','2020-02-20 10:48:25','TODO',30,1,'US');
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `capacity_animals` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_confirmed` bit(1) DEFAULT NULL,
  `is_paid` bit(1) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `announces_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi4vm6w3btnc6ss48gl4ef5ely` (`announces_id`),
  KEY `FK7udbel7q86k041591kj6lfmvw` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,_binary '',0,'2020-01-27 09:28:37','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:28:37','5a5579e6-2fb2-45ab-a229-2ce77c3006dc',2,1),(2,_binary '',0,'2020-01-27 09:29:07','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:29:07','5dab4ec6-4ba4-41be-877a-e788d870f211',1,1),(3,_binary '',0,'2020-01-27 09:29:08','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:29:08','b4636d95-8b4e-4fcd-87a9-b949c68c5f35',1,1),(4,_binary '',0,'2020-01-27 09:30:18','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:18','40177d48-dc6c-4096-9501-33f8599285bf',1,1),(5,_binary '',0,'2020-01-27 09:30:20','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:20','56fddfdc-0dd1-4a81-b7fb-b752288f14ee',1,1),(6,_binary '',0,'2020-01-27 09:30:30','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:30','fa878e5d-3375-40e3-bb95-46558c9e784d',1,1),(7,_binary '',0,'2020-01-27 09:30:55','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:30:55','a395622c-8c50-469e-988d-ea15f9e9b8ce',1,1),(8,_binary '',0,'2020-01-27 09:42:26','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:42:26','8b9f6221-2902-4a39-9eb1-5368e9c13774',1,1),(9,_binary '',0,'2020-01-27 09:43:45','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:45','d642407f-cc4e-4370-9655-3e619ecb9d44',1,1),(10,_binary '',0,'2020-01-27 09:43:47','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:47','74f84028-478f-4aa6-8b89-28edc0e8e728',1,1),(11,_binary '',0,'2020-01-27 09:43:49','euro','2016-01-26 20:34:55',_binary '\0',_binary '\0','2016-01-25 20:34:55',100.00,'2020-01-27 09:43:49','b3828ccd-70ea-4552-aae2-092bc5419cae',1,1),(12,_binary '',0,'2020-02-20 10:03:42','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:03:42','7ad9e55f-93b5-469d-a1ca-8fb712fbfcc6',1,1),(13,_binary '',0,'2020-02-20 10:10:21','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:21','6e665c12-152e-423d-a1bf-991377567805',1,1),(14,_binary '',0,'2020-02-20 10:10:30','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:30','48c9baf3-b380-4d3c-a66e-6e3c71fd31e8',1,1),(15,_binary '',0,'2020-02-20 10:10:39','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:10:39','ab6c8ad7-9df7-4869-81d8-fc709e69ffad',1,1),(16,_binary '',0,'2020-02-20 10:11:02','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:02','a683eee3-0c15-4f1b-bead-4b66e43d2c80',1,1),(17,_binary '',0,'2020-02-20 10:11:09','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:09','4d68d5d8-621f-4a7a-8e30-3914988f85f0',1,1),(18,_binary '',0,'2020-02-20 10:11:26','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:11:26','045e5d13-5987-4e48-8b9c-cce653d64be9',1,1),(19,_binary '',0,'2020-02-20 10:16:31','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',51.00,'2020-02-20 10:16:31','37f78f8c-7802-402f-a7a7-add93b2c66bf',9,1),(20,_binary '',0,'2020-02-20 10:18:34','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:18:34','0e9f645b-2aa0-4455-9441-15ce7340e557',1,1),(21,_binary '',0,'2020-02-20 10:18:47','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:18:47','8ad509e8-4c38-4c45-95b3-82994dc1fae6',1,1),(22,_binary '',0,'2020-02-20 10:24:13','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',58.00,'2020-02-20 10:24:13','8f4040ca-04b3-4caa-bfc9-9dca12404318',9,1),(23,_binary '',0,'2020-02-20 10:25:18','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:25:18','be1e328d-428a-4979-a3ca-74c9332b9ac5',1,1),(24,_binary '',0,'2020-02-20 10:26:24','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:26:24','e6a63a3b-9610-4e0c-bfc2-65f5c248a91b',1,1),(25,_binary '',0,'2020-02-20 10:30:18','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:18','497c7321-6b46-4f59-b8fe-7234301756f6',1,1),(26,_binary '',0,'2020-02-20 10:30:46','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:46','e7eb49fa-4e34-44d1-a5d9-d74a425ba34e',1,1),(27,_binary '',0,'2020-02-20 10:30:58','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',100.00,'2020-02-20 10:30:58','a957655a-6e52-40d0-8f1e-fb89694418a7',1,1),(28,_binary '',0,'2020-02-20 10:31:41','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',18.00,'2020-02-20 10:31:41','bcf70dd6-65e5-467e-a7b0-2e2e831bda97',9,1),(29,_binary '',0,'2020-02-20 10:36:33','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',12.00,'2020-02-20 10:36:33','5b290b66-2ba8-4cc0-8496-f1789f2d1725',9,1),(30,_binary '',0,'2020-02-20 10:48:23','Euro','2016-01-26 21:34:55',_binary '\0',_binary '\0','2016-01-25 21:34:55',51.00,'2020-02-20 10:48:23','2570a1e2-6a8d-4542-98fb-603223f88407',9,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_animals_types`
--

DROP TABLE IF EXISTS `bookings_animals_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookings_animals_types` (
  `booking_id` bigint(20) NOT NULL,
  `animals_type_id` bigint(20) NOT NULL,
  KEY `FK8lrrd4pv1f5mdoyxvno8ikb9u` (`animals_type_id`),
  KEY `FKlrmul67eh9gjgviunhsss9co2` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_animals_types`
--

LOCK TABLES `bookings_animals_types` WRITE;
/*!40000 ALTER TABLE `bookings_animals_types` DISABLE KEYS */;
INSERT INTO `bookings_animals_types` VALUES (8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,2),(20,4),(21,4),(22,2),(23,4),(24,4),(25,4),(26,4),(27,4),(28,2),(29,2),(30,2);
/*!40000 ALTER TABLE `bookings_animals_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings_services`
--

DROP TABLE IF EXISTS `bookings_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookings_services` (
  `booking_id` bigint(20) NOT NULL,
  `service_id` bigint(20) NOT NULL,
  KEY `FKhx3qgb3cbqptycdppoaq10h82` (`service_id`),
  KEY `FKj4evdpolo3djlxes006ejj02` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings_services`
--

LOCK TABLES `bookings_services` WRITE;
/*!40000 ALTER TABLE `bookings_services` DISABLE KEYS */;
INSERT INTO `bookings_services` VALUES (8,1),(9,1),(10,1),(11,1),(12,2),(13,2),(14,2),(15,2),(16,2),(17,3),(18,3),(19,2),(20,3),(21,3),(22,2),(23,3),(24,3),(25,3),(26,3),(27,3),(28,2),(29,2),(30,2);
/*!40000 ALTER TABLE `bookings_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `equipments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'gamelle'),(2,'niche'),(3,'jardin'),(4,'croquettes spéciales'),(5,'douche');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (2,'matinée'),(3,'midi'),(4,'après-midi'),(5,'soirée'),(6,'nuit'),(7,'journée'),(8,'semaine'),(9,'mois'),(10,'année');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.fr','$2a$10$bIeUY.3OIvNRKgCs5UpfZ.THLpbrHQldlW41HXqiZDNUXtt//ppAi','admin'),(2,'sylvain@sylvain.fr','$2a$10$Oi.xG5sKgseHMivTGz7IxODZpci0klZlRHSqZ44SR5Fa25HT6bYRa','sylvain');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-20 11:51:48
