CREATE DATABASE  IF NOT EXISTS `hacktivity` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `hacktivity`;

DROP TABLE IF EXISTS `bug_reports`;

CREATE TABLE `bug_reports` (
  `BugID` int(11) NOT NULL AUTO_INCREMENT,
  `BugName` varchar(150) NOT NULL,
  `BugNum` varchar(30) NOT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Disclosed` varchar(30) DEFAULT NULL,
  `ReportedTo` varchar(30) NOT NULL,
  `Severity` varchar(30) NOT NULL,
  `Visibility` varchar(30) NOT NULL,
  `Bounty` varchar(30) NOT NULL,
  PRIMARY KEY (`BugID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;