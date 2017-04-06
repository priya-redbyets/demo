-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 06, 2017 at 06:51 AM
-- Server version: 5.6.24
-- PHP Version: 5.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolzen`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyear_class_relation`
--

CREATE TABLE IF NOT EXISTS `academicyear_class_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academicyear_class_relation`
--

INSERT INTO `academicyear_class_relation` (`id`, `class_id`, `academic_year`) VALUES
(50, NULL, 8),
(51, NULL, 9),
(52, NULL, 8),
(53, NULL, 38);

-- --------------------------------------------------------

--
-- Table structure for table `academicyear_class_relation_class_id`
--

CREATE TABLE IF NOT EXISTS `academicyear_class_relation_class_id` (
  `id` int(11) NOT NULL,
  `academicyearclassrelation_id` int(11) DEFAULT NULL,
  `classdetails_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academicyear_class_relation_class_id`
--

INSERT INTO `academicyear_class_relation_class_id` (`id`, `academicyearclassrelation_id`, `classdetails_id`) VALUES
(70, 50, 15),
(71, 51, 17),
(72, 51, 19),
(73, 52, 17),
(74, 53, 17);

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE IF NOT EXISTS `academic_year` (
  `id` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `academic_yearcode` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `academic_year` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `created_date`, `updated_date`, `academic_yearcode`, `start_date`, `end_date`, `academic_year`) VALUES
(8, NULL, NULL, 'AY 13-14', '2015-01-01', '2016-01-01', '2015-16'),
(9, NULL, NULL, 'AY 16-17', '2016-01-01', '2017-01-01', '2016-17'),
(35, NULL, NULL, 'AY 15-16', '2013-01-08', '2014-02-10', '878'),
(37, NULL, NULL, '02', '2019-01-30', '2020-02-06', 'AY 2019-20'),
(38, NULL, NULL, '1', '2010-06-01', '2011-06-01', 'AY 2010-11');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add class details', 7, 'add_classdetails'),
(20, 'Can change class details', 7, 'change_classdetails'),
(21, 'Can delete class details', 7, 'delete_classdetails'),
(22, 'Can add school details', 8, 'add_schooldetails'),
(23, 'Can change school details', 8, 'change_schooldetails'),
(24, 'Can delete school details', 8, 'delete_schooldetails'),
(25, 'Can add staff details', 9, 'add_staffdetails'),
(26, 'Can change staff details', 9, 'change_staffdetails'),
(27, 'Can delete staff details', 9, 'delete_staffdetails'),
(28, 'Can add student details', 10, 'add_studentdetails'),
(29, 'Can change student details', 10, 'change_studentdetails'),
(30, 'Can delete student details', 10, 'delete_studentdetails'),
(31, 'Can add subject', 11, 'add_subject'),
(32, 'Can change subject', 11, 'change_subject'),
(33, 'Can delete subject', 11, 'delete_subject'),
(34, 'Can add user details', 12, 'add_userdetails'),
(35, 'Can change user details', 12, 'change_userdetails'),
(36, 'Can delete user details', 12, 'delete_userdetails'),
(37, 'Can add academic details', 13, 'add_academicdetails'),
(38, 'Can change academic details', 13, 'change_academicdetails'),
(39, 'Can delete academic details', 13, 'delete_academicdetails'),
(40, 'Can add academic year', 14, 'add_academicyear'),
(41, 'Can change academic year', 14, 'change_academicyear'),
(42, 'Can delete academic year', 14, 'delete_academicyear'),
(43, 'Can add class section relation', 15, 'add_classsectionrelation'),
(44, 'Can change class section relation', 15, 'change_classsectionrelation'),
(45, 'Can delete class section relation', 15, 'delete_classsectionrelation'),
(46, 'Can add class subject relation', 16, 'add_classsubjectrelation'),
(47, 'Can change class subject relation', 16, 'change_classsubjectrelation'),
(48, 'Can delete class subject relation', 16, 'delete_classsubjectrelation'),
(49, 'Can add department details', 17, 'add_departmentdetails'),
(50, 'Can change department details', 17, 'change_departmentdetails'),
(51, 'Can delete department details', 17, 'delete_departmentdetails'),
(52, 'Can add parents details', 18, 'add_parentsdetails'),
(53, 'Can change parents details', 18, 'change_parentsdetails'),
(54, 'Can delete parents details', 18, 'delete_parentsdetails'),
(55, 'Can add sections', 19, 'add_sections'),
(56, 'Can change sections', 19, 'change_sections'),
(57, 'Can delete sections', 19, 'delete_sections'),
(58, 'Can add staff document', 20, 'add_staffdocument'),
(59, 'Can change staff document', 20, 'change_staffdocument'),
(60, 'Can delete staff document', 20, 'delete_staffdocument'),
(61, 'Can add student class subject relation', 21, 'add_studentclasssubjectrelation'),
(62, 'Can change student class subject relation', 21, 'change_studentclasssubjectrelation'),
(63, 'Can delete student class subject relation', 21, 'delete_studentclasssubjectrelation'),
(64, 'Can add source', 22, 'add_source'),
(65, 'Can change source', 22, 'change_source'),
(66, 'Can delete source', 22, 'delete_source'),
(67, 'Can add thumbnail', 23, 'add_thumbnail'),
(68, 'Can change thumbnail', 23, 'change_thumbnail'),
(69, 'Can delete thumbnail', 23, 'delete_thumbnail'),
(70, 'Can add thumbnail dimensions', 24, 'add_thumbnaildimensions'),
(71, 'Can change thumbnail dimensions', 24, 'change_thumbnaildimensions'),
(72, 'Can delete thumbnail dimensions', 24, 'delete_thumbnaildimensions'),
(76, 'Can add academicyear class relation', 26, 'add_academicyearclassrelation'),
(77, 'Can change academicyear class relation', 26, 'change_academicyearclassrelation'),
(78, 'Can delete academicyear class relation', 26, 'delete_academicyearclassrelation'),
(85, 'Can add role', 29, 'add_role'),
(86, 'Can change role', 29, 'change_role'),
(87, 'Can delete role', 29, 'delete_role'),
(88, 'Can add academicyear class relation class id', 30, 'add_academicyearclassrelationclassid'),
(89, 'Can change academicyear class relation class id', 30, 'change_academicyearclassrelationclassid'),
(90, 'Can delete academicyear class relation class id', 30, 'delete_academicyearclassrelationclassid'),
(91, 'Can add class section mapping', 31, 'add_classsectionmapping'),
(92, 'Can change class section mapping', 31, 'change_classsectionmapping'),
(93, 'Can delete class section mapping', 31, 'delete_classsectionmapping'),
(94, 'Can add class section mapping section name', 32, 'add_classsectionmappingsectionname'),
(95, 'Can change class section mapping section name', 32, 'change_classsectionmappingsectionname'),
(96, 'Can delete class section mapping section name', 32, 'delete_classsectionmappingsectionname'),
(97, 'Can add class subject mapping', 33, 'add_classsubjectmapping'),
(98, 'Can change class subject mapping', 33, 'change_classsubjectmapping'),
(99, 'Can delete class subject mapping', 33, 'delete_classsubjectmapping'),
(100, 'Can add class subject mapping subject name', 34, 'add_classsubjectmappingsubjectname'),
(101, 'Can change class subject mapping subject name', 34, 'change_classsubjectmappingsubjectname'),
(102, 'Can delete class subject mapping subject name', 34, 'delete_classsubjectmappingsubjectname'),
(103, 'Can add role user relation', 35, 'add_roleuserrelation'),
(104, 'Can change role user relation', 35, 'change_roleuserrelation'),
(105, 'Can delete role user relation', 35, 'delete_roleuserrelation'),
(106, 'Can add role user relation user name', 36, 'add_roleuserrelationusername'),
(107, 'Can change role user relation user name', 36, 'change_roleuserrelationusername'),
(108, 'Can delete role user relation user name', 36, 'delete_roleuserrelationusername'),
(109, 'Can add teacher subject relation', 37, 'add_teachersubjectrelation'),
(110, 'Can change teacher subject relation', 37, 'change_teachersubjectrelation'),
(111, 'Can delete teacher subject relation', 37, 'delete_teachersubjectrelation');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$2RLNrpLZR89m$iRHjSt9D4p/WN7NXjw+oHwkHeSo/V33kWRgeiKkWWOs=', '2017-03-06 06:41:21.649698', 1, 'pavan', '', '', '', 1, 1, '2017-01-11 07:56:52.404440'),
(2, 'pbkdf2_sha256$30000$q9MPRaVyigVD$Zn+sL81Lje+y0yWVpg2iF6A/2Q8TnyH6qb/zvEhS8sE=', '2017-02-24 10:29:32.267007', 1, 'priya', '', '', '', 1, 1, '2017-02-24 10:29:07.267506'),
(3, 'pbkdf2_sha256$30000$kaZPmaHlPQfp$NXe03UzIydF7bs0xz7pA+OR1e/XJqTrCI8nuLZ140gA=', '2017-02-25 10:57:54.087906', 0, 'priya@redbytes.in', '', '', '', 0, 1, '2017-02-25 10:57:53.901962'),
(4, 'pbkdf2_sha256$30000$gPMoxlncfWjz$ZuKilayRw7Nqcj27YAHrdSDr7wKEI3tGVAIiIug5jVk=', '2017-02-25 11:27:38.557368', 0, 'sayyedriyaj55@gmail.com', '', '', '', 0, 1, '2017-02-25 11:27:38.444670'),
(5, 'pbkdf2_sha256$30000$5qBzh10MKPJM$6Q4jkWTmpVDJy3DUiqL1vnQUaBs7mLWXK40NFUTeZnA=', '2017-02-27 04:22:27.625706', 0, 'ayesha@testbytes.net', '', '', '', 0, 1, '2017-02-27 04:17:01.476560'),
(6, 'pbkdf2_sha256$30000$kt1MWRED8Ke9$6pw/994qjW7UBrDSKsTglATGzuo8utHduGksW1uoSL0=', '2017-02-28 10:42:48.368569', 0, 'swapnil@redbytes.in', '', '', '', 0, 1, '2017-02-28 10:42:48.213680');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_details`
--

CREATE TABLE IF NOT EXISTS `class_details` (
  `id` int(11) NOT NULL,
  `class_name` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `school_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_code` varchar(45) DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_details`
--

INSERT INTO `class_details` (`id`, `class_name`, `is_active`, `school_id`, `created_date`, `updated_date`, `class_code`, `academic_year`) VALUES
(17, 'I', '0', 1, '2017-02-27 03:51:45', '2017-02-27 03:51:45', '7', NULL),
(19, 'II', '0', 1, '2017-02-27 04:14:12', '2017-02-27 04:14:12', 'C00', NULL),
(20, 'VIII', '0', 1, '2017-02-27 10:04:26', '2017-02-27 10:04:26', '00', NULL),
(22, 'KG', '0', 1, '2017-02-28 13:42:20', '2017-02-28 13:42:20', '003', NULL),
(23, 'I', '0', 1, '2017-03-02 07:09:03', '2017-03-02 07:09:03', '1', NULL),
(24, 'II', '0', 1, '2017-03-02 07:09:15', '2017-03-02 07:09:15', '1', NULL),
(25, 'I', '0', 1, '2017-03-02 07:21:45', '2017-03-02 07:21:45', '2', NULL),
(26, 'X', '0', 1, '2017-03-03 05:04:45', '2017-03-03 05:04:45', '678', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_mapping`
--

CREATE TABLE IF NOT EXISTS `class_section_mapping` (
  `id` int(11) NOT NULL,
  `class_name` int(11) DEFAULT NULL,
  `section_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_section_mapping`
--

INSERT INTO `class_section_mapping` (`id`, `class_name`, `section_name`) VALUES
(21, 17, NULL),
(22, 19, NULL),
(23, 19, NULL),
(24, 17, NULL),
(25, 19, NULL),
(26, 20, NULL),
(27, 22, NULL),
(28, 17, NULL),
(29, 22, NULL),
(30, 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_mapping_section_name`
--

CREATE TABLE IF NOT EXISTS `class_section_mapping_section_name` (
  `id` int(11) NOT NULL,
  `classsectionmapping_id` int(11) DEFAULT NULL,
  `sections_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_section_mapping_section_name`
--

INSERT INTO `class_section_mapping_section_name` (`id`, `classsectionmapping_id`, `sections_id`) VALUES
(11, 21, 6),
(15, 25, 6),
(17, 26, 6),
(18, 27, 6),
(19, 28, 7),
(20, 29, 8),
(21, 30, 8);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_mapping`
--

CREATE TABLE IF NOT EXISTS `class_subject_mapping` (
  `id` int(11) NOT NULL,
  `class_name` int(11) DEFAULT NULL,
  `subject_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_mapping`
--

INSERT INTO `class_subject_mapping` (`id`, `class_name`, `subject_name`) VALUES
(32, 17, NULL),
(33, 19, NULL),
(34, 17, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_mapping_subject_name`
--

CREATE TABLE IF NOT EXISTS `class_subject_mapping_subject_name` (
  `id` int(11) NOT NULL,
  `classsubjectmapping_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_mapping_subject_name`
--

INSERT INTO `class_subject_mapping_subject_name` (`id`, `classsubjectmapping_id`, `subject_id`) VALUES
(9, 31, 1),
(10, 32, 1),
(11, 32, 2),
(12, 32, 3),
(13, 33, 1),
(14, 34, 8);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher_mapping`
--

CREATE TABLE IF NOT EXISTS `class_teacher_mapping` (
  `id` int(11) NOT NULL,
  `class_name` int(11) NOT NULL,
  `teacher_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_teacher_mapping`
--

INSERT INTO `class_teacher_mapping` (`id`, `class_name`, `teacher_name`) VALUES
(1, 17, NULL),
(2, 19, NULL),
(3, 20, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher_mapping_teacher_name`
--

CREATE TABLE IF NOT EXISTS `class_teacher_mapping_teacher_name` (
  `id` int(11) NOT NULL,
  `classteachermapping_id` int(11) NOT NULL,
  `staffdetails_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_teacher_mapping_teacher_name`
--

INSERT INTO `class_teacher_mapping_teacher_name` (`id`, `classteachermapping_id`, `staffdetails_id`) VALUES
(1, 1, 19),
(2, 2, 19),
(3, 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `department_details`
--

CREATE TABLE IF NOT EXISTS `department_details` (
  `id` int(11) NOT NULL,
  `depatment_name` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_details`
--

INSERT INTO `department_details` (`id`, `depatment_name`, `created_date`, `updated_date`) VALUES
(1, 'Computer Sciene', NULL, NULL),
(2, 'BioTechnoloy', NULL, NULL),
(3, 'Physics', NULL, NULL),
(4, 'Botony', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(22, 'easy_thumbnails', 'source'),
(23, 'easy_thumbnails', 'thumbnail'),
(24, 'easy_thumbnails', 'thumbnaildimensions'),
(26, 'Mapping', 'academicyearclassrelation'),
(30, 'Mapping', 'academicyearclassrelationclassid'),
(31, 'Mapping', 'classsectionmapping'),
(32, 'Mapping', 'classsectionmappingsectionname'),
(33, 'Mapping', 'classsubjectmapping'),
(34, 'Mapping', 'classsubjectmappingsubjectname'),
(35, 'Mapping', 'roleuserrelation'),
(36, 'Mapping', 'roleuserrelationusername'),
(37, 'Mapping', 'teachersubjectrelation'),
(13, 'Registration', 'academicdetails'),
(14, 'Registration', 'academicyear'),
(7, 'Registration', 'classdetails'),
(15, 'Registration', 'classsectionrelation'),
(16, 'Registration', 'classsubjectrelation'),
(17, 'Registration', 'departmentdetails'),
(18, 'Registration', 'parentsdetails'),
(29, 'Registration', 'role'),
(8, 'Registration', 'schooldetails'),
(19, 'Registration', 'sections'),
(9, 'Registration', 'staffdetails'),
(20, 'Registration', 'staffdocument'),
(21, 'Registration', 'studentclasssubjectrelation'),
(10, 'Registration', 'studentdetails'),
(11, 'Registration', 'subject'),
(12, 'Registration', 'userdetails'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-01-11 07:52:50.759017'),
(2, 'auth', '0001_initial', '2017-01-11 07:53:01.948689'),
(3, 'admin', '0001_initial', '2017-01-11 07:53:04.251241'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-01-11 07:53:04.386247'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-01-11 07:53:06.283546'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-01-11 07:53:06.617758'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-01-11 07:53:06.768727'),
(8, 'auth', '0004_alter_user_username_opts', '2017-01-11 07:53:06.832014'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-01-11 07:53:07.528989'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-01-11 07:53:07.613891'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-01-11 07:53:07.682114'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-01-11 07:53:08.083847'),
(13, 'sessions', '0001_initial', '2017-01-11 07:53:08.786909'),
(14, 'Registration', '0001_initial', '2017-01-24 04:13:36.330772'),
(15, 'Registration', '0002_academicdetails_academicyear_classsectionrelation_classsubjectrelation_departmentdetails_parentsdeta', '2017-02-01 11:58:01.709423'),
(16, 'Mapping', '0001_initial', '2017-02-21 06:31:22.039350'),
(17, 'easy_thumbnails', '0001_initial', '2017-02-21 06:31:27.014272'),
(18, 'easy_thumbnails', '0002_thumbnaildimensions', '2017-02-21 06:31:28.420507'),
(19, 'Mapping', '0002_academicyearclassrelationclassid_classsectionmapping_classsectionmappingsectionname_classsubjectmapp', '2017-02-28 05:59:20.823224'),
(20, 'Registration', '0002_role', '2017-02-28 05:59:20.833031');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0hh3yb3472ywmj91mtqzmhph1h8qqtvf', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-03 11:23:50.131993'),
('12xoi23crjnwh3pt55ugfqpclfmcexmu', 'MzRjODA0ZDlmZjE2ZmI0OGNiODMzMTBmMDI4Y2FiMzhjYTQ5NzFmZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjkifQ==', '2017-02-21 11:59:10.175541'),
('1hjpkv0ui06hir4gjykhk34r04azxaeg', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-17 06:03:06.879528'),
('239fulred0pfdxdnr6kz4dsylfn6m7bt', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 07:37:13.947989'),
('2mdhyzzo4xvdgumfaem04zlt0ghy8vp3', 'ODNmYzEyNDY5OWJiMjUzNWY1YjljMjIyZDlmYzQ3MzQ3NjM0NDM4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjQifQ==', '2017-02-14 10:45:26.939549'),
('39f2lbilw7vqor367egqkmy4prvneo8o', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-14 05:42:00.143652'),
('39r9y6jsn5bkbyuefovtkhakmwpmfolf', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-11 11:03:39.178642'),
('3a7kk90a244vsp2sg6jldvc3ow7flzbj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-02 13:11:12.301942'),
('3vhvruaitdapducyyfhjbflzotejym1x', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-09 08:04:50.240195'),
('42st8lzvypzurn5fxbk5yrug6f68653s', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 11:03:02.680757'),
('45q6uq9wdi2xmyvlgxj5aax42w1iuh7l', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-02 07:24:39.990429'),
('4bfcxeami0cd9vg4n0dxbm8pfm4g012t', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-17 12:03:37.715477'),
('5bwvgk1zxrnysad0vw93vznz9ye9timx', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-11 14:30:49.619041'),
('5qpk241rwcaxrjbzjig7dql0oxkyprep', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 11:50:02.051405'),
('6hw8atxvuu6p18a7f6432sgu7dlu93lp', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-20 11:16:49.459155'),
('6jia88103w2ebqc48otmyh7gemf5ljuo', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-25 13:35:37.022593'),
('6kptuhxw2ubsgjn2xpeh91mwduhu92n6', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 13:03:40.111119'),
('6m83uzrv9n92o1o5t8fcyqktsdqh7kxd', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-10 10:29:48.118015'),
('726pt8adhl4ob2vfg8p0c6pggque5lbx', 'NzgzNjUwZGM5ZjBkNTdmMTkwYjdkYzhjOGU5ZGJjMTJkYmFkN2FhMDp7ImNsYXNzX2lkIjoiMTEiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsInN0dWRlbnRJZDEiOiI5In0=', '2017-02-24 05:12:36.662264'),
('7m38ri0tpcsk6zwx31h5flmwp1mu80va', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 06:03:38.408621'),
('80uf7fu1rk2l3y2x93fb3ew1z09dvyyw', 'NTZhMGZiOTdhMjQwMDFlZGVhZDI5YjMxMmYyNThjNmEyNTVlNmI2MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRiOGE2YjhmNWJkMGRkMjBjYjVmNTNlMmNhYTVhNTE1ZWE4ODI2MWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=', '2017-03-13 04:17:01.600523'),
('8mtjcrkiegnru263eo1smroydh8j5vpr', 'Yzk2ZGRlYjgyMTZjOTcwZWE2ZWFmNDg0MjIyMTA0OTI4MDRhYWViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 06:31:10.258419'),
('9xoytpx85k317bihdjpi0gdcy6bj96cp', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-27 10:59:49.548843'),
('a406jxf1t6wzk9op5diag10fzmrjtfv8', 'NTU0MWYzZjE2NWM1YjRkZGEyZTUxZmE5MzA0NTZjMjAzNWNlN2MxOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 11:35:26.692157'),
('amu9ah1aou8vamh0u98q2u22gmn268nu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 11:34:29.431882'),
('borxi5y5gls4hiuo0vfwovr1g1q86ltz', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-01 05:23:01.989778'),
('cb3jcxpekph0vhtfsl5mhkdrb0p4mxxe', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-20 06:41:21.832426'),
('ctbqt9a4hwqajwqb69kpzbg6v5p7hktv', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-31 12:26:29.469949'),
('ctxexl35g4stwhj9w3ok4xobtp5xaaww', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 05:53:25.239724'),
('d0d2qgh7lvxp6ygypnpgpqkve4km2ohq', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-20 12:00:23.692549'),
('dmpztudzup6llfstw1694basqfrjfzn5', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 12:16:02.567406'),
('do3bpaj4m70s7lt1fzvqknh3duk2m2uv', 'OGQwNWQ0OTYxNjBlZThjMDAzMTc5ZDRiYTNkMjNmNTI5YmFlNWFiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjkifQ==', '2017-02-23 11:10:20.402442'),
('e8t31rkyf6hljxhwre47nv8auc9qjexm', 'YzU1Yjk0Zjg3ZjVhNjdhZTY0NjNhNWMzMTNmOWYwMGE0MzU5NzM1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJzdHVkZW50SWQgIjoiNiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzdHVkZW50SWQxIjoiNiJ9', '2017-02-12 12:01:18.385478'),
('edfayghtgpok5llicierxu5ghikqa02p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-16 05:15:17.514540'),
('epcqvwfymqcd4lfiujths43p9y6h8fkg', 'NmQzZTEwOTI2Y2QyM2Y0Yzg4N2EwMGRjNDExYzFkNWU5NWVjNGI2Zjp7ImNsYXNzX2lkIjoiMTAiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsInN0dWRlbnRJZDEiOiI3In0=', '2017-02-21 09:49:21.480307'),
('fbu8ucpg8zpjghh1ja9st0swac65hulu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 07:44:21.092550'),
('fssraenlj4xdxoo8fqzb8a8dhsh3rkb1', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-14 07:20:30.095543'),
('fv3567xsstc7mssk3g6srpt337brtiab', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-30 06:32:20.957511'),
('gkn765tn1xcldt4hjr1ii0esl121ga5p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 13:10:52.470222'),
('gl4ykpbwbuenqgnpks9oto6fx4qccpin', 'ZDQ3NWM4ODMzYjk0ZmRmMzc5YzBkZjhmMzQwZDdlNGIwMGVjNDNiNjp7ImNsYXNzX2lkIjoiMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 13:00:18.665357'),
('gq3pt9nya60ifk23exi7w4tq7onlk589', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:18:26.881865'),
('gsrbv4jljjbwlfwumdmn6f5m0tocwvll', 'YWJiMzU0NTZhYTY5ZDkzNTRjNGZmMTBjY2U0MWM1YmVjZjIzMmQzZTp7ImNsYXNzX2lkIjoiMTQiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2017-02-23 11:58:33.877731'),
('gtw4v6vya8k7dgv6onzum90aok24dvhg', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-13 05:56:21.076846'),
('h92oatn9flbjfsmmzrvbfwghjyez9vck', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-13 05:56:29.136737'),
('hsfdhljmuv4hsupsa9gtrtob3du8c7ct', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 09:34:27.087757'),
('i6lq8uhy8ndggi0ko6qs5mmbj4t1wm5m', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 12:44:50.974388'),
('ii9dyjr4egnredvo1h4vm5xstfv9woy6', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-17 13:09:02.062729'),
('iyh96vloiwluxtq40t9g718sjn33ux8y', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-14 09:58:00.674355'),
('je36l4rcntn0kwtb0rsmmyhc6270214n', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-13 09:15:31.858345'),
('k19fa34bfpbns1xx0oeicyoq6tcibw6z', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:40:31.095196'),
('l1xhmeh9ou3bhnjkek1q9d683ekbv9ap', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 07:51:05.169260'),
('l1zoua60e995brk4vyfi3jrinrevxv6r', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:53:49.611756'),
('m5yhfvvzbw4bx8svhe0mnxwnlsvpmbcc', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 05:18:06.639025'),
('m8xh4rgqpb9lywvhl5jfmixm5ildnpyr', 'MzNhNjA3MjM0NDJlMTk2NDE2NGVmYmFmMDRhY2FjNGQ4NDEwNzdkYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjcifQ==', '2017-02-21 11:41:15.846541'),
('mkgn009drd9zihefl812zjrvszwgyma2', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-15 13:40:29.500520'),
('njc7dh7oxwup77h7do94no1fdhmpro1g', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-14 05:42:27.302472'),
('nsd0ftgxbyy180me4hbqmhkgwver6mzj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-26 10:22:11.143025'),
('o8wn6iuosfxccqg9ov6hqz9x49kr3ajj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-02 07:27:11.641456'),
('oekg4rn9ebse4em8c6n3zs9opmdtw9oe', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:04:13.340386'),
('orfi96gtg18hr15rkhqyoeyu4c7ej0o4', 'ZTVjYTc4MjRmMzkwYmI3YjNkMjhiOGE3Y2FiZDVhNTcwOTE0NzUzZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEwIn0=', '2017-03-01 09:29:46.026028'),
('p4gs28j7e4pwbrqz43o8sps55rzc32r6', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-21 09:52:41.057544'),
('q0i5rhg9dnwhxui4daent8t6ohjw6jof', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-20 04:57:50.867179'),
('qfcziuza678gi3bjtktlxao3e6k9jlvy', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 05:24:53.627791'),
('qm0v68931f8opgihfd3c408xupwls77p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 12:52:50.810735'),
('qn58sxzhhq0p1hoivn5ugshhjsf4xpvu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-20 03:51:33.483523'),
('qond1yz4h96v3eso4hpffqoy0g4hh8ci', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 11:23:46.758065'),
('qseam0ucuzmq2t0xncjy4c42itvr2x1g', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-13 05:55:57.069604'),
('qx0uijzqrpkqk239wg40fv2xcvjoxt3f', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-15 10:52:52.239028'),
('qz7usm6yqtnyel64eh4jzek3sp8hi78x', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-21 09:39:21.639044'),
('sibimiqaft4g5ss2l44jtj8vuymo29on', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-17 04:28:48.134613'),
('t3kwb87ioa92almiglui1v5ulcy3z7xj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 10:43:24.701588'),
('t59w3hpi9zle5sicj7ddrm5e9tu0m1q9', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:37:49.352015'),
('texw13a3jecain0lttbaly77zougs91l', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 05:09:35.874453'),
('u9im1pukdkyj0v2f1imif8fhq6r2ndt8', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-03-14 12:22:58.353218'),
('ucgw3cixtgulokhxqhpumzs7indc0n7x', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-31 06:21:56.534382'),
('ugopukjdu5medd2auxxtewy4u7l69y90', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-02 07:05:42.999644'),
('uxco2of9n7eo0osigr5hb7k9l75n8u7a', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-13 13:46:06.855154'),
('vlzwihn2snd8s1o4ypdb0grrho9extmb', 'OGQwNWQ0OTYxNjBlZThjMDAzMTc5ZDRiYTNkMjNmNTI5YmFlNWFiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjkifQ==', '2017-02-21 11:48:44.764665'),
('w5ai295ir65sbj0m24cd0og6ekvijn0y', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 09:45:03.804329'),
('wdep0myktt03w1epct2hbx5y8jp6dcz3', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-02 07:07:02.761294'),
('wwatxgyufswk9p1fr8tryg6y3r7jbzva', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-17 12:57:47.235312'),
('wzmlhi3kj8xlsukpr47zo2m0w1ji4q46', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-20 05:19:07.754953'),
('xy76kdt9nl08y6pu32fxhctor7oput8u', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 05:45:34.745503'),
('y3e4nipsvbtrar3xrxi9zxtiqhkn9usb', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-13 05:58:57.271133'),
('y6ahbxh852zjvtctk9zv20qp6j6cng6g', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-14 11:36:25.295914'),
('yirk30wvexp7h44jmiy91er1629vmy3k', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-03 06:56:31.601067'),
('zxuyxvg1nuwah4tr6nmnxvzee18h6n8a', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-03-03 10:32:57.979676');

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_source`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_source` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

CREATE TABLE IF NOT EXISTS `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `grade`, `created_date`, `updated_date`) VALUES
(1, 'A1', '2017-02-15 10:53:37', '2017-02-15 10:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `parents_details`
--

CREATE TABLE IF NOT EXISTS `parents_details` (
  `id` int(11) NOT NULL,
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
  `last_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_details`
--

INSERT INTO `parents_details` (`id`, `name`, `birth_date`, `gender`, `address`, `emai_id`, `contact_num`, `is_active`, `created_date`, `updated`, `middle_name`, `last_name`) VALUES
(1, 'Sudhir', '1965-02-10', 'False', '    ', 'abx@xyz.com', '9730112233', '0', '2017-02-03 13:31:51', '2017-02-03 13:31:51', 'B', 'Nale'),
(2, 'Swapnil', '1976-07-06', 'False', ' ', 'sm@email.com', '9898989898', '0', '2017-02-04 17:39:44', '2017-02-04 17:39:44', 'S', 'M'),
(3, 'Yami', '2017-02-01', 'True', '', 'yami@gmail.com', '8790654321', '0', '2017-02-06 04:43:25', '2017-02-06 04:43:25', 'Gautam', 'Yami'),
(4, 'Ayesha', '2017-02-02', 'True', 'pune  ', 'ayesha@testbytes.net', '9870654321', '0', '2017-02-27 11:14:22', '2017-02-27 11:14:22', 'Testbytes', 'Gadwale'),
(5, 'Anil', '2017-02-09', 'False', 'Hadapsar', 'anil@gmail.com', '8780096524', '0', '2017-02-27 11:44:41', '2017-02-27 11:44:41', 'Amit', 'Jadhav');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `role` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_date`, `updated_date`) VALUES
(2, 'Teacher', '2017-03-01 11:00:45', '2017-03-03 05:10:50'),
(3, 'Supervisor', '2017-02-27 11:46:00', '2017-03-03 05:11:27'),
(9, 'Vice Principle', '2017-03-01 11:01:12', '2017-03-01 11:01:12'),
(10, 'Principle', '2017-03-01 11:01:24', '2017-03-01 11:01:24'),
(11, 'guest', '2017-03-01 11:16:54', '2017-03-01 11:16:54'),
(12, 'sys', '2017-03-01 12:01:35', '2017-03-01 12:01:35'),
(13, 'Teacher', '2017-03-01 12:02:32', '2017-03-01 12:02:32'),
(14, 'System Admin', '2017-03-01 12:03:16', '2017-03-01 12:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_user_relation`
--

CREATE TABLE IF NOT EXISTS `role_user_relation` (
  `id` int(11) NOT NULL,
  `role_name` int(11) DEFAULT NULL,
  `user_name` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_user_relation_user_name`
--

CREATE TABLE IF NOT EXISTS `role_user_relation_user_name` (
  `id` int(11) NOT NULL,
  `roleuserrelation_id` int(11) DEFAULT NULL,
  `staffdetails_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE IF NOT EXISTS `school_details` (
  `id` int(11) NOT NULL,
  `school_name` varchar(250) NOT NULL,
  `school_address` varchar(250) NOT NULL,
  `contact_num` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `website` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`id`, `school_name`, `school_address`, `contact_num`, `email`, `logo`, `created_date`, `updated_date`, `website`) VALUES
(1, 'Bishop', 'India', '9988776656', 'bishop@gmail.com', 'doc/Teacher_1487143983.jpg', '2017-02-03 13:11:22', '2017-02-28 12:16:22', 'www.bishop.com');

-- --------------------------------------------------------

--
-- Table structure for table `secondary_parent_details`
--

CREATE TABLE IF NOT EXISTS `secondary_parent_details` (
  `id` int(11) NOT NULL,
  `sec_parent_name` varchar(45) DEFAULT NULL,
  `sec_parent_mail` varchar(45) DEFAULT NULL,
  `sec_parent_contact` varchar(45) DEFAULT NULL,
  `sec_parent_address` varchar(45) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secondary_parent_details`
--

INSERT INTO `secondary_parent_details` (`id`, `sec_parent_name`, `sec_parent_mail`, `sec_parent_contact`, `sec_parent_address`, `parent_id`, `type`) VALUES
(1, 'Rajan', 'rina@gmail.com', '98765432', 'pune', NULL, 'select'),
(2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'wertyu', 'wertyy', '876543', 'ghj', NULL, 'select'),
(4, NULL, NULL, NULL, NULL, NULL, NULL),
(5, ';lkjh', 'lkjh', 'kjhg', 'jhg', NULL, 'parent'),
(6, 'oooooo', 'lkjh', 'lkjh', 'kjh', NULL, 'parent'),
(7, 'rrrrrrr', 'rrrrrrr', 'rrrrrr', 'rrrrrrr', NULL, 'parent'),
(8, 'vvvvvvv', 'vvvvv', 'vvvv', 'vvvvvv', NULL, 'parent'),
(9, 'yyyyyy', 'jhgjh', 'jhgf', 'hgfdd', NULL, 'guardian'),
(10, 'pppppppp', 'jhgfj', 'hgf', 'hgf', NULL, 'parent'),
(11, 'uuuuuuuu', 'uuuuuuu', 'uuuuuuuu', 'uuuuuu', 12, 'guardian'),
(12, 'tttttttt', 'tttttttt', 'tttttttttt', 'ttttttt', 12, 'parent'),
(13, 'bbbbb', 'trrrrrrrr', '094334', 'dgfhghg', 13, 'parent'),
(14, 'hffffffff', 'hhhhhhhh', 'hhhhhh', 'hhhhh', 13, 'guardian');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `section_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_date`, `updated_date`, `section_code`) VALUES
(6, 'C', '0', '2017-02-07 04:54:17', '2017-02-07 04:54:17', '7'),
(7, 'H', '0', '2017-03-03 05:05:02', '2017-03-03 05:05:02', '111'),
(8, 'E', '0', '2017-03-03 05:05:14', '2017-03-03 05:05:14', '4');

-- --------------------------------------------------------

--
-- Table structure for table `skils_detail`
--

CREATE TABLE IF NOT EXISTS `skils_detail` (
  `id` int(11) NOT NULL,
  `skill` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE IF NOT EXISTS `staff_details` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `contact_num` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `adress` varchar(250) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `is_active` enum('1','0') DEFAULT '1',
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_type` int(15) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`id`, `email`, `first_name`, `middle_name`, `last_name`, `contact_num`, `birth_date`, `adress`, `gender`, `school_id`, `is_active`, `created_date`, `updated_date`, `role_type`, `department_id`, `password`) VALUES
(17, 'riyaz@gmail.com', 'Riyaz', 'S', 'B', '987654321', '2017-03-24', 'pyne', 'False', 1, '0', NULL, NULL, 3, 3, '89f83'),
(19, 'swapnil@gmail.com', 'Swapnil', 'D', 'J', '987654323', '2017-03-03', 'pune', 'False', 1, '0', NULL, NULL, 2, 1, 'abd1c');

-- --------------------------------------------------------

--
-- Table structure for table `staff_document`
--

CREATE TABLE IF NOT EXISTS `staff_document` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `document_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_document`
--

INSERT INTO `staff_document` (`id`, `staff_id`, `document_type`, `document_path`) VALUES
(9, 1, 'PAN', 'doc/PAN_1486463901.jpg'),
(12, 3, 'rfref', 'doc/rfref_1487913367.jpg'),
(13, 4, 'rfref', 'doc/rfref_1487913538.png'),
(14, 5, 'rfref', 'doc/rfref_1487913604.png'),
(15, 6, '', 'doc/_1488019711.sql'),
(17, 7, 'we', 'doc/we_1488021913.jpg'),
(19, 8, 'teacher', 'doc/teacher_1488022104.jpg'),
(20, 9, '', 'doc/_1488168980.jpg'),
(21, 2, 'Teacher', 'doc/Teacher_1488193918.jpg'),
(24, 11, '11', 'doc/11_1488275792.jpg'),
(25, 10, '10', 'doc/10_1488277800.jpg'),
(26, 12, '12', 'doc/12_1488278426.jpg'),
(27, 13, '13', 'doc/13_1488285551.sql'),
(29, 14, '14', 'doc/14_1488289182.sql'),
(30, 15, '15', 'doc/15_1488344913.jpg'),
(37, 17, '17', 'doc/17_1488352402.jpg'),
(42, 16, '16', 'doc/16_1488365604.jpg'),
(43, 18, '18', 'doc/18_1488432462.jpg'),
(44, 19, '19', 'doc/19_1488517206.py'),
(45, 20, '20', 'doc/20_1488517271.py');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_subject_relation`
--

CREATE TABLE IF NOT EXISTS `student_class_subject_relation` (
  `id` int(10) NOT NULL,
  `student_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_subject_relation`
--

INSERT INTO `student_class_subject_relation` (`id`, `student_id`, `class_id`, `subject_id`) VALUES
(1, 5, 2, 1),
(2, 5, 2, 1),
(3, 5, 2, 1),
(4, 5, 2, 1),
(5, 5, 2, 1),
(6, 5, 2, 1),
(7, 5, 2, 1),
(8, 5, 2, 1),
(9, 5, 2, 1),
(10, 5, 2, 1),
(11, 6, 11, 1),
(12, 6, 11, 2),
(13, 6, 11, 1),
(14, 6, 11, 2),
(15, 7, 11, 1),
(16, 7, 11, 2),
(17, 7, 11, 1),
(18, 7, 11, 1),
(19, 7, 11, 1),
(20, 8, 11, 1),
(21, 8, 11, 2),
(22, 8, 11, 1),
(23, 8, 11, 2),
(24, 8, 11, 1),
(25, 8, 11, 1),
(26, 8, 11, 1),
(27, 7, 11, 1),
(28, 9, 11, 1),
(29, 9, 11, 2),
(30, 9, 11, 3),
(31, 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `id` int(11) NOT NULL,
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
  `allergic` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `first_name`, `birth_date`, `gender`, `student_enrollment_num`, `class_name`, `mother_name`, `father_name`, `adress`, `email`, `photo`, `school_name`, `is_active`, `created_date`, `updated_date`, `last_name`, `joining_date`, `academic_year`, `section`, `parent_name`, `parent_mail`, `blood_group`, `height`, `weight`, `under_medication`, `allergic`) VALUES
(12, 'Riyaz', '2017-02-03', 'False', '123', 17, 'A', 'S', 'pune', ' riyaz@gmail.com', 'images/Riyaz_2017.02.27.07.46.26.jpg', 1, '0', '2017-02-27 07:46:26', '2017-03-03 13:03:03', 'S', '2017-02-01', 9, 6, 1, 'abx@xyz.com', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_mandatory_subject_mapping`
--

CREATE TABLE IF NOT EXISTS `student_mandatory_subject_mapping` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_medical`
--

CREATE TABLE IF NOT EXISTS `student_medical` (
  `id` int(11) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `height` varchar(250) NOT NULL,
  `weight` varchar(250) NOT NULL,
  `under_medication` varchar(250) NOT NULL,
  `allergic` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_medical`
--

INSERT INTO `student_medical` (`id`, `blood_group`, `height`, `weight`, `under_medication`, `allergic`) VALUES
(13, 'A+', '50', '56', 'no', 'no'),
(14, 'B+', '55', '65', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `is_active` enum('1','0') NOT NULL DEFAULT '1',
  `type` varchar(100) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `is_active`, `type`, `created_date`, `updated_date`, `code`) VALUES
(8, 'maths', '0', 'Mandatory', '2017-03-02 10:47:57', '2017-03-02 10:47:57', '34'),
(9, 'science', '0', 'Optional', '2017-03-03 05:05:31', '2017-03-03 05:05:31', '4');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_class_relation`
--

CREATE TABLE IF NOT EXISTS `supervisor_class_relation` (
  `id` int(11) NOT NULL,
  `supervisor_name` int(11) DEFAULT NULL,
  `class_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor_class_relation`
--

INSERT INTO `supervisor_class_relation` (`id`, `supervisor_name`, `class_name`) VALUES
(13, 1, NULL),
(14, 1, NULL),
(15, 17, NULL),
(16, 17, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_class_relation_class_name`
--

CREATE TABLE IF NOT EXISTS `supervisor_class_relation_class_name` (
  `id` int(11) NOT NULL,
  `supervisorclassrelation_id` int(11) DEFAULT NULL,
  `classdetails_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor_class_relation_class_name`
--

INSERT INTO `supervisor_class_relation_class_name` (`id`, `supervisorclassrelation_id`, `classdetails_id`) VALUES
(27, 13, 4),
(28, 13, 5),
(29, 14, 10),
(30, 15, 17),
(31, 15, 20),
(32, 15, 23),
(33, 16, 24);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject_relation`
--

CREATE TABLE IF NOT EXISTS `teacher_subject_relation` (
  `id` int(11) NOT NULL,
  `teacher_name` int(11) DEFAULT NULL,
  `subject_name` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_subject_relation`
--

INSERT INTO `teacher_subject_relation` (`id`, `teacher_name`, `subject_name`) VALUES
(1, 19, NULL),
(2, 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject_relation_subject_name`
--

CREATE TABLE IF NOT EXISTS `teacher_subject_relation_subject_name` (
  `id` int(11) NOT NULL,
  `teachersubjectrelation_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_subject_relation_subject_name`
--

INSERT INTO `teacher_subject_relation_subject_name` (`id`, `teachersubjectrelation_id`, `subject_id`) VALUES
(1, 1, 8),
(2, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyear_class_relation`
--
ALTER TABLE `academicyear_class_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_academicyear_class_relation_1_idx` (`academic_year`),
  ADD KEY `fk_academicyear_class_relation_2_idx` (`class_id`);

--
-- Indexes for table `academicyear_class_relation_class_id`
--
ALTER TABLE `academicyear_class_relation_class_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `class_details`
--
ALTER TABLE `class_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_academic_year_idx` (`academic_year`),
  ADD KEY `class_details_ibfk_1_idx` (`school_id`);

--
-- Indexes for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_name`),
  ADD KEY `section_id_idx` (`section_name`);

--
-- Indexes for table `class_section_mapping_section_name`
--
ALTER TABLE `class_section_mapping_section_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject_mapping`
--
ALTER TABLE `class_subject_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_id_idx` (`class_name`),
  ADD KEY `fk_subject_id_idx` (`subject_name`);

--
-- Indexes for table `class_subject_mapping_subject_name`
--
ALTER TABLE `class_subject_mapping_subject_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_teacher_mapping`
--
ALTER TABLE `class_teacher_mapping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_name` (`class_name`),
  ADD KEY `teacher_name` (`teacher_name`);

--
-- Indexes for table `class_teacher_mapping_teacher_name`
--
ALTER TABLE `class_teacher_mapping_teacher_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_details`
--
ALTER TABLE `department_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  ADD KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  ADD KEY `easy_thumbnails_source_b068931c` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  ADD KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  ADD KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  ADD KEY `easy_thumbnails_thumbnail_b068931c` (`name`);

--
-- Indexes for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thumbnail_id` (`thumbnail_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents_details`
--
ALTER TABLE `parents_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user_relation`
--
ALTER TABLE `role_user_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role_user_relation_1_idx` (`role_name`),
  ADD KEY `fk_role_user_relation_2_idx` (`user_name`);

--
-- Indexes for table `role_user_relation_user_name`
--
ALTER TABLE `role_user_relation_user_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondary_parent_details`
--
ALTER TABLE `secondary_parent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_secondary_parent_details_1_idx` (`parent_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skils_detail`
--
ALTER TABLE `skils_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_staff_details_1_idx` (`school_id`),
  ADD KEY `fk_staff_details_2_idx` (`department_id`),
  ADD KEY `role` (`role_type`);

--
-- Indexes for table `staff_document`
--
ALTER TABLE `staff_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_staff_document_1_idx` (`staff_id`);

--
-- Indexes for table `student_class_subject_relation`
--
ALTER TABLE `student_class_subject_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `fk_student_details_1_idx` (`class_name`),
  ADD KEY `school_name_idx` (`school_name`),
  ADD KEY `academyc_year_idx` (`academic_year`),
  ADD KEY `section_idx` (`section`),
  ADD KEY `parent_name_fk_idx` (`parent_name`);

--
-- Indexes for table `student_mandatory_subject_mapping`
--
ALTER TABLE `student_mandatory_subject_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_medical`
--
ALTER TABLE `student_medical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisor_class_relation`
--
ALTER TABLE `supervisor_class_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_supervisor_class_relatio_1_idx` (`supervisor_name`),
  ADD KEY `fk_supervisor_class_relatio_3_idx` (`class_name`);

--
-- Indexes for table `supervisor_class_relation_class_name`
--
ALTER TABLE `supervisor_class_relation_class_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subject_relation`
--
ALTER TABLE `teacher_subject_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_teacher_subject_relation_1_idx` (`teacher_name`),
  ADD KEY `fk_teacher_subject_relation_2_idx` (`subject_name`);

--
-- Indexes for table `teacher_subject_relation_subject_name`
--
ALTER TABLE `teacher_subject_relation_subject_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyear_class_relation`
--
ALTER TABLE `academicyear_class_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `academicyear_class_relation_class_id`
--
ALTER TABLE `academicyear_class_relation_class_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_details`
--
ALTER TABLE `class_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `class_section_mapping_section_name`
--
ALTER TABLE `class_section_mapping_section_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `class_subject_mapping`
--
ALTER TABLE `class_subject_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `class_subject_mapping_subject_name`
--
ALTER TABLE `class_subject_mapping_subject_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `class_teacher_mapping`
--
ALTER TABLE `class_teacher_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `class_teacher_mapping_teacher_name`
--
ALTER TABLE `class_teacher_mapping_teacher_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department_details`
--
ALTER TABLE `department_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `easy_thumbnails_source`
--
ALTER TABLE `easy_thumbnails_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parents_details`
--
ALTER TABLE `parents_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `role_user_relation`
--
ALTER TABLE `role_user_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role_user_relation_user_name`
--
ALTER TABLE `role_user_relation_user_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secondary_parent_details`
--
ALTER TABLE `secondary_parent_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `skils_detail`
--
ALTER TABLE `skils_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `staff_document`
--
ALTER TABLE `staff_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `student_class_subject_relation`
--
ALTER TABLE `student_class_subject_relation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `student_mandatory_subject_mapping`
--
ALTER TABLE `student_mandatory_subject_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_medical`
--
ALTER TABLE `student_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `supervisor_class_relation`
--
ALTER TABLE `supervisor_class_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `supervisor_class_relation_class_name`
--
ALTER TABLE `supervisor_class_relation_class_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `teacher_subject_relation`
--
ALTER TABLE `teacher_subject_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_subject_relation_subject_name`
--
ALTER TABLE `teacher_subject_relation_subject_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academicyear_class_relation`
--
ALTER TABLE `academicyear_class_relation`
  ADD CONSTRAINT `fk_academicyear_class_relation_1` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_academicyear_class_relation_2` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `class_details`
--
ALTER TABLE `class_details`
  ADD CONSTRAINT `class_details_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_academic_year` FOREIGN KEY (`academic_year`) REFERENCES `academic_year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_section_mapping`
--
ALTER TABLE `class_section_mapping`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `section_id` FOREIGN KEY (`section_name`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_subject_mapping`
--
ALTER TABLE `class_subject_mapping`
  ADD CONSTRAINT `fk_class_subject_mapping_1` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_class_subject_mapping_2` FOREIGN KEY (`subject_name`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_teacher_mapping`
--
ALTER TABLE `class_teacher_mapping`
  ADD CONSTRAINT `class_teacher_mapping_ibfk_1` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_teacher_mapping_ibfk_2` FOREIGN KEY (`teacher_name`) REFERENCES `staff_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `easy_thumbnails_thumbnail`
--
ALTER TABLE `easy_thumbnails_thumbnail`
  ADD CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`);

--
-- Constraints for table `easy_thumbnails_thumbnaildimensions`
--
ALTER TABLE `easy_thumbnails_thumbnaildimensions`
  ADD CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`);

--
-- Constraints for table `role_user_relation`
--
ALTER TABLE `role_user_relation`
  ADD CONSTRAINT `fk_role_user_relation_1` FOREIGN KEY (`role_name`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_role_user_relation_2` FOREIGN KEY (`user_name`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `secondary_parent_details`
--
ALTER TABLE `secondary_parent_details`
  ADD CONSTRAINT `fk_secondary_parent_details_1` FOREIGN KEY (`parent_id`) REFERENCES `parents_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `staff_details`
--
ALTER TABLE `staff_details`
  ADD CONSTRAINT `staff_details_ibfk_1` FOREIGN KEY (`role_type`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisor_class_relation`
--
ALTER TABLE `supervisor_class_relation`
  ADD CONSTRAINT `fk_supervisor_class_relatio_1` FOREIGN KEY (`supervisor_name`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supervisor_class_relatio_3` FOREIGN KEY (`class_name`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `teacher_subject_relation`
--
ALTER TABLE `teacher_subject_relation`
  ADD CONSTRAINT `fk_teacher_subject_relation_1` FOREIGN KEY (`teacher_name`) REFERENCES `staff_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_teacher_subject_relation_2` FOREIGN KEY (`subject_name`) REFERENCES `subject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
