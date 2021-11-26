# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             time_table_gen
# Server version:       5.5.11
# Server OS:            Win32
# Target-Compatibility: Same as source server (MySQL 5.5.11)
# max_allowed_packet:   1048576
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/;


#
# Database structure for database 'time_table_gen'
#

CREATE DATABASE `time_table_gen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `time_table_gen`;


#
# Table structure for table 'batch'
#

CREATE TABLE `batch` (
  `b_id` int(11) NOT NULL,
  `batch_name` varchar(250) DEFAULT NULL,
  `batch_add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'batch'
#

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS*/;
INSERT INTO `batch` (`b_id`, `batch_name`, `batch_add_date`, `status`) VALUES
	(1,'SY-A',NULL,NULL),
	(2,'SY-B',NULL,NULL),
	(3,'SY-C',NULL,NULL),
	(4,'TY-A',NULL,NULL),
	(5,'TY-B',NULL,NULL),
	(6,'TY-C',NULL,NULL),
	(7,'SY-A_B_C',NULL,NULL),
	(8,'TY-A_B_C',NULL,NULL);
/*!40000 ALTER TABLE `batch` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'class'
#

CREATE TABLE `class` (
  `c_id` int(11) NOT NULL,
  `class_name` varchar(250) DEFAULT NULL,
  `class_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'class'
#

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS*/;
INSERT INTO `class` (`c_id`, `class_name`, `class_date`, `status`) VALUES
	(1,'S.Y.IT','2017-03-23 06:09:09',1),
	(2,'T.Y.IT',NULL,NULL);
/*!40000 ALTER TABLE `class` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'class_room'
#

CREATE TABLE `class_room` (
  `c_id` int(11) NOT NULL,
  `class_room_name` varchar(250) DEFAULT NULL,
  `class_room_add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'class_room'
#

LOCK TABLES `class_room` WRITE;
/*!40000 ALTER TABLE `class_room` DISABLE KEYS*/;
INSERT INTO `class_room` (`c_id`, `class_room_name`, `class_room_add_date`, `status`) VALUES
	(1,'C-4','2017-03-23 05:25:45',1),
	(2,'C-7',NULL,NULL);
/*!40000 ALTER TABLE `class_room` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'lab'
#

CREATE TABLE `lab` (
  `l_id` int(11) NOT NULL,
  `lab_name` varchar(250) DEFAULT NULL,
  `lab_add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'lab'
#

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS*/;
INSERT INTO `lab` (`l_id`, `lab_name`, `lab_add_date`, `status`) VALUES
	(1,'ITL1',NULL,NULL),
	(2,'ITL2',NULL,NULL),
	(3,'ITL3',NULL,NULL),
	(4,'ITL4',NULL,NULL),
	(5,'COMPL3',NULL,NULL),
	(6,'COMPL4',NULL,NULL);
/*!40000 ALTER TABLE `lab` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'subject'
#

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(150) DEFAULT NULL,
  `sub_add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'subject'
#

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS*/;
INSERT INTO `subject` (`sub_id`, `sub_name`, `sub_add_date`, `status`) VALUES
	(1,'.NET','2017-03-30 05:19:54',1),
	(2,'JScript','2017-03-30 05:20:01',1),
	(3,'OOPS','2017-03-30 05:20:07',1),
	(4,'DCN','2017-03-30 05:20:13',1),
	(5,'DTMP','2017-03-30 05:20:20',1),
	(6,'RDBMS','2017-03-30 05:20:30',1),
	(7,'P & S','2017-03-30 05:23:28',1),
	(8,'MAD','2017-03-30 05:23:34',1),
	(9,'NMA','2017-03-30 05:23:40',1),
	(10,'PHP','2017-03-30 05:23:46',1),
	(11,'ST','2017-03-30 05:23:51',1),
	(12,'JP-II','2017-03-30 05:24:00',1);
