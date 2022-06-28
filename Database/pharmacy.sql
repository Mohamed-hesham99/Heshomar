-- Host: pharmacy.cvhqkkyrqcea.eu-central-1.rds.amazonaws.com    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Batch_ID` varchar(255) NOT NULL,
  `Quantity` int NOT NULL,
  `Cost_Price` float NOT NULL,
  `Sell_Price` float NOT NULL,
  `Production_Date` date NOT NULL,
  `Expire_Date` date NOT NULL,
  `Purchase_ID` int NOT NULL,
  `Medicine_ID` int NOT NULL,
  `Supplier_ID` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Supplier_ID` (`Supplier_ID`),
  KEY `Medicine_ID` (`Medicine_ID`),
  CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`ID`),
  CONSTRAINT `batch_ibfk_2` FOREIGN KEY (`Medicine_ID`) REFERENCES `medicine_information` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (1,'112',20,10000,25000,'2022-01-01','2025-01-01',0,1,1);
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_information`
--

DROP TABLE IF EXISTS `bill_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Invoice_No` varchar(255) NOT NULL,
  `Total_Amount` float NOT NULL,
  `Discount` varchar(10) NOT NULL,
  `Discount_Amount` float NOT NULL,
  `Total_Payable` float NOT NULL,
  `Paid` float NOT NULL,
  `Returned` float NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_information`
--

