-- MySQL dump 10.13  Distrib 5.1.58, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: smsdb
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personel_information_id` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `state` text,
  `country` text,
  `narration` text,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controller_actions`
--

DROP TABLE IF EXISTS `controller_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controller_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `boolean` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_browser_page` tinyint(1) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controller_actions`
--

LOCK TABLES `controller_actions` WRITE;
/*!40000 ALTER TABLE `controller_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `controller_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_settings`
--

DROP TABLE IF EXISTS `default_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `default_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_settings`
--

LOCK TABLES `default_settings` WRITE;
/*!40000 ALTER TABLE `default_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_institution_groups`
--

DROP TABLE IF EXISTS `education_institution_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_institution_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_institution_groups`
--

LOCK TABLES `education_institution_groups` WRITE;
/*!40000 ALTER TABLE `education_institution_groups` DISABLE KEYS */;
INSERT INTO `education_institution_groups` VALUES (6,'Inevit solutions','Active',NULL,NULL,'2011-09-14 17:41:50','2011-09-19 17:38:58'),(7,'Guru kula','Active',NULL,NULL,'2011-09-15 03:20:16','2011-09-15 03:20:16');
/*!40000 ALTER TABLE `education_institution_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_institutions`
--

DROP TABLE IF EXISTS `education_institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `education_institution_group_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_institutions`
--