/*!40000 ALTER TABLE `subject` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'teacher_subject'
#

CREATE TABLE `teacher_subject` (
  `t_s_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_s_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'teacher_subject'
#

# (No data found.)



#
# Table structure for table 'teacher_subject_class_classroom'
#

CREATE TABLE `teacher_subject_class_classroom` (
  `time_table_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_room_id` int(11) DEFAULT NULL,
  `l_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `hrs` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`time_table_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'teacher_subject_class_classroom'
#

LOCK TABLES `teacher_subject_class_classroom` WRITE;
/*!40000 ALTER TABLE `teacher_subject_class_classroom` DISABLE KEYS*/;
INSERT INTO `teacher_subject_class_classroom` (`time_table_id`, `teacher_id`, `subject_id`, `class_id`, `class_room_id`, `l_id`, `type`, `hrs`, `b_id`, `add_date`, `status`) VALUES
	(2,1,1,1,1,NULL,'theory',4,7,'2017-03-30 07:08:46',0),
	(3,4,6,1,1,NULL,'theory',3,1,'2017-03-30 07:09:20',0),
	(4,5,2,1,1,NULL,'theory',2,7,'2017-03-30 07:11:49',0),
	(5,6,3,1,1,NULL,'theory',3,7,'2017-03-30 07:14:00',0),
	(6,8,4,1,1,NULL,'theory',4,7,'2017-03-30 07:14:24',0),
	(7,9,5,1,1,NULL,'theory',4,7,'2017-03-30 07:14:55',0),
	(8,1,1,1,NULL,3,'pratical',2,1,'2017-04-04 09:51:38',0),
	(9,1,1,1,NULL,5,'pratical',2,2,'2017-04-04 09:52:21',0),
	(10,1,1,1,NULL,5,'pratical',2,3,'2017-04-04 09:52:52',0),
	(11,9,5,1,NULL,3,'pratical',2,1,'2017-04-04 09:54:17',0),
	(12,9,5,1,NULL,6,'pratical',2,2,'2017-04-04 09:54:52',0),
	(13,9,5,1,NULL,4,'pratical',2,3,'2017-04-04 09:55:24',0),
	(14,11,4,1,NULL,2,'pratical',2,1,'2017-04-04 09:56:49',0),
	(15,11,4,1,NULL,3,'pratical',2,2,'2017-04-04 09:57:16',0),
	(16,11,4,1,NULL,6,'pratical',2,3,'2017-04-04 09:57:52',0),
	(17,6,3,1,NULL,2,'pratical',2,1,'2017-04-04 09:58:42',0),
	(18,6,3,1,NULL,6,'pratical',2,2,'2017-04-04 09:59:05',0),
	(19,6,3,1,NULL,5,'pratical',2,3,'2017-04-04 09:59:47',0),
	(20,5,2,1,NULL,2,'pratical',2,1,'2017-04-04 10:01:01',0),
	(21,5,2,1,NULL,3,'pratical',2,2,'2017-04-04 10:01:36',0),
	(22,5,2,1,NULL,5,'pratical',2,3,'2017-04-04 10:02:17',0),
	(23,4,6,1,NULL,3,'pratical',2,1,'2017-04-04 10:03:15',0),
	(24,4,6,1,NULL,2,'pratical',2,2,'2017-04-04 10:04:05',0),
	(25,4,6,1,NULL,5,'pratical',2,3,'2017-04-04 10:04:48',0),
	(26,1,1,1,NULL,1,'tutorial',2,1,'2017-04-05 05:23:51',0),
	(27,1,1,1,NULL,1,'tutorial',2,2,'2017-04-05 05:24:13',0),
	(28,1,1,1,NULL,1,'tutorial',2,3,'2017-04-05 05:24:46',0),
	(29,5,2,1,NULL,6,'tutorial',2,1,'2017-04-05 05:28:39',0),
	(30,5,2,1,NULL,3,'tutorial',2,2,'2017-04-05 05:29:02',0),
	(31,5,2,1,NULL,6,'tutorial',2,3,'2017-04-05 05:29:25',0),
	(32,8,8,2,2,NULL,'theory',4,8,'2017-04-10 03:00:41',0),
	(33,10,9,2,2,NULL,'theory',4,8,'2017-04-10 03:02:00',0),
	(34,2,10,2,2,NULL,'theory',4,8,'2017-04-10 03:02:31',0),
	(35,1,12,2,2,NULL,'theory',4,8,'2017-04-10 03:03:03',0),
	(36,13,11,2,2,NULL,'theory',4,8,'2017-04-10 03:06:31',0),
	(37,2,10,2,NULL,1,'pratical',2,4,'2017-04-11 02:02:52',0),
	(38,2,10,2,NULL,1,'pratical',2,5,'2017-04-11 02:04:01',0),
	(39,2,10,2,NULL,1,'pratical',2,6,'2017-04-11 02:04:52',0),
	(40,2,10,2,NULL,4,'pratical',2,4,'2017-04-11 02:05:54',0),
	(41,2,10,2,NULL,3,'tutorial',2,5,'2017-04-11 02:07:57',0),
	(42,2,10,2,NULL,3,'tutorial',2,6,'2017-04-11 02:08:26',0),
	(43,13,11,2,NULL,4,'pratical',2,4,'2017-04-11 02:09:23',0),
	(44,13,11,2,NULL,1,'pratical',2,5,'2017-04-11 02:09:49',0),
	(45,13,11,2,NULL,4,'pratical',2,6,'2017-04-11 02:10:22',0),
	(46,13,11,2,NULL,1,'tutorial',2,4,'2017-04-11 02:10:49',0),
	(47,13,11,2,NULL,1,'tutorial',2,5,'2017-04-11 02:11:12',0),
	(48,13,11,2,NULL,1,'tutorial',2,6,'2017-04-11 02:11:33',0),
	(49,8,8,2,NULL,2,'pratical',2,4,'2017-04-11 02:12:05',0),
	(50,8,8,2,NULL,1,'pratical',2,5,'2017-04-11 02:12:54',0),
	(51,8,8,2,NULL,1,'pratical',2,6,'2017-04-11 02:13:39',0),
	(52,11,12,2,NULL,2,'pratical',2,4,'2017-04-11 02:14:06',0),
	(53,11,12,2,NULL,2,'pratical',2,5,'2017-04-11 02:14:38',0),
	(54,11,12,2,NULL,4,'pratical',2,6,'2017-04-11 02:15:19',0),
	(55,10,9,2,NULL,2,'pratical',2,4,'2017-04-11 02:15:46',0),
	(56,10,9,2,NULL,2,'pratical',2,5,'2017-04-11 02:16:27',0),
	(57,10,9,2,NULL,3,'pratical',2,6,'2017-04-11 02:17:21',0);
