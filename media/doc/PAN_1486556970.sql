-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2017 at 05:34 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `created_date`, `updated_date`, `academic_yearcode`, `start_date`, `end_date`, `academic_year`) VALUES
(1, '2017-01-11', '2017-01-11', NULL, NULL, NULL, '2014-15'),
(2, '2017-01-11', '2017-01-11', NULL, NULL, NULL, '2015-16'),
(3, NULL, NULL, '14-15', '2017-01-07', '2017-02-15', '2016-17'),
(4, NULL, NULL, '10-11', '2017-01-12', '2017-03-16', '2010-133'),
(5, NULL, NULL, '12-13', '2017-01-24', '2017-01-02', '2012-13');

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
(1, 'pbkdf2_sha256$30000$2RLNrpLZR89m$iRHjSt9D4p/WN7NXjw+oHwkHeSo/V33kWRgeiKkWWOs=', '2017-02-02 05:24:53.625936', 1, 'pavan', '', '', '', 1, 1, '2017-01-11 07:56:52.404440');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_details`
--

INSERT INTO `class_details` (`id`, `class_name`, `is_active`, `school_id`, `created_date`, `updated_date`, `class_code`, `academic_year`) VALUES
(4, 'ACSsss', '0', 1, '2017-01-24 08:10:31', '2017-01-24 08:10:31', 'C23', 1),
(5, '12', '0', 1, '2017-01-24 09:01:02', '2017-01-24 09:01:02', 'A1', 1),
(6, 'SDE', '0', 1, '2017-01-24 11:37:58', '2017-01-24 11:37:58', 'C345', 1),
(7, 'ascii', '0', 1, '2017-01-30 07:05:29', '2017-01-30 07:05:29', 'c23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `class_section_relation`
--

CREATE TABLE IF NOT EXISTS `class_section_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_relation`
--

CREATE TABLE IF NOT EXISTS `class_subject_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_relation`
--

INSERT INTO `class_subject_relation` (`id`, `class_id`, `subject_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 5, 1);

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
(2, 'IT', NULL, NULL),
(3, 'Bio Technology', NULL, NULL),
(4, 'Food technology', NULL, NULL);

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
('01vpkijsqzlxi2fvrkyffqpfxgeza1ql', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-14 13:46:35.562435'),
('2mdhyzzo4xvdgumfaem04zlt0ghy8vp3', 'ODNmYzEyNDY5OWJiMjUzNWY1YjljMjIyZDlmYzQ3MzQ3NjM0NDM4NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjQifQ==', '2017-02-14 10:45:26.939549'),
('3a7kk90a244vsp2sg6jldvc3ow7flzbj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-02 13:11:12.301942'),
('5qpk241rwcaxrjbzjig7dql0oxkyprep', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 11:50:02.051405'),
('6jia88103w2ebqc48otmyh7gemf5ljuo', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-25 13:35:37.022593'),
('6kptuhxw2ubsgjn2xpeh91mwduhu92n6', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-15 06:57:41.851480'),
('6wyo9ld3qnf4mkg26tujhtlvpcigv5m1', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 14:36:08.020786'),
('8mtjcrkiegnru263eo1smroydh8j5vpr', 'Yzk2ZGRlYjgyMTZjOTcwZWE2ZWFmNDg0MjIyMTA0OTI4MDRhYWViYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 06:31:10.258419'),
('a0988g1la7sheft9u3ycqujkikzlht6l', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 05:13:42.077685'),
('a406jxf1t6wzk9op5diag10fzmrjtfv8', 'NTU0MWYzZjE2NWM1YjRkZGEyZTUxZmE5MzA0NTZjMjAzNWNlN2MxOTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIiwic3R1ZGVudElkMSI6IjEifQ==', '2017-02-13 11:35:26.692157'),
('amu9ah1aou8vamh0u98q2u22gmn268nu', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 05:21:51.623933'),
('ctbqt9a4hwqajwqb69kpzbg6v5p7hktv', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-01-31 12:26:29.469949'),
('ctxexl35g4stwhj9w3ok4xobtp5xaaww', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 05:53:25.239724'),
('e8t31rkyf6hljxhwre47nv8auc9qjexm', 'YzU1Yjk0Zjg3ZjVhNjdhZTY0NjNhNWMzMTNmOWYwMGE0MzU5NzM1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJzdHVkZW50SWQgIjoiNiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzdHVkZW50SWQxIjoiNiJ9', '2017-02-12 12:01:18.385478'),
('fv3567xsstc7mssk3g6srpt337brtiab', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-30 06:32:20.957511'),
('gkn765tn1xcldt4hjr1ii0esl121ga5p', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 13:10:52.470222'),
('gq3pt9nya60ifk23exi7w4tq7onlk589', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:18:26.881865'),
('hsfdhljmuv4hsupsa9gtrtob3du8c7ct', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 09:34:27.087757'),
('i3u4yf6yi1f1cv4uz2jjn7pyxuyvro7p', 'ZTAyZjdmNzA0NWI2YjFlMGRmOGYyYjQ4NThiNmU4NGMwOGU3YmJhNzp7ImNsYXNzX2lkIjoiNCJ9', '2017-02-15 05:52:47.667688'),
('i6lq8uhy8ndggi0ko6qs5mmbj4t1wm5m', 'MGZlOGJmM2U2ZTllZDg0ZjhmYzNiN2YwMDFlZTk3OGZhYzYzNzg5ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-02-15 12:44:50.974388'),
('k19fa34bfpbns1xx0oeicyoq6tcibw6z', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:40:31.095196'),
('l1xhmeh9ou3bhnjkek1q9d683ekbv9ap', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 07:51:05.169260'),
('l1zoua60e995brk4vyfi3jrinrevxv6r', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:53:49.611756'),
('m5yhfvvzbw4bx8svhe0mnxwnlsvpmbcc', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-01 05:18:06.639025'),
('nsd0ftgxbyy180me4hbqmhkgwver6mzj', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-26 10:22:11.143025'),
('oekg4rn9ebse4em8c6n3zs9opmdtw9oe', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-06 13:04:13.340386'),
('qfcziuza678gi3bjtktlxao3e6k9jlvy', 'NDczMWQ4ZGExNGQwOThhZTQzM2YzOTJlNTk0NTA0MjI1ZDFiNDIyNDp7ImNsYXNzX2lkIjoiNCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-16 05:24:53.627791'),
('t59w3hpi9zle5sicj7ddrm5e9tu0m1q9', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-27 11:37:49.352015'),
('texw13a3jecain0lttbaly77zougs91l', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-08 05:09:35.874453'),
('ucgw3cixtgulokhxqhpumzs7indc0n7x', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-31 06:21:56.534382'),
('uxco2of9n7eo0osigr5hb7k9l75n8u7a', 'NjA3Y2VjNDkwMDgxNjdlYTk4NTAwMGJkNzdiNzMyZjhmM2NhNTk3Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImNmZmZkNjI1YzVjY2Y1NGRmNjNmYTEwZDc3MzkyZjkyMjVjMDhjODkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-02-13 13:46:06.855154'),
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_details`
--

INSERT INTO `parents_details` (`id`, `name`, `birth_date`, `gender`, `address`, `emai_id`, `contact_num`, `is_active`, `created_date`, `updated`, `middle_name`, `last_name`) VALUES
(1, 'abc', '2017-01-30', 'female', 'ggf', 'ffg@gmail.com', '5656', '0', '2017-01-29 23:26:16', '2017-01-30 10:38:32', NULL, NULL),
(2, 'hjjj', '2017-01-14', 'False', '', 'hjhgjhgj', 'hghghj', '0', '2017-01-31 13:14:10', '2017-01-31 13:14:10', 'hjhjh', 'hjhgg');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`id`, `school_name`, `school_address`, `contact_num`, `email`, `logo`, `created_date`, `updated_date`, `website`) VALUES
(1, 'VDSK', 'pune', '566565656565', 'vdsk@gmail.com', 'doc/VDSK_1485243198.jpg', '2017-01-24 07:33:18', NULL, 'vdsk.com'),
(2, 'sss', 'sss', '455', 'sss', 'doc/sss_1485243302.jpg', '2017-01-24 07:35:02', NULL, 'sss'),
(3, 'fff', 'ffff', '54554', 'fff', 'doc/fff_1485243370.jpg', '2017-01-24 07:36:10', NULL, 'fff'),
(4, 'sdp', 'sssss', '767876', 'sdp@gmail.com', 'doc/sdp_1485243638.jpg', '2017-01-24 07:40:38', NULL, 'sss'),
(5, 'dffd', 'fgyfg', '788778', 'fdfdfd', 'doc/dffd_1485243874.jpg', '2017-01-24 07:44:34', NULL, 'fdfd'),
(6, 'gfgf', 'hgg', 'ghgh', 'gfgf', 'doc/gfgf_1485248503.jpg', '2017-01-24 09:01:43', NULL, 'gfgf');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_date`, `updated_date`, `academic_year`, `section_code`) VALUES
(6, 'sdf', '0', '2017-01-24 08:10:50', '2017-01-24 08:10:50', 1, NULL),
(7, 'A!', '0', '2017-01-24 09:01:21', '2017-01-24 09:01:21', 1, NULL),
(8, 'A', '0', '2017-01-24 10:55:53', '2017-01-24 10:55:53', 1, 'A-1'),
(9, 'ff', '0', '2017-01-30 09:17:37', '2017-01-30 09:17:37', 1, 'ff');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--

INSERT INTO `staff_details` (`id`, `email`, `first_name`, `middle_name`, `last_name`, `contact_num`, `birth_date`, `adress`, `gender`, `school_id`, `is_active`, `created_date`, `updated_date`, `identity_type`, `department_id`) VALUES
(2, 'asd@asda.com', 'sd', 'asd', 'ads', '21312', '2017-02-22', 'asd', 'False', 1, '0', '2017-02-01 11:49:04', '2017-02-01 11:49:04', 'das', 1),
(3, 'das@aaaa', 'asd', 'das', 'das', '122', '2017-02-11', 'asd', 'False', 1, '0', '2017-02-01 11:52:28', '2017-02-01 11:52:28', 'das', 1),
(4, 'asd@asad.com', 'asd', 'asd', 'das', '123', '2017-02-02', 'asd', 'False', 1, '0', '2017-02-01 11:58:23', '2017-02-01 11:58:23', 'das', 1),
(6, 'asdas@asd', 'asd', 'sdasdas', 'das', '111111', '2017-02-10', 'asdasdas', 'False', 1, '0', '2017-02-01 13:03:53', '2017-02-01 13:03:53', 'as', 3);

-- --------------------------------------------------------

--
-- Table structure for table `staff_document`
--

CREATE TABLE IF NOT EXISTS `staff_document` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `document_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_document`
--

INSERT INTO `staff_document` (`id`, `staff_id`, `document_type`, `document_path`) VALUES
(10, 4, 'das', 'doc/das_1485953570.jpg'),
(11, 2, 'das', 'doc/das_1485953628.png'),
(12, 3, 'das', 'doc/das_1485954163.jpg'),
(13, 6, 'as', 'doc/as_1485954233.jpg'),
(14, 6, 'as', 'doc/as_1485954233_WPVjJ4w.jpg'),
(15, 6, 'as', 'doc/as_1485954233_TfX2qoC.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_subject_relation`
--

CREATE TABLE IF NOT EXISTS `student_class_subject_relation` (
  `id` int(10) NOT NULL,
  `student_id` int(10) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_subject_relation`
--

INSERT INTO `student_class_subject_relation` (`id`, `student_id`, `class_id`, `subject_id`) VALUES
(48, 6, 4, 1),
(49, 1, 4, 1),
(50, 4, 4, 1),
(51, 1, 4, 1),
(52, 4, 4, 1),
(53, 1, 4, 1),
(54, 1, 4, 1),
(55, 1, 4, 1),
(56, 1, 4, 2),
(57, 1, 4, 1),
(58, 1, 4, 2);

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
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `academic_year` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `parent_name` int(11) DEFAULT NULL,
  `parent_mail` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `first_name`, `birth_date`, `gender`, `student_enrollment_num`, `class_name`, `mother_name`, `father_name`, `adress`, `email`, `photo`, `school_name`, `is_active`, `created_date`, `updated_date`, `middle_name`, `last_name`, `joining_date`, `academic_year`, `section`, `parent_name`, `parent_mail`) VALUES
(1, 'priya', '2017-01-12', 'False', 'en-123', 4, 'fff', 'ff', '  ggfg  ', '  ff@gmail.com', '', 2, '0', '2017-01-30 06:30:07', '2017-01-30 06:30:07', 'j', 'bhujbal', '2017-01-20', 1, 6, 1, 'a@gmail.com'),
(2, 'gf', '2017-01-13', 'False', 'gf33', 6, 'fgd', 'g', 'fgfg', 'gf', 'images/gf_2017.01.30.09.11.20.jpg', 2, '0', '2017-01-30 09:11:20', '2017-01-30 09:11:20', 'gf', 'dg', '2017-01-09', 5, 6, 1, 'gffg'),
(3, 'qq', '2017-01-22', 'False', 'gg', 6, 'qq', 'qq', 'gg', 'qq', 'images/qq_2017.01.30.09.13.59.jpg', 1, '0', '2017-01-30 09:13:59', '2017-01-30 09:13:59', 'qq', 'qq', '2017-01-27', 3, 6, 1, 'ggg'),
(4, 'aa', '2017-01-29', 'True', 'aa', 4, 'aa', 'aa', 'aa', 'aa', 'images/aa_2017.01.30.09.15.54.jpg', 2, '0', '2017-01-30 09:15:54', '2017-01-30 09:15:54', 'aa', 'aa', '2017-01-13', 4, 6, 1, 'aaa'),
(5, 'as', '2017-01-24', 'False', 'sdf', 6, 'sa', 'sdf', ' sss ', ' sd', '', 3, '0', '2017-01-31 13:47:58', '2017-01-31 13:47:58', 'sd', 'sa', '2017-01-24', 3, 6, 1, 'ffg@gmail.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `is_active`, `type`, `created_date`, `updated_date`, `code`) VALUES
(13, 'ssdasdas', '0', 'Mandatory', '2017-02-01 13:38:50', '2017-02-01 13:38:50', 'ssdd');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `class_subject_relation`
--
ALTER TABLE `class_subject_relation`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `skils_detail`
--
ALTER TABLE `skils_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `staff_details`
--
ALTER TABLE `staff_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `staff_document`
--
ALTER TABLE `staff_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `student_class_subject_relation`
--
ALTER TABLE `student_class_subject_relation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
