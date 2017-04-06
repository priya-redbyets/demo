-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: sssssd
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `academic_year`
--

DROP TABLE IF EXISTS `academic_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `academic_yearcode` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `academic_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_year`
--

LOCK TABLES `academic_year` WRITE;
/*!40000 ALTER TABLE `academic_year` DISABLE KEYS */;
INSERT INTO `academic_year` VALUES (8,NULL,NULL,'AY 15-16','2015-01-01','2016-01-01','2015-16'),(9,NULL,NULL,'AY 16-17','2016-01-01','2017-01-01','2016-17'),(13,NULL,NULL,'AY 14-15','2014-01-01','2015-01-20','2014-2015'),(14,NULL,NULL,'new year','2017-02-01','2017-01-12','new year'),(15,NULL,NULL,'300','2017-02-01','2017-02-02','10th class'),(16,NULL,NULL,'r15','2017-02-17','2017-05-19','class 9'),(17,NULL,NULL,'444','2017-02-03','2017-02-17','present year'),(19,NULL,NULL,'xvxfd','2017-02-08','2015-10-07','dsgdfg'),(20,NULL,NULL,'1ST','2017-02-02','2017-02-25','1ST'),(21,NULL,NULL,'123','2017-02-09','2019-01-01','asdfgh');
/*!40000 ALTER TABLE `academic_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicyear_class_relation`
--

DROP TABLE IF EXISTS `academicyear_class_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academicyear_class_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_academicyear_class_relation_1_idx` (`academic_year`),
  KEY `fk_academicyear_class_relation_2_idx` (`class_id`),
  CONSTRAINT `fk_academicyear_class_relation_1` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_academicyear_class_relation_2` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicyear_class_relation`
--

LOCK TABLES `academicyear_class_relation` WRITE;
/*!40000 ALTER TABLE `academicyear_class_relation` DISABLE KEYS */;
INSERT INTO `academicyear_class_relation` VALUES (38,NULL,8),(39,NULL,8),(40,NULL,8),(41,NULL,8),(42,NULL,13),(43,NULL,14),(44,NULL,14),(45,NULL,8),(46,NULL,13),(47,NULL,13),(48,NULL,16),(49,NULL,17);
/*!40000 ALTER TABLE `academicyear_class_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academicyear_class_relation_class_id`
--

DROP TABLE IF EXISTS `academicyear_class_relation_class_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academicyear_class_relation_class_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `academicyearclassrelation_id` int(11) DEFAULT NULL,
  `classdetails_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academicyear_class_relation_class_id`
--