/*!40000 ALTER TABLE `teacher_subject_class_classroom` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'time_table'
#

CREATE TABLE `time_table` (
  `time_table_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_room_id` int(11) DEFAULT NULL,
  `l_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `hrs` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `add_date` datetime DEFAULT NULL,
  `day_id` int(10) unsigned DEFAULT NULL,
  `time_id` int(10) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`time_table_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'time_table'
#

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS*/;
INSERT INTO `time_table` (`time_table_id`, `teacher_id`, `subject_id`, `class_id`, `class_room_id`, `l_id`, `type`, `hrs`, `b_id`, `add_date`, `day_id`, `time_id`, `status`) VALUES
	(86,4,6,1,1,0,'theory',1,0,'2017-04-14 10:03:37','1','1',1),
	(87,9,5,1,1,0,'theory',1,0,'2017-04-14 10:03:37','1','2',1),
	(88,5,2,1,0,2,'pratical',2,1,'2017-04-14 10:03:37','1','4',1),
	(89,1,1,1,0,5,'pratical',2,3,'2017-04-14 10:03:37','1','4',1),
	(90,11,4,1,0,3,'pratical',2,2,'2017-04-14 10:03:37','1','4',1),
	(91,9,5,1,1,0,'theory',1,0,'2017-04-14 10:03:37','1','6',1),
	(92,5,2,1,1,0,'theory',1,0,'2017-04-14 10:03:37','1','7',1),
	(93,6,3,1,0,6,'pratical',2,2,'2017-04-14 10:03:37','1','8',1),
	(94,1,1,1,0,1,'tutorial',2,3,'2017-04-14 10:03:38','1','8',1),
	(95,4,6,1,0,3,'pratical',2,1,'2017-04-14 10:03:38','1','8',1),
	(96,9,5,1,1,0,'theory',1,0,'2017-04-14 10:03:38','2','1',1),
	(97,8,4,1,1,0,'theory',1,0,'2017-04-14 10:03:38','2','2',1),
	(98,6,3,1,0,2,'pratical',2,1,'2017-04-14 10:03:38','2','4',1),
	(99,4,6,1,0,5,'pratical',2,3,'2017-04-14 10:03:38','2','4',1),
	(100,5,2,1,0,3,'tutorial',2,2,'2017-04-14 10:03:38','2','4',1),
	(101,8,4,1,1,0,'theory',1,0,'2017-04-14 10:03:38','2','6',1),
	(102,6,3,1,1,0,'theory',1,0,'2017-04-14 10:03:38','2','7',1),
	(103,5,2,1,0,3,'pratical',2,2,'2017-04-14 10:03:38','2','8',1),
	(104,11,4,1,0,2,'pratical',2,1,'2017-04-14 10:03:38','2','8',1),
	(105,9,5,1,0,4,'pratical',2,3,'2017-04-14 10:03:38','2','8',1),
	(106,4,6,1,1,0,'theory',1,0,'2017-04-14 10:03:38','3','1',1),
	(107,8,4,1,1,0,'theory',1,0,'2017-04-14 10:03:38','3','2',1),
	(108,5,2,1,0,6,'tutorial',2,3,'2017-04-14 10:03:38','3','4',1),
	(109,4,6,1,0,2,'pratical',2,2,'2017-04-14 10:03:38','3','4',1),
	(110,1,1,1,0,1,'tutorial',2,1,'2017-04-14 10:03:38','3','4',1),
	(111,1,1,1,1,0,'theory',1,0,'2017-04-14 10:03:38','3','6',1),
	(112,8,4,1,1,0,'theory',1,0,'2017-04-14 10:03:38','3','7',1),
	(113,6,3,1,0,5,'pratical',2,3,'2017-04-14 10:03:38','3','8',1),
	(114,5,2,1,0,6,'tutorial',2,1,'2017-04-14 10:03:38','3','8',1),
	(115,1,1,1,0,1,'tutorial',2,2,'2017-04-14 10:03:38','3','8',1),
	(116,9,5,1,1,0,'theory',1,0,'2017-04-14 10:03:38','4','1',1),
	(117,1,1,1,1,0,'theory',1,0,'2017-04-14 10:03:39','4','2',1),
	(118,9,5,1,0,3,'pratical',2,1,'2017-04-14 10:03:39','4','4',1),
	(119,5,2,1,0,5,'pratical',2,3,'2017-04-14 10:03:39','4','4',1),
	(120,6,3,1,1,0,'theory',1,0,'2017-04-14 10:03:39','4','6',1),
	(121,5,2,1,1,0,'theory',1,0,'2017-04-14 10:03:39','4','7',1),
	(122,11,4,1,0,6,'pratical',2,3,'2017-04-14 10:03:39','4','8',1),
	(123,1,1,1,0,3,'pratical',2,1,'2017-04-14 10:03:39','4','8',1),
	(124,6,3,1,1,0,'theory',1,0,'2017-04-14 10:03:39','5','1',1),
	(125,1,1,1,1,0,'theory',1,0,'2017-04-14 10:03:39','5','2',1),
	(126,1,1,1,0,5,'pratical',2,2,'2017-04-14 10:03:39','5','4',1),
	(127,1,1,1,1,0,'theory',1,0,'2017-04-14 10:03:39','5','6',1),
	(128,4,6,1,1,0,'theory',1,0,'2017-04-14 10:03:39','5','7',1),
	(129,9,5,1,0,6,'pratical',2,2,'2017-04-14 10:03:39','5','8',1),
	(130,8,8,2,2,0,'theory',1,0,'2017-04-14 10:05:44','1','1',1),
	(131,1,12,2,2,0,'theory',1,0,'2017-04-14 10:05:44','1','2',1),
	(132,8,8,2,0,2,'pratical',2,4,'2017-04-14 10:05:44','1','4',1),
	(133,11,12,2,0,4,'pratical',2,6,'2017-04-14 10:05:44','1','4',1),
	(134,13,11,2,0,1,'tutorial',2,5,'2017-04-14 10:05:44','1','4',1),
	(135,10,9,2,2,0,'theory',1,0,'2017-04-14 10:05:44','1','6',1),
	(136,1,12,2,2,0,'theory',1,0,'2017-04-14 10:05:44','1','7',1),
	(137,2,10,2,0,4,'pratical',2,4,'2017-04-14 10:05:44','1','8',1),
	(138,11,12,2,0,2,'pratical',2,5,'2017-04-14 10:05:44','1','8',1),
	(139,8,8,2,0,1,'pratical',2,6,'2017-04-14 10:05:44','1','8',1),
	(140,8,8,2,2,0,'theory',1,0,'2017-04-14 10:05:44','2','1',1),
	(141,13,11,2,2,0,'theory',1,0,'2017-04-14 10:05:44','2','2',1),
	(142,13,11,2,0,1,'tutorial',2,4,'2017-04-14 10:05:44','2','4',1),
	(143,2,10,2,0,3,'tutorial',2,6,'2017-04-14 10:05:44','2','4',1),
	(144,10,9,2,0,2,'pratical',2,5,'2017-04-14 10:05:44','2','4',1),
	(145,2,10,2,2,0,'theory',1,0,'2017-04-14 10:05:45','2','6',1),
	(146,8,8,2,2,0,'theory',1,0,'2017-04-14 10:05:45','2','7',1),
	(147,13,11,2,0,4,'pratical',2,4,'2017-04-14 10:05:45','2','8',1),
	(148,2,10,2,0,1,'pratical',2,6,'2017-04-14 10:05:45','2','8',1),
	(149,10,9,2,2,0,'theory',1,0,'2017-04-14 10:05:45','3','1',1),
	(150,8,8,2,2,0,'theory',1,0,'2017-04-14 10:05:45','3','2',1),
	(151,10,9,2,0,2,'pratical',2,4,'2017-04-14 10:05:45','3','4',1),
	(152,13,11,2,0,4,'pratical',2,6,'2017-04-14 10:05:45','3','4',1),
	(153,2,10,2,0,1,'pratical',2,5,'2017-04-14 10:05:45','3','4',1),
	(154,1,12,2,2,0,'theory',1,0,'2017-04-14 10:05:45','3','6',1),
	(155,1,12,2,2,0,'theory',1,0,'2017-04-14 10:05:45','3','7',1),
	(156,2,10,2,0,1,'pratical',2,4,'2017-04-14 10:05:45','3','8',1),
	(157,10,9,2,0,3,'pratical',2,6,'2017-04-14 10:05:45','3','8',1),
	(158,13,11,2,2,0,'theory',1,0,'2017-04-14 10:05:45','4','1',1),
	(159,2,10,2,2,0,'theory',1,0,'2017-04-14 10:05:45','4','2',1),
	(160,13,11,2,0,1,'tutorial',2,6,'2017-04-14 10:05:45','4','4',1),
	(161,11,12,2,0,2,'pratical',2,4,'2017-04-14 10:05:45','4','4',1),
	(162,2,10,2,2,0,'theory',1,0,'2017-04-14 10:05:45','4','6',1),
	(163,13,11,2,2,0,'theory',1,0,'2017-04-14 10:05:45','4','7',1),
	(164,2,10,2,0,3,'tutorial',2,5,'2017-04-14 10:05:46','4','8',1),
	(165,13,11,2,2,0,'theory',1,0,'2017-04-14 10:05:46','5','1',1),
	(166,10,9,2,2,0,'theory',1,0,'2017-04-14 10:05:46','5','2',1),
	(167,13,11,2,0,1,'pratical',2,5,'2017-04-14 10:05:46','5','4',1),
	(168,10,9,2,2,0,'theory',1,0,'2017-04-14 10:05:46','5','6',1),
	(169,2,10,2,2,0,'theory',1,0,'2017-04-14 10:05:46','5','7',1),
	(170,8,8,2,0,1,'pratical',2,5,'2017-04-14 10:05:46','5','8',1);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'time_table_day'
