-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2017 at 06:20 AM
-- Server version: 5.6.24
-- PHP Version: 5.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolzenproject`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `created_date`, `updated_date`, `academic_yearcode`, `start_date`, `end_date`, `academic_year`) VALUES
(8, NULL, NULL, 'AY 15-16', '2015-01-01', '2016-01-01', '2015-16'),
(9, NULL, NULL, 'AY 16-17', '2016-01-01', '2017-01-01', '2016-17'),
(13, NULL, NULL, 'AY 14-15', '2014-01-01', '2015-01-20', '2014-2015'),
(14, NULL, NULL, 'new year', '2017-02-01', '2017-01-12', 'new year'),
(15, NULL, NULL, '300', '2017-02-01', '2017-02-02', '10th class'),
(16, NULL, NULL, 'r15', '2017-02-17', '2017-05-19', 'class 9'),
(17, NULL, NULL, '444', '2017-02-03', '2017-02-17', 'present year'),
(19, NULL, NULL, 'xvxfd', '2017-02-08', '2015-10-07', 'dsgdfg'),
(20, NULL, NULL, '1ST', '2017-02-02', '2017-02-25', '1ST'),
(21, NULL, NULL, '123', '2017-02-09', '2019-01-01', 'asdfgh'),
(22, NULL, NULL, 'AY 2010-012', '2010-02-01', '2011-02-01', '2010-2012'),
(23, NULL, NULL, '0012', '2015-01-01', '2016-01-01', 'AY 2015-2016'),
(24, NULL, NULL, '002', '2016-01-01', '2017-01-01', 'AY 2016-2017'),
(25, NULL, NULL, '003', '2017-01-01', '2018-01-01', 'AY 2017-2018'),
(26, NULL, NULL, '004', '2018-01-01', '2019-01-01', 'AY 2018-2019'),
(27, NULL, NULL, '34', '2017-01-01', '2019-01-01', 'sdf'),
(28, NULL, NULL, '005', '2019-01-01', '2020-01-01', 'AY 2019-2020');

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

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
(63, 'Can delete student class subject relation', 21, 'delete_studentclasssubjectrelation');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$2RLNrpLZR89m$iRHjSt9D4p/WN7NXjw+oHwkHeSo/V33kWRgeiKkWWOs=', '2017-02-09 06:16:30.022434', 1, 'pavan', '', '', '', 1, 1, '2017-01-11 07:56:52.404440');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_details`
--

INSERT INTO `class_details` (`id`, `class_name`, `is_active`, `school_id`, `created_date`, `updated_date`, `class_code`, `academic_year`) VALUES
(4, 'Class IV', '0', 1, '2017-02-06 07:35:13', '2017-02-06 07:35:13', '123', 9),
(5, 'I', '0', 1, '2017-02-06 08:42:10', '2017-02-06 08:42:10', '0012', 8),
(6, 'I', '0', 1, '2017-02-06 08:42:29', '2017-02-06 08:42:29', '002', 9),
(10, 'SSC', '0', 1, '2017-02-06 12:55:41', '2017-02-06 12:55:41', 'A-01', 8),
(11, 'Grade-1', '0', 1, '2017-02-06 17:10:39', '2017-02-06 17:10:39', '002', 9),
(12, 'Class V', '0', 1, '2017-02-07 04:53:49', '2017-02-07 04:53:49', '005', 13),
(13, 'Class VI', '0', 1, '2017-02-07 05:24:37', '2017-02-07 05:24:37', '5', 8),
(14, 'S.S.C', '0', 1, '2017-02-07 12:43:40', '2017-02-07 12:43:40', '011', 22),
(15, 'I', '0', 1, '2017-02-08 04:56:49', '2017-02-08 04:56:49', '001', 23),
(16, 'II', '0', 1, '2017-02-08 04:57:03', '2017-02-08 04:57:03', '002', 24),
(17, 'III', '0', 1, '2017-02-08 04:57:13', '2017-02-08 04:57:13', '003', 25),
(18, 'IV', '0', 1, '2017-02-08 04:57:24', '2017-02-08 04:57:24', '004', 26),
(19, 'I', '0', 1, '2017-02-08 04:57:40', '2017-02-08 04:57:40', '004', 23),
(20, 'IV', '0', 1, '2017-02-08 05:03:10', '2017-02-08 05:03:10', '004', 26),
(21, 'V', '0', 1, '2017-02-08 05:08:19', '2017-02-08 05:08:19', '0051', 28),
(22, 'swq', '0', 1, '2017-02-08 13:31:07', '2017-02-08 13:31:07', 'ss', 8);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_relation`
--

CREATE TABLE IF NOT EXISTS `class_section_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_section_relation`
--

INSERT INTO `class_section_relation` (`id`, `class_id`, `section_id`) VALUES
(1, 10, 5),
(2, 10, 6),
(3, 11, 5),
(4, 11, 6),
(5, 5, 2),
(6, 5, 3),
(7, 5, 6),
(8, 14, 3),
(9, 14, 5),
(10, 14, 6),
(11, 14, 3),
(12, 4, 2),
(13, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_relation`
--

