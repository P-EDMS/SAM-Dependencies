-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: panton
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apasswd`
--

DROP TABLE IF EXISTS `apasswd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apasswd` (
  `NODEID` bigint(20) NOT NULL,
  `PWDSEQNUM` smallint(6) NOT NULL,
  `PWDAUTHCD` varchar(255) DEFAULT NULL,
  `PWDLOGINUSE` varchar(255) DEFAULT NULL,
  `PWDPASSWD` varchar(255) NOT NULL,
  `PWDPTYPE` varchar(100) NOT NULL,
  PRIMARY KEY (`NODEID`,`PWDSEQNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apasswd`
--

LOCK TABLES `apasswd` WRITE;
/*!40000 ALTER TABLE `apasswd` DISABLE KEYS */;
INSERT INTO `apasswd` VALUES (1,1,'AuthCode','Y','rT19wJOQZic=','E'),(58,2,'AuthCode','Y','ghXGSD9BHvM=','E'),(59,3,'AuthCode','Y','ghXGSD9BHvM=','E'),(60,4,'AuthCode','Y','ghXGSD9BHvM=','E'),(61,5,'AuthCode','Y','ghXGSD9BHvM=','E'),(62,6,'AuthCode','Y','ghXGSD9BHvM=','E'),(63,7,'AuthCode','Y','ghXGSD9BHvM=','E'),(64,8,'AuthCode','Y','ghXGSD9BHvM=','E'),(65,9,'AuthCode','Y','ghXGSD9BHvM=','E'),(66,10,'AuthCode','Y','ghXGSD9BHvM=','E'),(67,11,'AuthCode','Y','ghXGSD9BHvM=','E'),(68,12,'AuthCode','Y','ghXGSD9BHvM=','E'),(69,13,'AuthCode','Y','ghXGSD9BHvM=','E'),(70,14,'AuthCode','Y','ghXGSD9BHvM=','E'),(71,15,'AuthCode','Y','ghXGSD9BHvM=','E'),(72,16,'AuthCode','Y','ghXGSD9BHvM=','E'),(73,17,'AuthCode','Y','ghXGSD9BHvM=','E'),(74,18,'AuthCode','Y','ghXGSD9BHvM=','E'),(75,19,'AuthCode','Y','ghXGSD9BHvM=','E'),(76,20,'AuthCode','Y','ghXGSD9BHvM=','E'),(77,21,'AuthCode','Y','ghXGSD9BHvM=','E'),(78,22,'AuthCode','Y','ghXGSD9BHvM=','E'),(79,23,'AuthCode','Y','ghXGSD9BHvM=','E'),(80,24,'AuthCode','Y','ghXGSD9BHvM=','E'),(81,25,'AuthCode','Y','ghXGSD9BHvM=','E'),(82,26,'AuthCode','Y','ghXGSD9BHvM=','E'),(83,27,'AuthCode','Y','ghXGSD9BHvM=','E'),(84,28,'AuthCode','Y','ghXGSD9BHvM=','E'),(85,29,'AuthCode','Y','ghXGSD9BHvM=','E'),(86,30,'AuthCode','Y','ghXGSD9BHvM=','E'),(87,31,'AuthCode','Y','ghXGSD9BHvM=','E'),(88,32,'AuthCode','Y','ghXGSD9BHvM=','E'),(89,33,'AuthCode','Y','ghXGSD9BHvM=','E'),(90,34,'AuthCode','Y','ghXGSD9BHvM=','E'),(91,35,'AuthCode','Y','ghXGSD9BHvM=','E'),(92,36,'AuthCode','Y','ghXGSD9BHvM=','E'),(93,37,'AuthCode','Y','ghXGSD9BHvM=','E'),(94,38,'AuthCode','Y','ghXGSD9BHvM=','E'),(95,39,'AuthCode','Y','ghXGSD9BHvM=','E');
/*!40000 ALTER TABLE `apasswd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `approval`
--

DROP TABLE IF EXISTS `approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_date` date DEFAULT NULL,
  `app_id` varchar(50) DEFAULT NULL,
  `app_level` int(11) DEFAULT NULL,
  `app_position` varchar(255) DEFAULT NULL,
  `delegateto` varchar(255) DEFAULT NULL,
  `doc_no` int(11) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `rej_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;
/*!40000 ALTER TABLE `approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audel`
--

DROP TABLE IF EXISTS `audel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audel` (
  `AUDID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AUENDDT` date DEFAULT NULL,
  `AUNODEID` bigint(20) NOT NULL,
  `AUREMARKS` varchar(255) DEFAULT NULL,
  `AUSTARTDT` date DEFAULT NULL,
  `AUTOUSERID` bigint(20) NOT NULL,
  PRIMARY KEY (`AUDID`),
  UNIQUE KEY `AUDID` (`AUDID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audel`
--

LOCK TABLES `audel` WRITE;
/*!40000 ALTER TABLE `audel` DISABLE KEYS */;
/*!40000 ALTER TABLE `audel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `augroup`
--

DROP TABLE IF EXISTS `augroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `augroup` (
  `NODEID` bigint(20) NOT NULL,
  `AUGNAME` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `augroup`
--

LOCK TABLES `augroup` WRITE;
/*!40000 ALTER TABLE `augroup` DISABLE KEYS */;
INSERT INTO `augroup` VALUES (96,'Quality Assurance'),(97,'Engineering'),(98,'Special Process'),(99,'Production'),(100,'FPI'),(101,'SCM'),(102,'AMAT'),(103,'Head of Department'),(104,'Head of Company'),(105,'Operation Director'),(108,'ADMIN');
/*!40000 ALTER TABLE `augroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auser`
--

DROP TABLE IF EXISTS `auser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auser` (
  `NODEID` bigint(20) NOT NULL,
  `AUBRANCH` varchar(255) DEFAULT NULL,
  `AUDEPT` varchar(255) DEFAULT NULL,
  `AUECODE` varchar(255) DEFAULT NULL,
  `AUEMAIL` varchar(255) DEFAULT NULL,
  `AUENO` varchar(255) DEFAULT NULL,
  `AUFNUM` varchar(255) DEFAULT NULL,
  `AUFUNAME` varchar(255) DEFAULT NULL,
  `AUHALTLOG` varchar(255) DEFAULT NULL,
  `AUINSTANT` smallint(6) DEFAULT NULL,
  `AULOGATM` smallint(6) DEFAULT NULL,
  `AUPLANT` varchar(100) DEFAULT NULL,
  `AUPNUM` varchar(255) DEFAULT NULL,
  `AUPOS` varchar(255) DEFAULT NULL,
  `AUPROMPTPASS` smallint(6) DEFAULT NULL,
  `AURESET` tinyint(1) DEFAULT NULL,
  `AUSEREFFDT` date DEFAULT NULL,
  `AUSERNAME` varchar(255) NOT NULL,
  `AUSERRESDT` date DEFAULT NULL,
  `AUSERTYPE` varchar(255) NOT NULL,
  `AUSTATE` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auser`
--