#

CREATE TABLE `time_table_day` (
  `day_id` int(11) NOT NULL,
  `day_` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'time_table_day'
#

LOCK TABLES `time_table_day` WRITE;
/*!40000 ALTER TABLE `time_table_day` DISABLE KEYS*/;
INSERT INTO `time_table_day` (`day_id`, `day_`) VALUES
	(1,'Mon'),
	(2,'Tue'),
	(3,'Wed'),
	(4,'Thu'),
	(5,'Fri'),
	(6,'Sat');
/*!40000 ALTER TABLE `time_table_day` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'time_table_time'
#

CREATE TABLE `time_table_time` (
  `time_id` int(11) NOT NULL,
  `time_block` longtext,
  `reason` int(11) DEFAULT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'time_table_time'
#

LOCK TABLES `time_table_time` WRITE;
/*!40000 ALTER TABLE `time_table_time` DISABLE KEYS*/;
INSERT INTO `time_table_time` (`time_id`, `time_block`, `reason`) VALUES
	(0,'Day/Time',2),
	(1,'9:30 To 10:30',1),
	(2,'10:30 To 11:30\r\n',1),
	(3,'11:30 To 12:00\r\n',0),
	(4,'12:00 To 1.00\r\n',1),
	(5,'1:00 To 2.00\r\n',1),
	(6,'2:00 To 3.00\r\n',1),
	(7,'3:00 To 4.00\r\n',1),
	(8,'4:00 To 5.00\r\n',1),
	(9,'5.00 To 6.00\r\n',1);
/*!40000 ALTER TABLE `time_table_time` ENABLE KEYS*/;
UNLOCK TABLES;


#
# Table structure for table 'user'
#

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email_id` varchar(60) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'user'
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS*/;
INSERT INTO `user` (`u_id`, `name`, `email_id`, `password`, `user_type`, `reg_date`, `status`) VALUES
	(1,'NPS','ganeshpatil@gmail.com','gk','Teacher','2017-03-14 11:07:20',1),
	(2,'ABB','abb@gmail.com','abhi','Teacher','2017-03-15 10:22:01',1),
	(3,'Ganesh P','gkcompsci@gmail.com','gk','Incharge','2017-03-15 10:22:01',1),
	(4,'ADK','amolpatil@gmail.com','ap','Teacher','2017-03-30 04:57:56',1),
	(5,'MUK','sonalipatil@gmail.com','sp','Teacher','2017-03-30 04:58:54',1),
	(6,'PNY','sonamkapur@gmail.com','sk','Teacher','2017-03-30 04:59:22',1),
	(7,'Anil Kapur','anilkapur@gmail.com','ak','Teacher','2017-03-30 04:59:40',1),
	(8,'TDP','salmankhan@gmail.com','sk','Teacher','2017-03-30 05:00:11',1),
	(9,'PNY','sakshipatil@gmail.com','sp','Teacher','2017-03-30 05:01:57',1),
	(10,'HFK','hfk@gmail.com','abc','Teacher','2017-03-31 05:14:12',1),
	(11,'V2','v2@gmail.com','gk','Teacher','2017-04-10 11:07:20',1),
	(12,'ST','st@gmail.com','st','Teacher','2017-03-15 10:22:01',1),
	(13,'SDR','sdr@gmail.com','sdr','Teacher','2017-03-30 04:58:54',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS*/;
UNLOCK TABLES;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS*/;
