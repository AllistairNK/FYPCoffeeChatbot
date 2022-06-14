-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: coffeechatbot
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-24 17:33:35.481259'),(2,'auth','0001_initial','2022-04-24 17:33:36.658836'),(3,'admin','0001_initial','2022-04-24 17:33:40.754599'),(4,'admin','0002_logentry_remove_auto_add','2022-04-24 17:33:42.609625'),(5,'admin','0003_logentry_add_action_flag_choices','2022-04-24 17:33:42.636670'),(6,'contenttypes','0002_remove_content_type_name','2022-04-24 17:33:43.179986'),(7,'auth','0002_alter_permission_name_max_length','2022-04-24 17:33:43.254631'),(8,'auth','0003_alter_user_email_max_length','2022-04-24 17:33:43.371422'),(9,'auth','0004_alter_user_username_opts','2022-04-24 17:33:43.405601'),(10,'auth','0005_alter_user_last_login_null','2022-04-24 17:33:44.047876'),(11,'auth','0006_require_contenttypes_0002','2022-04-24 17:33:44.067671'),(12,'auth','0007_alter_validators_add_error_messages','2022-04-24 17:33:44.100852'),(13,'auth','0008_alter_user_username_max_length','2022-04-24 17:33:44.176703'),(14,'auth','0009_alter_user_last_name_max_length','2022-04-24 17:33:44.221204'),(15,'auth','0010_alter_group_name_max_length','2022-04-24 17:33:44.268178'),(16,'auth','0011_update_proxy_permissions','2022-04-24 17:33:44.336985'),(17,'sessions','0001_initial','2022-04-24 17:33:44.509829');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optingredient`
--

