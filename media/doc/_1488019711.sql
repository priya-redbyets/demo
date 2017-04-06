-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: schoolzenproject
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_year`
--

LOCK TABLES `academic_year` WRITE;
/*!40000 ALTER TABLE `academic_year` DISABLE KEYS */;
INSERT INTO `academic_year` VALUES (1,'2017-01-11','2017-01-11',NULL,NULL,NULL,'2014-15'),(2,'2017-01-11','2017-01-11',NULL,NULL,NULL,'2015-16'),(3,NULL,NULL,'14-15','2017-01-07','2017-02-15','2016-17'),(4,NULL,NULL,'10-11','2017-01-12','2017-03-16','2010-133'),(5,NULL,NULL,'12-13','2017-01-24','2017-01-02','2012-13'),(6,NULL,NULL,'9-10','2016-01-07','2017-01-20','2009');
/*!40000 ALTER TABLE `academic_year` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add class details',7,'add_classdetails'),(20,'Can change class details',7,'change_classdetails'),(21,'Can delete class details',7,'delete_classdetails'),(22,'Can add school details',8,'add_schooldetails'),(23,'Can change school details',8,'change_schooldetails'),(24,'Can delete school details',8,'delete_schooldetails'),(25,'Can add staff details',9,'add_staffdetails'),(26,'Can change staff details',9,'change_staffdetails'),(27,'Can delete staff details',9,'delete_staffdetails'),(28,'Can add student details',10,'add_studentdetails'),(29,'Can change student details',10,'change_studentdetails'),(30,'Can delete student details',10,'delete_studentdetails'),(31,'Can add subject',11,'add_subject'),(32,'Can change subject',11,'change_subject'),(33,'Can delete subject',11,'delete_subject'),(34,'Can add user details',12,'add_userdetails'),(35,'Can change user details',12,'change_userdetails'),(36,'Can delete user details',12,'delete_userdetails');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$2RLNrpLZR89m$iRHjSt9D4p/WN7NXjw+oHwkHeSo/V33kWRgeiKkWWOs=','2017-01-30 09:10:32.820982',1,'pavan','','','',1,1,'2017-01-11 07:56:52.404440');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_details`
--

