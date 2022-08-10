/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.30-log : Database - ticketsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ticketsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ticketsystem`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`adminId`,`adminName`,`adminPassword`) values 
(1,'admin','admin');

/*Table structure for table `cabin2` */

DROP TABLE IF EXISTS `cabin2`;

CREATE TABLE `cabin2` (
  `trainId` int(11) DEFAULT NULL,
  `cabinId` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `cabin2_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `cabin2` */

/*Table structure for table `cabin3` */

DROP TABLE IF EXISTS `cabin3`;

CREATE TABLE `cabin3` (
  `trainId` int(11) DEFAULT NULL,
  `cabinId` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `cabin3_ibfk_1` (`trainId`),
  CONSTRAINT `cabin3_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `cabin3` */

/*Table structure for table `cabin4` */

DROP TABLE IF EXISTS `cabin4`;

CREATE TABLE `cabin4` (
  `trainId` int(11) DEFAULT NULL,
  `cabinId` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `cabin4_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `cabin4` */

/*Table structure for table `cabin5` */

DROP TABLE IF EXISTS `cabin5`;

CREATE TABLE `cabin5` (
  `trainId` int(11) DEFAULT NULL,
  `cabinId` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(255) DEFAULT NULL,
  `B` varbinary(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `D` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `cabin5_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `cabin5` */

/*Table structure for table `cabins1` */

DROP TABLE IF EXISTS `cabins1`;

CREATE TABLE `cabins1` (
  `trainId` int(11) DEFAULT NULL,
  `cabinId` int(11) NOT NULL AUTO_INCREMENT,
  `A` varchar(25) DEFAULT NULL,
  `B` varchar(25) DEFAULT NULL,
  `C` varchar(25) DEFAULT NULL,
  `D` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cabinId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `cabins1_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `cabins1` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `trainId` int(11) DEFAULT NULL,
  `employeeId` int(11) NOT NULL AUTO_INCREMENT,
  `employeeName` varchar(255) DEFAULT NULL,
  `employeePassword` varchar(255) DEFAULT NULL,
  `employeeSalary` varchar(255) DEFAULT NULL,
  `dateOfAppointment` varchar(255) DEFAULT NULL,
  `timing` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`trainId`,`employeeId`,`employeeName`,`employeePassword`,`employeeSalary`,`dateOfAppointment`,`timing`,`job`) values 
(1,3,'X','X','1500','12-June-2020','Morninng','Repair');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `trainId` int(11) DEFAULT NULL,
  `scheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `fromStation` varchar(255) DEFAULT NULL,
  `toStation` varchar(255) DEFAULT NULL,
  `timeDeparture` varchar(255) DEFAULT NULL,
  `timeArrival` varchar(255) DEFAULT NULL,
  `fare` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scheduleId`),
  KEY `trainId` (`trainId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`trainId`) REFERENCES `train` (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `schedule` */

insert  into `schedule`(`trainId`,`scheduleId`,`fromStation`,`toStation`,`timeDeparture`,`timeArrival`,`fare`) values 
(2,2,'Pk','Zk','1 A.M','3 A.M','1500');

/*Table structure for table `ticket` */

DROP TABLE IF EXISTS `ticket`;

CREATE TABLE `ticket` (
  `cabinId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `sheduleId` int(11) DEFAULT NULL,
  `ticketId` int(11) NOT NULL AUTO_INCREMENT,
  `ticketStatus` varchar(225) DEFAULT NULL,
  `payment` varchar(225) DEFAULT NULL,
  `date` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `userId` (`userId`),
  KEY `sheduleId` (`sheduleId`),
  KEY `trainId` (`cabinId`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`sheduleId`) REFERENCES `schedule` (`scheduleId`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`cabinId`) REFERENCES `cabins1` (`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ticket` */

/*Table structure for table `ticket2` */

DROP TABLE IF EXISTS `ticket2`;

CREATE TABLE `ticket2` (
  `ticketId` int(11) NOT NULL AUTO_INCREMENT,
  `train` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fromStation` varchar(255) DEFAULT NULL,
  `toStation` varchar(255) DEFAULT NULL,
  `cabin` int(11) DEFAULT NULL,
  `seat` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `date1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ticket2` */

insert  into `ticket2`(`ticketId`,`train`,`username`,`fromStation`,`toStation`,`cabin`,`seat`,`payment`,`date1`) values 
(5,'Express 2','Kazumi_haki','Pk','Zk',1,'seat11','1500','12-Jan-2022'),
(6,'Express 2','user','Pk','Zk',1,'seat7','1500','n/a');

/*Table structure for table `train` */

DROP TABLE IF EXISTS `train`;

CREATE TABLE `train` (
  `trainId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trainId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `train` */

insert  into `train`(`trainId`,`name`,`category`) values 
(1,'Express','ETS Gold'),
(2,'Express 2','ETS Silver'),
(3,'Expreess 3','ETS Platinum');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `emailId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`userPassword`,`phoneNo`,`address`,`emailId`) values 
(2,'user','user','7876','Malaysia','user@gmail.com'),
(3,'user2','user2','7777','Malaysiaa2','user2@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