LOCK TABLES `academicyear_class_relation_class_id` WRITE;
/*!40000 ALTER TABLE `academicyear_class_relation_class_id` DISABLE KEYS */;
INSERT INTO `academicyear_class_relation_class_id` VALUES (42,38,4),(48,38,13),(49,38,14),(50,39,5),(51,39,6),(52,40,11),(53,41,10),(54,42,10),(55,42,11),(56,42,4),(57,42,5),(58,42,6),(59,43,4),(60,43,5),(61,44,4),(62,44,5),(63,44,6),(64,45,12),(65,46,12),(66,47,14),(67,48,4),(68,48,5),(69,49,4);
/*!40000 ALTER TABLE `academicyear_class_relation_class_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
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
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add class details',7,'add_classdetails'),(20,'Can change class details',7,'change_classdetails'),(21,'Can delete class details',7,'delete_classdetails'),(22,'Can add school details',8,'add_schooldetails'),(23,'Can change school details',8,'change_schooldetails'),(24,'Can delete school details',8,'delete_schooldetails'),(25,'Can add staff details',9,'add_staffdetails'),(26,'Can change staff details',9,'change_staffdetails'),(27,'Can delete staff details',9,'delete_staffdetails'),(28,'Can add student details',10,'add_studentdetails'),(29,'Can change student details',10,'change_studentdetails'),(30,'Can delete student details',10,'delete_studentdetails'),(31,'Can add subject',11,'add_subject'),(32,'Can change subject',11,'change_subject'),(33,'Can delete subject',11,'delete_subject'),(34,'Can add user details',12,'add_userdetails'),(35,'Can change user details',12,'change_userdetails'),(36,'Can delete user details',12,'delete_userdetails'),(37,'Can add academic details',13,'add_academicdetails'),(38,'Can change academic details',13,'change_academicdetails'),(39,'Can delete academic details',13,'delete_academicdetails'),(40,'Can add academic year',14,'add_academicyear'),(41,'Can change academic year',14,'change_academicyear'),(42,'Can delete academic year',14,'delete_academicyear'),(43,'Can add class section relation',15,'add_classsectionrelation'),(44,'Can change class section relation',15,'change_classsectionrelation'),(45,'Can delete class section relation',15,'delete_classsectionrelation'),(46,'Can add class subject relation',16,'add_classsubjectrelation'),(47,'Can change class subject relation',16,'change_classsubjectrelation'),(48,'Can delete class subject relation',16,'delete_classsubjectrelation'),(49,'Can add department details',17,'add_departmentdetails'),(50,'Can change department details',17,'change_departmentdetails'),(51,'Can delete department details',17,'delete_departmentdetails'),(52,'Can add parents details',18,'add_parentsdetails'),(53,'Can change parents details',18,'change_parentsdetails'),(54,'Can delete parents details',18,'delete_parentsdetails'),(55,'Can add sections',19,'add_sections'),(56,'Can change sections',19,'change_sections'),(57,'Can delete sections',19,'delete_sections'),(58,'Can add staff document',20,'add_staffdocument'),(59,'Can change staff document',20,'change_staffdocument'),(60,'Can delete staff document',20,'delete_staffdocument'),(61,'Can add student class subject relation',21,'add_studentclasssubjectrelation'),(62,'Can change student class subject relation',21,'change_studentclasssubjectrelation'),(63,'Can delete student class subject relation',21,'delete_studentclasssubjectrelation'),(64,'Can add source',22,'add_source'),(65,'Can change source',22,'change_source'),(66,'Can delete source',22,'delete_source'),(67,'Can add thumbnail',23,'add_thumbnail'),(68,'Can change thumbnail',23,'change_thumbnail'),(69,'Can delete thumbnail',23,'delete_thumbnail'),(70,'Can add thumbnail dimensions',24,'add_thumbnaildimensions'),(71,'Can change thumbnail dimensions',24,'change_thumbnaildimensions'),(72,'Can delete thumbnail dimensions',24,'delete_thumbnaildimensions'),(73,'Can add academic details',25,'add_academicdetails'),(74,'Can change academic details',25,'change_academicdetails'),(75,'Can delete academic details',25,'delete_academicdetails'),(76,'Can add academicyear class relation',26,'add_academicyearclassrelation'),(77,'Can change academicyear class relation',26,'change_academicyearclassrelation'),(78,'Can delete academicyear class relation',26,'delete_academicyearclassrelation'),(79,'Can add class details',27,'add_classdetails'),(80,'Can change class details',27,'change_classdetails'),(81,'Can delete class details',27,'delete_classdetails'),(82,'Can add school details',28,'add_schooldetails'),(83,'Can change school details',28,'change_schooldetails'),(84,'Can delete school details',28,'delete_schooldetails');
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
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$2RLNrpLZR89m$iRHjSt9D4p/WN7NXjw+oHwkHeSo/V33kWRgeiKkWWOs=','2017-02-24 10:29:48.076586',1,'pavan','','','',1,1,'2017-01-11 07:56:52.404440'),(2,'pbkdf2_sha256$30000$q9MPRaVyigVD$Zn+sL81Lje+y0yWVpg2iF6A/2Q8TnyH6qb/zvEhS8sE=','2017-02-24 10:29:32.267007',1,'priya','','','',1,1,'2017-02-24 10:29:07.267506');
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
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
-- Table structure for table `class_details`
--

DROP TABLE IF EXISTS `class_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `school_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_code` varchar(45) DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_academic_year_idx` (`academic_year`),
  KEY `class_details_ibfk_1_idx` (`school_id`),
  CONSTRAINT `class_details_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_academic_year` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_details`
--

LOCK TABLES `class_details` WRITE;
/*!40000 ALTER TABLE `class_details` DISABLE KEYS */;
INSERT INTO `class_details` VALUES (4,'Class IV','0',1,'2017-02-06 07:35:13','2017-02-06 07:35:13','123',9),(5,'I','0',1,'2017-02-06 08:42:10','2017-02-06 08:42:10','001',13),(6,'ll','0',1,'2017-02-06 08:42:29','2017-02-06 08:42:29','0021',9),(10,'SSC','0',1,'2017-02-06 12:55:41','2017-02-06 12:55:41','A-01',8),(11,'Grade-1','0',1,'2017-02-06 17:10:39','2017-02-06 17:10:39','002',9),(12,'Class V','0',1,'2017-02-07 04:53:49','2017-02-07 04:53:49','005',13),(13,'Class VI','0',1,'2017-02-07 05:24:37','2017-02-07 05:24:37','5',8),(14,'AAA','0',1,'2017-02-09 11:58:15','2017-02-09 11:58:15','AA1',8);
/*!40000 ALTER TABLE `class_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_section_mapping`
--

DROP TABLE IF EXISTS `class_section_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_section_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` int(11) DEFAULT NULL,
  `section_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id_idx` (`class_name`),
  KEY `section_id_idx` (`section_name`),
  CONSTRAINT `class_id` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `section_id` FOREIGN KEY (`section_name`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_section_mapping`
--

LOCK TABLES `class_section_mapping` WRITE;
/*!40000 ALTER TABLE `class_section_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_section_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_section_mapping_section_name`
--

DROP TABLE IF EXISTS `class_section_mapping_section_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_section_mapping_section_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classsectionmapping_id` int(11) DEFAULT NULL,
  `sections_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_section_mapping_section_name`
--

LOCK TABLES `class_section_mapping_section_name` WRITE;
/*!40000 ALTER TABLE `class_section_mapping_section_name` DISABLE KEYS */;
INSERT INTO `class_section_mapping_section_name` VALUES (1,16,3),(2,16,5),(3,17,2),(4,17,3),(5,17,5),(6,18,2),(7,19,3),(8,19,5);
/*!40000 ALTER TABLE `class_section_mapping_section_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_subject_mapping`
--

DROP TABLE IF EXISTS `class_subject_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_subject_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` int(11) DEFAULT NULL,
  `subject_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_class_id_idx` (`class_name`),
  KEY `fk_subject_id_idx` (`subject_name`),
  CONSTRAINT `fk_class_subject_mapping_1` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_subject_mapping_2` FOREIGN KEY (`subject_name`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_subject_mapping`
--

LOCK TABLES `class_subject_mapping` WRITE;
/*!40000 ALTER TABLE `class_subject_mapping` DISABLE KEYS */;
INSERT INTO `class_subject_mapping` VALUES (22,6,NULL),(23,6,NULL),(24,6,NULL),(25,6,NULL),(26,4,NULL),(27,4,NULL),(28,4,NULL),(29,4,NULL),(30,5,NULL);
/*!40000 ALTER TABLE `class_subject_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_subject_mapping_subject_name`
--

DROP TABLE IF EXISTS `class_subject_mapping_subject_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_subject_mapping_subject_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classsubjectmapping_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_subject_mapping_subject_name`
--

LOCK TABLES `class_subject_mapping_subject_name` WRITE;
/*!40000 ALTER TABLE `class_subject_mapping_subject_name` DISABLE KEYS */;
INSERT INTO `class_subject_mapping_subject_name` VALUES (1,25,1),(2,26,1),(3,26,2),(4,26,3),(5,27,1),(6,28,2),(7,29,1),(8,30,1);
/*!40000 ALTER TABLE `class_subject_mapping_subject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_details`
--

DROP TABLE IF EXISTS `department_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depatment_name` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_details`
--

LOCK TABLES `department_details` WRITE;
/*!40000 ALTER TABLE `department_details` DISABLE KEYS */;
INSERT INTO `department_details` VALUES (1,'Computer Sciene',NULL,NULL),(2,'BioTechnoloy',NULL,NULL),(3,'Physics',NULL,NULL),(4,'Botony',NULL,NULL);
/*!40000 ALTER TABLE `department_details` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(22,'easy_thumbnails','source'),(23,'easy_thumbnails','thumbnail'),(24,'easy_thumbnails','thumbnaildimensions'),(25,'Mapping','academicdetails'),(26,'Mapping','academicyearclassrelation'),(27,'Mapping','classdetails'),(28,'Mapping','schooldetails'),(13,'Registration','academicdetails'),(14,'Registration','academicyear'),(7,'Registration','classdetails'),(15,'Registration','classsectionrelation'),(16,'Registration','classsubjectrelation'),(17,'Registration','departmentdetails'),(18,'Registration','parentsdetails'),(8,'Registration','schooldetails'),(19,'Registration','sections'),(9,'Registration','staffdetails'),(20,'Registration','staffdocument'),(21,'Registration','studentclasssubjectrelation'),(10,'Registration','studentdetails'),(11,'Registration','subject'),(12,'Registration','userdetails'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-01-11 07:52:50.759017'),(2,'auth','0001_initial','2017-01-11 07:53:01.948689'),(3,'admin','0001_initial','2017-01-11 07:53:04.251241'),(4,'admin','0002_logentry_remove_auto_add','2017-01-11 07:53:04.386247'),(5,'contenttypes','0002_remove_content_type_name','2017-01-11 07:53:06.283546'),(6,'auth','0002_alter_permission_name_max_length','2017-01-11 07:53:06.617758'),(7,'auth','0003_alter_user_email_max_length','2017-01-11 07:53:06.768727'),(8,'auth','0004_alter_user_username_opts','2017-01-11 07:53:06.832014'),(9,'auth','0005_alter_user_last_login_null','2017-01-11 07:53:07.528989'),(10,'auth','0006_require_contenttypes_0002','2017-01-11 07:53:07.613891'),(11,'auth','0007_alter_validators_add_error_messages','2017-01-11 07:53:07.682114'),(12,'auth','0008_alter_user_username_max_length','2017-01-11 07:53:08.083847'),(13,'sessions','0001_initial','2017-01-11 07:53:08.786909'),(14,'Registration','0001_initial','2017-01-24 04:13:36.330772'),(15,'Registration','0002_academicdetails_academicyear_classsectionrelation_classsubjectrelation_departmentdetails_parentsdeta','2017-02-01 11:58:01.709423'),(16,'Mapping','0001_initial','2017-02-21 06:31:22.039350'),(17,'easy_thumbnails','0001_initial','2017-02-21 06:31:27.014272'),(18,'easy_thumbnails','0002_thumbnaildimensions','2017-02-21 06:31:28.420507');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0hh3yb3472ywmj91mtqzmhph1h8qqtvf','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-03 11:23:50.131993'),('12xoi23crjnwh3pt55ugfqpclfmcexmu','MzRjODA0ZDlmZjE2ZmI0OGNiODMzMTBmMDI4Y2FiMzhjYTQ5NzFmZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjkifQ==','2017-02-21 11:59:10.175541'),('1hjpkv0ui06hir4gjykhk34r04azxaeg','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-17 06:03:06.879528'),('239fulred0pfdxdnr6kz4dsylfn6m7bt','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-20 07:37:13.947989'),('2mdhyzzo4xvdgumfaem04zlt0ghy8vp3','ODNmYzEyNDY5OWJiMjUzNWY1YjljMjIyZDlmYzQ3MzQ3NjM0NDM4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjQifQ==','2017-02-14 10:45:26.939549'),('3a7kk90a244vsp2sg6jldvc3ow7flzbj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-02 13:11:12.301942'),('3vhvruaitdapducyyfhjbflzotejym1x','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-09 08:04:50.240195'),('42st8lzvypzurn5fxbk5yrug6f68653s','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-16 11:03:02.680757'),('45q6uq9wdi2xmyvlgxj5aax42w1iuh7l','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-02 07:24:39.990429'),('5qpk241rwcaxrjbzjig7dql0oxkyprep','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 11:50:02.051405'),('6hw8atxvuu6p18a7f6432sgu7dlu93lp','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-20 11:16:49.459155'),('6jia88103w2ebqc48otmyh7gemf5ljuo','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-01-25 13:35:37.022593'),('6kptuhxw2ubsgjn2xpeh91mwduhu92n6','NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-16 13:03:40.111119'),('6m83uzrv9n92o1o5t8fcyqktsdqh7kxd','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-10 10:29:48.118015'),('726pt8adhl4ob2vfg8p0c6pggque5lbx','NzgzNjUwZGM5ZjBkNTdmMTkwYjdkYzhjOGU5ZGJjMTJkYmFkN2FhMDp7ImNsYXNzX2lkIjoiMTEiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsInN0dWRlbnRJZDEiOiI5In0=','2017-02-24 05:12:36.662264'),('7m38ri0tpcsk6zwx31h5flmwp1mu80va','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-16 06:03:38.408621'),('8mtjcrkiegnru263eo1smroydh8j5vpr','Yzk2ZGRlYjgyMTZjOTcwZWE2ZWFmNDg0MjIyMTA0OTI4MDRhYWViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEifQ==','2017-02-13 06:31:10.258419'),('9xoytpx85k317bihdjpi0gdcy6bj96cp','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-27 10:59:49.548843'),('a406jxf1t6wzk9op5diag10fzmrjtfv8','NTU0MWYzZjE2NWM1YjRkZGEyZTUxZmE5MzA0NTZjMjAzNWNlN2MxOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjEifQ==','2017-02-13 11:35:26.692157'),('amu9ah1aou8vamh0u98q2u22gmn268nu','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-16 11:34:29.431882'),('borxi5y5gls4hiuo0vfwovr1g1q86ltz','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-01 05:23:01.989778'),('ctbqt9a4hwqajwqb69kpzbg6v5p7hktv','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-01-31 12:26:29.469949'),('ctxexl35g4stwhj9w3ok4xobtp5xaaww','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-15 05:53:25.239724'),('d0d2qgh7lvxp6ygypnpgpqkve4km2ohq','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-20 12:00:23.692549'),('dmpztudzup6llfstw1694basqfrjfzn5','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-17 12:16:02.567406'),('do3bpaj4m70s7lt1fzvqknh3duk2m2uv','OGQwNWQ0OTYxNjBlZThjMDAzMTc5ZDRiYTNkMjNmNTI5YmFlNWFiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjkifQ==','2017-02-23 11:10:20.402442'),('e8t31rkyf6hljxhwre47nv8auc9qjexm','YzU1Yjk0Zjg3ZjVhNjdhZTY0NjNhNWMzMTNmOWYwMGE0MzU5NzM1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJzdHVkZW50SWQgIjoiNiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzdHVkZW50SWQxIjoiNiJ9','2017-02-12 12:01:18.385478'),('epcqvwfymqcd4lfiujths43p9y6h8fkg','NmQzZTEwOTI2Y2QyM2Y0Yzg4N2EwMGRjNDExYzFkNWU5NWVjNGI2Zjp7ImNsYXNzX2lkIjoiMTAiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsInN0dWRlbnRJZDEiOiI3In0=','2017-02-21 09:49:21.480307'),('fbu8ucpg8zpjghh1ja9st0swac65hulu','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-20 07:44:21.092550'),('fv3567xsstc7mssk3g6srpt337brtiab','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-30 06:32:20.957511'),('gkn765tn1xcldt4hjr1ii0esl121ga5p','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 13:10:52.470222'),('gl4ykpbwbuenqgnpks9oto6fx4qccpin','ZDQ3NWM4ODMzYjk0ZmRmMzc5YzBkZjhmMzQwZDdlNGIwMGVjNDNiNjp7ImNsYXNzX2lkIjoiMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-20 13:00:18.665357'),('gq3pt9nya60ifk23exi7w4tq7onlk589','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 13:18:26.881865'),('gsrbv4jljjbwlfwumdmn6f5m0tocwvll','YWJiMzU0NTZhYTY5ZDkzNTRjNGZmMTBjY2U0MWM1YmVjZjIzMmQzZTp7ImNsYXNzX2lkIjoiMTQiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2017-02-23 11:58:33.877731'),('hsfdhljmuv4hsupsa9gtrtob3du8c7ct','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 09:34:27.087757'),('i6lq8uhy8ndggi0ko6qs5mmbj4t1wm5m','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-15 12:44:50.974388'),('k19fa34bfpbns1xx0oeicyoq6tcibw6z','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:40:31.095196'),('l1xhmeh9ou3bhnjkek1q9d683ekbv9ap','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 07:51:05.169260'),('l1zoua60e995brk4vyfi3jrinrevxv6r','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:53:49.611756'),('m5yhfvvzbw4bx8svhe0mnxwnlsvpmbcc','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 05:18:06.639025'),('m8xh4rgqpb9lywvhl5jfmixm5ildnpyr','MzNhNjA3MjM0NDJlMTk2NDE2NGVmYmFmMDRhY2FjNGQ4NDEwNzdkYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjcifQ==','2017-02-21 11:41:15.846541'),('nsd0ftgxbyy180me4hbqmhkgwver6mzj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-26 10:22:11.143025'),('o8wn6iuosfxccqg9ov6hqz9x49kr3ajj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-02 07:27:11.641456'),('oekg4rn9ebse4em8c6n3zs9opmdtw9oe','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 13:04:13.340386'),('orfi96gtg18hr15rkhqyoeyu4c7ej0o4','ZTVjYTc4MjRmMzkwYmI3YjNkMjhiOGE3Y2FiZDVhNTcwOTE0NzUzZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEwIn0=','2017-03-01 09:29:46.026028'),('p4gs28j7e4pwbrqz43o8sps55rzc32r6','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-21 09:52:41.057544'),('qfcziuza678gi3bjtktlxao3e6k9jlvy','NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-16 05:24:53.627791'),('qm0v68931f8opgihfd3c408xupwls77p','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-20 12:52:50.810735'),('qond1yz4h96v3eso4hpffqoy0g4hh8ci','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-17 11:23:46.758065'),('qz7usm6yqtnyel64eh4jzek3sp8hi78x','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-02-21 09:39:21.639044'),('t3kwb87ioa92almiglui1v5ulcy3z7xj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-17 10:43:24.701588'),('t59w3hpi9zle5sicj7ddrm5e9tu0m1q9','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:37:49.352015'),('texw13a3jecain0lttbaly77zougs91l','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 05:09:35.874453'),('ucgw3cixtgulokhxqhpumzs7indc0n7x','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-31 06:21:56.534382'),('ugopukjdu5medd2auxxtewy4u7l69y90','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-02 07:05:42.999644'),('uxco2of9n7eo0osigr5hb7k9l75n8u7a','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-13 13:46:06.855154'),('vlzwihn2snd8s1o4ypdb0grrho9extmb','OGQwNWQ0OTYxNjBlZThjMDAzMTc5ZDRiYTNkMjNmNTI5YmFlNWFiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjkifQ==','2017-02-21 11:48:44.764665'),('w5ai295ir65sbj0m24cd0og6ekvijn0y','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 09:45:03.804329'),('wdep0myktt03w1epct2hbx5y8jp6dcz3','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-02 07:07:02.761294'),('xy76kdt9nl08y6pu32fxhctor7oput8u','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 05:45:34.745503'),('yirk30wvexp7h44jmiy91er1629vmy3k','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-03 06:56:31.601067'),('zxuyxvg1nuwah4tr6nmnxvzee18h6n8a','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-03-03 10:32:57.979676');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(45) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,'A1','2017-02-15 10:53:37','2017-02-15 10:53:37');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents_details`
--

DROP TABLE IF EXISTS `parents_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parents_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `emai_id` varchar(250) NOT NULL,
  `contact_num` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_details`
--

LOCK TABLES `parents_details` WRITE;
/*!40000 ALTER TABLE `parents_details` DISABLE KEYS */;
INSERT INTO `parents_details` VALUES (1,'Sudhir','1965-02-10','False','   ','abx@xyz.com','9730112233','0','2017-02-03 13:31:51','2017-02-03 13:31:51','B','Nale'),(2,'Swapnil','1976-07-06','False',' ','sm@email.com','9898989898','0','2017-02-04 17:39:44','2017-02-04 17:39:44','S','M'),(3,'Yami','2017-02-01','True','','yami@gmail.com','8790654321','0','2017-02-06 04:43:25','2017-02-06 04:43:25','Gautam','Yami');
/*!40000 ALTER TABLE `parents_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'sysadmin','2017-02-03 13:42:18','2017-02-03 13:42:18'),(2,'Teacher','2017-02-03 13:42:18','2017-02-03 13:42:18'),(3,'Supervisor','2017-02-03 13:42:18','2017-02-03 13:42:18'),(4,'parent','2017-02-03 13:42:18','2017-02-03 13:42:18');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user_relation`
--

DROP TABLE IF EXISTS `role_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` int(11) DEFAULT NULL,
  `user_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_user_relation_1_idx` (`role_name`),
  KEY `fk_role_user_relation_2_idx` (`user_name`),
  CONSTRAINT `fk_role_user_relation_1` FOREIGN KEY (`role_name`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_role_user_relation_2` FOREIGN KEY (`user_name`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user_relation`
--

LOCK TABLES `role_user_relation` WRITE;
/*!40000 ALTER TABLE `role_user_relation` DISABLE KEYS */;
INSERT INTO `role_user_relation` VALUES (1,2,NULL),(2,2,NULL),(3,2,NULL),(4,2,NULL);
/*!40000 ALTER TABLE `role_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user_relation_user_name`
--

DROP TABLE IF EXISTS `role_user_relation_user_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user_relation_user_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleuserrelation_id` int(11) DEFAULT NULL,
  `staffdetails_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user_relation_user_name`
--

LOCK TABLES `role_user_relation_user_name` WRITE;
/*!40000 ALTER TABLE `role_user_relation_user_name` DISABLE KEYS */;
INSERT INTO `role_user_relation_user_name` VALUES (1,4,2),(2,4,3);
/*!40000 ALTER TABLE `role_user_relation_user_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(250) NOT NULL,
  `school_address` varchar(250) NOT NULL,
  `contact_num` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,'VDSK','India','9988776655','vdsk@gmail.com','doc/VDSK_1486127482.jpg','2017-02-03 13:11:22',NULL,'www.vdsk.com');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `academic_year` int(11) DEFAULT NULL,
  `section_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sections_1_idx` (`academic_year`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (2,'B','0','2017-02-06 09:28:31','2017-02-06 09:28:31',9,'0021'),(3,'A','0','2017-02-06 10:20:16','2017-02-06 10:20:16',9,'dd'),(5,'A','0','2017-02-06 12:58:03','2017-02-06 12:58:03',8,'A001'),(6,'C','0','2017-02-07 04:54:17','2017-02-07 04:54:17',13,'003'),(7,'A','0','2017-02-07 05:24:54','2017-02-07 05:24:54',8,'1');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skils_detail`
--

DROP TABLE IF EXISTS `skils_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skils_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skill` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skils_detail`
--

LOCK TABLES `skils_detail` WRITE;
/*!40000 ALTER TABLE `skils_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `skils_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_details`
--

DROP TABLE IF EXISTS `staff_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `contact_num` varchar(250) NOT NULL,
  `birth_date` date NOT NULL,
  `adress` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `school_id` int(11) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `identity_type` varchar(250) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_staff_details_1_idx` (`school_id`),
  KEY `fk_staff_details_2_idx` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_details`
--

LOCK TABLES `staff_details` WRITE;
/*!40000 ALTER TABLE `staff_details` DISABLE KEYS */;
INSERT INTO `staff_details` VALUES (1,'oza@asd.com','Kavita','D','Oza','9898989899','1979-02-01','Kolhapur','True',1,'0','2017-02-03 13:42:18','2017-02-03 13:42:18','PAN',1,NULL),(2,'amit@gmail.com','Anil','Amit','Yadav','0987654321','2017-02-01','Hadapsar','False',1,'0','2017-02-06 04:39:52','2017-02-06 04:39:52','Teacher',1,NULL),(3,'shweta@redbytes.on','fgf','hhjj','jjj','123344','2017-02-24','frdsfgd','True',1,'0','2017-02-24 05:16:07','2017-02-24 05:16:07','rfref',1,'ce15a'),(4,'shweta1@redbytes.on','fgf','hhjj','jjj','123344','2017-02-24','frdsfgd','True',1,'0','2017-02-24 05:18:58','2017-02-24 05:18:58','rfref',1,'23e56'),(5,'shweta432@redbytes.on','fgf','hhjj','jjj','123344','2017-02-24','frdsfgd','True',1,'0','2017-02-24 05:20:04','2017-02-24 05:20:04','rfref',1,'7208d');
/*!40000 ALTER TABLE `staff_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_document`
--

DROP TABLE IF EXISTS `staff_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `document_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_staff_document_1_idx` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_document`
--

LOCK TABLES `staff_document` WRITE;
/*!40000 ALTER TABLE `staff_document` DISABLE KEYS */;
INSERT INTO `staff_document` VALUES (9,1,'PAN','doc/PAN_1486463901.jpg'),(11,2,'Teacher','doc/Teacher_1486985925.html'),(12,3,'rfref','doc/rfref_1487913367.jpg'),(13,4,'rfref','doc/rfref_1487913538.png'),(14,5,'rfref','doc/rfref_1487913604.png');
/*!40000 ALTER TABLE `staff_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_subject_relation`
--

DROP TABLE IF EXISTS `student_class_subject_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_class_subject_relation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_subject_relation`
--

LOCK TABLES `student_class_subject_relation` WRITE;
/*!40000 ALTER TABLE `student_class_subject_relation` DISABLE KEYS */;
INSERT INTO `student_class_subject_relation` VALUES (1,5,2,1),(2,5,2,1),(3,5,2,1),(4,5,2,1),(5,5,2,1),(6,5,2,1),(7,5,2,1),(8,5,2,1),(9,5,2,1),(10,5,2,1),(11,6,11,1),(12,6,11,2),(13,6,11,1),(14,6,11,2),(15,7,11,1),(16,7,11,2),(17,7,11,1),(18,7,11,1),(19,7,11,1),(20,8,11,1),(21,8,11,2),(22,8,11,1),(23,8,11,2),(24,8,11,1),(25,8,11,1),(26,8,11,1),(27,7,11,1),(28,9,11,1),(29,9,11,2),(30,9,11,3),(31,10,5,1);
/*!40000 ALTER TABLE `student_class_subject_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(250) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` varchar(250) NOT NULL,
  `student_enrollment_num` varchar(250) NOT NULL,
  `class_name` int(10) NOT NULL,
  `mother_name` varchar(250) NOT NULL,
  `father_name` varchar(250) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `school_name` int(10) NOT NULL,
  `is_active` enum('1','0') NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_name` varchar(45) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `parent_name` int(11) DEFAULT NULL,
  `parent_mail` varchar(250) DEFAULT NULL,
  `blood_group` varchar(250) NOT NULL,
  `height` varchar(250) NOT NULL,
  `weight` varchar(250) NOT NULL,
  `under_medication` varchar(250) NOT NULL,
  `allergic` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `fk_student_details_1_idx` (`class_name`),
  KEY `school_name_idx` (`school_name`),
  KEY `academyc_year_idx` (`academic_year`),
  KEY `section_idx` (`section`),
  KEY `parent_name_fk_idx` (`parent_name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (7,'Swapnil','1988-06-15','False','0031',11,'T','S',' India   ',' swap@email.com','',1,'0','2017-02-06 17:18:01','2017-02-06 17:18:01','S','2017-01-01',9,2,2,'sm@email.com','A+','56','40','no','no'),(8,'Shraddha','1995-01-18','True','0056',11,'P','S','  India  ','  ssd@email.com','',1,'0','2017-02-07 10:47:36','2017-02-07 10:47:36','S','2017-01-02',9,6,2,'sm@email.com','A+','56','45','no','no'),(9,'Shweta','2017-02-01','True','EN-002',11,'Rohini','Pradip','pune','shweta@gmail.com','images/Shweta_2017.02.07.11.48.32.jpg',1,'0','2017-02-07 11:48:32','2017-02-07 11:48:32','Desai','2017-02-01',8,2,2,'sm@email.com','B','158','54','yes','no'),(10,'qwe','2017-02-01','False','wq',5,'weq','ew','weqwqe','ewq','images/qwe_2017.02.15.09.28.26.jpg',1,'0','2017-02-15 09:28:26','2017-02-15 09:28:26','eqw','2017-02-01',16,2,2,'sm@email.com','rt','r','re','r','r'),(11,'www','2017-02-26','False','ww',13,'ww','ww','www','ww','images/www_2017.02.23.13.52.24.jpg',1,'0','2017-02-23 13:52:24','2017-02-23 13:52:24','ww','2017-02-24',20,2,3,'yami@gmail.com','','','','','');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `type` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'English','0','Optional','2017-02-03 13:21:09','2017-02-03 13:21:09','001'),(2,'Social Science','0','Mandatory','2017-02-06 17:07:35','2017-02-06 17:07:35','002'),(3,'Maths','0','Mandatory','2017-02-07 10:53:47','2017-02-07 10:53:47','003');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject_relation`
--

DROP TABLE IF EXISTS `teacher_subject_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher_subject_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` int(11) DEFAULT NULL,
  `subject_name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher_subject_relation_1_idx` (`teacher_name`),
  KEY `fk_teacher_subject_relation_2_idx` (`subject_name`),
  CONSTRAINT `fk_teacher_subject_relation_1` FOREIGN KEY (`teacher_name`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_teacher_subject_relation_2` FOREIGN KEY (`subject_name`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject_relation`
--

LOCK TABLES `teacher_subject_relation` WRITE;
/*!40000 ALTER TABLE `teacher_subject_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_subject_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-25 15:50:33