LOCK TABLES `class_details` WRITE;
/*!40000 ALTER TABLE `class_details` DISABLE KEYS */;
INSERT INTO `class_details` VALUES (4,'ACSsss','0',1,'2017-01-24 08:10:31','2017-01-24 08:10:31','C23',1),(5,'12','0',1,'2017-01-24 09:01:02','2017-01-24 09:01:02','A1',1),(6,'SDE','0',1,'2017-01-24 11:37:58','2017-01-24 11:37:58','C345',1),(7,'ascii','0',1,'2017-01-30 07:05:29','2017-01-30 07:05:29','c23',3);
/*!40000 ALTER TABLE `class_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_section_relation`
--

DROP TABLE IF EXISTS `class_section_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_section_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id_idx` (`class_id`),
  KEY `section_id_idx` (`section_id`),
  CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_section_relation`
--

LOCK TABLES `class_section_relation` WRITE;
/*!40000 ALTER TABLE `class_section_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_section_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_subject_relation`
--

DROP TABLE IF EXISTS `class_subject_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_subject_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_class_id_idx` (`class_id`),
  KEY `fk_subject_id_idx` (`subject_id`),
  CONSTRAINT `fk_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_subject_relation`
--

LOCK TABLES `class_subject_relation` WRITE;
/*!40000 ALTER TABLE `class_subject_relation` DISABLE KEYS */;
INSERT INTO `class_subject_relation` VALUES (1,4,1),(2,4,2),(3,5,1);
/*!40000 ALTER TABLE `class_subject_relation` ENABLE KEYS */;
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
INSERT INTO `department_details` VALUES (1,'Computer Sciene',NULL,NULL),(2,'IT',NULL,NULL),(3,'Bio Technology',NULL,NULL),(4,'Food technology',NULL,NULL);
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
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
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(7,'Registration','classdetails'),(8,'Registration','schooldetails'),(9,'Registration','staffdetails'),(10,'Registration','studentdetails'),(11,'Registration','subject'),(12,'Registration','userdetails'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-01-11 07:52:50.759017'),(2,'auth','0001_initial','2017-01-11 07:53:01.948689'),(3,'admin','0001_initial','2017-01-11 07:53:04.251241'),(4,'admin','0002_logentry_remove_auto_add','2017-01-11 07:53:04.386247'),(5,'contenttypes','0002_remove_content_type_name','2017-01-11 07:53:06.283546'),(6,'auth','0002_alter_permission_name_max_length','2017-01-11 07:53:06.617758'),(7,'auth','0003_alter_user_email_max_length','2017-01-11 07:53:06.768727'),(8,'auth','0004_alter_user_username_opts','2017-01-11 07:53:06.832014'),(9,'auth','0005_alter_user_last_login_null','2017-01-11 07:53:07.528989'),(10,'auth','0006_require_contenttypes_0002','2017-01-11 07:53:07.613891'),(11,'auth','0007_alter_validators_add_error_messages','2017-01-11 07:53:07.682114'),(12,'auth','0008_alter_user_username_max_length','2017-01-11 07:53:08.083847'),(13,'sessions','0001_initial','2017-01-11 07:53:08.786909'),(14,'Registration','0001_initial','2017-01-24 04:13:36.330772');
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
INSERT INTO `django_session` VALUES ('3a7kk90a244vsp2sg6jldvc3ow7flzbj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-02 13:11:12.301942'),('5qpk241rwcaxrjbzjig7dql0oxkyprep','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 11:50:02.051405'),('6jia88103w2ebqc48otmyh7gemf5ljuo','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-01-25 13:35:37.022593'),('8mtjcrkiegnru263eo1smroydh8j5vpr','Yzk2ZGRlYjgyMTZjOTcwZWE2ZWFmNDg0MjIyMTA0OTI4MDRhYWViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEifQ==','2017-02-13 06:31:10.258419'),('ctbqt9a4hwqajwqb69kpzbg6v5p7hktv','MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2017-01-31 12:26:29.469949'),('e8t31rkyf6hljxhwre47nv8auc9qjexm','YzU1Yjk0Zjg3ZjVhNjdhZTY0NjNhNWMzMTNmOWYwMGE0MzU5NzM1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJzdHVkZW50SWQgIjoiNiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzdHVkZW50SWQxIjoiNiJ9','2017-02-12 12:01:18.385478'),('fv3567xsstc7mssk3g6srpt337brtiab','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-30 06:32:20.957511'),('gkn765tn1xcldt4hjr1ii0esl121ga5p','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 13:10:52.470222'),('gq3pt9nya60ifk23exi7w4tq7onlk589','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 13:18:26.881865'),('hsfdhljmuv4hsupsa9gtrtob3du8c7ct','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 09:34:27.087757'),('k19fa34bfpbns1xx0oeicyoq6tcibw6z','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:40:31.095196'),('kon5hvuq3l7n9iaqy7akfnkqxyva4dz2','NmZkZjc4MDBiNTAwNTVjMzBiYzE1NWIyOTYwMjVkMDAzY2I5NjczZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjQifQ==','2017-02-13 09:16:02.396811'),('l1xhmeh9ou3bhnjkek1q9d683ekbv9ap','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 07:51:05.169260'),('l1zoua60e995brk4vyfi3jrinrevxv6r','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:53:49.611756'),('m5yhfvvzbw4bx8svhe0mnxwnlsvpmbcc','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-01 05:18:06.639025'),('nsd0ftgxbyy180me4hbqmhkgwver6mzj','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-26 10:22:11.143025'),('oekg4rn9ebse4em8c6n3zs9opmdtw9oe','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 13:04:13.340386'),('t59w3hpi9zle5sicj7ddrm5e9tu0m1q9','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 11:37:49.352015'),('texw13a3jecain0lttbaly77zougs91l','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-08 05:09:35.874453'),('ucgw3cixtgulokhxqhpumzs7indc0n7x','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-31 06:21:56.534382'),('w5ai295ir65sbj0m24cd0og6ekvijn0y','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-27 09:45:03.804329'),('xy76kdt9nl08y6pu32fxhctor7oput8u','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-06 05:45:34.745503'),('yirk30wvexp7h44jmiy91er1629vmy3k','NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-02-03 06:56:31.601067');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(250) NOT NULL,
  `weightage` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents_details`
--

LOCK TABLES `parents_details` WRITE;
/*!40000 ALTER TABLE `parents_details` DISABLE KEYS */;
INSERT INTO `parents_details` VALUES (1,'abc','2017-01-30','female','ggf','ffg','5656','0','2017-01-29 23:26:16','2017-01-29 23:26:16');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,'VDSK','pune','566565656565','vdsk@gmail.com','doc/VDSK_1485243198.jpg','2017-01-24 07:33:18',NULL,'vdsk.com'),(2,'sss','sss','455','sss','doc/sss_1485243302.jpg','2017-01-24 07:35:02',NULL,'sss'),(3,'fff','ffff','54554','fff','doc/fff_1485243370.jpg','2017-01-24 07:36:10',NULL,'fff'),(4,'sdp','sssss','767876','sdp@gmail.com','doc/sdp_1485243638.jpg','2017-01-24 07:40:38',NULL,'sss'),(5,'dffd','fgyfg','788778','fdfdfd','doc/dffd_1485243874.jpg','2017-01-24 07:44:34',NULL,'fdfd'),(6,'gfgf','hgg','ghgh','gfgf','doc/gfgf_1485248503.jpg','2017-01-24 09:01:43',NULL,'gfgf');
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
  KEY `fk_sections_1_idx` (`academic_year`),
  CONSTRAINT `fk_sections_1` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (6,'sdf','0','2017-01-24 08:10:50','2017-01-24 08:10:50',1,NULL),(7,'A!','0','2017-01-24 09:01:21','2017-01-24 09:01:21',1,NULL),(8,'A','0','2017-01-24 10:55:53','2017-01-24 10:55:53',1,'A-1'),(9,'ff','0','2017-01-30 09:17:37','2017-01-30 09:17:37',1,'ff');
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
  `upload_id_doc` varchar(250) NOT NULL,
  `adress` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `school_id` int(11) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `identity_type` varchar(250) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_staff_details_1_idx` (`school_id`),
  KEY `fk_staff_details_2_idx` (`department_id`),
  CONSTRAINT `fk_depatrment` FOREIGN KEY (`department_id`) REFERENCES `department_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_staff_details_1` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_details`
--

LOCK TABLES `staff_details` WRITE;
/*!40000 ALTER TABLE `staff_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_document`
--

DROP TABLE IF EXISTS `staff_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_document` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `document_path` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_staff_document_1_idx` (`staff_id`),
  CONSTRAINT `fk_staff_document_1` FOREIGN KEY (`staff_id`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_document`
--

LOCK TABLES `staff_document` WRITE;
/*!40000 ALTER TABLE `staff_document` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_subject_relation`
--

LOCK TABLES `student_class_subject_relation` WRITE;
/*!40000 ALTER TABLE `student_class_subject_relation` DISABLE KEYS */;
INSERT INTO `student_class_subject_relation` VALUES (48,6,4,1),(49,1,4,1),(50,4,4,1);
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
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `parent_name` int(11) DEFAULT NULL,
  `parent_mail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_active` (`is_active`),
  KEY `fk_student_details_1_idx` (`class_name`),
  KEY `school_name_idx` (`school_name`),
  KEY `academyc_year_idx` (`academic_year`),
  KEY `section_idx` (`section`),
  KEY `parent_name_fk_idx` (`parent_name`),
  CONSTRAINT `class_name` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_acedamyc_year` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section` FOREIGN KEY (`section`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `parent_name_fk` FOREIGN KEY (`parent_name`) REFERENCES `parents_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `school_name` FOREIGN KEY (`school_name`) REFERENCES `school_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (1,'priya','2017-01-12','False','en-123',4,'fff','ff',' ggfg ',' ff@gmail.com','',2,'0','2017-01-30 06:30:07','2017-01-30 06:30:07','j','bhujbal','2017-01-20',1,6,1,'a@gmail.com'),(2,'gf','2017-01-13','False','gf33',6,'fgd','g','fgfg','gf','images/gf_2017.01.30.09.11.20.jpg',2,'0','2017-01-30 09:11:20','2017-01-30 09:11:20','gf','dg','2017-01-09',5,6,1,'gffg'),(3,'qq','2017-01-22','False','gg',6,'qq','qq','gg','qq','images/qq_2017.01.30.09.13.59.jpg',1,'0','2017-01-30 09:13:59','2017-01-30 09:13:59','qq','qq','2017-01-27',3,6,1,'ggg'),(4,'aa','2017-01-29','True','aa',4,'aa','aa','aa','aa','images/aa_2017.01.30.09.15.54.jpg',2,'0','2017-01-30 09:15:54','2017-01-30 09:15:54','aa','aa','2017-01-13',4,6,1,'aaa');
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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'math','0','2017-01-24 09:00:16','2017-01-24 09:00:16',NULL),(2,'nhghhg','0','2017-01-24 11:14:07','2017-01-24 11:14:07',NULL),(3,'rtrt','0','2017-01-24 11:17:07','2017-01-24 11:17:07','rtr'),(4,'gio','0','2017-01-30 09:12:46','2017-01-30 09:12:46','g12');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
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

-- Dump completed on 2017-01-30 14:50:29