DROP TABLE IF EXISTS `optingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optingredient` (
  `OptID` int(11) NOT NULL AUTO_INCREMENT,
  `OptName` varchar(100) DEFAULT NULL,
  `OptPrice` decimal(10,0) DEFAULT NULL,
  `DelInd` int(11) DEFAULT 0,
  PRIMARY KEY (`OptID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optingredient`
--

LOCK TABLES `optingredient` WRITE;
/*!40000 ALTER TABLE `optingredient` DISABLE KEYS */;
INSERT INTO `optingredient` VALUES (1,'Chocolate',10,0),(2,'Milk Creme',6,0);
/*!40000 ALTER TABLE `optingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoptional`
--

DROP TABLE IF EXISTS `productoptional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productoptional` (
  `ProdOptID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) DEFAULT NULL,
  `OptID` int(11) DEFAULT NULL,
  `Delind` int(11) DEFAULT 0,
  PRIMARY KEY (`ProdOptID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoptional`
--

LOCK TABLES `productoptional` WRITE;
/*!40000 ALTER TABLE `productoptional` DISABLE KEYS */;
INSERT INTO `productoptional` VALUES (1,10,1,0),(2,10,2,0),(3,11,1,0),(4,11,2,0),(5,6,1,0);
/*!40000 ALTER TABLE `productoptional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProdName` varchar(100) DEFAULT NULL,
  `ProdDesc` varchar(150) DEFAULT NULL,
  `ProdPrice` decimal(10,2) DEFAULT NULL,
  `ProdQuantity` int(11) DEFAULT NULL,
  `ProdType` varchar(100) DEFAULT NULL,
  `DelInd` int(11) DEFAULT 0,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Iced Shakerato','Arabica dark Roast 100%',5.90,10,'Handcrafted Coffee',0),(2,'Americano','Espresso and Water',6.90,9,'Handcrafted Coffee',0),(3,'Cafe Latte','espresso, milk, foam',7.90,95,'Handcrafted Coffee',0),(4,'Machiato',NULL,8.90,1,'Handcrafted Coffee',0),(5,'Dolce Latte',NULL,8.90,10,'Handcrafted Coffee',0),(6,'Coffee Mocha','coffee with chocolate taste',9.90,99,'Handcrafted Coffee',0),(7,'Espresso',NULL,4.90,10,'Handcrafted Coffee',0),(8,'Vietnamese Coffee',NULL,8.90,1,'Handcrafted Coffee',0),(9,'Caramel Creme','Caramel is blended with milk',11.90,98,'Frappe',0),(10,'Choc Chip Creme','Chocolate Chip is blended with milk',11.90,7,'Frappe',0),(11,'Mocha Creme','Chocolate espresso is blended with milk',12.90,100,'Frappe',0),(12,'Blue Pea Latte',NULL,9.90,10,'Signature Coffee Club',0),(13,'Biscoff Creme',NULL,12.90,10,'Signature Coffee Club',0),(14,'Houjicha Frappe','Roasted Green Tea Frappe with whipped cream',12.90,10,'Signature Coffee Club',0),(15,'Milk Creme',NULL,5.90,5,'Non Coffee',0),(16,'Icey Lemonade',NULL,6.90,8,'Non Coffee',0),(17,'Jasmine Green Tea',NULL,6.90,10,'Non Coffee',0),(18,'Peach Tea',NULL,6.90,10,'Non Coffee',0),(19,'Blue Lagoon',NULL,7.90,10,'Non Coffee',0),(20,'Chocolate',NULL,9.90,10,'Non Coffee',0),(21,'Signature Steak Beef Pie','Beef chunky meat, onion, herbs, pepper & salt',7.50,10,'Pie and Pastry',0),(22,'Chicken Mushroom Quiches','Chicken meat, mushroom cheese, onion, fresh cream, egg, milk',6.50,9,'Pie and Pastry',0),(23,'Smoked Chicken Pie',NULL,6.50,6,'Pie and Pastry',0),(24,'Smoke Beef Pie',NULL,6.90,1,'Pie and Pastry',0),(25,'Burnt Cheese Cake',NULL,5.90,8,'Pie and Pastry',0),(26,'Peanut Butter Jam Cupcake','Peanut butter, Butter, Caramel',4.50,6,'Desert Sweet Tooth',0),(27,'Red Velvet Cupcake','Mild choc flavour with a deep red to burgundy color',4.50,0,'Desert Sweet Tooth',0),(28,'Gula Apong Cupcake','Gula Apong, Pandan flavour',4.50,0,'Desert Sweet Tooth',0),(29,'Doughnut Jumbo',NULL,3.50,5,'Desert Sweet Tooth',0),(30,'Mini Cake Set','Mini cake set from tecauldron',7.50,1,'Promotion',0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinput`
--

DROP TABLE IF EXISTS `userinput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinput` (
  `UserInputID` int(11) NOT NULL AUTO_INCREMENT,
  `TextInput` varchar(100) DEFAULT NULL,
  `DateInput` datetime DEFAULT current_timestamp(),
  `DelInd` int(11) DEFAULT 0,
  PRIMARY KEY (`UserInputID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinput`
--

LOCK TABLES `userinput` WRITE;
/*!40000 ALTER TABLE `userinput` DISABLE KEYS */;
INSERT INTO `userinput` VALUES (1,'what are the products?','2022-04-29 09:13:56',0),(2,'The products are categorised in Handcrafted Coffee, Frappe, Signature Coffee Club, Non Coffee, Pie a','2022-04-29 09:13:56',0),(3,'what is in Frappe?','2022-04-29 09:14:07',0),(4,'The products in Frappe are Caramel Creme, Choc Chip Creme and Mocha Creme.','2022-04-29 09:14:07',0),(5,'what is Caramel Creme?','2022-04-29 09:14:23',0),(6,'It is caramel blended with milk costing RM11.90','2022-04-29 09:14:23',0),(7,'what are the products?','2022-05-08 14:32:36',0),(8,'The products are categorised in Handcrafted Coffee, Frappe, Signature Coffee Club, Non Coffee, Pie a','2022-05-08 14:32:36',0),(9,'what is in Pie and Pastry?','2022-05-08 14:32:47',0),(10,'The products in Pie and Pastry are Signiture Steak Beef Pie, Chicken Mushroom Quiches, Smoked Chicke','2022-05-08 14:32:47',0),(11,'what us Burnt Cheese Cake?','2022-05-08 14:33:00',0),(12,'It is a pastry costing RM5.90','2022-05-08 14:33:00',0),(13,'hi','2022-05-24 22:18:49',0),(14,'I am sorry, but I do not understand.','2022-05-24 22:18:49',0),(15,'what are the products','2022-05-24 22:18:54',0),(16,'The products are categorised in Handcrafted Coffee, Frappe, Signature Coffee Club, Non Coffee, Pie a','2022-05-24 22:18:54',0),(17,'wjat is frappe','2022-05-24 22:18:59',0),(18,'It is roasted green tea frappe with whipped cream costing RM12.90','2022-05-24 22:18:59',0),(19,'what is in frappe','2022-05-24 22:19:08',0),(20,'The products in Frappe are Caramel Creme, Choc Chip Creme and Mocha Creme.','2022-05-24 22:19:08',0),(21,'what are the products','2022-05-25 00:16:13',0),(22,'The products are categorised in Handcrafted Coffee, Frappe, Signature Coffee Club, Non Coffee, Pie a','2022-05-25 00:16:13',0),(23,'what is in handcrafted coffee?','2022-05-25 00:16:20',0),(24,'It is a beverage costing RM8.90','2022-05-25 00:16:20',0),(25,'what is in frappe?','2022-05-25 00:16:30',0),(26,'The products in Frappe are Caramel Creme, Choc Chip Creme and Mocha Creme.','2022-05-25 00:16:30',0);
/*!40000 ALTER TABLE `userinput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'coffeechatbot'
--
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(test nvarchar (300))
BEGIN
INSERT INTO `coffeechatbot`.`userinput` (`TextInput`) VALUES (test);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setUserInput` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setUserInput`(userInput nvarchar (300))
BEGIN
INSERT INTO `coffeechatbot`.`userinput` (`TextInput`) VALUES (userInput);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-04 14:52:25
