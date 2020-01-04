-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: heraut
-- ------------------------------------------------------
-- Server version	5.7.28

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals_type`
--

LOCK TABLES `animals_type` WRITE;
/*!40000 ALTER TABLE `animals_type` DISABLE KEYS */;
INSERT INTO `animals_type` VALUES (1,'type1'),(2,'zaea');
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces`
--

LOCK TABLES `announces` WRITE;
/*!40000 ALTER TABLE `announces` DISABLE KEYS */;
INSERT INTO `announces` VALUES (1,_binary '','draveil','2020-01-01 17:05:45','Euro','91210','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:05:45','48566f45-d048-4502-afb8-696b74b395e1',NULL),(2,_binary '','Draveil','2020-01-01 17:06:08','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:08','40238637-ddf4-4f3f-a7b4-52025e30e50a',NULL),(3,_binary '','Draveil','2020-01-01 17:06:12','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:12','5a36fd52-c7da-4d27-ac81-f99c1196027e',NULL),(4,_binary '','Draveil','2020-01-01 17:06:13','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:13','fdc9ea67-4696-4bef-a372-31561ebbe064',NULL),(5,_binary '','Draveil','2020-01-01 17:06:13','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:13','b391f16a-1c7e-4af2-8da9-99a8c12d552a',NULL),(6,_binary '','Draveil','2020-01-01 17:06:14','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:14','5c6f58e4-c9c1-4abb-961e-0600daca204e',NULL),(7,_binary '','Draveil','2020-01-01 17:06:16','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:16','ad7c0596-b40e-4376-8895-dbfe57e5b975',NULL),(8,_binary '','Draveil','2020-01-01 17:06:17','Euro','91','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:17','85d5d440-69fd-4521-be87-4cd702466aa0',NULL),(9,_binary '','Paris','2020-01-01 17:06:22','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:22','7a590ad8-100c-4e30-9111-219b556b3a09',NULL),(10,_binary '','Paris','2020-01-01 17:06:22','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:22','0201973c-9895-4a32-84d6-bb7361fe0b50',NULL),(11,_binary '','Paris','2020-01-01 17:06:23','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:23','a5777c26-bba8-4f2b-a2f2-05308f1ec53f',NULL),(12,_binary '','Paris','2020-01-01 17:06:25','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:25','4df2608b-038a-4ee8-b9d7-c79133b7610b',NULL),(13,_binary '','Paris','2020-01-01 17:06:25','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:25','baef27bd-dd62-4eb0-98e7-7a03204aaf0c',NULL),(14,_binary '','Paris','2020-01-01 17:06:26','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:26','53c2a268-eb62-4b3e-a352-3f0c89a5cf58',NULL),(15,_binary '','Paris','2020-01-01 17:06:26','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:26','eaee524d-0439-4410-adfa-670df42dcc96',NULL),(16,_binary '','Paris','2020-01-01 17:06:27','Euro','75','my descezaeaze',20.00,5.99,25.00,'eazoelaopzle aze ae a','thats firstazeaeae fheo','2020-01-01 17:06:27','bacbc350-effd-4db7-a984-e7b71b41309a',NULL);
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
INSERT INTO `announces_animals_type` VALUES (1,1),(1,2),(5,2),(5,1);
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
INSERT INTO `announces_equipments` VALUES (1,1),(1,2);
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
INSERT INTO `announces_services` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `announces_services` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'t3 naxx de fdp 60'),(2,'sulfuras');
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'rush H24'),(2,'gg wp le LFR');
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
INSERT INTO `user_roles` VALUES (1,'ROLE_USER');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@admin.fr','$2a$10$DVxzsMhChfwaAEEw8iya1.hVBiS6OMoOGzAqF6SAJ8cyRUQJX0krC','admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_announces`
--

DROP TABLE IF EXISTS `users_announces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_announces` (
  `user_id` bigint(20) NOT NULL,
  `announces_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_29wxj8eyuidyrslrhn7xgv3ya` (`announces_id`),
  KEY `FKiqo3jervb2c7vpqkd7jhse3kd` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_announces`
--

LOCK TABLES `users_announces` WRITE;
/*!40000 ALTER TABLE `users_announces` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_announces` ENABLE KEYS */;
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

-- Dump completed on 2020-01-04 14:50:10