LOCK TABLES `education_institutions` WRITE;
/*!40000 ALTER TABLE `education_institutions` DISABLE KEYS */;
INSERT INTO `education_institutions` VALUES (2,'inevit1','Active',6,NULL,NULL,'2011-09-21 18:43:31','2011-09-21 18:43:31');
/*!40000 ALTER TABLE `education_institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `education_institution_id` int(11) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_container_menu_links`
--

DROP TABLE IF EXISTS `menu_container_menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_container_menu_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_container_id` int(11) DEFAULT NULL,
  `menu_link_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_container_menu_links`
--

LOCK TABLES `menu_container_menu_links` WRITE;
/*!40000 ALTER TABLE `menu_container_menu_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_container_menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_containers`
--

DROP TABLE IF EXISTS `menu_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `container_position` int(11) DEFAULT NULL,
  `menu_group_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_containers`
--

LOCK TABLES `menu_containers` WRITE;
/*!40000 ALTER TABLE `menu_containers` DISABLE KEYS */;
INSERT INTO `menu_containers` VALUES (1,'Institution','Institution Container',1,7,NULL,'2011-12-07 18:59:08','2011-12-07 18:59:08'),(2,'User','This Container is for user',2,5,NULL,'2011-12-08 17:00:02','2011-12-08 17:00:02'),(3,'Menu','This Container is for menu',3,6,NULL,'2011-12-08 17:00:54','2011-12-08 17:00:54');
/*!40000 ALTER TABLE `menu_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_groups`
--

DROP TABLE IF EXISTS `menu_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_groups`
--

LOCK TABLES `menu_groups` WRITE;
/*!40000 ALTER TABLE `menu_groups` DISABLE KEYS */;
INSERT INTO `menu_groups` VALUES (1,'Guest','Menu Group For Guest',NULL,NULL,'2011-12-06 17:55:09','2011-12-06 17:55:28'),(2,'Admin','Menu Group For Admin',NULL,NULL,'2011-12-06 17:56:29','2011-12-06 17:56:29'),(3,'Front office','Menu Group For Front office',NULL,NULL,'2011-12-06 17:56:53','2011-12-06 17:56:53'),(4,'Teacher','Menu Group For Teacher',NULL,NULL,'2011-12-06 17:57:18','2011-12-06 17:57:18'),(5,'Principle','Menu Group For Principle',NULL,NULL,'2011-12-06 17:57:35','2011-12-06 17:57:35'),(6,'Librarien','Menu Group For Librarien',NULL,NULL,'2011-12-06 17:57:51','2011-12-06 17:58:04'),(7,'Accountant','Menu Group For Accountant',NULL,NULL,'2011-12-06 17:58:26','2011-12-06 17:58:26'),(8,'Student','Menu Group For Student',NULL,NULL,'2011-12-06 17:58:44','2011-12-06 17:58:44');
/*!40000 ALTER TABLE `menu_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `module_context_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_links`
--

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
INSERT INTO `menu_links` VALUES (1,'Country','this is for selecting country','/user/country','index','user_country_index_path','GET','Active',7,NULL,'2011-12-07 03:33:16','2011-12-07 03:33:16'),(2,'Role','this is Role','/user/roles','index','user_roles_path','GET','Active',5,NULL,'2011-12-07 15:26:55','2011-12-07 15:54:08');
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_contexts`
--

DROP TABLE IF EXISTS `module_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_contexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `approved_by` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_contexts`
--

LOCK TABLES `module_contexts` WRITE;
/*!40000 ALTER TABLE `module_contexts` DISABLE KEYS */;
INSERT INTO `module_contexts` VALUES (1,'Front office','This Module is Front Office','Active',NULL,NULL,'2011-12-07 02:17:19','2011-12-07 02:30:41'),(2,'Reports','This Module is Reports Related Links','Active',NULL,NULL,'2011-12-07 02:22:52','2011-12-07 02:22:52'),(3,'Hr','This Module is Humen Resource','Active',NULL,NULL,'2011-12-07 02:53:57','2011-12-07 02:53:57'),(4,'Accounts','This Module is Accounting','Active',NULL,NULL,'2011-12-07 02:54:26','2011-12-07 02:54:26'),(5,'User','This Module for Users','Active',NULL,NULL,'2011-12-07 02:55:24','2011-12-07 02:55:24'),(6,'Menu','This Module for Menu related','Active',NULL,NULL,'2011-12-07 02:55:57','2011-12-07 02:55:57'),(7,'Location','This module for Location','Active',NULL,NULL,'2011-12-07 03:32:09','2011-12-07 03:32:09');
/*!40000 ALTER TABLE `module_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personel_informations`
--

DROP TABLE IF EXISTS `personel_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personel_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel_informations`
--

LOCK TABLES `personel_informations` WRITE;
/*!40000 ALTER TABLE `personel_informations` DISABLE KEYS */;
/*!40000 ALTER TABLE `personel_informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (3,'Guest',NULL,1,'Guest',6,'2011-10-01 04:36:25',NULL,NULL,NULL,'2011-10-01 04:36:25','2011-12-04 10:59:42','home','userpage'),(4,'Admin',NULL,1,'admin role',1,'2011-10-09 13:57:11',NULL,NULL,NULL,'2011-10-09 13:57:11','2011-10-09 14:07:40','home','userpage'),(5,'Front office',NULL,1,'Front Office',1,'2011-10-18 03:28:14',NULL,NULL,NULL,'2011-10-18 03:28:14','2011-10-18 03:28:14','home','userpage'),(6,'Teacher',NULL,1,'Teacher role assigned',1,'2011-11-07 17:20:25',NULL,NULL,NULL,'2011-11-07 17:20:25','2011-11-07 17:20:25','home','userpage'),(7,'Principle',NULL,1,'Principle Role has done with this',1,'2011-11-07 17:20:59',NULL,NULL,NULL,'2011-11-07 17:20:59','2011-11-07 17:20:59','home','userpage'),(8,'Librarien',NULL,1,'Librarian',1,'2011-11-07 17:21:20',NULL,NULL,NULL,'2011-11-07 17:21:20','2011-11-07 17:21:20','home','userpage'),(9,'Accountant',NULL,1,'accountant',1,'2011-11-07 17:23:35',NULL,NULL,NULL,'2011-11-07 17:23:35','2011-11-07 17:23:35','home','userpage'),(10,'Student',NULL,1,'student',1,'2011-11-08 01:27:47',NULL,NULL,NULL,'2011-11-08 01:27:47','2011-11-08 01:27:47','home','userpage');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110725160523'),('20110727172926'),('20110728165723'),('20110803182014'),('20110805163504'),('20110805163552'),('20110807150305'),('20110812013924'),('20110813045047'),('20110821153240'),('20110826025403'),('20110829175721'),('20110905175329'),('20110911184246'),('20110912074425'),('20110912091345'),('20110913030708'),('20111002191117'),('20111016100559'),('20111129163021'),('20111201154302');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'manuu_mr@yahoo.com','$2a$10$Qk3/ysgPVyaie.y5wRwXkeY5HUYH/4PcI/uHVhCYPjpeTxsvw/oAa',NULL,NULL,NULL,104,'2011-12-20 17:50:05','2011-12-17 12:28:15','127.0.0.1','127.0.0.1','2011-10-07 16:40:54','2011-12-20 17:50:05',NULL,NULL),(2,'manuu.mr@gmail.com','$2a$10$CIQPYfXjL9rQm0QwtolUiOggGvxvZScTjHRMmXOzIE2LJNvNw1.Gm',NULL,NULL,NULL,49,'2011-12-21 15:14:37','2011-12-07 17:56:49','127.0.0.1','127.0.0.1','2011-10-17 16:52:12','2011-12-21 15:14:37',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1,4,'1',NULL,NULL,'2011-10-16 10:12:58',NULL,NULL,NULL,'2011-10-16 10:12:58','2011-10-16 10:12:58'),(2,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-22 23:03:48