CREATE TABLE IF NOT EXISTS `class_subject_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_relation`
--

INSERT INTO `class_subject_relation` (`id`, `class_id`, `subject_id`) VALUES
(10, 2, 2),
(12, 11, 2),
(17, 5, 2),
(29, 4, 2),
(30, 4, 18);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'Registration', 'academicdetails'),
(14, 'Registration', 'academicyear'),
(7, 'Registration', 'classdetails'),
(15, 'Registration', 'classsectionrelation'),
(16, 'Registration', 'classsubjectrelation'),
(17, 'Registration', 'departmentdetails'),
(18, 'Registration', 'parentsdetails'),
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
(15, 'Registration', '0002_academicdetails_academicyear_classsectionrelation_classsubjectrelation_departmentdetails_parentsdeta', '2017-02-01 11:58:01.709423');

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
('12xoi23crjnwh3pt55ugfqpclfmcexmu', 'NTQ1YTYyMWQwZDcwYzA3YTkxNGNhNmRiZTViNjYyMTZhMzQ0Njg0MTp7ImNsYXNzX2lkIjoiMTQiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsInN0dWRlbnRJZDEiOiI5In0=', '2017-02-21 12:45:13.232929'),
('1hjpkv0ui06hir4gjykhk34r04azxaeg', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-17 06:03:06.879528'),
('239fulred0pfdxdnr6kz4dsylfn6m7bt', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 07:37:13.947989'),
('2mdhyzzo4xvdgumfaem04zlt0ghy8vp3', 'ODNmYzEyNDY5OWJiMjUzNWY1YjljMjIyZDlmYzQ3MzQ3NjM0NDM4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjQifQ==', '2017-02-14 10:45:26.939549'),
('3a7kk90a244vsp2sg6jldvc3ow7flzbj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-02 13:11:12.301942'),
('3kb3as1evl766gwpxowrb0pfpctuztfc', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-23 04:24:31.416480'),
('42st8lzvypzurn5fxbk5yrug6f68653s', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 11:03:02.680757'),
('5qpk241rwcaxrjbzjig7dql0oxkyprep', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 11:50:02.051405'),
('6hw8atxvuu6p18a7f6432sgu7dlu93lp', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-20 11:16:49.459155'),
('6jia88103w2ebqc48otmyh7gemf5ljuo', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-25 13:35:37.022593'),
('6kptuhxw2ubsgjn2xpeh91mwduhu92n6', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 13:03:40.111119'),
('7m38ri0tpcsk6zwx31h5flmwp1mu80va', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 06:03:38.408621'),
('8mtjcrkiegnru263eo1smroydh8j5vpr', 'Yzk2ZGRlYjgyMTZjOTcwZWE2ZWFmNDg0MjIyMTA0OTI4MDRhYWViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 06:31:10.258419'),
('a406jxf1t6wzk9op5diag10fzmrjtfv8', 'NTU0MWYzZjE2NWM1YjRkZGEyZTUxZmE5MzA0NTZjMjAzNWNlN2MxOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 11:35:26.692157'),
('amu9ah1aou8vamh0u98q2u22gmn268nu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 11:34:29.431882'),
('bupbqcqqudr0l1msjnvn9u198rl9zhnn', 'YjNkMzk1YTAzM2U3NTlkYTU2NmUyYjQwNzI5NmI0MWY1MDYxZTkzZjp7ImNsYXNzX2lkIjoiNiIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-23 06:04:40.181178'),
('ctbqt9a4hwqajwqb69kpzbg6v5p7hktv', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-31 12:26:29.469949'),
('ctxexl35g4stwhj9w3ok4xobtp5xaaww', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 05:53:25.239724'),
('d0d2qgh7lvxp6ygypnpgpqkve4km2ohq', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-20 12:00:23.692549'),
('dmpztudzup6llfstw1694basqfrjfzn5', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 12:16:02.567406'),
('e8t31rkyf6hljxhwre47nv8auc9qjexm', 'YzU1Yjk0Zjg3ZjVhNjdhZTY0NjNhNWMzMTNmOWYwMGE0MzU5NzM1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJzdHVkZW50SWQgIjoiNiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzdHVkZW50SWQxIjoiNiJ9', '2017-02-12 12:01:18.385478'),
('epcqvwfymqcd4lfiujths43p9y6h8fkg', 'M2RlMmFlNTVjN2Q0ZTQ3N2NiYzBmNjFhMzE2YmU1MTk2NWMzNTYxNDp7ImNsYXNzX2lkIjoiMTAiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsInN0dWRlbnRJZDEiOiI3In0=', '2017-02-22 05:17:15.919832'),
('fbu8ucpg8zpjghh1ja9st0swac65hulu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 07:44:21.092550'),
('fv3567xsstc7mssk3g6srpt337brtiab', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-30 06:32:20.957511'),
('gkn765tn1xcldt4hjr1ii0esl121ga5p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 13:10:52.470222'),
('gl4ykpbwbuenqgnpks9oto6fx4qccpin', 'ZTQ1ZDdlZjM5ODgwODZkYjVhMGNiZDk1ZjE5MWMyOTI3ZDJiZTdlZDp7ImNsYXNzX2lkIjoiMiIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjkifQ==', '2017-02-21 12:19:56.181036'),
('gq3pt9nya60ifk23exi7w4tq7onlk589', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:18:26.881865'),
('hsfdhljmuv4hsupsa9gtrtob3du8c7ct', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 09:34:27.087757'),
('i6lq8uhy8ndggi0ko6qs5mmbj4t1wm5m', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 12:44:50.974388'),
('inp6wxquq6xlh3aj3p32xp93tvyvvviu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-23 06:16:30.024226'),
('k19fa34bfpbns1xx0oeicyoq6tcibw6z', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:40:31.095196'),
('k91uv2xlni3k1uzmf5qcxfttfdjukwp4', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-23 06:09:03.605309'),
('l1xhmeh9ou3bhnjkek1q9d683ekbv9ap', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 07:51:05.169260'),
('l1zoua60e995brk4vyfi3jrinrevxv6r', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:53:49.611756'),
('m5yhfvvzbw4bx8svhe0mnxwnlsvpmbcc', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 05:18:06.639025'),
('m8xh4rgqpb9lywvhl5jfmixm5ildnpyr', 'MzNhNjA3MjM0NDJlMTk2NDE2NGVmYmFmMDRhY2FjNGQ4NDEwNzdkYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjcifQ==', '2017-02-21 11:41:15.846541'),
('nsd0ftgxbyy180me4hbqmhkgwver6mzj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-26 10:22:11.143025'),
('nstf13rzhl10ja5qsq5tjfp1zumkfg1b', 'MGU0YjFlYzliYWUyNWQyYmUxNDJjZTY1NDdkNDY1Y2UzMzM2OGJhNTp7ImNsYXNzX2lkIjoiMjEiLCJfYXV0aF91c2VyX2hhc2giOiJjZmZmZDYyNWM1Y2NmNTRkZjYzZmExMGQ3NzM5MmY5MjI1YzA4Yzg5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsInN0dWRlbnRJZDEiOiIxNSJ9', '2017-02-22 09:01:48.522786'),
('oekg4rn9ebse4em8c6n3zs9opmdtw9oe', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:04:13.340386'),
('p4gs28j7e4pwbrqz43o8sps55rzc32r6', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-23 05:40:55.517370'),
('pmnawqv8xe79dz9tucz6a5lo0vm8nka6', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-22 14:35:15.320119'),
('qfcziuza678gi3bjtktlxao3e6k9jlvy', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 05:24:53.627791'),
('qm0v68931f8opgihfd3c408xupwls77p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-20 12:52:50.810735'),
('qond1yz4h96v3eso4hpffqoy0g4hh8ci', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 11:23:46.758065'),
('qz7usm6yqtnyel64eh4jzek3sp8hi78x', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-21 09:39:21.639044'),
('t3kwb87ioa92almiglui1v5ulcy3z7xj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-17 10:43:24.701588'),
('t59w3hpi9zle5sicj7ddrm5e9tu0m1q9', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:37:49.352015'),
('texw13a3jecain0lttbaly77zougs91l', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 05:09:35.874453'),
('th9ufjnovuzjutxmsfy9vr5ded82prxp', 'OWYyZTEwNjkyMjI5YjAyZTFlOTE5ZWI1ZTdiYzRhMzYyYzRjZDllYjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjE2In0=', '2017-02-22 11:40:53.601819'),
('ucgw3cixtgulokhxqhpumzs7indc0n7x', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-31 06:21:56.534382'),
('uxco2of9n7eo0osigr5hb7k9l75n8u7a', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-13 13:46:06.855154'),
('vlzwihn2snd8s1o4ypdb0grrho9extmb', 'OGQwNWQ0OTYxNjBlZThjMDAzMTc5ZDRiYTNkMjNmNTI5YmFlNWFiYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjkifQ==', '2017-02-21 11:48:44.764665'),
('w5ai295ir65sbj0m24cd0og6ekvijn0y', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 09:45:03.804329'),
('xy76kdt9nl08y6pu32fxhctor7oput8u', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 05:45:34.745503'),
('yirk30wvexp7h44jmiy91er1629vmy3k', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-03 06:56:31.601067');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(250) NOT NULL,
  `weightage` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_details`
--

INSERT INTO `parents_details` (`id`, `name`, `birth_date`, `gender`, `address`, `emai_id`, `contact_num`, `is_active`, `created_date`, `updated`, `middle_name`, `last_name`) VALUES
(1, 'Sudhir', '1965-02-12', 'False', ' ', 'abx@ixyz.com', '97301122333', '0', '2017-02-03 13:31:51', '2017-02-03 13:31:51', 'B', 'Nalee'),
(2, 'Swapnil', '1976-07-06', 'False', '', 'sm@email.com', '9898989898', '0', '2017-02-04 17:39:44', '2017-02-04 17:39:44', 'S', 'M'),
(3, 'Yami', '2017-02-01', 'True', '', 'yami@gmail.com', '8790654321', '0', '2017-02-06 04:43:25', '2017-02-06 04:43:25', 'Gautam', 'Yami'),
(4, 'Rachna', '2017-02-01', 'False', ' punee', 'rachnaa@gmail.com', '98812334561a', '0', '2017-02-07 12:53:11', '2017-02-07 12:53:11', 'Rima', 'Ozaaa'),
(5, 'Lata', '2017-02-01', 'True', ' ', 'lata@gmail.com', '9857802318', '0', '2017-02-07 12:58:15', '2017-02-07 12:58:15', 'Laxmi', 'Tathe'),
(6, 'Pavan', '2015-01-01', 'False', ' ', 'pavan@gmail.com', '9900887766', '0', '2017-02-08 05:22:22', '2017-02-08 05:22:22', 'Python', 'Bandodekar'),
(7, 'Swapnil', '2016-01-01', 'False', '', 'swapnil@gmail.com', '9876543210', '0', '2017-02-08 05:23:37', '2017-02-08 05:23:37', 'Python', 'Jagdale'),
(8, 'Priya', '2017-01-01', 'True', '', 'priya@gmail.com', '9887766550', '0', '2017-02-08 05:24:58', '2017-02-08 05:24:58', 'Python', 'Bhujbal'),
(9, 'Shweta', '2018-01-01', 'True', '', 'shweta@gmail.com', '9223344551', '0', '2017-02-08 05:25:59', '2017-02-08 05:25:59', 'Python', 'Desai'),
(10, 'Ayesha', '2019-01-01', 'True', ' ', 'ayesha@gmail.com', '9112233440', '0', '2017-02-08 05:27:03', '2017-02-08 05:27:03', 'Testing', 'Gadwale'),
(11, 'Shraddha', '2017-02-02', 'True', '', 'shraddha@gmail.com', '99887766554', '0', '2017-02-09 05:39:45', '2017-02-09 05:39:45', 'Odoo', 'Bagde');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL,
  `role` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`id`, `school_name`, `school_address`, `contact_num`, `email`, `logo`, `created_date`, `updated_date`, `website`) VALUES
(1, 'VDSK', 'India', '9988776655', 'vdsk@gmail.com', 'doc/VDSK_1486127482.jpg', '2017-02-03 13:11:22', NULL, 'www.vdsk.com'),
(2, 'Sent-fransisco11', 'pune1', '87755444331', 'sent1@gmail.com', 'doc/Sent-fransisco_1486471840.jpg', '2017-02-07 12:50:40', NULL, 'sentFrancisco1.com'),
(3, 'Bishops', 'Undri', '9123456780', 'bishop@gmail.com', 'doc/Bhoshop_1486533557.jpg', '2017-02-08 05:59:17', NULL, 'www.bishopschool.com'),
(4, 'Vincent', 'Camp', '9887766551', 'vincent@gmail.com', 'doc/Vincent_1486533605.png', '2017-02-08 06:00:05', NULL, 'www.vincent.com'),
(5, 'Mount Carmel', 'Lullanagar', '9112233440', 'carmel@gmail.com', 'doc/Mount_Carmel_1486533647.jpg', '2017-02-08 06:00:47', NULL, 'ww.carmel.com'),
(6, 'Anne''s', 'Camp', '9087654321', 'annes@gmail.com', 'doc/Annes_1486533690.gif', '2017-02-08 06:01:30', NULL, 'www.annes.com'),
(7, 'Patricks', 'Fatimanagar', '9887766550', 'patricks@gmail.com', 'doc/Patricks_1486533732.jpg', '2017-02-08 06:02:12', NULL, 'ww.patricks.com'),
(8, 'cocsit', 'pune', '8421749294', 'cocsit@gmail.com', 'doc/cocsit_1486561476.jpg', '2017-02-08 13:44:36', NULL, 'www.google.com');

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
  `academic_year` int(11) DEFAULT NULL,
  `section_code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_date`, `updated_date`, `academic_year`, `section_code`) VALUES
(2, 'B', '0', '2017-02-06 09:28:31', '2017-02-06 09:28:31', 9, '0021'),
(3, 'A', '0', '2017-02-06 10:20:16', '2017-02-06 10:20:16', 9, 'dd'),
(5, 'A', '0', '2017-02-06 12:58:03', '2017-02-06 12:58:03', 8, 'A001'),
(6, 'C', '0', '2017-02-07 04:54:17', '2017-02-07 04:54:17', 13, '0031'),
(7, 'A12', '0', '2017-02-07 05:24:54', '2017-02-07 05:24:54', 8, '101'),
(8, 'A', '0', '2017-02-08 06:08:56', '2017-02-08 06:08:56', 23, '1'),
(9, 'B', '0', '2017-02-08 06:09:08', '2017-02-08 06:09:08', 24, '2'),
(10, 'C', '0', '2017-02-08 06:09:19', '2017-02-08 06:09:19', 25, '3'),
(11, 'A', '0', '2017-02-08 06:09:34', '2017-02-08 06:09:34', 26, '4'),
(12, 'B', '0', '2017-02-08 06:10:19', '2017-02-08 06:10:19', 28, '5');

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
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`id`, `email`, `first_name`, `middle_name`, `last_name`, `contact_num`, `birth_date`, `adress`, `gender`, `school_id`, `is_active`, `created_date`, `updated_date`, `identity_type`, `department_id`) VALUES
(1, 'oza@asd.com', 'Kavita', 'D', 'Oza', '9898989899', '1979-02-01', 'Kolhapur', 'True', 1, '0', '2017-02-03 13:42:18', '2017-02-03 13:42:18', 'PAN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_document`
--

CREATE TABLE IF NOT EXISTS `staff_document` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `document_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_document`
--

INSERT INTO `staff_document` (`id`, `staff_id`, `document_type`, `document_path`) VALUES
(8, 2, 'Teacher', 'doc/Teacher_1486463871.jpg'),
(14, 3, 'adhar card1', 'doc/adhar_card1_1486548616.jpg'),
(15, 4, 'teacher', 'doc/teacher_1486551333.html'),
(16, 1, 'PAN', 'doc/PAN_1486556970.sql');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_subject_relation`
--

CREATE TABLE IF NOT EXISTS `student_class_subject_relation` (
  `id` int(10) NOT NULL,
  `student_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

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
(30, 10, 15, 5),
(31, 12, 16, 6),
(32, 13, 17, 7),
(33, 13, 17, 7),
(34, 13, 17, 7),
(35, 13, 17, 7),
(36, 13, 17, 7),
(37, 14, 18, 8),
(38, 15, 21, 9),
(39, 16, 17, 7);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `first_name`, `birth_date`, `gender`, `student_enrollment_num`, `class_name`, `mother_name`, `father_name`, `adress`, `email`, `photo`, `school_name`, `is_active`, `created_date`, `updated_date`, `last_name`, `joining_date`, `academic_year`, `section`, `parent_name`, `parent_mail`, `blood_group`, `height`, `weight`, `under_medication`, `allergic`) VALUES
(7, 'Swapnil', '1988-06-15', 'False', '0031', 11, 'T', 'S', ' India   ', ' swap@email.com', '', 1, '0', '2017-02-06 17:18:01', '2017-02-06 17:18:01', 'S', '2017-01-01', 9, 2, 2, 'sm@email.com', 'A+', '56', '40', 'no', 'no'),
(8, 'Shraddha', '1995-01-18', 'True', '0056', 11, 'P', 'S', '  India  ', '  ssd@email.com', '', 1, '0', '2017-02-07 10:47:36', '2017-02-07 10:47:36', 'S', '2017-01-02', 9, 6, 2, 'sm@email.com', 'A+', '56', '45', 'no', 'no'),
(9, 'Shweta', '2017-02-01', 'True', 'EN-002', 11, 'Rohini', 'Pradip', 'pune', 'shweta@gmail.com', 'images/Shweta_2017.02.07.11.48.32.jpg', 1, '0', '2017-02-07 11:48:32', '2017-02-07 11:48:32', 'Desai', '2017-02-01', 8, 2, 2, 'sm@email.com', 'B', '158', '54', 'yes', 'no'),
(10, 'Anill', '2017-01-05', 'True', '1000', 15, 'Geetaa', 'Pavann', '       Punee', '       anil@gmail.comm', '', 3, '0', '2017-02-08 06:23:17', '2017-02-08 06:23:17', 'Yadavv', '2017-01-01', 23, 8, 6, 'pavan@gmail.com', 'A+', '130', '15', 'No', 'No'),
(12, 'Basit', '2017-01-03', 'False', '2000', 16, 'Seetaa', 'Swapnil', '          Punee   ', '          basit@gmail.com', '', 4, '0', '2017-02-08 07:00:43', '2017-02-08 07:00:43', 'Shaikh', '2016-02-04', 24, 9, 7, 'swapnil@gmail.com', 'B+', '120', '17', 'Y', 'Yes'),
(13, 'Chetan', '2017-02-01', 'True', '300', 17, 'Priya', 'Anup', 'Lullanagar', 'chetan@gmail.com', 'images/Chetan_2017.02.08.07.10.45.jpg', 5, '0', '2017-02-08 07:10:45', '2017-02-08 07:10:45', 'Pawar', '2017-02-16', 25, 10, 8, 'priya@gmail.com', 'O+', '110', '15', 'N', 'No'),
(14, 'Deepak', '2017-02-01', 'False', '400', 18, 'Shweta', 'Neel', ' Sinhagad ', ' deepak@gmail.com', '', 6, '0', '2017-02-08 08:54:29', '2017-02-08 08:54:29', 'Nair', '2017-02-15', 26, 11, 9, 'shweta@gmail.com', 'O-ve', '130', '22', 'n', 'no'),
(15, 'Erum', '2017-02-01', 'True', '500', 21, 'Ayesha', 'Muza', ' Wanowari ', ' erum@gmail.com', '', 7, '0', '2017-02-08 09:01:39', '2017-02-08 09:01:39', 'Khan', '2017-02-01', 28, 12, 10, 'ayesha@gmail.com', 'O+ve', '100', '18', 'Yes', 'No'),
(16, 'Sneha', '2017-02-26', 'True', 'EN-123', 17, 'Ritu', 'Ramesh', 'Pune', 'sneha@gmail.com', 'images/Sneha_2017.02.08.11.40.41.jpg', 1, '0', '2017-02-08 11:40:41', '2017-02-08 11:40:41', 'Nerkar', '2017-02-10', 26, 5, 4, 'rachnaa@gmail.com', 'B', '152', '60', 'yes', 'no');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `is_active`, `type`, `created_date`, `updated_date`, `code`) VALUES
(2, 'Social ', '0', 'Mandatory', '2017-02-06 17:07:35', '2017-02-06 17:07:35', '002'),
(18, 'Social Science', '0', 'Optional', '2017-02-08 12:01:34', '2017-02-08 12:01:34', '009'),
(20, 'Marathi', '0', 'Mandatory', '2017-02-08 12:10:34', '2017-02-08 12:10:34', '006'),
(21, 'Hindhi', '0', 'Optional', '2017-02-08 12:10:45', '2017-02-08 12:10:45', '009');

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
-- Indexes for table `class_section_relation`
--
ALTER TABLE `class_section_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id_idx` (`class_id`),
  ADD KEY `section_id_idx` (`section_id`);

--
-- Indexes for table `class_subject_relation`
--
ALTER TABLE `class_subject_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_class_id_idx` (`class_id`),
  ADD KEY `fk_subject_id_idx` (`subject_id`);

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
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sections_1_idx` (`academic_year`);

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
  ADD KEY `fk_staff_details_2_idx` (`department_id`);

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
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `class_section_relation`
--
ALTER TABLE `class_section_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class_subject_relation`
--
ALTER TABLE `class_subject_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parents_details`
--
ALTER TABLE `parents_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `skils_detail`
--
ALTER TABLE `skils_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_document`
--
ALTER TABLE `staff_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `student_class_subject_relation`
--
ALTER TABLE `student_class_subject_relation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
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
-- Constraints for table `class_section_relation`
--
ALTER TABLE `class_section_relation`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `section_id` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
