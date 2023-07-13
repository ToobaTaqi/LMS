/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.31 : Database - llibrary
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`llibrary` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `llibrary`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`FullName`,`AdminEmail`,`UserName`,`Password`,`updationDate`) values 
(1,'Bashar','bashar@gmail.com','admin','e10adc3949ba59abbe56e057f20f883e','2023-07-11 04:26:29');

/*Table structure for table `tblauthors` */

DROP TABLE IF EXISTS `tblauthors`;

CREATE TABLE `tblauthors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tblauthors` */

insert  into `tblauthors`(`id`,`AuthorName`,`creationDate`,`UpdationDate`) values 
(1,'Bashar','2017-07-08 05:49:09','2023-07-11 04:29:23');

/*Table structure for table `tblbooks` */

DROP TABLE IF EXISTS `tblbooks`;

CREATE TABLE `tblbooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int DEFAULT NULL,
  `AuthorId` int DEFAULT NULL,
  `ISBNNumber` int DEFAULT NULL,
  `BookPrice` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tblbooks` */

insert  into `tblbooks`(`id`,`BookName`,`CatId`,`AuthorId`,`ISBNNumber`,`BookPrice`,`RegDate`,`UpdationDate`) values 
(1,'PHP And MySql programming',5,1,222333,20,'2017-07-08 13:04:55','2017-07-14 22:54:41'),
(3,'physics',6,4,1111,15,'2017-07-08 13:17:31','2017-07-14 23:13:17'),
(4,'test',6,1,1234596,15000,'2023-07-11 04:29:41',NULL);

/*Table structure for table `tblcategory` */

DROP TABLE IF EXISTS `tblcategory`;

CREATE TABLE `tblcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblcategory` */

insert  into `tblcategory`(`id`,`CategoryName`,`Status`,`CreationDate`,`UpdationDate`) values 
(4,'Romantic',1,'2017-07-04 11:35:25','2017-07-06 09:00:42'),
(5,'Technology',1,'2017-07-04 11:35:39','2017-07-08 10:13:03'),
(6,'Science',1,'2017-07-04 11:35:55','0000-00-00 00:00:00'),
(7,'Management',0,'2017-07-04 11:36:16','0000-00-00 00:00:00');

/*Table structure for table `tblissuedbookdetails` */

DROP TABLE IF EXISTS `tblissuedbookdetails`;

CREATE TABLE `tblissuedbookdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookId` int DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int NOT NULL,
  `fine` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tblissuedbookdetails` */

insert  into `tblissuedbookdetails`(`id`,`BookId`,`StudentID`,`IssuesDate`,`ReturnDate`,`RetrunStatus`,`fine`) values 
(1,1,'SID002','2017-07-14 23:09:47','2017-07-15 04:15:20',1,0),
(2,1,'SID002','2017-07-14 23:12:27','2017-07-15 04:15:23',1,5),
(3,3,'SID002','2017-07-14 23:13:40',NULL,0,NULL),
(4,3,'SID002','2017-07-14 23:23:23','2017-07-15 04:22:29',1,2),
(5,1,'SID009','2017-07-15 03:59:26',NULL,0,NULL),
(6,3,'SID011','2017-07-15 11:02:55',NULL,0,NULL),
(7,4,'1','2023-07-11 04:30:26',NULL,0,NULL);

/*Table structure for table `tblstudents` */

DROP TABLE IF EXISTS `tblstudents`;

CREATE TABLE `tblstudents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tblstudents` */

insert  into `tblstudents`(`id`,`StudentId`,`FullName`,`EmailId`,`MobileNumber`,`Password`,`Status`,`RegDate`,`UpdationDate`) values 
(11,'1','Bashar','b@g.c','0315648641','25f9e794323b453885f5181f1b624d0b',1,'2023-07-11 04:20:23',NULL),
(12,'2','Bashar','bb@g.c','0334864653','e10adc3949ba59abbe56e057f20f883e',1,'2023-07-11 04:22:54',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