LOCK TABLES `bill_information` WRITE;
/*!40000 ALTER TABLE `bill_information` DISABLE KEYS */;
INSERT INTO `bill_information` VALUES (1,'525',1200,'10',120,1080,1080,0,'2022-06-06'),(2,'IN-11143543444',50,'5',2.5,47.5,66,18.5,'2022-06-23'),(3,'324',60,'5',3,57,100,43,'2022-06-19'),(4,'IN-101342434',67,'3',2.01,64.99,100,35.01,'2022-06-29'),(5,'IN-111213213',17,'5',0.85,16.15,34,17.85,'2022-06-28'),(6,'B1014',30,'2',0.6,29.4,25,-4.4,'2022-06-28'),(7,'IN-111',6,'2',0.12,5.88,10,4.12,'2022-06-19'),(8,'New101',4,'0',0,4,5,1,'2022-06-19'),(11,'New-102',4,'1',0.04,3.96,23,19.04,'2022-06-20'),(12,'IN-1111',62,'5',3.1,58.9,100,41.1,'2022-06-19'),(13,'412',100,'10',0,0,42,12,'2022-06-25'),(14,'41241',800,'10',80,720,800,80,'2022-06-25');
/*!40000 ALTER TABLE `bill_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (6,'Tablet'),(7,'Suppository'),(8,'Paediatric Drops'),(9,'Suspension'),(10,'Syrup'),(11,'Cream'),(12,'Vaginal Tablet'),(13,'Eye Drops'),(14,'Capsule'),(15,'IM/IV Injection'),(16,'IV Infusion'),(17,'IS Injection'),(18,'Sublingual Tablet'),(19,'Spray'),(20,'SC Injection'),(21,'Nasal Drops'),(22,'HFA Inhaler ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drug_generic_name`
--

DROP TABLE IF EXISTS `drug_generic_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drug_generic_name` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Generic_Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_generic_name`
--

LOCK TABLES `drug_generic_name` WRITE;
/*!40000 ALTER TABLE `drug_generic_name` DISABLE KEYS */;
INSERT INTO `drug_generic_name` VALUES (3,'PARACETAMOL (ACETAMINOPHEN)','Paracetamol 500mgs'),(4,'PARACETAMOL + CAFFEINE','Paracetamol 500mg + Caffeine 65mg'),(5,'Basak extract','Basak extract'),(6,'PARACETAMOL + TRAMADOL','Paracetamol 325mg + Tramadol 37.5mg'),(7,'DIPHENHYDRAMINE','Diphenhydramine 10mg/5ml'),(8,'CLOTRIMAZOLE','Clotrimazole 10mg/gm'),(9,'KETOTIFEN','Ketotifen Fumarate 0.025%'),(10,'OLOPATADINE','Olopatadine 0.1%'),(11,'CETIRIZINE','Cetirizine 10mg'),(12,'ALBENDAZOLE','Albendazole 400mg'),(13,'AMBRISENTAN','Ambrisentan 5mg'),(14,'AMBROXOL','Ambroxol 75mg'),(15,'AAA','VVB');
/*!40000 ALTER TABLE `drug_generic_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Manufacturer_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'SQUARE'),(2,'INCEPTA PHARMA'),(3,'BEXIMCO'),(4,'OPSONIN PHARMA'),(5,'RENATA'),(6,'ESKAYEF'),(7,'ACME'),(8,'A.C.I.'),(9,'ARISTOPHARMA'),(10,'DRUG INTERNATIONAL'),(11,'HEALTHCARE PHARMA'),(12,'ORION PHARMA LTD.'),(13,'test 1');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_information`
--

DROP TABLE IF EXISTS `medicine_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine_information` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Medicine_Name` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Generic_ID` int NOT NULL,
  `Manufacturer_ID` int NOT NULL,
  `Category_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Generic_ID` (`Generic_ID`),
  KEY `Manufacturer_ID` (`Manufacturer_ID`),
  KEY `Category_ID` (`Category_ID`),
  CONSTRAINT `medicine_information_ibfk_1` FOREIGN KEY (`Generic_ID`) REFERENCES `drug_generic_name` (`ID`),
  CONSTRAINT `medicine_information_ibfk_2` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturer` (`ID`),
  CONSTRAINT `medicine_information_ibfk_3` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_information`
--

LOCK TABLES `medicine_information` WRITE;
/*!40000 ALTER TABLE `medicine_information` DISABLE KEYS */;
INSERT INTO `medicine_information` VALUES (1,'ACE','',3,1,6),(3,'ACETRAM','',6,1,6),(5,'ADOVAS SYP 200','',5,1,10),(6,'ADRYL SYP','',7,1,10),(7,'AFUN CRM','',8,1,11),(8,'ALACOT 0.025%','',9,1,13),(9,'ALACOT 0.10%','',10,1,13),(10,'ALMEX SUSP','',12,1,9),(11,'AMBROX 75','',14,1,14);
/*!40000 ALTER TABLE `medicine_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Supplier_Name` varchar(50) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'SQUARE 1','45782222','square@gmail.com'),(2,'SQUARE 2','666445435','square2@gmail.com'),(3,'SQUARE 3','123445','square@gmail.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_access` (
  `Username` varchar(25) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Usertype` varchar(10) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access`
--

LOCK TABLES `user_access` WRITE;
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
INSERT INTO `user_access` VALUES ('Admin','Admin','Admin'),('bappy','bappy','Admin'),('Staff','Staff','Staff'),('tusar','tusar','Admin');
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information`
--

DROP TABLE IF EXISTS `user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_information` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Age` int NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact` int NOT NULL,
  `Blood_Group` varchar(15) NOT NULL,
  `Marital_Status` varchar(10) NOT NULL,
  `Join_Date` date NOT NULL,
  `Salary` int NOT NULL,
  `Username` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Username` (`Username`),
  CONSTRAINT `user_information_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `user_access` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information`
--

LOCK TABLES `user_information` WRITE;
/*!40000 ALTER TABLE `user_information` DISABLE KEYS */;
INSERT INTO `user_information` VALUES (3,'bappy','bappy@gmail.com','Male','2017-09-19',24,'dhaka, mirpur11',100000,'B+','Unmarried','2017-09-27',777,'bappy'),(4,'Tusar','tusar@gmail.com','Male','2017-09-13',24,'dhaka',123445,'A+','Married','2017-09-27',222,'tusar');
/*!40000 ALTER TABLE `user_information` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28 21:26:12