LOCK TABLES `auser` WRITE;
/*!40000 ALTER TABLE `auser` DISABLE KEYS */;
INSERT INTO `auser` VALUES (1,'null','ADMIN DEPARTMENT','null','root@email.com','null','null','Administrator','N',0,5,'null','null','null',0,0,'2015-07-27','root','2020-01-01','SUPERUSER','Y'),(58,NULL,'BIG FORMAT',NULL,'jenny.wong.ac@sam-malaysia.com',NULL,NULL,'WONG AI CHENG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M00762',NULL,'BASIC','Y'),(59,NULL,'BIG FORMAT',NULL,'hasrul.hadei@sam-malaysia.com',NULL,NULL,'HASRUL HADEI BIN HASSAN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M00832',NULL,'BASIC','Y'),(60,NULL,'CLEANING LINE',NULL,'hui-ling.tan@sam-malaysia.com',NULL,NULL,'TAN HUI LING','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M00314',NULL,'BASIC','Y'),(61,NULL,'CLEANING LINE',NULL,'mohd.najib@sam-malaysia.com',NULL,NULL,'MOHD NAJIB BIN SALLEH','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M01013',NULL,'BASIC','Y'),(62,NULL,'CLEANING LINE',NULL,'nurasmadatul.asmar@sam-malaysia.com',NULL,NULL,'NURASMADATUL ASMAR BINTI AHMAD','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M00955',NULL,'BASIC','Y'),(63,NULL,'CLEANING LINE',NULL,'md.azemi@sam-malaysia.com',NULL,NULL,'MD AZEMI BIN CHE ALI','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','M01011',NULL,'BASIC','Y'),(64,NULL,'ENGINEERING',NULL,'wooi-keat.ng@sam-malaysia.com',NULL,NULL,'NG WOOI KEAT','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00002',NULL,'BASIC','Y'),(65,NULL,'ENGINEERING',NULL,'xun-chao.leow@sam-malaysia.com',NULL,NULL,'LEOW XUN CHAO','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00023',NULL,'BASIC','Y'),(66,NULL,'ENGINEERING',NULL,'julia.ang.sl@sam-malaysia.com',NULL,NULL,'JULIA ANG SIEW LIN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00079',NULL,'BASIC','Y'),(67,NULL,'ENGINEERING',NULL,'cherng-shyue.lee@sam-malaysia.com',NULL,NULL,'LEE CHERNG SHYUE','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00186',NULL,'BASIC','Y'),(68,NULL,'ENGINEERING',NULL,'kok-chay.kooi@sam-malaysia.com',NULL,NULL,'KOOI KOK CHAY','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00197',NULL,'BASIC','Y'),(69,NULL,'ENGINEERING',NULL,'ronald.hew.sl@sam-malaysia.com',NULL,NULL,'RONALD HEW SWEE LOKE','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00199',NULL,'BASIC','Y'),(70,NULL,'ENGINEERING',NULL,'lin-sheng.tan@sam-malaysia.com',NULL,NULL,'TAN LIN SHENG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00232',NULL,'BASIC','Y'),(71,NULL,'PLANNING',NULL,'wai-eng.tan@sam-malaysia.com',NULL,NULL,'TAN WAI ENG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00100',NULL,'BASIC','Y'),(72,NULL,'PLANNING',NULL,'geok-lean.koay@sam-malaysia.com',NULL,NULL,'KOAY GEOK LEAN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00103',NULL,'BASIC','Y'),(73,NULL,'PRODUCTION',NULL,'hairiri.juraimi@sam-malaysia.com',NULL,NULL,'HAIRIRI JURAIMI BIN. ABDUL RAHMAN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00016',NULL,'BASIC','Y'),(74,NULL,'PROD-COMMON',NULL,'han-lin.yap@sam-malaysia.com',NULL,NULL,'YAP HAN LIN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00122',NULL,'BASIC','Y'),(75,NULL,'PRODUCTION',NULL,'ying-shuang.yeoh@sam-malaysia.com',NULL,NULL,'YEOH YING SHUANG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00149',NULL,'BASIC','Y'),(76,NULL,'PRODUCTION',NULL,'soon-keat.lee@sam-malaysia.com',NULL,NULL,'LEE SOON KEAT','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00174',NULL,'BASIC','Y'),(77,NULL,'PRODUCTION',NULL,'kumaresen@sam-malaysia.com',NULL,NULL,'KUMARESEN A/L PERUMAL','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00230',NULL,'BASIC','Y'),(78,NULL,'PROD-COMMON',NULL,'pon-chow.ho@sam-malaysia.com',NULL,NULL,'HO PON CHOW','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00188',NULL,'BASIC','Y'),(79,NULL,'PURCHASING',NULL,'pauline.ke.pc@sam-malaysia.com',NULL,NULL,'PAULINE KE POH CHOO','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00029',NULL,'BASIC','Y'),(80,NULL,'QA',NULL,'mohd.husni@sam-malaysia.com',NULL,NULL,'MOHD HUSNI BIN. ZAKARIA','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00014',NULL,'BASIC','Y'),(81,NULL,'QA',NULL,'mohd.nazri@sam-malaysia.com',NULL,NULL,'MOHD NAZRI BIN. MOHD ISA','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00032',NULL,'BASIC','Y'),(82,NULL,'QA',NULL,'suhaizi@sam-malaysia.com',NULL,NULL,'SUHAIZI BIN. CHE MORAT','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00033',NULL,'BASIC','Y'),(83,NULL,'QA',NULL,'joo-peng.lim@sam-malaysia.com',NULL,NULL,'LIM JOO PENG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00037',NULL,'SUPERUSER','Y'),(84,NULL,'QA',NULL,'mohd.hanif@sam-malaysia.com',NULL,NULL,'MOHD HANIF BIN. ISMAIL','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00063',NULL,'BASIC','Y'),(85,NULL,'QA',NULL,'nurhayati@sam-malaysia.com',NULL,NULL,'NURHAYATI BT. MOHAMAD RAFI','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00096',NULL,'BASIC','Y'),(86,NULL,'QA',NULL,'samson.koong.sc@sam-malaysia.com',NULL,NULL,'SAMSON KOONG SIAN CHOONG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00189',NULL,'SUPERUSER','Y'),(87,NULL,'QA',NULL,'shazwani.abdul@sam-malaysia.com',NULL,NULL,'SHAZWANI BINTI ABDUL','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00204',NULL,'BASIC','Y'),(88,NULL,'QA',NULL,'mun-cheng.lee@sam-malaysia.com',NULL,NULL,'LEE MUN CHENG','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00236',NULL,'BASIC','Y'),(89,NULL,'QA',NULL,'matthew.tee@sam-malaysia.com',NULL,NULL,'MATTHEW TEE LI KAI','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00240',NULL,'BASIC','Y'),(90,NULL,'QA',NULL,'ahmad.fitri@sam-malaysia.com',NULL,NULL,'AHMAD FITRI BIN USOP','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00073',NULL,'BASIC','Y'),(91,NULL,'SCM',NULL,'phaik-sim.ang@sam-malaysia.com',NULL,NULL,'ANG PHAIK SIM','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00141',NULL,'BASIC','Y'),(92,NULL,'SPECIAL PROCESS',NULL,'seng-aun.yeam@sam-malaysia.com',NULL,NULL,'YEAM SENG AUN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00010',NULL,'BASIC','Y'),(93,NULL,'SPECIAL PROCESS',NULL,'muhamad.hafiz@sam-malaysia.com',NULL,NULL,'MUHAMAD HAFIZ BIN. ABDUL AZIZ','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00192',NULL,'BASIC','Y'),(94,NULL,'STORE',NULL,'nik.abd.mazlan@sam-malaysia.com',NULL,NULL,'NIK ABD MAZLAN BIN. NIK MAT','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00099',NULL,'BASIC','Y'),(95,NULL,'STORE',NULL,'norzaini.shamsudin@sam-malaysia.com',NULL,NULL,'NORZAINI BIN SHAMSUDIN','N',0,5,'Meerkat Precision',NULL,NULL,0,1,'2015-07-27','S00225',NULL,'BASIC','Y');
/*!40000 ALTER TABLE `auser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `converr`
--

DROP TABLE IF EXISTS `converr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `converr` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CONVTYPE` varchar(255) NOT NULL,
  `ERRORMSG` varchar(255) NOT NULL,
  `INSDATE` datetime NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `converr`
--

LOCK TABLES `converr` WRITE;
/*!40000 ALTER TABLE `converr` DISABLE KEYS */;
/*!40000 ALTER TABLE `converr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convqueue`
--

DROP TABLE IF EXISTS `convqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convqueue` (
  `NODEID` bigint(20) NOT NULL,
  `CONVTYPE` varchar(255) NOT NULL,
  `FEXT` varchar(255) NOT NULL,
  `FFULPATH` varchar(255) NOT NULL,
  `INSDATE` datetime NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convqueue`
--

LOCK TABLES `convqueue` WRITE;
/*!40000 ALTER TABLE `convqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `convqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CADDR1` varchar(255) DEFAULT NULL,
  `CADDR2` varchar(255) DEFAULT NULL,
  `CCITY` varchar(255) DEFAULT NULL,
  `CCONTACT` varchar(255) DEFAULT NULL,
  `CCOUNTRY` varchar(255) DEFAULT NULL,
  `CFAX` varchar(255) DEFAULT NULL,
  `CNAME` varchar(255) NOT NULL,
  `CPOSTCODE` varchar(255) DEFAULT NULL,
  `CSTATE` varchar(255) DEFAULT NULL,
  `CWEBSITE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custpic`
--

DROP TABLE IF EXISTS `custpic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custpic` (
  `CPID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CID` bigint(20) NOT NULL,
  `CPEMAIL` varchar(255) NOT NULL,
  `CPPIC` varchar(255) NOT NULL,
  PRIMARY KEY (`CPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custpic`
--

LOCK TABLES `custpic` WRITE;
/*!40000 ALTER TABLE `custpic` DISABLE KEYS */;
/*!40000 ALTER TABLE `custpic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `auto_id` bigint(20) NOT NULL,
  `date_init` datetime DEFAULT NULL,
  `dep_id` varchar(255) DEFAULT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `doc_title` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `eff_date` datetime DEFAULT NULL,
  `initiator` varchar(255) DEFAULT NULL,
  `iso_audit` varchar(255) DEFAULT NULL,
  `iso_ref` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `obs_date` datetime DEFAULT NULL,
  `originator` varchar(255) DEFAULT NULL,
  `plant_id` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `rev_code` varchar(255) DEFAULT NULL,
  `running_no` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentlog`
--

DROP TABLE IF EXISTS `documentlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentlog` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_init` datetime DEFAULT NULL,
  `dep_id` varchar(255) DEFAULT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `doc_title` varchar(255) DEFAULT NULL,
  `doc_type` varchar(255) DEFAULT NULL,
  `eff_date` datetime DEFAULT NULL,
  `initiator` varchar(255) DEFAULT NULL,
  `iso_audit` varchar(255) DEFAULT NULL,
  `iso_ref` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `obs_date` datetime DEFAULT NULL,
  `originator` varchar(255) DEFAULT NULL,
  `plant_id` varchar(255) DEFAULT NULL,
  `project` varchar(255) DEFAULT NULL,
  `rev_code` varchar(255) DEFAULT NULL,
  `running_no` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentlog`
--

LOCK TABLES `documentlog` WRITE;
/*!40000 ALTER TABLE `documentlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesec`
--

DROP TABLE IF EXISTS `filesec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filesec` (
  `ACCESSID` bigint(20) NOT NULL,
  `FILEID` bigint(20) NOT NULL,
  `FSECID` bigint(20) NOT NULL,
  `GRAPHID` bigint(20) NOT NULL,
  `FXACCESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ACCESSID`,`FILEID`,`FSECID`,`GRAPHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesec`
--

LOCK TABLES `filesec` WRITE;
/*!40000 ALTER TABLE `filesec` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filext`
--

DROP TABLE IF EXISTS `filext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filext` (
  `FEXT` varchar(255) NOT NULL,
  PRIMARY KEY (`FEXT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filext`
--

LOCK TABLES `filext` WRITE;
/*!40000 ALTER TABLE `filext` DISABLE KEYS */;
/*!40000 ALTER TABLE `filext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `NODEID` bigint(20) NOT NULL AUTO_INCREMENT,
  `WORD` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter`
--

LOCK TABLES `filter` WRITE;
/*!40000 ALTER TABLE `filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmedia`
--

DROP TABLE IF EXISTS `fmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmedia` (
  `NODEID` bigint(20) NOT NULL,
  `FEXT` varchar(255) NOT NULL,
  `FFULPATH` varchar(255) NOT NULL,
  `FGNAME` varchar(255) NOT NULL,
  `FONAME` varchar(255) NOT NULL,
  `FREMARK` varchar(255) DEFAULT NULL,
  `FSIZE` bigint(20) NOT NULL,
  `FSTATUS` int(11) DEFAULT NULL,
  `FTYPE` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmedia`
--

LOCK TABLES `fmedia` WRITE;
/*!40000 ALTER TABLE `fmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `fmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmediainfo`
--

DROP TABLE IF EXISTS `fmediainfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmediainfo` (
  `NODEID` bigint(20) NOT NULL,
  `FMCALDUE` datetime DEFAULT NULL,
  `FMCALFREQ` varchar(255) DEFAULT NULL,
  `FMCALIBTYPE` varchar(255) DEFAULT NULL,
  `FMCALREMIND` int(11) DEFAULT NULL,
  `FMCATEGORY` varchar(255) DEFAULT NULL,
  `FMCERTNO` varchar(255) DEFAULT NULL,
  `FMCUSTOMER` varchar(255) DEFAULT NULL,
  `FMDATEEFF` datetime DEFAULT NULL,
  `FMDATEIMPLEMENT` datetime DEFAULT NULL,
  `FMDATEINIT` datetime NOT NULL,
  `FMDATEMOD` datetime DEFAULT NULL,
  `FMDATEOBS` datetime DEFAULT NULL,
  `FMDATEPUBLISH` datetime DEFAULT NULL,
  `FMDATEPURCHASED` datetime DEFAULT NULL,
  `FMDATERECEIVED` datetime DEFAULT NULL,
  `FMDATEREVIEWED` datetime DEFAULT NULL,
  `FMDATEREVISION` datetime DEFAULT NULL,
  `FMDEPARTMENT` varchar(255) NOT NULL,
  `FMDOCNO` varchar(255) NOT NULL,
  `FMDOCTITLE` varchar(255) NOT NULL,
  `FMDRAWINGNO` varchar(50) DEFAULT NULL,
  `FMEQTYPE` varchar(255) DEFAULT NULL,
  `FMGRAPHID` bigint(20) NOT NULL,
  `FMINITID` varchar(255) DEFAULT NULL,
  `FMINITNM` varchar(255) DEFAULT NULL,
  `FMLOCATION` varchar(255) DEFAULT NULL,
  `FMMODNO` varchar(50) DEFAULT NULL,
  `FMORIGINID` varchar(255) NOT NULL,
  `FMORIGINNM` varchar(255) NOT NULL,
  `FMPAGENO` int(11) DEFAULT NULL,
  `FMPARTNO` varchar(50) DEFAULT NULL,
  `FMPLANT` varchar(255) NOT NULL,
  `FMPROJECT` varchar(255) DEFAULT NULL,
  `FMPRXID` bigint(20) DEFAULT NULL,
  `FMREMARK` varchar(255) DEFAULT NULL,
  `FMSERIALNO` varchar(255) DEFAULT NULL,
  `FMSTATUS` int(11) DEFAULT NULL,
  `FMVENDOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmediainfo`
--

LOCK TABLES `fmediainfo` WRITE;
/*!40000 ALTER TABLE `fmediainfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fmediainfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmiso`
--

DROP TABLE IF EXISTS `fmiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmiso` (
  `FMISOID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FMMDISOID` bigint(20) NOT NULL,
  `FMNODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`FMISOID`),
  KEY `FK5D0825E644FA3BE` (`FMNODEID`),
  CONSTRAINT `FK5D0825E644FA3BE` FOREIGN KEY (`FMNODEID`) REFERENCES `fmediainfo` (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmiso`
--

LOCK TABLES `fmiso` WRITE;
/*!40000 ALTER TABLE `fmiso` DISABLE KEYS */;
/*!40000 ALTER TABLE `fmiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmpolicy`
--

DROP TABLE IF EXISTS `fmpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmpolicy` (
  `FMPID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FMPDOWNLOAD` tinyint(1) NOT NULL,
  `FMPREVISE` tinyint(1) NOT NULL,
  `FMPUGID` bigint(20) NOT NULL,
  `FMPUGTYPE` int(11) NOT NULL,
  `FMPVIEW` tinyint(1) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`FMPID`),
  KEY `FKAF2CC0B9F0C25817` (`NODEID`),
  CONSTRAINT `FKAF2CC0B9F0C25817` FOREIGN KEY (`NODEID`) REFERENCES `node` (`NODEID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmpolicy`
--

LOCK TABLES `fmpolicy` WRITE;
/*!40000 ALTER TABLE `fmpolicy` DISABLE KEYS */;
INSERT INTO `fmpolicy` VALUES (1,0,0,0,0,1,16),(2,0,0,0,0,1,106),(3,0,0,0,0,1,109),(4,0,0,0,0,1,110),(5,0,0,0,0,1,111),(6,0,0,0,0,1,112),(7,0,0,0,0,1,113),(8,0,0,0,0,1,114),(9,0,0,0,0,1,115),(10,0,0,0,0,1,116),(11,0,0,0,0,1,117),(12,0,0,0,0,1,118),(13,0,0,0,0,1,119),(14,0,0,0,0,1,120),(15,0,0,0,0,1,121),(16,0,0,0,0,1,122),(17,0,0,0,0,1,123),(18,0,0,0,0,1,124),(19,0,0,0,0,1,125),(20,0,0,0,0,1,126),(22,0,0,0,0,1,128),(23,0,0,0,0,1,129),(24,0,0,0,0,1,130),(25,0,0,0,0,1,131),(26,0,0,0,0,1,132),(27,0,0,0,0,1,133),(28,0,0,0,0,1,134),(29,0,0,0,0,1,135),(30,0,0,0,0,1,136),(31,0,0,0,0,1,137),(32,0,0,0,0,1,138),(33,0,0,0,0,1,139),(34,0,0,0,0,1,140),(35,0,0,0,0,1,141),(36,0,0,0,0,1,142),(37,0,0,0,0,1,143),(38,0,0,0,0,1,144),(40,0,0,0,0,1,146),(41,0,0,0,0,1,147),(42,0,0,0,0,1,148),(43,0,0,0,0,1,149),(44,0,0,0,0,1,150),(45,0,0,0,0,1,151),(46,0,0,0,0,1,152),(47,0,0,0,0,1,153),(48,0,0,0,0,1,154),(49,0,0,0,0,1,155),(50,0,0,0,0,1,156),(51,0,0,0,0,1,157),(52,0,0,0,0,1,158),(53,0,0,0,0,1,159),(54,0,0,0,0,1,160),(55,0,0,0,0,1,161),(56,0,0,0,0,1,162),(57,0,0,0,0,1,163),(58,0,0,0,0,1,164),(59,0,0,0,0,1,165),(60,0,0,0,0,1,166);
/*!40000 ALTER TABLE `fmpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foldersec`
--

DROP TABLE IF EXISTS `foldersec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foldersec` (
  `ACCESSID` bigint(20) NOT NULL,
  `FOLDERID` bigint(20) NOT NULL,
  `FSECID` bigint(20) NOT NULL,
  `GRAPHID` bigint(20) NOT NULL,
  `BINARYSEC` int(11) DEFAULT NULL,
  `TIER` int(11) NOT NULL,
  PRIMARY KEY (`ACCESSID`,`FOLDERID`,`FSECID`,`GRAPHID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foldersec`
--

LOCK TABLES `foldersec` WRITE;
/*!40000 ALTER TABLE `foldersec` DISABLE KEYS */;
/*!40000 ALTER TABLE `foldersec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frxcontainer`
--

DROP TABLE IF EXISTS `frxcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frxcontainer` (
  `FRXNODEID` bigint(20) NOT NULL,
  `FRXNAME` varchar(255) NOT NULL,
  `FRXPREFIX` varchar(255) NOT NULL,
  `FRXREMARK` varchar(255) DEFAULT NULL,
  `FRXTHEME` varchar(255) NOT NULL,
  PRIMARY KEY (`FRXNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frxcontainer`
--

LOCK TABLES `frxcontainer` WRITE;
/*!40000 ALTER TABLE `frxcontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `frxcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frxebinary`
--

DROP TABLE IF EXISTS `frxebinary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frxebinary` (
  `FRXID` bigint(20) NOT NULL,
  `FRXEMIMETYPE` varchar(255) NOT NULL,
  `FRXEVALUE` longblob NOT NULL,
  PRIMARY KEY (`FRXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frxebinary`
--

LOCK TABLES `frxebinary` WRITE;
/*!40000 ALTER TABLE `frxebinary` DISABLE KEYS */;
/*!40000 ALTER TABLE `frxebinary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frxecell`
--

DROP TABLE IF EXISTS `frxecell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frxecell` (
  `FRXESEQ` int(11) NOT NULL,
  `FRXID` bigint(20) NOT NULL,
  `FRXECOL` varchar(255) NOT NULL,
  `FRXEFORMAT` int(11) NOT NULL,
  `FRXEROW` varchar(255) NOT NULL,
  `FRXEVAL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FRXESEQ`,`FRXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frxecell`
--

LOCK TABLES `frxecell` WRITE;
/*!40000 ALTER TABLE `frxecell` DISABLE KEYS */;
/*!40000 ALTER TABLE `frxecell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frxelement`
--

DROP TABLE IF EXISTS `frxelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frxelement` (
  `FRXID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FRXCONNECTOR` varchar(255) NOT NULL,
  `FRXENABLE` tinyint(1) NOT NULL,
  `FRXFORMAT` int(11) NOT NULL,
  `FRXHEIGHT` int(11) NOT NULL,
  `FRXLABEL` varchar(255) DEFAULT NULL,
  `FRXMAXLENGTH` int(11) NOT NULL,
  `FRXMINLENGTH` int(11) NOT NULL,
  `FRXNODEID` bigint(20) NOT NULL,
  `FRXOPTIONAL` tinyint(1) NOT NULL,
  `FRXORDER` int(11) NOT NULL,
  `FRXSIZE` int(11) DEFAULT NULL,
  `FRXSQL` longtext NOT NULL,
  `FRXSTYLE` longtext,
  `FRXTYPE` int(11) NOT NULL,
  `FRXVALUE` varchar(255) DEFAULT NULL,
  `FRXVAR` varchar(255) NOT NULL,
  `FRXWIDTH` int(11) NOT NULL,
  PRIMARY KEY (`FRXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frxelement`
--

LOCK TABLES `frxelement` WRITE;
/*!40000 ALTER TABLE `frxelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `frxelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frxeoptions`
--

DROP TABLE IF EXISTS `frxeoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frxeoptions` (
  `FRXESEQ` int(11) NOT NULL,
  `FRXID` bigint(20) NOT NULL,
  `FRXCHECKED` tinyint(1) NOT NULL,
  `FRXEVALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`FRXESEQ`,`FRXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frxeoptions`
--

LOCK TABLES `frxeoptions` WRITE;
/*!40000 ALTER TABLE `frxeoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `frxeoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functionsec`
--

DROP TABLE IF EXISTS `functionsec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functionsec` (
  `FSNODEID` bigint(20) NOT NULL,
  `FSCROSS` tinyint(1) NOT NULL,
  `FSCURRENT` tinyint(1) NOT NULL,
  `FSCUTPASTE` tinyint(1) NOT NULL,
  `FSDELETE` tinyint(1) NOT NULL,
  `FSDOWNLOAD` tinyint(1) NOT NULL,
  `FSFOLDER` tinyint(1) NOT NULL,
  `FSINDEX` tinyint(1) NOT NULL,
  `FSLOG` tinyint(1) NOT NULL,
  `FSNEW` tinyint(1) NOT NULL,
  `FSOBSOLETE` tinyint(1) NOT NULL,
  `FSPENDING` tinyint(1) NOT NULL,
  `FSREPLACE` tinyint(1) NOT NULL,
  `FSREPORT` tinyint(1) NOT NULL,
  `FSSEARCH` tinyint(1) NOT NULL,
  `FSSECURITY` tinyint(1) NOT NULL,
  `FSSUBSCRIBE` tinyint(1) NOT NULL,
  `FSTYPE` varchar(10) NOT NULL,
  `FSVERSION` tinyint(1) NOT NULL,
  PRIMARY KEY (`FSNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functionsec`
--

LOCK TABLES `functionsec` WRITE;
/*!40000 ALTER TABLE `functionsec` DISABLE KEYS */;
INSERT INTO `functionsec` VALUES (108,0,1,1,1,1,1,0,0,1,1,1,1,0,1,1,0,'GROUP',1);
/*!40000 ALTER TABLE `functionsec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fverinfo`
--

DROP TABLE IF EXISTS `fverinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fverinfo` (
  `NODEID` bigint(20) NOT NULL,
  `ENDDATE` date DEFAULT NULL,
  `PRXID` bigint(20) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `STARTDATE` date NOT NULL,
  `VERSION` varchar(255) NOT NULL,
  `VERSTATE` int(11) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fverinfo`
--

LOCK TABLES `fverinfo` WRITE;
/*!40000 ALTER TABLE `fverinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fverinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph`
--

DROP TABLE IF EXISTS `graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph` (
  `NODEID` bigint(20) NOT NULL,
  `GRAPHDESC` varchar(255) DEFAULT NULL,
  `GRAPHMOD` varchar(100) DEFAULT NULL,
  `GRAPHTYPE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph`
--

LOCK TABLES `graph` WRITE;
/*!40000 ALTER TABLE `graph` DISABLE KEYS */;
INSERT INTO `graph` VALUES (2,'System Control','S','SYSGRAPH'),(4,'MCRE','U','BASIC'),(5,'Equipment','U','BASIC'),(6,'Task Manager','U','BASIC'),(7,'Process Organizer','U','BASIC'),(8,'Notification','U','BASIC'),(9,'Audit Trail','U','BASIC');
/*!40000 ALTER TABLE `graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graphuser`
--

DROP TABLE IF EXISTS `graphuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graphuser` (
  `GUID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GUNODEID` bigint(20) NOT NULL,
  `GUUSERID` bigint(20) NOT NULL,
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graphuser`
--

LOCK TABLES `graphuser` WRITE;
/*!40000 ALTER TABLE `graphuser` DISABLE KEYS */;
INSERT INTO `graphuser` VALUES (1,4,1);
/*!40000 ALTER TABLE `graphuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxattch`
--

DROP TABLE IF EXISTS `hprxattch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxattch` (
  `NODEID` bigint(20) NOT NULL,
  `HTYPE` varchar(255) NOT NULL,
  `LABEL` varchar(255) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxattch`
--

LOCK TABLES `hprxattch` WRITE;
/*!40000 ALTER TABLE `hprxattch` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxattch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxattchsec`
--

DROP TABLE IF EXISTS `hprxattchsec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxattchsec` (
  `ATTCHID` bigint(20) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `PROCESSID` int(11) NOT NULL,
  `SEC` int(11) NOT NULL,
  PRIMARY KEY (`ATTCHID`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxattchsec`
--

LOCK TABLES `hprxattchsec` WRITE;
/*!40000 ALTER TABLE `hprxattchsec` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxattchsec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxendrule`
--

DROP TABLE IF EXISTS `hprxendrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxendrule` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `EXPRULE` varchar(255) DEFAULT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxendrule`
--

LOCK TABLES `hprxendrule` WRITE;
/*!40000 ALTER TABLE `hprxendrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxendrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxlink`
--

DROP TABLE IF EXISTS `hprxlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxlink` (
  `CHILDID` bigint(20) NOT NULL,
  `PARENTID` bigint(20) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  PRIMARY KEY (`CHILDID`,`PARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxlink`
--

LOCK TABLES `hprxlink` WRITE;
/*!40000 ALTER TABLE `hprxlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxlog`
--

DROP TABLE IF EXISTS `hprxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxlog` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `LOG` varchar(255) NOT NULL,
  `LOGACTION` varchar(255) NOT NULL,
  `LOGDATE` datetime NOT NULL,
  `USERID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxlog`
--

LOCK TABLES `hprxlog` WRITE;
/*!40000 ALTER TABLE `hprxlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxmark`
--

DROP TABLE IF EXISTS `hprxmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxmark` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `MARKID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxmark`
--

LOCK TABLES `hprxmark` WRITE;
/*!40000 ALTER TABLE `hprxmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxprocess`
--

DROP TABLE IF EXISTS `hprxprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxprocess` (
  `NODEID` bigint(20) NOT NULL,
  `GRAPHID` bigint(20) NOT NULL,
  `PARCHIVE` datetime NOT NULL,
  `PDESC` varchar(255) DEFAULT NULL,
  `PEND` datetime DEFAULT NULL,
  `PNAME` varchar(255) NOT NULL,
  `PROOTINFOID` decimal(19,2) DEFAULT NULL,
  `PSTART` datetime NOT NULL,
  `PSTATUS` varchar(255) NOT NULL,
  `PTYPE` varchar(255) NOT NULL,
  `RUNNO` int(11) NOT NULL,
  `STARTBYID` bigint(20) NOT NULL,
  `VERSIONID` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxprocess`
--

LOCK TABLES `hprxprocess` WRITE;
/*!40000 ALTER TABLE `hprxprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxremarks`
--

DROP TABLE IF EXISTS `hprxremarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxremarks` (
  `HPRID` bigint(20) NOT NULL AUTO_INCREMENT,
  `HPRDATETIME` datetime NOT NULL,
  `HPRNODEID` bigint(20) NOT NULL,
  `HPRTEXT` varchar(255) NOT NULL,
  `HPRUSERID` bigint(20) NOT NULL,
  PRIMARY KEY (`HPRID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxremarks`
--

LOCK TABLES `hprxremarks` WRITE;
/*!40000 ALTER TABLE `hprxremarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxremarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxrule`
--

DROP TABLE IF EXISTS `hprxrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxrule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESTINATION` varchar(255) NOT NULL,
  `EXPRULE` varchar(255) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxrule`
--

LOCK TABLES `hprxrule` WRITE;
/*!40000 ALTER TABLE `hprxrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxrulestation`
--

DROP TABLE IF EXISTS `hprxrulestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxrulestation` (
  `NODEID` bigint(20) NOT NULL,
  `RULEID` bigint(20) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`RULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxrulestation`
--

LOCK TABLES `hprxrulestation` WRITE;
/*!40000 ALTER TABLE `hprxrulestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxrulestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxstation`
--

DROP TABLE IF EXISTS `hprxstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxstation` (
  `NODEID` bigint(20) NOT NULL,
  `ATTACHDT` date DEFAULT NULL,
  `ATTACHID` decimal(19,2) DEFAULT NULL,
  `PROCESSDT` date DEFAULT NULL,
  `PROCESSID` decimal(19,2) DEFAULT NULL,
  `STATIONDESC` varchar(255) DEFAULT NULL,
  `STATIONRMK` varchar(255) DEFAULT NULL,
  `STATIONTYPE` varchar(255) DEFAULT NULL,
  `TIMEOUTDAY` int(11) DEFAULT NULL,
  `XPOS` int(11) DEFAULT NULL,
  `YPOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxstation`
--

LOCK TABLES `hprxstation` WRITE;
/*!40000 ALTER TABLE `hprxstation` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hprxtask`
--

DROP TABLE IF EXISTS `hprxtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hprxtask` (
  `TASKID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESSID` bigint(20) NOT NULL,
  `STATIONID` bigint(20) NOT NULL,
  `TASKTYPE` varchar(255) NOT NULL,
  `TEND` datetime DEFAULT NULL,
  `TMASKID` bigint(20) NOT NULL,
  `TOPEN` datetime DEFAULT NULL,
  `TSTART` datetime NOT NULL,
  `TSTATUS` varchar(255) DEFAULT NULL,
  `USERID` bigint(20) NOT NULL,
  PRIMARY KEY (`TASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hprxtask`
--

LOCK TABLES `hprxtask` WRITE;
/*!40000 ALTER TABLE `hprxtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `hprxtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageinfo`
--

DROP TABLE IF EXISTS `imageinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imageinfo` (
  `FSEQ` int(11) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `FEXT` varchar(255) NOT NULL,
  `FFULLPATH` varchar(255) NOT NULL,
  PRIMARY KEY (`FSEQ`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageinfo`
--

LOCK TABLES `imageinfo` WRITE;
/*!40000 ALTER TABLE `imageinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `imageinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxattch`
--

DROP TABLE IF EXISTS `iprxattch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxattch` (
  `NODEID` bigint(20) NOT NULL,
  `HTYPE` varchar(255) NOT NULL,
  `LABEL` varchar(255) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxattch`
--

LOCK TABLES `iprxattch` WRITE;
/*!40000 ALTER TABLE `iprxattch` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxattch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxattchsec`
--

DROP TABLE IF EXISTS `iprxattchsec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxattchsec` (
  `ATTCHID` bigint(20) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `PROCESSID` int(11) NOT NULL,
  `SEC` int(11) NOT NULL,
  PRIMARY KEY (`ATTCHID`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxattchsec`
--

LOCK TABLES `iprxattchsec` WRITE;
/*!40000 ALTER TABLE `iprxattchsec` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxattchsec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxendrule`
--

DROP TABLE IF EXISTS `iprxendrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxendrule` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `EXPRULE` varchar(255) DEFAULT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxendrule`
--

LOCK TABLES `iprxendrule` WRITE;
/*!40000 ALTER TABLE `iprxendrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxendrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxlink`
--

DROP TABLE IF EXISTS `iprxlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxlink` (
  `CHILDID` bigint(20) NOT NULL,
  `PARENTID` bigint(20) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  PRIMARY KEY (`CHILDID`,`PARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxlink`
--

LOCK TABLES `iprxlink` WRITE;
/*!40000 ALTER TABLE `iprxlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxlog`
--

DROP TABLE IF EXISTS `iprxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxlog` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `LOG` varchar(255) NOT NULL,
  `LOGACTION` varchar(255) NOT NULL,
  `LOGDATE` datetime NOT NULL,
  `USERID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxlog`
--

LOCK TABLES `iprxlog` WRITE;
/*!40000 ALTER TABLE `iprxlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxmark`
--

DROP TABLE IF EXISTS `iprxmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxmark` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `MARKID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxmark`
--

LOCK TABLES `iprxmark` WRITE;
/*!40000 ALTER TABLE `iprxmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxntfevent`
--

DROP TABLE IF EXISTS `iprxntfevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxntfevent` (
  `NODEID` bigint(20) NOT NULL,
  `IPRXNEBSTART` tinyint(1) NOT NULL,
  `IPRXNEBSTARTID` bigint(20) DEFAULT NULL,
  `IPRXNECMP` tinyint(1) NOT NULL,
  `IPRXNECMPID` bigint(20) DEFAULT NULL,
  `IPRXNEPUBLISH` tinyint(1) NOT NULL,
  `IPRXNEPUBLISHID` bigint(20) DEFAULT NULL,
  `IPRXNERCV` tinyint(1) NOT NULL,
  `IPRXNERCVID` bigint(20) DEFAULT NULL,
  `IPRXNEREJECT` tinyint(1) NOT NULL,
  `IPRXNEREJECTID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxntfevent`
--

LOCK TABLES `iprxntfevent` WRITE;
/*!40000 ALTER TABLE `iprxntfevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxntfevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxprocess`
--

DROP TABLE IF EXISTS `iprxprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxprocess` (
  `NODEID` bigint(20) NOT NULL,
  `GRAPHID` bigint(20) NOT NULL,
  `PDESC` varchar(255) DEFAULT NULL,
  `PEND` datetime DEFAULT NULL,
  `PNAME` varchar(255) NOT NULL,
  `PROOTINFOID` decimal(19,2) DEFAULT NULL,
  `PSTART` datetime NOT NULL,
  `PSTATUS` varchar(255) NOT NULL,
  `PTYPE` varchar(255) NOT NULL,
  `RUNNO` int(11) NOT NULL,
  `STARTBYID` bigint(20) NOT NULL,
  `VERSIONID` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxprocess`
--

LOCK TABLES `iprxprocess` WRITE;
/*!40000 ALTER TABLE `iprxprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxremarks`
--

DROP TABLE IF EXISTS `iprxremarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxremarks` (
  `IPRID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IPRDATETIME` datetime NOT NULL,
  `IPRNODEID` bigint(20) NOT NULL,
  `IPRTEXT` varchar(255) NOT NULL,
  `IPRUSERID` bigint(20) NOT NULL,
  PRIMARY KEY (`IPRID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxremarks`
--

LOCK TABLES `iprxremarks` WRITE;
/*!40000 ALTER TABLE `iprxremarks` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxremarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxrule`
--

DROP TABLE IF EXISTS `iprxrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxrule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESTINATION` varchar(255) NOT NULL,
  `EXPRULE` varchar(255) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxrule`
--

LOCK TABLES `iprxrule` WRITE;
/*!40000 ALTER TABLE `iprxrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxrulestation`
--

DROP TABLE IF EXISTS `iprxrulestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxrulestation` (
  `NODEID` bigint(20) NOT NULL,
  `RULEID` bigint(20) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`RULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxrulestation`
--

LOCK TABLES `iprxrulestation` WRITE;
/*!40000 ALTER TABLE `iprxrulestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxrulestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxstation`
--

DROP TABLE IF EXISTS `iprxstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxstation` (
  `NODEID` bigint(20) NOT NULL,
  `ATTACHID` decimal(19,2) DEFAULT NULL,
  `PROCESSID` decimal(19,2) DEFAULT NULL,
  `STATIONDESC` varchar(255) DEFAULT NULL,
  `STATIONRMK` varchar(255) DEFAULT NULL,
  `STATIONTYPE` varchar(255) DEFAULT NULL,
  `TIMEOUTDAY` int(11) DEFAULT NULL,
  `XPOS` int(11) DEFAULT NULL,
  `YPOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxstation`
--

LOCK TABLES `iprxstation` WRITE;
/*!40000 ALTER TABLE `iprxstation` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iprxtask`
--

DROP TABLE IF EXISTS `iprxtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iprxtask` (
  `TASKID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESSID` bigint(20) NOT NULL,
  `STATIONID` bigint(20) NOT NULL,
  `TASKTYPE` varchar(255) NOT NULL,
  `TEND` datetime DEFAULT NULL,
  `TMASKID` bigint(20) NOT NULL,
  `TOPEN` datetime DEFAULT NULL,
  `TSTART` datetime NOT NULL,
  `TSTATUS` varchar(255) DEFAULT NULL,
  `USERID` bigint(20) NOT NULL,
  PRIMARY KEY (`TASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iprxtask`
--

LOCK TABLES `iprxtask` WRITE;
/*!40000 ALTER TABLE `iprxtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `iprxtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` bigint(20) NOT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `filedesc` longtext,
  `filename` varchar(255) DEFAULT NULL,
  `filetype` longtext,
  `path` longtext,
  `qty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_dis`
--

DROP TABLE IF EXISTS `link_dis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_dis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `distribution` varchar(255) DEFAULT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_dis`
--

LOCK TABLES `link_dis` WRITE;
/*!40000 ALTER TABLE `link_dis` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_dis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linklog`
--

DROP TABLE IF EXISTS `linklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linklog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doc_no` varchar(255) DEFAULT NULL,
  `filedesc` longtext,
  `filename` varchar(255) DEFAULT NULL,
  `filetype` longtext,
  `path` longtext,
  `qty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linklog`
--

LOCK TABLES `linklog` WRITE;
/*!40000 ALTER TABLE `linklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `linklog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locktbl`
--

DROP TABLE IF EXISTS `locktbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locktbl` (
  `LOCKID` varchar(255) NOT NULL,
  `LOCKBY` varchar(255) DEFAULT NULL,
  `LOCKDT` date DEFAULT NULL,
  `LOCKTM` time DEFAULT NULL,
  PRIMARY KEY (`LOCKID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locktbl`
--

LOCK TABLES `locktbl` WRITE;
/*!40000 ALTER TABLE `locktbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `locktbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logging`
--

DROP TABLE IF EXISTS `logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logging` (
  `logID` bigint(20) NOT NULL AUTO_INCREMENT,
  `logCODE` varchar(255) NOT NULL,
  `logCOMMENT` varchar(255) NOT NULL,
  `logDATE` date NOT NULL,
  `logObjID` bigint(20) DEFAULT NULL,
  `logTIME` time NOT NULL,
  `logUID` bigint(20) NOT NULL,
  `logUNAME` varchar(255) NOT NULL,
  PRIMARY KEY (`logID`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logging`
--

LOCK TABLES `logging` WRITE;
/*!40000 ALTER TABLE `logging` DISABLE KEYS */;
INSERT INTO `logging` VALUES (1,'LOGIN','User login.','2015-07-27',1,'12:56:34',1,'root'),(2,'SCAMDL','User installed a module: (Audit Trail)','2015-07-27',230,'12:56:51',1,'root'),(3,'SCAMDL','User installed a module: (Equipment)','2015-07-27',104,'12:56:55',1,'root'),(4,'SCAMDL','User installed a module: (Manage notification for your business process.)','2015-07-27',239,'12:57:01',1,'root'),(5,'SCAMDL','User installed a module: (MCRE)','2015-07-27',101,'12:57:14',1,'root'),(6,'SCAMDL','User installed a module: (Creating processes and business rules)','2015-07-27',102,'12:57:20',1,'root'),(7,'SCAMDL','User installed a module: (Starting, viewing and managing tasks)','2015-07-27',103,'12:57:24',1,'root'),(8,'SCCWSP','A workspace has been created: (MCRE)','2015-07-27',4,'12:57:30',1,'root'),(9,'SCCWSP','A workspace has been created: (Equipment)','2015-07-27',5,'12:57:38',1,'root'),(10,'SCCWSP','A workspace has been created: (Task Manager)','2015-07-27',6,'12:57:49',1,'root'),(11,'SCCWSP','A workspace has been created: (Process Organizer)','2015-07-27',7,'12:57:56',1,'root'),(12,'SCCWSP','A workspace has been created: (Notification)','2015-07-27',8,'12:58:07',1,'root'),(13,'SCCWSP','A workspace has been created: (Audit Trail)','2015-07-27',9,'12:58:18',1,'root'),(14,'LOGIN','User login.','2015-07-27',1,'13:56:49',1,'root'),(15,'SCAWID','User added a widget: (Process Organizer)','2015-07-27',11,'13:57:21',1,'root'),(16,'SCAWID','User added a widget: (Task Manager)','2015-07-27',12,'13:57:40',1,'root'),(17,'SCAWID','User added a widget: (Equipment)','2015-07-27',13,'13:57:59',1,'root'),(18,'SCEWSP','A workspace has been edited: (Notification)','2015-07-27',8,'13:58:57',1,'root'),(19,'SCEWSP','A workspace has been edited: (Audit Trail)','2015-07-27',9,'13:58:59',1,'root'),(20,'SCAWID','User added a widget: (Notification)','2015-07-27',14,'13:59:22',1,'root'),(21,'SCAWID','User added a widget: (Audit Trail)','2015-07-27',15,'13:59:38',1,'root'),(22,'FMAFOL','User create folder named: (Workflow)','2015-07-27',16,'14:09:35',1,'root'),(23,'NFTEEVT','User create Ntfevent.','2015-07-27',17,'14:09:54',1,'root'),(24,'NFTEEVT','User Update Ntfevent.','2015-07-27',17,'14:13:08',1,'root'),(25,'NFTEEVT','User create Ntfevent.','2015-07-27',54,'14:13:24',1,'root'),(26,'NFTEEVT','User create Ntfevent.','2015-07-27',55,'14:13:38',1,'root'),(27,'NFTEEVT','User create Ntfevent.','2015-07-27',56,'14:13:56',1,'root'),(28,'NFTEEVT','User create Ntfevent.','2015-07-27',57,'14:14:10',1,'root'),(29,'NFTEEVT','User Update Ntfevent.','2015-07-27',54,'14:14:52',1,'root'),(30,'NFTEEVT','User Update Ntfevent.','2015-07-27',55,'14:15:48',1,'root'),(31,'NFTEEVT','User Update Ntfevent.','2015-07-27',56,'14:16:29',1,'root'),(32,'NFTEEVT','User Update Ntfevent.','2015-07-27',57,'14:17:24',1,'root'),(33,'LOGIN','User login.','2015-07-28',1,'14:28:10',1,'root'),(34,'SCEMODL','User edited a system setting: (FILECOUNT)','2015-07-28',0,'14:37:51',1,'root'),(35,'FMAFOL','User create folder named: (Reminder)','2015-07-28',106,'14:38:38',1,'root'),(36,'NFTEEVT','User create Ntfevent.','2015-07-28',107,'14:38:56',1,'root'),(37,'NFTEEVT','User Update Ntfevent.','2015-07-28',107,'14:41:56',1,'root'),(38,'LOGIN','User login.','2015-07-28',1,'16:22:20',1,'root'),(39,'SCAG','A new group has been created: (ADMIN)','2015-07-28',108,'16:23:58',1,'root'),(40,'SCEMDL','User edited a module: (Repository)','2015-07-28',101,'16:24:14',1,'root'),(41,'SCEWID','User edited a widget: (MCRE)','2015-07-28',10,'16:24:37',1,'root'),(42,'LOGOUT','User logout.','2015-07-28',1,'16:25:38',1,'root'),(43,'LOGIN','User login.','2015-07-28',1,'16:25:40',1,'root'),(44,'SCADOCC','A user has been assigned as document control: (MCRE)','2015-07-28',4,'16:26:15',1,'root'),(45,'SCEWSP','A workspace has been edited: (MCRE)','2015-07-28',4,'16:26:20',1,'root'),(46,'LOGOUT','User logout.','2015-07-28',1,'16:26:50',1,'root'),(47,'LOGIN','User login.','2015-07-28',1,'16:26:52',1,'root'),(48,'SCEU','Workspace has been assigned to user: (root)','2015-07-28',1,'16:27:25',1,'root'),(49,'SCEU','User\'s data has been edit: (root)','2015-07-28',1,'16:27:40',1,'root'),(50,'LOGOUT','User logout.','2015-07-28',1,'16:27:55',1,'root'),(51,'LOGIN','User login.','2015-07-28',1,'16:27:58',1,'root'),(52,'SCEG','A group has been edited: (ADMIN)','2015-07-28',108,'16:28:30',1,'root'),(53,'SCEG','A group has been edited: (ADMIN)','2015-07-28',108,'16:28:45',1,'root'),(54,'LOGOUT','User logout.','2015-07-28',1,'16:29:01',1,'root'),(55,'LOGIN','User login.','2015-07-28',1,'16:29:04',1,'root'),(56,'FMAFOL','User create folder named: (AMAT)','2015-07-28',109,'16:29:25',1,'root'),(57,'FMAFOL','User create folder named: (Angular Head)','2015-07-28',110,'16:29:37',1,'root'),(58,'FMAFOL','User create folder named: (Ballooned Drawing)','2015-07-28',111,'16:29:44',1,'root'),(59,'FMAFOL','User create folder named: (Base Criteria Template)','2015-07-28',112,'16:29:53',1,'root'),(60,'FMAFOL','User create folder named: (Customer Drawing)','2015-07-28',113,'16:29:59',1,'root'),(61,'FMAFOL','User create folder named: (Customer Specification)','2015-07-28',114,'16:30:10',1,'root'),(62,'FMAFOL','User create folder named: (Form)','2015-07-28',115,'16:30:20',1,'root'),(63,'FMAFOL','User create folder named: (General Specification)','2015-07-28',116,'16:30:40',1,'root'),(64,'FMAFOL','User create folder named: (MPP)','2015-07-28',117,'16:30:44',1,'root'),(65,'FMAFOL','User create folder named: (PPP)','2015-07-28',118,'16:30:47',1,'root'),(66,'FMAFOL','User create folder named: (Product Quality Plan)','2015-07-28',119,'16:30:57',1,'root'),(67,'FMAFOL','User create folder named: (QM & QSP)','2015-07-28',120,'16:31:06',1,'root'),(68,'FMAFOL','User create folder named: (SOP)','2015-07-28',121,'16:31:09',1,'root'),(69,'FMAFOL','User create folder named: (WI)','2015-07-28',122,'16:31:11',1,'root'),(70,'FMAFOL','User create folder named: (AMAT Drawing)','2015-07-28',123,'16:31:27',1,'root'),(71,'FMAFOL','User create folder named: (AMAT Specification)','2015-07-28',124,'16:31:36',1,'root'),(72,'FMAFOL','User create folder named: (AMAT WI)','2015-07-28',125,'16:31:39',1,'root'),(73,'FMAFOL','User create folder named: (GE)','2015-07-28',126,'16:32:05',1,'root'),(74,'FMAFOL','User create folder named: (New Project (Upera))','2015-07-28',127,'16:32:13',1,'root'),(75,'FMDFOL','User delete folder','2015-07-28',127,'16:32:44',1,'root'),(76,'FMAFOL','User create folder named: (New Project (Upeca))','2015-07-28',128,'16:32:58',1,'root'),(77,'FMAFOL','User create folder named: (Pratt & Whitney Canada)','2015-07-28',129,'16:33:10',1,'root'),(78,'FMAFOL','User create folder named: (SI-4126T26P05)','2015-07-28',130,'16:33:24',1,'root'),(79,'FMAFOL','User create folder named: (Snecma)','2015-07-28',131,'16:33:32',1,'root'),(80,'FMAFOL','User create folder named: (1559M30G14)','2015-07-28',132,'16:33:52',1,'root'),(81,'FMAFOL','User create folder named: (L44649)','2015-07-28',133,'16:33:59',1,'root'),(82,'FMAFOL','User create folder named: (L44650)','2015-07-28',134,'16:34:06',1,'root'),(83,'FMAFOL','User create folder named: (351-100-112-0)','2015-07-28',135,'16:34:21',1,'root'),(84,'FMAFOL','User create folder named: (351-104-012-0)','2015-07-28',136,'16:34:29',1,'root'),(85,'FMAFOL','User create folder named: (382-105-607-0)','2015-07-28',137,'16:34:41',1,'root'),(86,'FMAFOL','User create folder named: (382-105-705-0)','2015-07-28',138,'16:34:49',1,'root'),(87,'FMAFOL','User create folder named: (2302M67G11)','2015-07-28',139,'16:34:59',1,'root'),(88,'FMAFOL','User create folder named: (9206M96G05)','2015-07-28',140,'16:35:20',1,'root'),(89,'FMAFOL','User create folder named: (340-059-818-0)','2015-07-28',141,'16:35:51',1,'root'),(90,'FMAFOL','User create folder named: (340-059-840-0)','2015-07-28',142,'16:36:09',1,'root'),(91,'FMAFOL','User create folder named: (340-059-929-0)','2015-07-28',143,'16:36:16',1,'root'),(92,'FMAFOL','User create folder named: (Snecma document not relevant to MP)','2015-07-28',144,'16:36:35',1,'root'),(93,'FMAFOL','User create folder named: (2070M18_H)','2015-07-28',145,'16:36:45',1,'root'),(94,'FMDFOL','User delete folder','2015-07-28',145,'16:37:05',1,'root'),(95,'FMAFOL','User create folder named: (Axcelis)','2015-07-28',146,'16:37:15',1,'root'),(96,'FMAFOL','User create folder named: (GE)','2015-07-28',147,'16:37:27',1,'root'),(97,'FMAFOL','User create folder named: (Pratt & Whitney Canada)','2015-07-28',148,'16:37:35',1,'root'),(98,'FMAFOL','User create folder named: (Snecma)','2015-07-28',149,'16:37:38',1,'root'),(99,'FMAFOL','User create folder named: (2070M18_H)','2015-07-28',150,'16:37:58',1,'root'),(100,'FMAFOL','User create folder named: (17391000-3D Models)','2015-07-28',151,'16:38:11',1,'root'),(101,'FMAFOL','User create folder named: (170083470 & 17391000)','2015-07-28',152,'16:38:24',1,'root'),(102,'FMAFOL','User create folder named: (General)','2015-07-28',153,'16:38:30',1,'root'),(103,'FMAFOL','User create folder named: (Specs)','2015-07-28',154,'16:38:33',1,'root'),(104,'FMAFOL','User create folder named: (Reference Copy)','2015-07-28',155,'16:39:05',1,'root'),(105,'FMAFOL','User create folder named: (8606810)','2015-07-28',156,'16:39:23',1,'root'),(106,'FMAFOL','User create folder named: (FEN)','2015-07-28',157,'16:39:48',1,'root'),(107,'FMAFOL','User create folder named: (FGN)','2015-07-28',158,'16:39:50',1,'root'),(108,'FMAFOL','User create folder named: (FHR)','2015-07-28',159,'16:39:53',1,'root'),(109,'FMAFOL','User create folder named: (FPC)','2015-07-28',160,'16:39:55',1,'root'),(110,'FMAFOL','User create folder named: (FPD)','2015-07-28',161,'16:39:57',1,'root'),(111,'FMAFOL','User create folder named: (FPG)','2015-07-28',162,'16:40:03',1,'root'),(112,'FMAFOL','User create folder named: (FPR)','2015-07-28',163,'16:40:06',1,'root'),(113,'FMAFOL','User create folder named: (FQA)','2015-07-28',164,'16:40:09',1,'root'),(114,'FMAFOL','User create folder named: (FSP)','2015-07-28',165,'16:40:12',1,'root'),(115,'FMAFOL','User create folder named: (FST)','2015-07-28',166,'16:40:14',1,'root');
/*!40000 ALTER TABLE `logging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdcalibtype`
--

DROP TABLE IF EXISTS `mdcalibtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdcalibtype` (
  `MDCTID` int(11) NOT NULL AUTO_INCREMENT,
  `MDCTNAME` varchar(100) NOT NULL,
  `MDCTPREFIX` varchar(10) DEFAULT NULL,
  `MDCTSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDCTID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdcalibtype`
--

LOCK TABLES `mdcalibtype` WRITE;
/*!40000 ALTER TABLE `mdcalibtype` DISABLE KEYS */;
INSERT INTO `mdcalibtype` VALUES (1,'External','EX',1),(2,'Internal','IN',1),(3,'Others','O',1);
/*!40000 ALTER TABLE `mdcalibtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdcategory`
--

DROP TABLE IF EXISTS `mdcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdcategory` (
  `MDCID` int(11) NOT NULL AUTO_INCREMENT,
  `MDCNAME` varchar(100) NOT NULL,
  `MDCPREFIX` varchar(10) DEFAULT NULL,
  `MDCSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDCID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdcategory`
--

LOCK TABLES `mdcategory` WRITE;
/*!40000 ALTER TABLE `mdcategory` DISABLE KEYS */;
INSERT INTO `mdcategory` VALUES (1,'AMAT',' ',1),(2,'Angular Head',' ',1),(3,'Ballooned Drawing',' ',1),(4,'Base Criteria Template',' ',1),(5,'Customer Drawing',' ',1),(6,'Customer Specification',' ',1),(7,'Form',' ',1),(8,'General Specification',' ',1),(9,'MPP',' ',1),(10,'PPP',' ',1),(11,'Product Quality Plan',' ',1),(12,'QM & QSP',' ',1),(13,'SOP',' ',1),(14,'WI',' ',1);
/*!40000 ALTER TABLE `mdcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdcustomer`
--

DROP TABLE IF EXISTS `mdcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdcustomer` (
  `MDCTID` int(11) NOT NULL AUTO_INCREMENT,
  `MDCTNAME` varchar(100) NOT NULL,
  `MDCTPREFIX` varchar(10) DEFAULT NULL,
  `MDCTSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDCTID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdcustomer`
--

LOCK TABLES `mdcustomer` WRITE;
/*!40000 ALTER TABLE `mdcustomer` DISABLE KEYS */;
INSERT INTO `mdcustomer` VALUES (1,'AMAT',' ',1),(2,'GE',' ',1),(3,'SNECMA',' ',1),(4,'PRATT & WHITNEY CANADA',' ',1);
/*!40000 ALTER TABLE `mdcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mddepartment`
--

DROP TABLE IF EXISTS `mddepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mddepartment` (
  `MDDID` int(11) NOT NULL AUTO_INCREMENT,
  `MDDNAME` varchar(100) NOT NULL,
  `MDDPREFIX` varchar(10) DEFAULT NULL,
  `MDDSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDDID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mddepartment`
--

LOCK TABLES `mddepartment` WRITE;
/*!40000 ALTER TABLE `mddepartment` DISABLE KEYS */;
INSERT INTO `mddepartment` VALUES (1,'Quality Assurance','QA',1),(2,'Engineering','EN',1),(3,'Special Process','SP',1),(4,'General','GN',1),(5,'FPI','FP',1),(6,'Production','PD',1),(7,'Program','PG',1),(8,'Planning','PC',1),(9,'Purchasing','PR',1),(10,'Store','ST',1),(11,'SCM','SCM',1),(12,'Cleaning Line','CL',1),(13,'Big Format','BF',1);
/*!40000 ALTER TABLE `mddepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdequiptype`
--

DROP TABLE IF EXISTS `mdequiptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdequiptype` (
  `MDETID` int(11) NOT NULL AUTO_INCREMENT,
  `MDETNAME` varchar(100) NOT NULL,
  `MDETPREFIX` varchar(10) DEFAULT NULL,
  `MDETSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDETID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdequiptype`
--

LOCK TABLES `mdequiptype` WRITE;
/*!40000 ALTER TABLE `mdequiptype` DISABLE KEYS */;
INSERT INTO `mdequiptype` VALUES (1,'Equipment ','EQ',1),(2,'Gauges','G',1);
/*!40000 ALTER TABLE `mdequiptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdisoclause`
--

DROP TABLE IF EXISTS `mdisoclause`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdisoclause` (
  `MDIID` int(11) NOT NULL AUTO_INCREMENT,
  `MDINAME` varchar(100) NOT NULL,
  `MDIPREFIX` varchar(255) NOT NULL,
  `MDISTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDIID`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdisoclause`
--

LOCK TABLES `mdisoclause` WRITE;
/*!40000 ALTER TABLE `mdisoclause` DISABLE KEYS */;
INSERT INTO `mdisoclause` VALUES (1,'4 Quality Management System','4.0',1),(2,'4.1 General Requirements','4.1',1),(3,'4.2 Documentation Requirements','4.2',1),(4,'4.2.1 General','4.2.1',1),(5,'4.2.2 Quality Manual','4.2.2',1),(6,'4.2.3 Control of Documents','4.2.3',1),(7,'4.2.4 Control of Records','4.2.4',1),(8,'5 Management Responsibility','5.0',1),(9,'5.1 Management Commitment','5.1',1),(10,'5.2 Customer Focus','5.2',1),(11,'5.3 Quality Policy','5.3',1),(12,'5.4 Planning','5.4',1),(13,'5.4.1 Quality Objectives','5.4.1',1),(14,'5.4.2 Quality Management System Planning','5.4.2',1),(15,'5.5 Responsibility, Authority and Communication','5.5',1),(16,'5.5.1 Responsibilit and Authority','5.5.1',1),(17,'5.5.2 Management Representative','5.5.2',1),(18,'5.5.3 Internal Communication','5.5.3',1),(19,'5.6 Management Review','5.6',1),(20,'5.6.1 General','5.6.1',1),(21,'5.6.2 Review Input','5.6.2',1),(22,'5.6.3 Review Output','5.6.3',1),(23,'6 Resources Management','6.0',1),(24,'6.1 Provision of Resources','6.1',1),(25,'6.2 Human Resources','6.2',1),(26,'6.2.1 General','6.2.1',1),(27,'6.2.2 Competence, Training and Awareness','6.2.2',1),(28,'6.3 Infrastructure','6.3',1),(29,'6.4 Work Environment','6.4',1),(30,'7 Product Realization','7.0',1),(31,'7.1 Planning of Product Realization','7.1',1),(32,'7.2 Customer Related Processes','7.2',1),(33,'7.2.1 Determination of Requirements Related To The Product','7.2.1',1),(34,'7.2.2 Review of Requirements Related To The Product','7.2.2',1),(35,'7.2.3 Customer Communication','7.2.3',1),(36,'7.3 Design and Development','7.3',1),(37,'7.3.1 Design and Development Planning','7.3.1',1),(38,'7.3.2 Design and Development Inputs','7.3.2',1),(39,'7.3.3 Design and Development Outputs','7.3.3',1),(40,'7.3.4Design and Development Review','7.3.4',1),(41,'7.3.5 Design and Development Verification','7.3.5',1),(42,'7.3.6 Design and Development Validation','7.3.6',1),(43,'7.3.7 Control of Design and Development Changes','7.3.7',1),(44,'7.4 Purchasing','7.4',1),(45,'7.4.1 Purchasing Process','7.4.1',1),(46,'7.4.2 Purchasing Information','7.4.2',1),(47,'7.4.3 Verification of Purchased Product','7.4.3',1),(48,'7.5 Production and Service Provision','7.5',1),(49,'7.5.1 Control of Production and Service Provision','7.5.1',1),(50,'7.5.2 Validation of Processes For Production and Service Provision','7.5.2',1),(51,'7.5.3 Identification and Traceability','7.5.3',1),(52,'7.5.4 Customer Property','7.5.4',1),(53,'7.5.5 Preservation of Product','7.5.5',1),(54,'7.6 Control of Monitoring and Measuring Equipment','7.6',1),(55,'8 Measurement, Analysis and Improvement','8.0',1),(56,'8.1 General','8.1',1),(57,'8.2 Monitoring and Measurement','8.2',1),(58,'8.2.1 Customer Satisfaction','8.2.1',1),(59,'8.2.2 Internal Audit','8.2.2',1),(60,'8.2.3 Monitorin and Measurement of Processes','8.2.3',1),(61,'8.2.4 Monitoring and Measurement of Product','8.2.4',1),(62,'8.3 Control of Nonconforming Product','8.3',1),(63,'8.4 Analysis of Data','8.4',1),(64,'8.5 Improvement','8.5',1),(65,'8..5.1 Continual Improvement','8.5.1',1),(66,'8.5.2 Corrective Action','8.5.2',1),(67,'8.5.3 Preventive Action','8.5.3',1);
/*!40000 ALTER TABLE `mdisoclause` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdplant`
--

DROP TABLE IF EXISTS `mdplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdplant` (
  `MDPID` int(11) NOT NULL AUTO_INCREMENT,
  `MDPNAME` varchar(100) NOT NULL,
  `MDPPREFIX` varchar(10) DEFAULT NULL,
  `MDPSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDPID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdplant`
--

LOCK TABLES `mdplant` WRITE;
/*!40000 ALTER TABLE `mdplant` DISABLE KEYS */;
INSERT INTO `mdplant` VALUES (1,'Meerkat Precision','MP',1);
/*!40000 ALTER TABLE `mdplant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdproject`
--

DROP TABLE IF EXISTS `mdproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdproject` (
  `MDPRID` int(11) NOT NULL AUTO_INCREMENT,
  `MDPRNAME` varchar(100) NOT NULL,
  `MDPRPREFIX` varchar(255) NOT NULL,
  `MDPRSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`MDPRID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdproject`
--

LOCK TABLES `mdproject` WRITE;
/*!40000 ALTER TABLE `mdproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdproject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdprojectlist`
--

DROP TABLE IF EXISTS `mdprojectlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdprojectlist` (
  `MDPRLID` bigint(20) NOT NULL AUTO_INCREMENT,
  `MDPRLPRID` bigint(20) NOT NULL,
  `MDPRLUID` bigint(20) NOT NULL,
  PRIMARY KEY (`MDPRLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdprojectlist`
--

LOCK TABLES `mdprojectlist` WRITE;
/*!40000 ALTER TABLE `mdprojectlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdprojectlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modlattr`
--

DROP TABLE IF EXISTS `modlattr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modlattr` (
  `ATMODNM` varchar(255) NOT NULL,
  `ATSEQ` smallint(6) NOT NULL,
  `ATVAL` varchar(255) NOT NULL,
  PRIMARY KEY (`ATMODNM`,`ATSEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modlattr`
--

LOCK TABLES `modlattr` WRITE;
/*!40000 ALTER TABLE `modlattr` DISABLE KEYS */;
INSERT INTO `modlattr` VALUES ('AUTHENTICATION_REQUIRED',1,'TRUE'),('FILECOUNT',1,'1'),('LOCK_FOLDER',1,'D:/PantonSys/SAM/lock/'),('MAIL_PASSWORD',1,'zxcvb'),('MAIL_PORT',1,'587'),('MAIL_SERVER',1,'mail.sam-malaysia.com'),('MAIL_USER',1,'admin@sam-malaysia.com'),('PDF_FOLDER',1,'D:/PantonSys/SAM/Storage/pdf/'),('ROOTFOLDER',1,'D:/PantonSys/SAM/Storage/'),('SENDER_ADDRESS',1,'admin@sam-malaysia.com'),('SSL_ENABLED',1,'*'),('SUBFOLDER',1,'1'),('SWF_FOLDER',1,'D:/PantonSys/SAM/Storage/swf/'),('TLS_ENABLED',1,'FALSE');
/*!40000 ALTER TABLE `modlattr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `MODID` int(11) NOT NULL,
  `MODDESC` varchar(255) NOT NULL,
  `MODFRAME` tinyint(1) NOT NULL,
  `MODICON` varchar(255) NOT NULL,
  `MODNAME` varchar(255) NOT NULL,
  `MODSTATUS` tinyint(1) NOT NULL,
  `MODURL` varchar(255) NOT NULL,
  PRIMARY KEY (`MODID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (100,'System Configuration',1,'systemControl.png','System Control',1,'system/main.jsp'),(101,'MCRE',1,'Repository.png','Repository',1,'repository/main.jsp'),(102,'Creating processes and business rules',1,'processOrg.png','Process Organizer',1,'process/organizer/main.jsp'),(103,'Starting, viewing and managing tasks',1,'tasks.png','Tasks',1,'process/task/main.jsp'),(104,'Equipment',1,'Repository.png','Equipment',1,'equipment/main.jsp'),(230,'Audit Trail',1,'Reporting.png','Audit Trail',1,'audit/main.jsp'),(239,'Manage notification for your business process.',1,'notification.png','Notification',1,'notification/main.jsp');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mprxstation`
--

DROP TABLE IF EXISTS `mprxstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mprxstation` (
  `MPRXAPPID` bigint(20) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `MPRXAPPDATE` date DEFAULT NULL,
  `MPRXAPPUDESC` varchar(255) DEFAULT NULL,
  `MPRXAPPUID` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`MPRXAPPID`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mprxstation`
--

LOCK TABLES `mprxstation` WRITE;
/*!40000 ALTER TABLE `mprxstation` DISABLE KEYS */;
/*!40000 ALTER TABLE `mprxstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhist`
--

DROP TABLE IF EXISTS `nhist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhist` (
  `NHID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NHCODE` varchar(255) DEFAULT NULL,
  `NHCOMM` varchar(255) DEFAULT NULL,
  `NHDATE` date DEFAULT NULL,
  `NHTIME` time DEFAULT NULL,
  `NHUID` decimal(19,2) DEFAULT NULL,
  `NODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`NHID`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhist`
--

LOCK TABLES `nhist` WRITE;
/*!40000 ALTER TABLE `nhist` DISABLE KEYS */;
INSERT INTO `nhist` VALUES (1,'NEW','Object (USER) created.','2015-07-27','12:55:43',1.00,1),(2,'NEW','Object (GRAPH) created.','2015-07-27','12:55:43',1.00,2),(3,'NEW','Object (WIDGET) created.','2015-07-27','12:55:43',1.00,3),(4,'NEW','Object (GRAPH) created.','2015-07-27','12:57:30',1.00,4),(5,'NEW','Object (GRAPH) created.','2015-07-27','12:57:38',1.00,5),(6,'NEW','Object (GRAPH) created.','2015-07-27','12:57:49',1.00,6),(7,'NEW','Object (GRAPH) created.','2015-07-27','12:57:56',1.00,7),(8,'NEW','Object (GRAPH) created.','2015-07-27','12:58:07',1.00,8),(9,'NEW','Object (GRAPH) created.','2015-07-27','12:58:18',1.00,9),(10,'NEW','Object (WIDGET) created.','2015-07-27','13:56:35',1.00,10),(11,'NEW','Object (WIDGET) created.','2015-07-27','13:57:21',1.00,11),(12,'NEW','Object (WIDGET) created.','2015-07-27','13:57:40',1.00,12),(13,'NEW','Object (WIDGET) created.','2015-07-27','13:57:59',1.00,13),(14,'NEW','Object (WIDGET) created.','2015-07-27','13:59:22',1.00,14),(15,'NEW','Object (WIDGET) created.','2015-07-27','13:59:38',1.00,15),(16,'NEW','Object (FOLDER) created.','2015-07-27','14:09:35',1.00,16),(17,'NEW','Object (NTFEVENT) created.','2015-07-27','14:09:54',1.00,17),(18,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,18),(19,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,19),(20,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,20),(21,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,21),(22,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,22),(23,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,23),(24,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,24),(25,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,25),(26,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,26),(27,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,27),(28,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,28),(29,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,29),(30,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:28',1.00,30),(31,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,31),(32,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,32),(33,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,33),(34,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,34),(35,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,35),(36,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,36),(37,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,37),(38,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,38),(39,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,39),(40,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,40),(41,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,41),(42,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,42),(43,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,43),(44,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,44),(45,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,45),(46,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,46),(47,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:29',1.00,47),(48,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,48),(49,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,49),(50,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,50),(51,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,51),(52,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,52),(53,'NEW','Object (CUSTOM CONTACT) created.','2015-07-27','14:10:30',1.00,53),(54,'NEW','Object (NTFEVENT) created.','2015-07-27','14:13:24',1.00,54),(55,'NEW','Object (NTFEVENT) created.','2015-07-27','14:13:38',1.00,55),(56,'NEW','Object (NTFEVENT) created.','2015-07-27','14:13:56',1.00,56),(57,'NEW','Object (NTFEVENT) created.','2015-07-27','14:14:10',1.00,57),(58,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,58),(59,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,59),(60,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,60),(61,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,61),(62,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,62),(63,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,63),(64,'NEW','Object (USER) created.','2015-07-27','14:44:20',1.00,64),(65,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,65),(66,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,66),(67,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,67),(68,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,68),(69,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,69),(70,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,70),(71,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,71),(72,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,72),(73,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,73),(74,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,74),(75,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,75),(76,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,76),(77,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,77),(78,'NEW','Object (USER) created.','2015-07-27','14:44:21',1.00,78),(79,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,79),(80,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,80),(81,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,81),(82,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,82),(83,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,83),(84,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,84),(85,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,85),(86,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,86),(87,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,87),(88,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,88),(89,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,89),(90,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,90),(91,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,91),(92,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,92),(93,'NEW','Object (USER) created.','2015-07-27','14:44:22',1.00,93),(94,'NEW','Object (USER) created.','2015-07-27','14:44:23',1.00,94),(95,'NEW','Object (USER) created.','2015-07-27','14:44:23',1.00,95),(96,'NEW','Object (GROUP) created.','2015-07-27','14:48:52',1.00,96),(97,'NEW','Object (GROUP) created.','2015-07-27','14:48:52',1.00,97),(98,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,98),(99,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,99),(100,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,100),(101,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,101),(102,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,102),(103,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,103),(104,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,104),(105,'NEW','Object (GROUP) created.','2015-07-27','14:48:53',1.00,105),(106,'NEW','Object (FOLDER) created.','2015-07-28','14:38:38',1.00,106),(107,'NEW','Object (NTFEVENT) created.','2015-07-28','14:38:56',1.00,107),(108,'NEW','Object (GROUP) created.','2015-07-28','16:23:57',1.00,108),(109,'NEW','Object (FOLDER) created.','2015-07-28','16:29:24',1.00,109),(110,'NEW','Object (FOLDER) created.','2015-07-28','16:29:37',1.00,110),(111,'NEW','Object (FOLDER) created.','2015-07-28','16:29:44',1.00,111),(112,'NEW','Object (FOLDER) created.','2015-07-28','16:29:53',1.00,112),(113,'NEW','Object (FOLDER) created.','2015-07-28','16:29:59',1.00,113),(114,'NEW','Object (FOLDER) created.','2015-07-28','16:30:10',1.00,114),(115,'NEW','Object (FOLDER) created.','2015-07-28','16:30:20',1.00,115),(116,'NEW','Object (FOLDER) created.','2015-07-28','16:30:40',1.00,116),(117,'NEW','Object (FOLDER) created.','2015-07-28','16:30:44',1.00,117),(118,'NEW','Object (FOLDER) created.','2015-07-28','16:30:47',1.00,118),(119,'NEW','Object (FOLDER) created.','2015-07-28','16:30:57',1.00,119),(120,'NEW','Object (FOLDER) created.','2015-07-28','16:31:06',1.00,120),(121,'NEW','Object (FOLDER) created.','2015-07-28','16:31:09',1.00,121),(122,'NEW','Object (FOLDER) created.','2015-07-28','16:31:11',1.00,122),(123,'NEW','Object (FOLDER) created.','2015-07-28','16:31:27',1.00,123),(124,'NEW','Object (FOLDER) created.','2015-07-28','16:31:35',1.00,124),(125,'NEW','Object (FOLDER) created.','2015-07-28','16:31:39',1.00,125),(126,'NEW','Object (FOLDER) created.','2015-07-28','16:32:05',1.00,126),(128,'NEW','Object (FOLDER) created.','2015-07-28','16:32:58',1.00,128),(129,'NEW','Object (FOLDER) created.','2015-07-28','16:33:10',1.00,129),(130,'NEW','Object (FOLDER) created.','2015-07-28','16:33:23',1.00,130),(131,'NEW','Object (FOLDER) created.','2015-07-28','16:33:32',1.00,131),(132,'NEW','Object (FOLDER) created.','2015-07-28','16:33:52',1.00,132),(133,'NEW','Object (FOLDER) created.','2015-07-28','16:33:59',1.00,133),(134,'NEW','Object (FOLDER) created.','2015-07-28','16:34:06',1.00,134),(135,'NEW','Object (FOLDER) created.','2015-07-28','16:34:21',1.00,135),(136,'NEW','Object (FOLDER) created.','2015-07-28','16:34:29',1.00,136),(137,'NEW','Object (FOLDER) created.','2015-07-28','16:34:41',1.00,137),(138,'NEW','Object (FOLDER) created.','2015-07-28','16:34:49',1.00,138),(139,'NEW','Object (FOLDER) created.','2015-07-28','16:34:59',1.00,139),(140,'NEW','Object (FOLDER) created.','2015-07-28','16:35:19',1.00,140),(141,'NEW','Object (FOLDER) created.','2015-07-28','16:35:51',1.00,141),(142,'NEW','Object (FOLDER) created.','2015-07-28','16:36:09',1.00,142),(143,'NEW','Object (FOLDER) created.','2015-07-28','16:36:16',1.00,143),(144,'NEW','Object (FOLDER) created.','2015-07-28','16:36:35',1.00,144),(146,'NEW','Object (FOLDER) created.','2015-07-28','16:37:15',1.00,146),(147,'NEW','Object (FOLDER) created.','2015-07-28','16:37:26',1.00,147),(148,'NEW','Object (FOLDER) created.','2015-07-28','16:37:35',1.00,148),(149,'NEW','Object (FOLDER) created.','2015-07-28','16:37:38',1.00,149),(150,'NEW','Object (FOLDER) created.','2015-07-28','16:37:58',1.00,150),(151,'NEW','Object (FOLDER) created.','2015-07-28','16:38:11',1.00,151),(152,'NEW','Object (FOLDER) created.','2015-07-28','16:38:24',1.00,152),(153,'NEW','Object (FOLDER) created.','2015-07-28','16:38:30',1.00,153),(154,'NEW','Object (FOLDER) created.','2015-07-28','16:38:33',1.00,154),(155,'NEW','Object (FOLDER) created.','2015-07-28','16:39:05',1.00,155),(156,'NEW','Object (FOLDER) created.','2015-07-28','16:39:23',1.00,156),(157,'NEW','Object (FOLDER) created.','2015-07-28','16:39:48',1.00,157),(158,'NEW','Object (FOLDER) created.','2015-07-28','16:39:50',1.00,158),(159,'NEW','Object (FOLDER) created.','2015-07-28','16:39:53',1.00,159),(160,'NEW','Object (FOLDER) created.','2015-07-28','16:39:55',1.00,160),(161,'NEW','Object (FOLDER) created.','2015-07-28','16:39:57',1.00,161),(162,'NEW','Object (FOLDER) created.','2015-07-28','16:40:03',1.00,162),(163,'NEW','Object (FOLDER) created.','2015-07-28','16:40:06',1.00,163),(164,'NEW','Object (FOLDER) created.','2015-07-28','16:40:09',1.00,164),(165,'NEW','Object (FOLDER) created.','2015-07-28','16:40:12',1.00,165),(166,'NEW','Object (FOLDER) created.','2015-07-28','16:40:14',1.00,166);
/*!40000 ALTER TABLE `nhist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `NODEID` bigint(20) NOT NULL,
  `NODEBITS` decimal(19,2) DEFAULT NULL,
  `NODEDESC` varchar(255) DEFAULT NULL,
  `NODEDT` date NOT NULL,
  `NODEGID` decimal(19,2) DEFAULT NULL,
  `NODEHASH` varchar(255) DEFAULT NULL,
  `NODELEVEL` smallint(6) DEFAULT NULL,
  `NODETYPE` varchar(255) DEFAULT NULL,
  `NODEUID` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,NULL,'root','2015-07-27',1.00,NULL,NULL,'USER',1.00),(2,NULL,'System Control','2015-07-27',2.00,NULL,NULL,'GRAPH',1.00),(3,NULL,'System Control','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(4,NULL,'MCRE','2015-07-27',4.00,NULL,NULL,'GRAPH',1.00),(5,NULL,'Equipment','2015-07-27',5.00,NULL,NULL,'GRAPH',1.00),(6,NULL,'Task Manager','2015-07-27',6.00,NULL,NULL,'GRAPH',1.00),(7,NULL,'Process Organizer','2015-07-27',7.00,NULL,NULL,'GRAPH',1.00),(8,NULL,'Notification','2015-07-27',8.00,NULL,NULL,'GRAPH',1.00),(9,NULL,'Audit Trail','2015-07-27',9.00,NULL,NULL,'GRAPH',1.00),(10,NULL,'MCRE','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(11,NULL,'Process Organizer','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(12,NULL,'Task Manager','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(13,NULL,'Equipment','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(14,NULL,'Notification','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(15,NULL,'Audit Trail','2015-07-27',1.00,NULL,NULL,'WIDGET',1.00),(16,NULL,'Workflow','2015-07-27',8.00,'',0,'FOLDER',1.00),(17,NULL,'PROCESS_RECEIVE','2015-07-27',8.00,NULL,NULL,'NTFEVENT',1.00),(18,NULL,'Custom Contacts','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(19,NULL,'Approved Approvers','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(20,NULL,'System','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(21,NULL,'Distribution List','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(22,NULL,'Document Control','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(23,NULL,'Initiator','2015-07-27',4.00,NULL,NULL,'CUSTOM CONTACT',1.00),(24,NULL,'Custom Contacts','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(25,NULL,'Approved Approvers','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(26,NULL,'System','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(27,NULL,'Distribution List','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(28,NULL,'Document Control','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(29,NULL,'Initiator','2015-07-27',5.00,NULL,NULL,'CUSTOM CONTACT',1.00),(30,NULL,'Custom Contacts','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(31,NULL,'Approved Approvers','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(32,NULL,'System','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(33,NULL,'Distribution List','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(34,NULL,'Document Control','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(35,NULL,'Initiator','2015-07-27',6.00,NULL,NULL,'CUSTOM CONTACT',1.00),(36,NULL,'Custom Contacts','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(37,NULL,'Approved Approvers','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(38,NULL,'System','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(39,NULL,'Distribution List','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(40,NULL,'Document Control','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(41,NULL,'Initiator','2015-07-27',7.00,NULL,NULL,'CUSTOM CONTACT',1.00),(42,NULL,'Custom Contacts','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(43,NULL,'Approved Approvers','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(44,NULL,'System','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(45,NULL,'Distribution List','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(46,NULL,'Document Control','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(47,NULL,'Initiator','2015-07-27',8.00,NULL,NULL,'CUSTOM CONTACT',1.00),(48,NULL,'Custom Contacts','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(49,NULL,'Approved Approvers','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(50,NULL,'System','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(51,NULL,'Distribution List','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(52,NULL,'Document Control','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(53,NULL,'Initiator','2015-07-27',9.00,NULL,NULL,'CUSTOM CONTACT',1.00),(54,NULL,'PROCESS_REJECT','2015-07-27',8.00,NULL,NULL,'NTFEVENT',1.00),(55,NULL,'SEND_TO_DOCCON','2015-07-27',8.00,NULL,NULL,'NTFEVENT',1.00),(56,NULL,'BACK_TO_INITIATOR','2015-07-27',8.00,NULL,NULL,'NTFEVENT',1.00),(57,NULL,'PROCESS_PUBLISH','2015-07-27',8.00,NULL,NULL,'NTFEVENT',1.00),(58,NULL,'M00762','2015-07-27',2.00,NULL,NULL,'USER',1.00),(59,NULL,'M00832','2015-07-27',2.00,NULL,NULL,'USER',1.00),(60,NULL,'M00314','2015-07-27',2.00,NULL,NULL,'USER',1.00),(61,NULL,'M01013','2015-07-27',2.00,NULL,NULL,'USER',1.00),(62,NULL,'M00955','2015-07-27',2.00,NULL,NULL,'USER',1.00),(63,NULL,'M01011','2015-07-27',2.00,NULL,NULL,'USER',1.00),(64,NULL,'S00002','2015-07-27',2.00,NULL,NULL,'USER',1.00),(65,NULL,'S00023','2015-07-27',2.00,NULL,NULL,'USER',1.00),(66,NULL,'S00079','2015-07-27',2.00,NULL,NULL,'USER',1.00),(67,NULL,'S00186','2015-07-27',2.00,NULL,NULL,'USER',1.00),(68,NULL,'S00197','2015-07-27',2.00,NULL,NULL,'USER',1.00),(69,NULL,'S00199','2015-07-27',2.00,NULL,NULL,'USER',1.00),(70,NULL,'S00232','2015-07-27',2.00,NULL,NULL,'USER',1.00),(71,NULL,'S00100','2015-07-27',2.00,NULL,NULL,'USER',1.00),(72,NULL,'S00103','2015-07-27',2.00,NULL,NULL,'USER',1.00),(73,NULL,'S00016','2015-07-27',2.00,NULL,NULL,'USER',1.00),(74,NULL,'S00122','2015-07-27',2.00,NULL,NULL,'USER',1.00),(75,NULL,'S00149','2015-07-27',2.00,NULL,NULL,'USER',1.00),(76,NULL,'S00174','2015-07-27',2.00,NULL,NULL,'USER',1.00),(77,NULL,'S00230','2015-07-27',2.00,NULL,NULL,'USER',1.00),(78,NULL,'S00188','2015-07-27',2.00,NULL,NULL,'USER',1.00),(79,NULL,'S00029','2015-07-27',2.00,NULL,NULL,'USER',1.00),(80,NULL,'S00014','2015-07-27',2.00,NULL,NULL,'USER',1.00),(81,NULL,'S00032','2015-07-27',2.00,NULL,NULL,'USER',1.00),(82,NULL,'S00033','2015-07-27',2.00,NULL,NULL,'USER',1.00),(83,NULL,'S00037','2015-07-27',2.00,NULL,NULL,'USER',1.00),(84,NULL,'S00063','2015-07-27',2.00,NULL,NULL,'USER',1.00),(85,NULL,'S00096','2015-07-27',2.00,NULL,NULL,'USER',1.00),(86,NULL,'S00189','2015-07-27',2.00,NULL,NULL,'USER',1.00),(87,NULL,'S00204','2015-07-27',2.00,NULL,NULL,'USER',1.00),(88,NULL,'S00236','2015-07-27',2.00,NULL,NULL,'USER',1.00),(89,NULL,'S00240','2015-07-27',2.00,NULL,NULL,'USER',1.00),(90,NULL,'S00073','2015-07-27',2.00,NULL,NULL,'USER',1.00),(91,NULL,'S00141','2015-07-27',2.00,NULL,NULL,'USER',1.00),(92,NULL,'S00010','2015-07-27',2.00,NULL,NULL,'USER',1.00),(93,NULL,'S00192','2015-07-27',2.00,NULL,NULL,'USER',1.00),(94,NULL,'S00099','2015-07-27',2.00,NULL,NULL,'USER',1.00),(95,NULL,'S00225','2015-07-27',2.00,NULL,NULL,'USER',1.00),(96,NULL,'Quality Assurance','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(97,NULL,'Engineering','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(98,NULL,'Special Process','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(99,NULL,'Production','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(100,NULL,'FPI','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(101,NULL,'SCM','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(102,NULL,'AMAT','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(103,NULL,'Head of Department','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(104,NULL,'Head of Company','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(105,NULL,'Operation Director','2015-07-27',2.00,NULL,NULL,'GROUP',1.00),(106,NULL,'Reminder','2015-07-28',8.00,'',0,'FOLDER',1.00),(107,NULL,'FILE_EXPIRE_REMINDER','2015-07-28',8.00,NULL,NULL,'NTFEVENT',1.00),(108,NULL,'ADMIN','2015-07-28',2.00,NULL,NULL,'GROUP',1.00),(109,NULL,'AMAT','2015-07-28',4.00,'',0,'FOLDER',1.00),(110,NULL,'Angular Head','2015-07-28',4.00,'',0,'FOLDER',1.00),(111,NULL,'Ballooned Drawing','2015-07-28',4.00,'',0,'FOLDER',1.00),(112,NULL,'Base Criteria Template','2015-07-28',4.00,'',0,'FOLDER',1.00),(113,NULL,'Customer Drawing','2015-07-28',4.00,'',0,'FOLDER',1.00),(114,NULL,'Customer Specification','2015-07-28',4.00,'',0,'FOLDER',1.00),(115,NULL,'Form','2015-07-28',4.00,'',0,'FOLDER',1.00),(116,NULL,'General Specification','2015-07-28',4.00,'',0,'FOLDER',1.00),(117,NULL,'MPP','2015-07-28',4.00,'',0,'FOLDER',1.00),(118,NULL,'PPP','2015-07-28',4.00,'',0,'FOLDER',1.00),(119,NULL,'Product Quality Plan','2015-07-28',4.00,'',0,'FOLDER',1.00),(120,NULL,'QM & QSP','2015-07-28',4.00,'',0,'FOLDER',1.00),(121,NULL,'SOP','2015-07-28',4.00,'',0,'FOLDER',1.00),(122,NULL,'WI','2015-07-28',4.00,'',0,'FOLDER',1.00),(123,NULL,'AMAT Drawing','2015-07-28',4.00,'',0,'FOLDER',1.00),(124,NULL,'AMAT Specification','2015-07-28',4.00,'',0,'FOLDER',1.00),(125,NULL,'AMAT WI','2015-07-28',4.00,'',0,'FOLDER',1.00),(126,NULL,'GE','2015-07-28',4.00,'',0,'FOLDER',1.00),(128,NULL,'New Project (Upeca)','2015-07-28',4.00,'',0,'FOLDER',1.00),(129,NULL,'Pratt & Whitney Canada','2015-07-28',4.00,'',0,'FOLDER',1.00),(130,NULL,'SI-4126T26P05','2015-07-28',4.00,'',0,'FOLDER',1.00),(131,NULL,'Snecma','2015-07-28',4.00,'',0,'FOLDER',1.00),(132,NULL,'1559M30G14','2015-07-28',4.00,'',0,'FOLDER',1.00),(133,NULL,'L44649','2015-07-28',4.00,'',0,'FOLDER',1.00),(134,NULL,'L44650','2015-07-28',4.00,'',0,'FOLDER',1.00),(135,NULL,'351-100-112-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(136,NULL,'351-104-012-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(137,NULL,'382-105-607-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(138,NULL,'382-105-705-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(139,NULL,'2302M67G11','2015-07-28',4.00,'',0,'FOLDER',1.00),(140,NULL,'9206M96G05','2015-07-28',4.00,'',0,'FOLDER',1.00),(141,NULL,'340-059-818-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(142,NULL,'340-059-840-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(143,NULL,'340-059-929-0','2015-07-28',4.00,'',0,'FOLDER',1.00),(144,NULL,'Snecma document not relevant to MP','2015-07-28',4.00,'',0,'FOLDER',1.00),(146,NULL,'Axcelis','2015-07-28',4.00,'',0,'FOLDER',1.00),(147,NULL,'GE','2015-07-28',4.00,'',0,'FOLDER',1.00),(148,NULL,'Pratt & Whitney Canada','2015-07-28',4.00,'',0,'FOLDER',1.00),(149,NULL,'Snecma','2015-07-28',4.00,'',0,'FOLDER',1.00),(150,NULL,'2070M18_H','2015-07-28',4.00,'',0,'FOLDER',1.00),(151,NULL,'17391000-3D Models','2015-07-28',4.00,'',0,'FOLDER',1.00),(152,NULL,'170083470 & 17391000','2015-07-28',4.00,'',0,'FOLDER',1.00),(153,NULL,'General','2015-07-28',4.00,'',0,'FOLDER',1.00),(154,NULL,'Specs','2015-07-28',4.00,'',0,'FOLDER',1.00),(155,NULL,'Reference Copy','2015-07-28',4.00,'',0,'FOLDER',1.00),(156,NULL,'8606810','2015-07-28',4.00,'',0,'FOLDER',1.00),(157,NULL,'FEN','2015-07-28',4.00,'',0,'FOLDER',1.00),(158,NULL,'FGN','2015-07-28',4.00,'',0,'FOLDER',1.00),(159,NULL,'FHR','2015-07-28',4.00,'',0,'FOLDER',1.00),(160,NULL,'FPC','2015-07-28',4.00,'',0,'FOLDER',1.00),(161,NULL,'FPD','2015-07-28',4.00,'',0,'FOLDER',1.00),(162,NULL,'FPG','2015-07-28',4.00,'',0,'FOLDER',1.00),(163,NULL,'FPR','2015-07-28',4.00,'',0,'FOLDER',1.00),(164,NULL,'FQA','2015-07-28',4.00,'',0,'FOLDER',1.00),(165,NULL,'FSP','2015-07-28',4.00,'',0,'FOLDER',1.00),(166,NULL,'FST','2015-07-28',4.00,'',0,'FOLDER',1.00);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodeattr`
--

DROP TABLE IF EXISTS `nodeattr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodeattr` (
  `NAPARAM` varchar(255) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `NAVALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NAPARAM`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodeattr`
--

LOCK TABLES `nodeattr` WRITE;
/*!40000 ALTER TABLE `nodeattr` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodeattr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodelink`
--

DROP TABLE IF EXISTS `nodelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodelink` (
  `LINKCNODEID` bigint(20) NOT NULL,
  `LINKPNODEID` bigint(20) NOT NULL,
  `LINKTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LINKCNODEID`,`LINKPNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodelink`
--

LOCK TABLES `nodelink` WRITE;
/*!40000 ALTER TABLE `nodelink` DISABLE KEYS */;
INSERT INTO `nodelink` VALUES (1,3,'WID_ASSIGNTO'),(1,10,'WID_ASSIGNTO'),(1,11,'WID_ASSIGNTO'),(1,12,'WID_ASSIGNTO'),(1,13,'WID_ASSIGNTO'),(1,14,'WID_ASSIGNTO'),(1,15,'WID_ASSIGNTO'),(1,108,'GRP_USER'),(2,3,'WID_WORKSPACE'),(4,10,'WID_WORKSPACE'),(5,13,'WID_WORKSPACE'),(6,12,'WID_WORKSPACE'),(7,11,'WID_WORKSPACE'),(8,14,'WID_WORKSPACE'),(9,15,'WID_WORKSPACE'),(16,8,'FOLDER'),(17,16,'NTFEVENT'),(19,18,'CUSTOM CONTACT'),(20,18,'CUSTOM CONTACT'),(21,18,'CUSTOM CONTACT'),(22,18,'CUSTOM CONTACT'),(23,18,'CUSTOM CONTACT'),(25,24,'CUSTOM CONTACT'),(26,24,'CUSTOM CONTACT'),(27,24,'CUSTOM CONTACT'),(28,24,'CUSTOM CONTACT'),(29,24,'CUSTOM CONTACT'),(31,30,'CUSTOM CONTACT'),(32,30,'CUSTOM CONTACT'),(33,30,'CUSTOM CONTACT'),(34,30,'CUSTOM CONTACT'),(35,30,'CUSTOM CONTACT'),(37,36,'CUSTOM CONTACT'),(38,36,'CUSTOM CONTACT'),(39,36,'CUSTOM CONTACT'),(40,36,'CUSTOM CONTACT'),(41,36,'CUSTOM CONTACT'),(43,42,'CUSTOM CONTACT'),(44,42,'CUSTOM CONTACT'),(45,42,'CUSTOM CONTACT'),(46,42,'CUSTOM CONTACT'),(47,42,'CUSTOM CONTACT'),(49,48,'CUSTOM CONTACT'),(50,48,'CUSTOM CONTACT'),(51,48,'CUSTOM CONTACT'),(52,48,'CUSTOM CONTACT'),(53,48,'CUSTOM CONTACT'),(54,16,'NTFEVENT'),(55,16,'NTFEVENT'),(56,16,'NTFEVENT'),(57,16,'NTFEVENT'),(106,8,'FOLDER'),(107,106,'NTFEVENT'),(108,3,'WID_ASSIGNTO'),(108,10,'WID_ASSIGNTO'),(108,11,'WID_ASSIGNTO'),(108,12,'WID_ASSIGNTO'),(108,13,'WID_ASSIGNTO'),(108,14,'WID_ASSIGNTO'),(108,15,'WID_ASSIGNTO'),(109,4,'FOLDER'),(110,4,'FOLDER'),(111,4,'FOLDER'),(112,4,'FOLDER'),(113,4,'FOLDER'),(114,4,'FOLDER'),(115,4,'FOLDER'),(116,4,'FOLDER'),(117,4,'FOLDER'),(118,4,'FOLDER'),(119,4,'FOLDER'),(120,4,'FOLDER'),(121,4,'FOLDER'),(122,4,'FOLDER'),(123,109,'FOLDER'),(124,109,'FOLDER'),(125,109,'FOLDER'),(126,113,'FOLDER'),(128,113,'FOLDER'),(129,113,'FOLDER'),(130,113,'FOLDER'),(131,113,'FOLDER'),(132,126,'FOLDER'),(133,126,'FOLDER'),(134,126,'FOLDER'),(135,128,'FOLDER'),(136,128,'FOLDER'),(137,128,'FOLDER'),(138,128,'FOLDER'),(139,128,'FOLDER'),(140,128,'FOLDER'),(141,131,'FOLDER'),(142,131,'FOLDER'),(143,131,'FOLDER'),(144,131,'FOLDER'),(146,114,'FOLDER'),(147,114,'FOLDER'),(148,114,'FOLDER'),(149,114,'FOLDER'),(150,146,'FOLDER'),(151,146,'FOLDER'),(152,146,'FOLDER'),(153,146,'FOLDER'),(154,146,'FOLDER'),(155,148,'FOLDER'),(156,154,'FOLDER'),(157,115,'FOLDER'),(158,115,'FOLDER'),(159,115,'FOLDER'),(160,115,'FOLDER'),(161,115,'FOLDER'),(162,115,'FOLDER'),(163,115,'FOLDER'),(164,115,'FOLDER'),(165,115,'FOLDER'),(166,115,'FOLDER');
/*!40000 ALTER TABLE `nodelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfevent`
--

DROP TABLE IF EXISTS `ntfevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfevent` (
  `NODEID` bigint(20) NOT NULL,
  `NTFDESC` varchar(255) NOT NULL,
  `NTFSUBJECT` blob,
  `NTFTEMPLATE` blob,
  `NTFTRANSPORT` varchar(255) NOT NULL,
  `NTFTYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfevent`
--

LOCK TABLES `ntfevent` WRITE;
/*!40000 ALTER TABLE `ntfevent` DISABLE KEYS */;
INSERT INTO `ntfevent` VALUES (17,'PROCESS_RECEIVE','${pname} is routed to you.','<p>\n	<span style=\"font-weight:bold;font-size:16px;color:blue\">${pname} is routed to you.</span></p>\n','EMAIL','PRX_RCV'),(54,'PROCESS_REJECT','${pname} has been rejected','<p>\n	<span style=\"font-weight:bold;font-size:16px;color:blue\">${pname} has been rejected</span></p>\n','EMAIL','PRX_REJECT'),(55,'SEND_TO_DOCCON','${pname} is send for document control for approval','<p>\n	${pname} is send for document control for approval</p>\n','EMAIL','PRX_COMPLETE'),(56,'BACK_TO_INITIATOR','${pname} rejected','<p>\n	<span style=\"font-weight:bold;font-size:16px;color:blue\">${pname} rejected</span></p>\n','EMAIL','PRX_BACK2START'),(57,'PROCESS_PUBLISH','${pname} published','<p>\n	<span style=\"font-weight:bold;font-size:16px;color:blue\">${pname} published</span></p>\n','EMAIL','PRX_PUBLISH'),(107,'FILE_EXPIRE_REMINDER','Equipment Calibration Due Reminder','<table height=\"52\" width=\"695\">\n	<tbody>\n		<tr>\n			<td>\n				Equipment ID</td>\n			<td>\n				Description</td>\n			<td>\n				Equipment Due Date</td>\n		</tr>\n		<tr>\n			<td>\n				<span style=\"font-weight:bold;font-size:16px;color:blue\">${fdocno}</span></td>\n			<td>\n				<span style=\"font-weight:bold;font-size:16px;color:blue\">${fdoctitle}</span></td>\n			<td>\n				<span style=\"font-weight:bold;font-size:16px;color:blue\">${fduedate}</span></td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n','EMAIL','FILE_EXPIRE_REMINDER');
/*!40000 ALTER TABLE `ntfevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfobj`
--

DROP TABLE IF EXISTS `ntfobj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfobj` (
  `NTFNODEID` bigint(20) NOT NULL,
  `NTFOBJID` bigint(20) NOT NULL,
  PRIMARY KEY (`NTFNODEID`,`NTFOBJID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfobj`
--

LOCK TABLES `ntfobj` WRITE;
/*!40000 ALTER TABLE `ntfobj` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntfobj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfqlog`
--

DROP TABLE IF EXISTS `ntfqlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfqlog` (
  `NTFQID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NTFBCC` varchar(255) DEFAULT NULL,
  `NTFCC` varchar(255) DEFAULT NULL,
  `NTFEVID` bigint(20) NOT NULL,
  `NTFLOGDT` datetime NOT NULL,
  `NTFLOGMSG` varchar(255) DEFAULT NULL,
  `NTFMESSAGE` blob NOT NULL,
  `NTFOBJID` bigint(20) NOT NULL,
  `NTFSTATUS` varchar(255) NOT NULL,
  `NTFSUBJECT` blob,
  `NTFTO` varchar(255) DEFAULT NULL,
  `NTFTRANSPORT` varchar(255) NOT NULL,
  PRIMARY KEY (`NTFQID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfqlog`
--

LOCK TABLES `ntfqlog` WRITE;
/*!40000 ALTER TABLE `ntfqlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntfqlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfqueue`
--

DROP TABLE IF EXISTS `ntfqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfqueue` (
  `NTFQID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NTFEVID` bigint(20) NOT NULL,
  `NTFGRAPHID` bigint(20) NOT NULL,
  `NTFMESSAGE` blob NOT NULL,
  `NTFOBJID` bigint(20) NOT NULL,
  `NTFSUBJECT` blob,
  `NTFTO` varchar(255) DEFAULT NULL,
  `NTFTRANSPORT` varchar(255) NOT NULL,
  PRIMARY KEY (`NTFQID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfqueue`
--

LOCK TABLES `ntfqueue` WRITE;
/*!40000 ALTER TABLE `ntfqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntfqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfug`
--

DROP TABLE IF EXISTS `ntfug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfug` (
  `NTFNODEID` bigint(20) NOT NULL,
  `NTFUGGRAPHID` bigint(20) NOT NULL,
  `NTFUGID` bigint(20) NOT NULL,
  `NTFUGSENDTYPE` int(11) NOT NULL,
  PRIMARY KEY (`NTFNODEID`,`NTFUGGRAPHID`,`NTFUGID`,`NTFUGSENDTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfug`
--

LOCK TABLES `ntfug` WRITE;
/*!40000 ALTER TABLE `ntfug` DISABLE KEYS */;
INSERT INTO `ntfug` VALUES (17,8,20,1),(54,8,20,1),(55,8,22,1),(56,8,19,1),(56,8,23,1),(57,8,19,1),(57,8,23,1),(107,8,20,1),(107,8,22,1);
/*!40000 ALTER TABLE `ntfug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdfinfo`
--

DROP TABLE IF EXISTS `pdfinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdfinfo` (
  `NODEID` bigint(20) NOT NULL,
  `FEXT` varchar(255) NOT NULL,
  `FFULLPATH` varchar(255) NOT NULL,
  `FSEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdfinfo`
--

LOCK TABLES `pdfinfo` WRITE;
/*!40000 ALTER TABLE `pdfinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdfinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pindex`
--

DROP TABLE IF EXISTS `pindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pindex` (
  `NODEID` bigint(20) NOT NULL,
  `WORD` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`,`WORD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pindex`
--

LOCK TABLES `pindex` WRITE;
/*!40000 ALTER TABLE `pindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `pindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxaction`
--

DROP TABLE IF EXISTS `prxaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxaction` (
  `ACTION` varchar(255) NOT NULL,
  `STATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxaction`
--

LOCK TABLES `prxaction` WRITE;
/*!40000 ALTER TABLE `prxaction` DISABLE KEYS */;
INSERT INTO `prxaction` VALUES ('APPROVE',0),('REJECT',0);
/*!40000 ALTER TABLE `prxaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxapprvlist`
--

DROP TABLE IF EXISTS `prxapprvlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxapprvlist` (
  `PRXALID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRXALGID` bigint(20) NOT NULL,
  `PRXALUID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRXALID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxapprvlist`
--

LOCK TABLES `prxapprvlist` WRITE;
/*!40000 ALTER TABLE `prxapprvlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxapprvlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxattch`
--

DROP TABLE IF EXISTS `prxattch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxattch` (
  `NODEID` bigint(20) NOT NULL,
  `EXTENSIONS` varchar(255) DEFAULT NULL,
  `ISPROPERTIES` tinyint(1) NOT NULL,
  `ISSINGULAR` tinyint(1) NOT NULL,
  `LABEL` varchar(255) NOT NULL,
  `MANDATORY` tinyint(1) NOT NULL,
  `PARSEDESC` varchar(255) DEFAULT NULL,
  `REMARKS` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxattch`
--

LOCK TABLES `prxattch` WRITE;
/*!40000 ALTER TABLE `prxattch` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxattch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxattchsec`
--

DROP TABLE IF EXISTS `prxattchsec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxattchsec` (
  `ATTCHID` bigint(20) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `SEC` int(11) NOT NULL,
  PRIMARY KEY (`ATTCHID`,`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxattchsec`
--

LOCK TABLES `prxattchsec` WRITE;
/*!40000 ALTER TABLE `prxattchsec` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxattchsec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxdlist`
--

DROP TABLE IF EXISTS `prxdlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxdlist` (
  `PRXDLID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRXDLGID` bigint(20) NOT NULL,
  `PRXDLNAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PRXDLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxdlist`
--

LOCK TABLES `prxdlist` WRITE;
/*!40000 ALTER TABLE `prxdlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxdlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxdlistelem`
--

DROP TABLE IF EXISTS `prxdlistelem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxdlistelem` (
  `PRXDLEID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRXDLEDLID` bigint(20) NOT NULL,
  `PRXDLEUID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRXDLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxdlistelem`
--

LOCK TABLES `prxdlistelem` WRITE;
/*!40000 ALTER TABLE `prxdlistelem` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxdlistelem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxdoccon`
--

DROP TABLE IF EXISTS `prxdoccon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxdoccon` (
  `PRXDCID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRXDCGID` bigint(20) NOT NULL,
  `PRXDCUID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRXDCID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxdoccon`
--

LOCK TABLES `prxdoccon` WRITE;
/*!40000 ALTER TABLE `prxdoccon` DISABLE KEYS */;
INSERT INTO `prxdoccon` VALUES (1,4,1);
/*!40000 ALTER TABLE `prxdoccon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxendrule`
--

DROP TABLE IF EXISTS `prxendrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxendrule` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `EXPRULE` varchar(255) DEFAULT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxendrule`
--

LOCK TABLES `prxendrule` WRITE;
/*!40000 ALTER TABLE `prxendrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxendrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxendstatus`
--

DROP TABLE IF EXISTS `prxendstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxendstatus` (
  `ENDSTATUS` varchar(255) NOT NULL,
  PRIMARY KEY (`ENDSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxendstatus`
--

LOCK TABLES `prxendstatus` WRITE;
/*!40000 ALTER TABLE `prxendstatus` DISABLE KEYS */;
INSERT INTO `prxendstatus` VALUES ('COMPLETE'),('INCOMPLETE');
/*!40000 ALTER TABLE `prxendstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxevent`
--

DROP TABLE IF EXISTS `prxevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxevent` (
  `NODEID` bigint(20) NOT NULL,
  `ISBATCH` smallint(6) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `PREFIX` varchar(255) DEFAULT NULL,
  `SEPERATOR` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxevent`
--

LOCK TABLES `prxevent` WRITE;
/*!40000 ALTER TABLE `prxevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxexception`
--

DROP TABLE IF EXISTS `prxexception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxexception` (
  `NODEID` bigint(20) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `EXPRULE` varchar(255) NOT NULL,
  `FIELDID` bigint(20) NOT NULL,
  `ISBLOCK` tinyint(1) NOT NULL,
  `ISWARNING` tinyint(1) NOT NULL,
  `MSG` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`,`SEQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxexception`
--

LOCK TABLES `prxexception` WRITE;
/*!40000 ALTER TABLE `prxexception` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxexception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxfrx`
--

DROP TABLE IF EXISTS `prxfrx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxfrx` (
  `PFFRXID` bigint(20) NOT NULL,
  `PFPRXID` bigint(20) NOT NULL,
  `PFINSTANCE` tinyint(1) NOT NULL,
  PRIMARY KEY (`PFFRXID`,`PFPRXID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxfrx`
--

LOCK TABLES `prxfrx` WRITE;
/*!40000 ALTER TABLE `prxfrx` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxfrx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxfrxstn`
--

DROP TABLE IF EXISTS `prxfrxstn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxfrxstn` (
  `PFSID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PFSATTACHID` bigint(20) DEFAULT NULL,
  `PFSFRXID` bigint(20) NOT NULL,
  `PFSINSTOWN` bigint(20) DEFAULT NULL,
  `PFSINSTOWNATTACH` bigint(20) DEFAULT NULL,
  `PFSSTATIONID` bigint(20) NOT NULL,
  PRIMARY KEY (`PFSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxfrxstn`
--

LOCK TABLES `prxfrxstn` WRITE;
/*!40000 ALTER TABLE `prxfrxstn` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxfrxstn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxfrxstnelm`
--

DROP TABLE IF EXISTS `prxfrxstnelm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxfrxstnelm` (
  `PFSEFRXEID` bigint(20) NOT NULL,
  `PFSID` bigint(20) NOT NULL,
  `PFSEOPTIONS` int(11) NOT NULL,
  PRIMARY KEY (`PFSEFRXEID`,`PFSID`),
  KEY `FK1A46758F3EDC56F7` (`PFSID`),
  CONSTRAINT `FK1A46758F3EDC56F7` FOREIGN KEY (`PFSID`) REFERENCES `prxfrxstn` (`PFSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxfrxstnelm`
--

LOCK TABLES `prxfrxstnelm` WRITE;
/*!40000 ALTER TABLE `prxfrxstnelm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxfrxstnelm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxlink`
--

DROP TABLE IF EXISTS `prxlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxlink` (
  `CHILDID` bigint(20) NOT NULL,
  `PARENTID` bigint(20) NOT NULL,
  `VERSIONID` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`CHILDID`,`PARENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxlink`
--

LOCK TABLES `prxlink` WRITE;
/*!40000 ALTER TABLE `prxlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxprocess`
--

DROP TABLE IF EXISTS `prxprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxprocess` (
  `NODEID` bigint(20) NOT NULL,
  `CURRENTVERDT` date DEFAULT NULL,
  `CURRENTVERID` decimal(19,2) DEFAULT NULL,
  `ISENABLE` tinyint(1) NOT NULL,
  `PDESC` varchar(255) NOT NULL,
  `PNAME` varchar(255) NOT NULL,
  `PREFIX` varchar(255) NOT NULL,
  `PTYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxprocess`
--

LOCK TABLES `prxprocess` WRITE;
/*!40000 ALTER TABLE `prxprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxrule`
--

DROP TABLE IF EXISTS `prxrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxrule` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESTINATION` varchar(255) NOT NULL,
  `EXPRULE` varchar(255) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxrule`
--

LOCK TABLES `prxrule` WRITE;
/*!40000 ALTER TABLE `prxrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxrulestation`
--

DROP TABLE IF EXISTS `prxrulestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxrulestation` (
  `NODEID` bigint(20) NOT NULL,
  `RULEID` bigint(20) NOT NULL,
  `PROCESSID` bigint(20) NOT NULL,
  PRIMARY KEY (`NODEID`,`RULEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxrulestation`
--

LOCK TABLES `prxrulestation` WRITE;
/*!40000 ALTER TABLE `prxrulestation` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxrulestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxstation`
--

DROP TABLE IF EXISTS `prxstation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxstation` (
  `NODEID` bigint(20) NOT NULL,
  `ATTACHDT` date DEFAULT NULL,
  `ATTACHID` decimal(19,2) DEFAULT NULL,
  `STATIONDESC` varchar(255) DEFAULT NULL,
  `STATIONRMK` varchar(255) DEFAULT NULL,
  `STATIONTYPE` varchar(255) DEFAULT NULL,
  `TIMEOUTDAY` int(11) DEFAULT NULL,
  `VERSIONID` decimal(19,2) DEFAULT NULL,
  `XPOS` int(11) DEFAULT NULL,
  `YPOS` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxstation`
--

LOCK TABLES `prxstation` WRITE;
/*!40000 ALTER TABLE `prxstation` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxstation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prxversion`
--

DROP TABLE IF EXISTS `prxversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prxversion` (
  `NODEID` bigint(20) NOT NULL,
  `ENDDT` datetime DEFAULT NULL,
  `STARTDT` datetime DEFAULT NULL,
  `STATUS` varchar(255) NOT NULL,
  `VERSION` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prxversion`
--

LOCK TABLES `prxversion` WRITE;
/*!40000 ALTER TABLE `prxversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `prxversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referencelink`
--

DROP TABLE IF EXISTS `referencelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referencelink` (
  `NODEID` bigint(20) NOT NULL,
  `REFID` bigint(20) NOT NULL,
  `REFDESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NODEID`,`REFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referencelink`
--

LOCK TABLES `referencelink` WRITE;
/*!40000 ALTER TABLE `referencelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secbind`
--

DROP TABLE IF EXISTS `secbind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secbind` (
  `SBID` varchar(255) NOT NULL,
  `SBCOUNTREMAIN` int(11) NOT NULL,
  `SBCUSTPICID` bigint(20) DEFAULT NULL,
  `SBDATE` datetime NOT NULL,
  `SBNODEID` bigint(20) NOT NULL,
  `SBPASS` varchar(255) DEFAULT NULL,
  `SBPOLICY` bigint(20) NOT NULL,
  `SBUSERID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SBID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secbind`
--

LOCK TABLES `secbind` WRITE;
/*!40000 ALTER TABLE `secbind` DISABLE KEYS */;
/*!40000 ALTER TABLE `secbind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectemplate`
--

DROP TABLE IF EXISTS `sectemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sectemplate` (
  `SID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SCOPYPASTE` tinyint(1) NOT NULL,
  `SCOUNTER` int(11) NOT NULL,
  `SEXPIRE` int(11) NOT NULL,
  `SMACADDRESS` tinyint(1) NOT NULL,
  `SNAME` varchar(255) NOT NULL,
  `SPASSWORD` tinyint(1) NOT NULL,
  `SPRINT` tinyint(1) NOT NULL,
  `SRENEWAL` int(11) NOT NULL,
  `SRENEWCOUNTER` int(11) NOT NULL,
  `SSAVE` tinyint(1) NOT NULL,
  `SSAVEAS` tinyint(1) NOT NULL,
  `SSELFDESTRUCT` tinyint(1) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectemplate`
--

LOCK TABLES `sectemplate` WRITE;
/*!40000 ALTER TABLE `sectemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `sectemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secureattach`
--

DROP TABLE IF EXISTS `secureattach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secureattach` (
  `SAID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SANODEID` bigint(20) NOT NULL,
  `SASID` bigint(20) NOT NULL,
  `SAUGID` bigint(20) NOT NULL,
  PRIMARY KEY (`SAID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secureattach`
--

LOCK TABLES `secureattach` WRITE;
/*!40000 ALTER TABLE `secureattach` DISABLE KEYS */;
/*!40000 ALTER TABLE `secureattach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securemacaddr`
--

DROP TABLE IF EXISTS `securemacaddr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securemacaddr` (
  `SMID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SMCPID` bigint(20) DEFAULT NULL,
  `SMMACADDR` varchar(255) NOT NULL,
  `SMTYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`SMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securemacaddr`
--

LOCK TABLES `securemacaddr` WRITE;
/*!40000 ALTER TABLE `securemacaddr` DISABLE KEYS */;
/*!40000 ALTER TABLE `securemacaddr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seqtbl`
--

DROP TABLE IF EXISTS `seqtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seqtbl` (
  `PNAME` varchar(255) NOT NULL,
  `PSEQ` bigint(20) NOT NULL,
  PRIMARY KEY (`PNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seqtbl`
--

LOCK TABLES `seqtbl` WRITE;
/*!40000 ALTER TABLE `seqtbl` DISABLE KEYS */;
INSERT INTO `seqtbl` VALUES ('FILENAME',1),('NODE',166),('PWDSEQ',39);
/*!40000 ALTER TABLE `seqtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stcknote`
--

DROP TABLE IF EXISTS `stcknote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stcknote` (
  `SNOTEID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SDOCID` decimal(19,2) DEFAULT NULL,
  `SHEIGHT` int(11) NOT NULL,
  `SPAGE` int(11) DEFAULT NULL,
  `STXTVAL` longtext NOT NULL,
  `SUSERID` bigint(20) NOT NULL,
  `SWIDTH` int(11) NOT NULL,
  `SXVAL` int(11) NOT NULL,
  `SYVAL` int(11) NOT NULL,
  PRIMARY KEY (`SNOTEID`),
  UNIQUE KEY `SNOTEID` (`SNOTEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stcknote`
--

LOCK TABLES `stcknote` WRITE;
/*!40000 ALTER TABLE `stcknote` DISABLE KEYS */;
/*!40000 ALTER TABLE `stcknote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `swfinfo`
--

DROP TABLE IF EXISTS `swfinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swfinfo` (
  `NODEID` bigint(20) NOT NULL,
  `FEXT` varchar(255) NOT NULL,
  `FFULLPATH` varchar(255) NOT NULL,
  `FSEQ` int(11) DEFAULT NULL,
  PRIMARY KEY (`NODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `swfinfo`
--

LOCK TABLES `swfinfo` WRITE;
/*!40000 ALTER TABLE `swfinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `swfinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmpfmpolicy`
--

DROP TABLE IF EXISTS `tmpfmpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpfmpolicy` (
  `FMPID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FMPDOWNLOAD` tinyint(1) NOT NULL,
  `FMPREVISE` tinyint(1) NOT NULL,
  `FMPUGID` bigint(20) NOT NULL,
  `FMPUGTYPE` int(11) NOT NULL,
  `FMPVIEW` tinyint(1) NOT NULL,
  `NODEID` bigint(20) NOT NULL,
  `PRXID` bigint(20) NOT NULL,
  PRIMARY KEY (`FMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpfmpolicy`
--

LOCK TABLES `tmpfmpolicy` WRITE;
/*!40000 ALTER TABLE `tmpfmpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmpfmpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uwidget`
--

DROP TABLE IF EXISTS `uwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uwidget` (
  `UWUSERID` bigint(20) NOT NULL,
  `UWWIDGETID` bigint(20) NOT NULL,
  `UWHEIGHT` varchar(255) NOT NULL,
  `UWISOPEN` tinyint(1) NOT NULL,
  `UWWIDTH` varchar(255) NOT NULL,
  `UWXPOS` int(11) NOT NULL,
  `UWYPOS` int(11) NOT NULL,
  PRIMARY KEY (`UWUSERID`,`UWWIDGETID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uwidget`
--

LOCK TABLES `uwidget` WRITE;
/*!40000 ALTER TABLE `uwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `uwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget` (
  `WNODEID` bigint(20) NOT NULL,
  `WDEFHEIGHT` varchar(255) NOT NULL,
  `WDEFWIDTH` varchar(255) NOT NULL,
  `WMODID` int(11) NOT NULL,
  `WSTATUS` tinyint(1) NOT NULL,
  PRIMARY KEY (`WNODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget`
--

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
INSERT INTO `widget` VALUES (3,'max','max',100,1),(10,'max','max',101,1),(11,'max','max',102,1),(12,'max','max',103,1),(13,'max','max',104,1),(14,'max','max',239,1),(15,'max','max',230,1);
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `windex`
--

DROP TABLE IF EXISTS `windex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `windex` (
  `NODEID` bigint(20) NOT NULL,
  `WORD` varchar(255) NOT NULL,
  PRIMARY KEY (`NODEID`,`WORD`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `windex`
--

LOCK TABLES `windex` WRITE;
/*!40000 ALTER TABLE `windex` DISABLE KEYS */;
/*!40000 ALTER TABLE `windex` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-28 16:42:52
