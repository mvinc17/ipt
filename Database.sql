# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.10)
# Database: IPT_Term2_Assignment
# Generation Time: 2016-06-24 00:30:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `purchaseDate` varchar(16) DEFAULT NULL,
  `serialNo` text,
  `assetID` text,
  `itemID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;

INSERT INTO `assets` (`id`, `purchaseDate`, `serialNo`, `assetID`, `itemID`)
VALUES
	(1,'01012015','','57663bd7-89b3-47ca-85d7-52376847a334',1),
	(2,'01012015','','f3a9310f-6a39-4c8e-9ee2-a83865d752e5',1),
	(3,'01012015','','46935362-2a59-45c7-92c3-74e859a95aec',1),
	(4,'01012015','','18d8346b-1704-44a6-9a7d-0def51d7b993',1),
	(5,'01012015','','99e9d97a-4230-4c5b-8338-4c460f4ba31e',1),
	(6,'28022015','','90204746-ad90-4fdf-b7a8-35ba8b8fc1be',2),
	(7,'28022015','','7f010f01-5a5f-4b35-b3e1-e9717c88ab30',2),
	(8,'28022015','','76b0ffb3-776f-4aef-a38c-d5afd19548b4',2),
	(9,'28022015','','a47c4beb-2e47-41c3-b90f-505452a0bb99',2),
	(10,'28022015','','8e78d053-2f39-4cf7-a579-51aa1407f4b9',2),
	(14,'30062015','','abce5768-2017-404f-aecc-42c2a14c79f8',4),
	(15,'30062015','','5015efa1-6050-4e89-a154-c21954c0c7a0',4),
	(16,'30062015','','344d91c5-2a0c-4a77-bda5-8b54f830bd12',4),
	(17,'30082015','','22ac2121-300e-4d8f-8284-8bddceb0d91e',5),
	(18,'30082015','','afc8287c-26f8-4029-9d6b-c4e057d9c4cd',5),
	(19,'30082015','','5df95580-7918-4837-9758-a395fe86c2bd',5),
	(20,'30082015','','32546f01-3386-4d60-9e4f-521c1d8a49ca',5),
	(21,'03062015','','0b02092a-87a4-4e64-948d-ade85fa7ed72',6),
	(22,'03062015','','ae539671-e2d4-4d60-ac11-1b9f9ac2aee7',6),
	(23,'03062015','','fe789ae2-f339-4235-87ca-df4332fa1f0b',6),
	(24,'03062015','','8492c36e-6819-48a7-b4a8-4b0d940466ba',6),
	(25,'03062015','','44574aec-de5b-4dde-924c-debc87d070a6',6),
	(26,'30082015','','53f99a2f-3f80-471f-b2df-e084036d5412',7),
	(27,'30082015','','869bc726-8297-42e6-92fc-a04e94244e0a',7),
	(28,'30082015','','56566de8-fb01-4620-b6bb-9fc140fae7b4',7),
	(29,'30082015','','693a10a9-17e8-4f12-abea-2cce1edbacd6',7),
	(30,'30082015','','7e0aacbc-4532-4f1a-8195-bd804c32867d',7);

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` text,
  `parentCategoryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `categoryName`, `parentCategoryID`)
VALUES
	(1,'BB',NULL),
	(2,'Bench',1),
	(3,'E',NULL),
	(4,'Weights',1),
	(5,'Stepup',3),
	(6,'Rowing',3),
	(7,'Cycling',3),
	(8,'M',NULL),
	(9,'Raylamp',8),
	(10,'Immersion',8);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table hires
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hires`;

CREATE TABLE `hires` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `transactionID` int(11) DEFAULT NULL,
  `hireDate` int(10) DEFAULT NULL,
  `dueDate` int(10) DEFAULT NULL,
  `returnDate` int(10) DEFAULT NULL,
  `assetIDs` text,
  `discountCoefficient` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

LOCK TABLES `hires` WRITE;
/*!40000 ALTER TABLE `hires` DISABLE KEYS */;

