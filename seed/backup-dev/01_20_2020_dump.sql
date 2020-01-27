CREATE DATABASE  IF NOT EXISTS `heraut` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `heraut`;
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals_type`
--

LOCK TABLES `animals_type` WRITE;
/*!40000 ALTER TABLE `animals_type` DISABLE KEYS */;
INSERT INTO `animals_type` VALUES (1,'Félins'),(2,'Canins'),(3,'Rongeurs'),(4,'Oiseaux'),(5,'Reptiles'),(6,'Autres'),(7,'Poissons');
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces`
--

LOCK TABLES `announces` WRITE;
/*!40000 ALTER TABLE `announces` DISABLE KEYS */;
INSERT INTO `announces` VALUES (1,_binary '','Paris','2020-01-04 22:20:38','euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:20:38','73f51978-bb03-4159-b33d-b1e070b6862e',1),(2,_binary '','Paris','2020-01-04 22:20:50','euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:20:50','6903f193-6bf6-4bc6-a897-7810976ac497',1),(3,_binary '','Paris','2020-01-04 22:21:19','euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:21:19','4889a32b-ac3e-4847-bc5c-3ce624dd913c',1),(4,_binary '','Paris','2020-01-04 22:23:45','euro','75','my descezaeaz useeerrrr test e',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:23:45','47390bab-dba0-4efd-808f-cf04d5c68e00',2),(5,_binary '','Paris','2020-01-04 22:25:11','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:11','185a2600-ad16-4b64-a15b-06a0a3edf821',1),(6,_binary '','Paris','2020-01-04 22:25:12','euro','75','For real test HERE',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:12','2079f1b3-6ca1-43b1-80da-e4ecc1292599',1),(7,_binary '','Paris','2020-01-04 22:25:13','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:13','65b80d87-3188-45dd-a764-9591bab52be1',1),(8,_binary '','Paris','2020-01-04 22:25:14','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:14','cbe718df-f306-4d88-ba44-25c10c47ec7f',1),(9,_binary '','Paris','2020-01-04 22:25:14','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:14','1abc4b28-a84d-43c5-a3f2-8e9a9686956a',1),(10,_binary '','Paris','2020-01-04 22:25:15','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:15','1ef3f191-8c83-4b2e-a9a9-cfe9eaf72679',1),(11,_binary '','Paris','2020-01-04 22:25:16','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:16','1811a844-e6d7-450b-986a-774aebb3fa0f',1),(12,_binary '','Paris','2020-01-04 22:25:16','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:16','ae98921c-f6bd-47ed-9026-2a732f412cfc',1),(13,_binary '','Paris','2020-01-04 22:25:18','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:18','5082a8d7-48b8-4243-b07b-72646ea4234a',1),(14,_binary '','Paris','2020-01-04 22:25:19','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:19','3bf6a738-e52e-4427-a860-ae856dcd5578',1),(15,_binary '','Paris','2020-01-04 22:25:20','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:20','3c70289b-cc29-48cd-8d15-6b6a5262b701',1),(16,_binary '','Paris','2020-01-04 22:25:20','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:20','a9174d00-5441-4cd0-83f8-1eac860dcad1',1),(17,_binary '','Paris','2020-01-04 22:25:21','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:21','b626a12f-64b4-4dbc-a1d0-bebd61caf7e1',1),(18,_binary '','Paris','2020-01-04 22:25:21','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:21','aac89549-5198-4b6e-8ea6-545fa61f4bc3',1),(19,_binary '','Paris','2020-01-04 22:25:22','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:22','56900e96-140c-4586-a2c0-8a8e45dd1558',1),(20,_binary '','Paris','2020-01-04 22:25:23','euro','75','my descezaeaz useeerrrr ADMINe',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-04 22:25:23','3f5d82fe-65c1-411b-bfe2-1050f5d967a6',1);
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
INSERT INTO `announces_animals_type` VALUES (6,1),(6,2);
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
INSERT INTO `announces_equipments` VALUES (6,1),(6,2);
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
INSERT INTO `announces_services` VALUES (6,1),(6,2),(6,3),(6,4);
/*!40000 ALTER TABLE `announces_services` ENABLE KEYS */;
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
  `is_confirmed` bit(1) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `announces_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi4vm6w3btnc6ss48gl4ef5ely` (`announces_id`),
  KEY `FK7udbel7q86k041591kj6lfmvw` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,_binary '',10,'2020-01-04 22:20:38','EUR',_binary '',100.00,'2020-01-04 22:20:38','1234',1,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_animals_types`
--

DROP TABLE IF EXISTS `booking_animals_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_animals_types` (
  `booking_id` bigint(20) NOT NULL,
  `animals_types_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_t85w1gjh7gj47w8720nk4lrt1` (`animals_types_id`),
  KEY `FK6fcb8dr5a6v37h8lfsen5qurd` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_animals_types`
--

LOCK TABLES `booking_animals_types` WRITE;
/*!40000 ALTER TABLE `booking_animals_types` DISABLE KEYS */;
INSERT INTO `booking_animals_types` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `booking_animals_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_services`
--

DROP TABLE IF EXISTS `booking_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking_services` (
  `booking_id` bigint(20) NOT NULL,
  `services_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_j27ml1fvhqodwja7bf1kqej93` (`services_id`),
  KEY `FK96s1e9neeevdkrc0uir5rbsgx` (`booking_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_services`
--

LOCK TABLES `booking_services` WRITE;
/*!40000 ALTER TABLE `booking_services` DISABLE KEYS */;
INSERT INTO `booking_services` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `booking_services` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'Litière'),(2,'Niche'),(3,'Mangeoir'),(4,'Croquette special sac à merde');
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'jour'),(2,'matin'),(3,'apres-midi'),(4,'soir'),(5,'mois'),(6,'semaine'),(7,'annee');
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
INSERT INTO `users` VALUES (1,'admin@admin.fr','$2a$10$aAHM3lEC2trMkOdNeTpzgeloF5ekqGp.4Qet7.k8hcjGn7rovEvw2','admin'),(2,'user@user.fr','$2a$10$Klun8WbDBxzpb8u.B7qohuwKCCUGYL46fYIPUUb.cfYZS/wJamafq','user');
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

-- Dump completed on 2020-01-19 20:31:58
