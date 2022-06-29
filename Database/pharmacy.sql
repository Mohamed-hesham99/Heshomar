-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
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
INSERT INTO `batch` VALUES (1,'112',20,200,555,'2022-06-12','2022-06-30',0,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_information`
--

LOCK TABLES `bill_information` WRITE;
/*!40000 ALTER TABLE `bill_information` DISABLE KEYS */;
INSERT INTO `bill_information` VALUES (1,'525',1200,'10',120,1080,1080,0,'2022-06-20'),(2,'IN-11143543444',50,'5',2.5,47.5,66,18.5,'2022-06-20'),(3,'324',60,'5',3,57,100,43,'2022-06-20'),(4,'IN-101342434',67,'3',2.01,64.99,100,35.01,'2022-06-20'),(5,'IN-111213213',17,'5',0.85,16.15,34,17.85,'2022-06-20'),(6,'B1014',30,'2',0.6,29.4,25,-4.4,'2022-06-20'),(7,'IN-111',6,'2',0.12,5.88,10,4.12,'2022-06-20'),(8,'New101',4,'0',0,4,5,1,'2022-06-20'),(11,'New-102',4,'1',0.04,3.96,23,19.04,'2022-06-20'),(12,'IN-1111',62,'5',3.1,58.9,100,41.1,'2022-06-20');
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drug_generic_name`
--

LOCK TABLES `drug_generic_name` WRITE;
/*!40000 ALTER TABLE `drug_generic_name` DISABLE KEYS */;
INSERT INTO `drug_generic_name` VALUES (3,'PARACETAMOL (ACETAMINOPHEN)','Paracetamol 500mgs'),(4,'PARACETAMOL + CAFFEINE','Paracetamol 500mg + Caffeine 65mg'),(5,'Basak extract','Basak extract'),(6,'PARACETAMOL + TRAMADOL','Paracetamol 325mg + Tramadol 37.5mg'),(7,'DIPHENHYDRAMINE','Diphenhydramine 10mg/5ml'),(8,'CLOTRIMAZOLE','Clotrimazole 10mg/gm'),(9,'KETOTIFEN','Ketotifen Fumarate 0.025%'),(10,'OLOPATADINE','Olopatadine 0.1%'),(11,'CETIRIZINE','Cetirizine 10mg'),(12,'ALBENDAZOLE','Albendazole 400mg'),(13,'AMBRISENTAN','Ambrisentan 5mg'),(14,'AMBROXOL','Ambroxol 75mg'),(15,'AAA','VVB'),(16,'Aripiprazole','Psychosis; depression'),(17,'Adalimumab','Crohn\'s disease; Rheumatoid arthritis'),(18,'Esomeprazole','Gastrointestinal disorders'),(19,'Rosuvastatin','Cholesterol'),(20,'Etanercept','Rheumatoid arthritis'),(21,'Fluticasone/salmeterol','Asthma'),(22,'Infliximab','Crohn\'s disease; rheumatoid arthritis'),(23,'Insulin glargine','Diabetes mellitus type 1 and 2'),(24,'Pegfilgrastim','Neutropenia'),(25,'Glatiramer','Multiple sclerosis'),(26,'Rituximab','Non-Hodgkin’s lymphoma; rheumatoid arthritis'),(27,'Tiotropium bromide','Chronic obstructive pulmonary disease'),(28,'Sitagliptin','Diabetes mellitus type 2'),(29,'Insulin glargine','Diabetes mellitus type 1 and 2'),(30,'Emtricitabine/tenofovir/efavirenz','HIV infection'),(31,'Duloxetine','Depression; anxiety disorders'),(32,'Bevacizumab','Cancer'),(33,'Pregabalin','Neuropathic pain'),(34,'Oxycodone','Pain'),(35,'Celecoxib','Osteoarthritis; rheumatoid arthritis'),(36,'Epoetin alfa','Anemia'),(37,'Tenofovir/emtricitabine','HIV infection'),(38,'Valsartan','Hypertension'),(39,'Insulin detemir','Diabetes mellitus type 1 and 2'),(40,'Imatinib','Leukemia'),(41,'Trastuzumab','Breast cancer'),(42,'Lisdexamfetamine','Attention deficit hyperactivity disorder'),(43,'Ranibizumab','Macular degeneration'),(44,'Ezetimibe','Cholesterol'),(45,'Ipratropium bromide/salbutamol','Chronic obstructive pulmonary disease'),(46,'Budesonide/formoterol','Asthma'),(47,'Memantine','Alzheimer\'s disease'),(48,'Insulin aspart','Diabetes mellitus type 1 and 2'),(49,'Rivaroxaban','Oral anticoagulant'),(50,'Insulin aspart','Diabetes mellitus type 1 and 2'),(51,'Insulin lispro','Diabetes mellitus type 1 and 2'),(52,'Buprenorphine','Pain; opioid addiction'),(53,'Sildenafil','Erectile dysfunction'),(54,'Quetiapine','Psychosis; depression'),(55,'Telaprevir','Hepatitis C'),(56,'Testosterone gel','Low testosterone levels'),(57,'Enoxaparin','Deep-vein thrombosis'),(58,'Methylphenidate','Attention deficit hyperactivity disorder'),(59,'Salbutamol','Asthma; chronic obstructive pulmonary disease'),(60,'Pemetrexed','Cancer'),(61,'Liraglutide','Diabetes mellitus type 2'),(62,'Palivizumab','RSV infection'),(63,'Interferon beta 1a','Multiple sclerosis'),(64,'Sevelamer','Hyperphosphatemia'),(65,'Interferon beta 1a','Multiple sclerosis'),(66,'Tadalafil','Erectile dysfunction'),(67,'fingolimod','Multiple sclerosis'),(68,'Mometasone','Allergic rhinitis'),(69,'Ustekinumab','Psoriasis; psoriatic arthritis'),(70,'Ciclosporin ophthalmic emulsion','Dry eye syndrome'),(71,'Budesonide','Asthma'),(72,'Acetaminophen/hydrocodone','Pain'),(73,'Fluticasone propionate','Asthma'),(74,'Omega-3 fatty acid ethyl esters','Cholesterol'),(75,'Darunavir','HIV infection'),(76,'Raltegravir','HIV Infection'),(77,'Sitagliptin/metformin','Diabetes mellitus type 2'),(78,'Epoetin alfa','Anemia'),(79,'Doxycycline','Bacterial infections'),(80,'Abatacept','Rheumatoid arthritis'),(81,'Amphetamine mixed salts','Attention deficit hyperactivity disorder; narcolepsy'),(82,'Solifenacin','Overactive bladder'),(83,'Dexlansoprazole','Gastrointestinal disorders'),(84,'Insulin lispro','Diabetes mellitus type 1 and 2'),(85,'Filgrastim','Neutropenia'),(86,'Lidocaine','Pain'),(87,'Eszopiclone','Insomnia'),(88,'Fenofibrate','Cholesterol'),(89,'Abiraterone','Prostate Cancer'),(90,'Atazanavir','HIV infection'),(91,'Cinacalcet','Hyperparathyroidism'),(92,'Metoprolol','Hypertension'),(93,'Rabeprazole','Gastrointestinal disorders'),(94,'Levothyroxine','Hypothyroidism'),(95,'Olmesartan','Hypertension'),(96,'Pneumococcal conjugate vaccine','Pneumococcal disease'),(97,'Omalizumab','Asthma'),(98,'Atorvastatin','Cholesterol'),(99,'Levothyroxine','Hypothyroidism'),(100,'Olmesartan/hydrochlorothiazide','Hypertension'),(101,'Elvitegravir/cobicistat/emtricitabine/tenofovir','HIV/AIDS'),(102,'Zostavax','Herpes zoster'),(103,'Dabigatran','Oral anticoagulant'),(104,'Ezetimibe/simvastatin','Cholesterol'),(105,'Oseltamivir','Influenza'),(106,'Denosumab','Osteoporosis'),(107,'Raloxifene','Osteoporosis'),(108,'Capecitabine','Cancer'),(109,'Darbepoetin alfa','Anemia'),(110,'Salbutamol','Asthma; chronic obstructive pulmonary disease'),(111,'Valproate','Epilepsy and bipolar disorder'),(112,'Everolimus','Cancer'),(113,'Interferon beta 1b','Multiple sclerosis'),(114,'Amphetamine mixed salts','Attention deficit hyperactivity disorder');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'SQUARE'),(2,'INCEPTA PHARMA'),(3,'BEXIMCO'),(4,'OPSONIN PHARMA'),(5,'RENATA'),(6,'ESKAYEF'),(7,'ACME'),(8,'A.C.I.'),(9,'ARISTOPHARMA'),(10,'DRUG INTERNATIONAL'),(11,'HEALTHCARE PHARMA'),(12,'ORION PHARMA LTD.'),(13,'Johnson & Johnson'),(14,'Pfizer'),(15,'Roche'),(16,'Novartis'),(17,'Sanofi'),(18,'Takeda');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_information`
--

LOCK TABLES `medicine_information` WRITE;
/*!40000 ALTER TABLE `medicine_information` DISABLE KEYS */;
INSERT INTO `medicine_information` VALUES (1,'ACE','',3,1,6),(3,'ACETRAM','',6,1,6),(5,'ADOVAS SYP 200','',5,1,10),(6,'ADRYL SYP','',7,1,10),(7,'AFUN CRM','',8,1,11),(8,'ALACOT 0.025%','',9,1,13),(9,'ALACOT 0.10%','',10,1,13),(10,'ALMEX SUSP','',12,1,9),(11,'AMBROX 75','',14,1,14),(13,'Humira','',113,17,13),(14,'Nexium','',18,15,9),(15,'Crestor','',32,10,18),(16,'Enbrel','',54,7,6),(17,'Advair Diskus, Seretide','',105,4,6),(18,'Remicade','',112,9,19),(19,'Lantus Solostar','',73,1,15),(20,'Neulasta','',111,5,17),(21,'Copaxone','',94,15,18),(22,'Rituxan, MabThera','',34,11,18),(23,'Spiriva','',50,14,14),(24,'Januvia','',30,3,15),(25,'Lantus','',10,8,22),(26,'Atripla','',100,16,13),(27,'Cymbalta','',22,5,7),(28,'Avastin','',92,10,22),(29,'Lyrica','',44,7,22),(30,'OxyContin','',105,17,16),(31,'Celebrex','',37,2,9),(33,'Truvada','',70,6,9),(35,'Levemir','',43,3,15),(36,'Gleevec, Glivec','',14,5,6),(37,'Herceptin','',99,2,18),(38,'Vyvanse','',52,2,12),(39,'Lucentis','',63,5,13),(40,'Zetia','',72,17,15),(41,'Combivent','',111,2,9),(42,'Symbicort','',60,13,14),(43,'Namenda','',13,2,14),(44,'NovoLog FlexPen','',98,7,16),(45,'Xarelto','',42,4,8),(46,'NovoLog','',56,12,7),(47,'Humalog','',55,8,18),(48,'Suboxone','',4,3,19),(49,'Viagra','',87,6,21),(50,'Seroquel XR','',43,6,11),(51,'Incivo','',60,2,16),(52,'AndroGel','',14,18,14),(53,'Enoxaparin','',114,12,16),(54,'Ritalin','',35,15,15),(55,'ProAir HFA','',49,7,8),(56,'Alimta','',100,13,16),(57,'Victoza','',57,9,6),(58,'Synagis','',108,9,15),(59,'Avonex','',38,8,16),(60,'Renvela','',49,13,16),(61,'Rebif','',67,10,18),(63,'Gilenya','',31,6,12),(64,'Nasonex','',5,14,9),(65,'Stelara','',87,3,12),(66,'Restasis','',104,4,19),(67,'Budesonide','',108,3,19),(68,'Acetaminophen/hydrocodone','',44,4,15),(69,'Flovent HFA','',95,8,22),(70,'Lovaza','',37,8,17),(71,'Prezista','',69,7,10),(72,'Isentress','',60,17,14),(73,'Janumet','',83,18,19),(74,'Procrit, Eprex','',31,17,9),(75,'Doxycycline','',64,5,15),(76,'Orencia','',88,8,11),(77,'Amphetamine/dextroamphetamine','',86,18,10),(78,'Vesicare','',62,3,20),(79,'Dexilant','',29,11,17),(80,'Humalog KwikPen','',113,10,13),(81,'Neupogen','',37,14,10),(82,'Lidocaine','',47,12,7),(83,'Lunesta','',65,17,10),(84,'Fenofibrate','',36,3,18),(85,'Zytiga','',59,6,19),(86,'Reyataz','',105,6,17),(87,'Sensipar','',28,18,12),(88,'Metoprolol','',64,3,9),(89,'AcipHex','',93,2,22),(90,'Synthroid','',74,6,13),(91,'Avonex Pen','',87,2,7),(92,'Prevnar 13','',23,16,6),(93,'Xolair','',51,10,20),(94,'Lipitor','',24,15,10),(95,'levothyroxine','',81,11,20),(96,'Benicar','',99,16,6),(97,'Stribild','',78,1,18),(98,'Zostavax','',93,8,20),(99,'Pradaxa','',111,6,10),(100,'Vytorin','',31,12,8),(101,'Tamiflu','',27,4,21),(102,'Xgeva','',31,4,11),(103,'Evista','',24,1,10),(104,'Xeloda','',15,14,10),(106,'Ventolin HFA','',51,9,9),(107,'divalproex sodium','',54,6,7),(108,'Afinitor','',70,14,17),(109,'Betaseron, Betaferon','',44,4,18),(110,'Adderall XR','',94,16,16),(111,'Complera','',88,18,11);
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
INSERT INTO `user_access` VALUES ('Admin','Admin','Admin'),('etsh','etsh','Admin'),('omar','omar','Admin'),('shaker','shaker','Staff');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information`
--

LOCK TABLES `user_information` WRITE;
/*!40000 ALTER TABLE `user_information` DISABLE KEYS */;
INSERT INTO `user_information` VALUES (3,'Mohamed Hesham','mohamed.hesham2105@gmail.com','Male','1999-08-22',22,'Sheraton',1150001374,'B-','Unmarried','2022-06-20',777,'etsh'),(4,'Shaker','shker@gmail.com','Male','1990-01-01',32,'Ain shams',1231241241,'A+','Married','2022-06-20',5700,'shaker'),(5,'Omar Shawky','omar.k.shawky@gmail.com','Male','1996-09-20',25,'Madinty',1141286362,'A+','Unmarried','2022-06-20',222,'omar');
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

-- Dump completed on 2022-06-29  3:10:09