INSERT INTO `hires` (`id`, `transactionID`, `hireDate`, `dueDate`, `returnDate`, `assetIDs`, `discountCoefficient`)
VALUES
	(1,1,1022016,NULL,8022016,'1',NULL),
	(2,2,2022016,NULL,9022016,'2',NULL),
	(3,3,3022016,NULL,10022016,'3',NULL),
	(4,4,4022016,NULL,11022016,'4',NULL),
	(5,5,5022016,NULL,12022016,'5',NULL),
	(6,6,6022016,NULL,13022016,'6',NULL),
	(7,7,7022016,NULL,14022016,'7',NULL),
	(8,8,8022016,NULL,15022016,'8',NULL),
	(9,9,9022016,NULL,16022016,'9',NULL),
	(10,10,10022016,NULL,17022016,'10',NULL),
	(11,11,11022016,NULL,18022016,'11',NULL),
	(12,12,12022016,NULL,19022016,'12',NULL),
	(13,13,1022016,NULL,8022016,'13',NULL),
	(14,14,2022016,NULL,9022016,'14',NULL),
	(15,15,3022016,NULL,10022016,'15',NULL),
	(16,16,4022016,NULL,11022016,'16',NULL),
	(17,17,5022016,NULL,12022016,'17',NULL),
	(18,18,6022016,NULL,13022016,'18',NULL),
	(19,19,7022016,NULL,14022016,'19',NULL),
	(20,20,8022016,NULL,15022016,'20',NULL),
	(21,21,9022016,NULL,16022016,'21',NULL),
	(22,22,10022016,NULL,17022016,'22',NULL),
	(23,23,11022016,NULL,18022016,'23',NULL),
	(24,24,12022016,NULL,19022016,'24',NULL),
	(25,25,1022016,NULL,8022016,'25',NULL),
	(26,26,2022016,NULL,9022016,'26',NULL),
	(27,27,3022016,NULL,10022016,'27',NULL),
	(28,28,4022016,NULL,11022016,'28',NULL),
	(29,29,5022016,NULL,12022016,'29',NULL),
	(30,30,6022016,NULL,13022016,'30',NULL),
	(31,31,7022016,NULL,14022016,'1',NULL),
	(32,32,8022016,NULL,15022016,'2',NULL),
	(33,33,9022016,NULL,16022016,'3',NULL),
	(34,34,10022016,NULL,17022016,'4',NULL),
	(35,35,11022016,NULL,18022016,'5',NULL),
	(36,36,12022016,NULL,19022016,'6',NULL),
	(37,37,13022016,NULL,20022016,'7',NULL),
	(38,38,14022016,NULL,21022016,'8',NULL),
	(39,39,15022016,NULL,22022016,'9',NULL),
	(40,40,16022016,NULL,23022016,'10',NULL),
	(41,41,5022016,NULL,12022016,'11',NULL),
	(42,42,6022016,NULL,13022016,'12',NULL),
	(43,43,7022016,NULL,14022016,'13',NULL),
	(44,44,8022016,NULL,15022016,'14',NULL),
	(45,45,9022016,NULL,16022016,'15',NULL),
	(46,46,10022016,NULL,17022016,'16',NULL),
	(47,47,11022016,NULL,18022016,'17',NULL),
	(48,48,12022016,NULL,19022016,'18',NULL),
	(49,49,1022016,NULL,8022016,'19',NULL),
	(50,50,2022016,NULL,9022016,'20',NULL),
	(51,51,3022016,NULL,10022016,'21',NULL),
	(52,52,4022016,NULL,11022016,'22',NULL),
	(53,53,5022016,NULL,12022016,'23',NULL),
	(54,54,6022016,NULL,13022016,'24',NULL),
	(55,55,7022016,NULL,14022016,'25',NULL),
	(56,56,8022016,NULL,15022016,'26',NULL),
	(57,57,9022016,NULL,16022016,'27',NULL),
	(58,58,10022016,NULL,17022016,'28',NULL),
	(59,59,11022016,NULL,18022016,'29',NULL),
	(60,60,12022016,NULL,19022016,'30',NULL),
	(61,61,13022016,NULL,20022016,'5',NULL),
	(62,62,14022016,NULL,21022016,'6',NULL),
	(63,63,15022016,NULL,22022016,'7',NULL),
	(64,64,16022016,NULL,23022016,'8',NULL),
	(65,65,17022016,NULL,24022016,'9',NULL),
	(66,66,18022016,NULL,25022016,'10',NULL),
	(67,67,7022016,NULL,14022016,'11',NULL),
	(68,68,8022016,NULL,15022016,'12',NULL),
	(69,69,9022016,NULL,16022016,'13',NULL),
	(70,70,10022016,NULL,17022016,'14',NULL),
	(71,71,11022016,NULL,18022016,'15',NULL),
	(72,72,12022016,NULL,19022016,'16',NULL),
	(73,73,13022016,NULL,20022016,'17',NULL),
	(74,74,14022016,NULL,21022016,'5',NULL),
	(75,75,15022016,NULL,22022016,'6',NULL),
	(76,76,16022016,NULL,23022016,'7',NULL),
	(77,77,17022016,NULL,24022016,'8',NULL),
	(78,78,6022016,NULL,13022016,'9',NULL),
	(79,79,7022016,NULL,14022016,'10',NULL),
	(80,80,8022016,NULL,15022016,'11',NULL),
	(81,81,9022016,NULL,16022016,'12',NULL),
	(82,82,10022016,NULL,17022016,'13',NULL),
	(83,83,11022016,NULL,18022016,'14',NULL),
	(84,84,12022016,NULL,19022016,'15',NULL),
	(85,85,13022016,NULL,20022016,'16',NULL),
	(86,86,14022016,NULL,21022016,'17',NULL);

/*!40000 ALTER TABLE `hires` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `description` text,
  `hireRate` varchar(16) DEFAULT NULL,
  `categoryID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `categoryID` (`categoryID`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;

INSERT INTO `items` (`id`, `name`, `description`, `hireRate`, `categoryID`)
VALUES
	(1,'Bench',NULL,'10',2),
	(2,'Weights',NULL,'20',4),
	(4,'Stepup',NULL,'10',5),
	(5,'Rowing',NULL,'30',6),
	(6,'Cycling',NULL,'40',7),
	(7,'Raylamp',NULL,'25',9),
	(8,'Immersion',NULL,'75',10);

/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `signupDate` text,
  `streetAddress` text,
  `phoneNumber` varchar(16) DEFAULT NULL,
  `dob` text,
  `fullName` text,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`id`, `signupDate`, `streetAddress`, `phoneNumber`, `dob`, `fullName`)
VALUES
	(1,'2046-02-13','43 World Cl','0740581680','486606438','Arlena Andes'),
	(2,'1289678532','43 World Cl','0740572007','589416196','Cathleen Chain'),
	(3,'1234578550','1 Example St','0740703927','519141012','Carson Cota'),
	(4,'1346496635','1 Example St','0740712060','291005890','Henriette Harrah'),
	(5,'1112052980','1 Menlo Park','0740685972','489253047','Dell Dymond'),
	(6,'639722980','12 Hello Rd','0740685186','608834036','Julia Jasmin'),
	(7,'11961941','1 Menlo Park','0740701626','417407220','Gloria Goettl'),
	(8,'1390715820','1 Menlo Park','0740905958','186793484','Tish Treat'),
	(9,'578512364','1 Example St','0740644231','250531167','Roselia Root'),
	(10,'1260990384','12 Hello Rd','0740961689','641991473','Christena Casler'),
	(11,'483866015','12 Hello Rd','0740659132','226927764','Basil Borrego'),
	(12,'734465208','1 Menlo Park','0740797659','237008213','Rocco Roman'),
	(13,'348522960','43 World Cl','0740903779','616627401','Arlena Andes'),
	(14,'556154175','1 Example St','0740691900','354482188','Lorilee Lister'),
	(15,'1028103665','1 Menlo Park','0740927021','594102703','Meredith Mceachern'),
	(16,'527476104','1 Menlo Park','0740931609','690094312','Maxima Mencer'),
	(17,'976372292','1 Example St','0740546808','480880477','Erasmo Ezell'),
	(18,'599601695','43 World Cl','0740639642','676042206','Ronna Rambin'),
	(19,'334906934','12 Hello Rd','0740993792','667247101','Eufemia Ebel'),
	(20,'215403014','1 Menlo Park','0740994447','351867697','Diedre Dorrell'),
	(21,'652584999','43 World Cl','0740561005','754206889','Joanne Joslyn'),
	(22,'1319928058','12 Hello Rd','0740632418','549933802','Daniele Dickie'),
	(23,'141356265','1 Example St','0740650423','417325343','Rubye Radford'),
	(24,'1021749356','1 Example St','0740631771','331603071','Nathanael Neri'),
	(25,'283810222','1 Example St','0740947699','551214913','Particia Pellegrini'),
	(26,'269240219','1 Example St','0740692815','376964200','Nicolas Nourse'),
	(27,'895466987','12 Hello Rd','0740599574','693140205','Belia Bucy'),
	(28,'1291195288','1 Example St','0740599979','297696104','Halina Heiner'),
	(29,'1335833351','1 Example St','0740603492','741945555','Cheryl Creasy'),
	(30,'876394686','12 Hello Rd','0740725732','635037419','Ira Iddings'),
	(31,'609889876','1 Menlo Park','0740603726','102931823','Tressa Tufts'),
	(32,'1122225236','12 Hello Rd','0740755177','877312352','Nanci Nevels'),
	(33,'876984491','12 Hello Rd','0740795339','715200213','Lizzette Lilly'),
	(34,'700203308','43 World Cl','0740624000','80488559','Roxanne Rucker'),
	(35,'336944132','12 Hello Rd','0740927907','100748071','Gilberto Go'),
	(36,'679880910','43 World Cl','0740736793','342580200','Rossana Riehl'),
	(37,'274884291','1 Menlo Park','0740620109','718353886','Ellie Eades'),
	(38,'1387048059','1 Menlo Park','0740757066','330864479','Michell Muff'),
	(39,'379109334','1 Menlo Park','0740754801','21626614','Donte Dejonge'),
	(40,'1450270530','43 World Cl','0740991739','536969920','Jana Junkins'),
	(41,'456798414','1 Menlo Park','0740705505','721924664','Queenie Quirk'),
	(42,'653051548','1 Menlo Park','0740942570','617719173','Daphne Dumire'),
	(43,'1314322879','1 Menlo Park','0740899809','329158474','Colene Credle'),
	(44,'1040455724','1 Example St','0740876006','820721805','Solange Sandidge'),
	(45,'1181055121','43 World Cl','0740851651','687250116','Anika Ahlquist'),
	(46,'756531703','1 Example St','0740586280','708596400','Salina Scheurer'),
	(47,'1157842299','1 Menlo Park','0740905797','712214632','Alexander Attaway'),
	(48,'785171494','43 World Cl','0740703984','774941617','Rex Rockett'),
	(49,'474397187','1 Menlo Park','0740830150','703484711','Elida Eberhard'),
	(50,'432587331','1 Menlo Park','0740740670','174856579','Karrie Kyer'),
	(51,'344090107','1 Example St','0740790570','863903632','Silvana Shingleton');

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `memberID` int(11) unsigned NOT NULL,
  `transactionType` varchar(32) DEFAULT NULL,
  `transactedItemID` int(11) unsigned NOT NULL,
  `salesPersonID` int(11) DEFAULT NULL,
  `paymentType` varchar(32) DEFAULT NULL,
  `paymentAmount` varchar(32) DEFAULT NULL,
  `paymentStatus` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactedItemID` (`transactedItemID`),
  KEY `id` (`id`),
  KEY `memberID` (`memberID`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`transactedItemID`) REFERENCES `assets` (`id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`memberID`) REFERENCES `members` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;

INSERT INTO `transactions` (`id`, `memberID`, `transactionType`, `transactedItemID`, `salesPersonID`, `paymentType`, `paymentAmount`, `paymentStatus`)
VALUES
	(1,24,'Hire',1,1,'PAYMENT_GENERIC','10.00','PAYMENT_SETTLED'),
	(2,23,'Hire',2,1,'PAYMENT_GENERIC','10.00','PAYMENT_SETTLED'),
	(3,22,'Hire',3,1,'PAYMENT_GENERIC','10.00','PAYMENT_SETTLED'),
	(4,21,'Hire',4,1,'PAYMENT_GENERIC','10.00','PAYMENT_SETTLED'),
	(5,20,'Hire',5,1,'PAYMENT_GENERIC','10.00','PAYMENT_SETTLED'),
	(6,19,'Hire',6,1,'PAYMENT_GENERIC','20.00','PAYMENT_SETTLED'),
	(7,18,'Hire',7,1,'PAYMENT_GENERIC','20.00','PAYMENT_SETTLED'),
	(8,17,'Hire',8,1,'PAYMENT_GENERIC','20.00','PAYMENT_SETTLED'),
	(9,16,'Hire',9,1,'PAYMENT_GENERIC','20.00','PAYMENT_SETTLED'),
	(10,15,'Hire',10,1,'PAYMENT_GENERIC','20.00','PAYMENT_SETTLED'),
	(14,11,'Hire',14,1,'PAYMENT_GENERIC','30.00','PAYMENT_SETTLED'),
	(15,10,'Hire',15,1,'PAYMENT_GENERIC','30.00','PAYMENT_SETTLED'),
	(16,9,'Hire',16,1,'PAYMENT_GENERIC','30.00','PAYMENT_SETTLED'),
	(17,8,'Hire',17,1,'PAYMENT_GENERIC','40.00','PAYMENT_SETTLED'),
	(18,7,'Hire',18,1,'PAYMENT_GENERIC','40.00','PAYMENT_SETTLED'),
	(19,6,'Hire',19,1,'PAYMENT_GENERIC','40.00','PAYMENT_SETTLED'),
	(20,5,'Hire',20,1,'PAYMENT_GENERIC','40.00','PAYMENT_SETTLED'),
	(21,4,'Hire',21,1,'PAYMENT_GENERIC','25.00','PAYMENT_SETTLED'),
	(22,3,'Hire',22,1,'PAYMENT_GENERIC','25.00','PAYMENT_SETTLED'),
	(23,2,'Hire',23,1,'PAYMENT_GENERIC','25.00','PAYMENT_SETTLED'),
	(24,1,'Hire',24,1,'PAYMENT_GENERIC','25.00','PAYMENT_SETTLED'),
	(25,17,'Hire',25,1,'PAYMENT_GENERIC','25.00','PAYMENT_SETTLED'),
	(26,16,'Hire',26,1,'PAYMENT_GENERIC','75.00','PAYMENT_SETTLED'),
	(27,15,'Hire',27,1,'PAYMENT_GENERIC','75.00','PAYMENT_SETTLED'),
	(28,14,'Hire',28,1,'PAYMENT_GENERIC','75.00','PAYMENT_SETTLED'),
	(29,13,'Hire',29,1,'PAYMENT_GENERIC','75.00','PAYMENT_SETTLED'),
	(30,12,'Hire',30,1,'PAYMENT_GENERIC','75.00','PAYMENT_SETTLED');

/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `userID` int(32) DEFAULT NULL,
  `userPass` text,
  `userAccessLevel` enum('ADMIN','ANALYST','SALESPERSON') DEFAULT NULL,
  `lastLogin` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `userID`, `userPass`, `userAccessLevel`, `lastLogin`)
VALUES
	(1,'Hiram',1,'oqefgikolojifpveojniofj9opqaekmgiopvhsaeukgfkladed;hbfruikqwehy8ad$%$#M!IKLNEU2qjno	','ADMIN',1111);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
