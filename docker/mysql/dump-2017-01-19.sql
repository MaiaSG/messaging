mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: localhost    Database: opportunity
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `activite`
--

DROP TABLE IF EXISTS `activite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agence_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agence_id` (`agence_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `activite_ibfk_1` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`) ON DELETE CASCADE,
  CONSTRAINT `activite_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activite`
--

LOCK TABLES `activite` WRITE;
/*!40000 ALTER TABLE `activite` DISABLE KEYS */;
INSERT INTO `activite` VALUES (1,2,1),(2,4,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,4,17),(18,4,18),(19,4,19),(20,2,20),(21,3,21),(22,2,22),(23,2,23),(24,1,24),(26,2,26),(27,2,27),(28,2,28),(29,2,30),(30,2,29),(31,4,32),(32,4,25),(33,3,33),(34,4,34),(35,4,35),(36,2,36),(37,4,37),(38,2,38),(39,4,39),(40,2,40),(41,3,1),(42,2,41),(43,2,42),(44,2,43),(45,4,44),(46,2,45),(47,3,46),(48,2,47),(49,2,48),(50,2,50),(51,3,51),(52,1,52),(53,3,53),(54,1,54),(55,1,55),(56,3,56),(57,1,58);
/*!40000 ALTER TABLE `activite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `departement_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departement_id` (`departement_id`),
  CONSTRAINT `agence_ibfk_1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (1,'Agence Banque Assur et Immo',1),(2,'Agence Retail et Indus',1),(3,'Departement BS Nord',1),(4,'Agence Transport et Sect Pub',1),(5,'Direction Technique',1),(8,'Assistantes',1),(9,'Commerce',1);
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence_collab`
--

DROP TABLE IF EXISTS `agence_collab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence_collab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_entree` date NOT NULL,
  `date_sortie` date NOT NULL,
  `is_responsable` bit(1) NOT NULL,
  `agence_id` int(11) NOT NULL,
  `collab_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agence_id` (`agence_id`),
  KEY `collab_id` (`collab_id`),
  CONSTRAINT `agence_collab_ibfk_1` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`) ON DELETE CASCADE,
  CONSTRAINT `agence_collab_ibfk_2` FOREIGN KEY (`collab_id`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence_collab`
--

LOCK TABLES `agence_collab` WRITE;
/*!40000 ALTER TABLE `agence_collab` DISABLE KEYS */;
INSERT INTO `agence_collab` VALUES (1,'2015-04-07','9999-12-31','\0',2,2),(2,'2015-06-01','9999-12-31','',5,1),(3,'2015-05-18','9999-12-31','\0',2,3),(4,'2001-01-01','9999-12-31','\0',1,4),(5,'2015-05-01','9999-12-31','\0',8,492),(6,'2001-01-01','9999-12-31','\0',1,6),(7,'2001-01-01','9999-12-31','\0',1,7),(8,'2001-01-01','9999-12-31','\0',1,8),(9,'2012-07-01','9999-12-31','\0',1,9),(10,'2013-09-30','9999-12-31','\0',1,10),(11,'2012-09-03','9999-12-31','\0',2,11),(12,'2015-07-01','9999-12-31','\0',1,12),(13,'2013-06-01','9999-12-31','\0',4,13),(14,'2011-07-05','9999-12-31','\0',2,14),(15,'2014-04-03','9999-12-31','\0',2,15),(16,'2011-07-01','9999-12-31','\0',2,16),(18,'2011-04-18','9999-12-31','\0',2,18),(20,'2012-07-02','9999-12-31','\0',1,20),(21,'2013-05-25','9999-12-31','\0',1,21),(22,'2010-09-15','9999-12-31','\0',2,22),(23,'2011-01-01','9999-12-31','\0',1,23),(24,'2014-05-01','9999-12-31','\0',2,24),(25,'2013-10-01','9999-12-31','\0',8,491),(26,'2011-05-09','9999-12-31','\0',2,26),(27,'2004-11-01','9999-12-31','\0',4,27),(28,'2000-05-25','9999-12-31','\0',2,28),(29,'2011-08-16','9999-12-31','\0',4,29),(30,'2007-02-01','9999-12-31','\0',4,30),(31,'2010-05-03','9999-12-31','\0',4,31),(32,'2014-06-02','9999-12-31','\0',4,32),(33,'2004-11-01','9999-12-31','\0',4,33),(34,'2014-03-17','9999-12-31','\0',4,34),(35,'2011-01-01','9999-12-31','\0',4,35),(36,'2008-06-01','9999-12-31','\0',4,36),(37,'2012-02-20','9999-12-31','\0',4,37),(38,'2009-01-05','9999-12-31','\0',4,38),(39,'2014-11-03','9999-12-31','\0',4,39),(40,'2004-11-01','9999-12-31','\0',4,40),(41,'2010-03-09','9999-12-31','\0',4,41),(42,'2005-05-01','9999-12-31','\0',4,42),(43,'2015-04-07','9999-12-31','\0',4,43),(44,'2004-11-01','9999-12-31','\0',4,44),(45,'2015-01-19','9999-12-31','\0',4,45),(46,'2013-07-01','9999-12-31','\0',4,46),(47,'2014-02-17','9999-12-31','\0',4,47),(48,'2004-11-01','9999-12-31','\0',4,48),(49,'2012-07-02','9999-12-31','\0',4,49),(50,'2007-06-18','9999-12-31','\0',4,50),(51,'2012-05-02','9999-12-31','\0',4,51),(52,'2004-11-01','9999-12-31','\0',4,52),(53,'2004-11-01','9999-12-31','\0',4,53),(54,'2004-11-01','9999-12-31','\0',4,54),(55,'2013-10-28','9999-12-31','\0',4,55),(56,'2014-10-13','9999-12-31','\0',4,56),(57,'2011-04-11','9999-12-31','\0',4,57),(58,'2005-05-09','9999-12-31','\0',4,58),(59,'2007-05-23','9999-12-31','\0',4,59),(60,'2006-10-01','9999-12-31','\0',4,60),(61,'2011-12-05','9999-12-31','\0',4,61),(62,'2014-10-13','9999-12-31','\0',4,97),(63,'2013-10-14','9999-12-31','\0',4,98),(64,'2011-01-03','9999-12-31','\0',4,99),(65,'2013-10-14','9999-12-31','\0',4,100),(66,'2014-04-22','9999-12-31','\0',4,101),(67,'2014-03-03','9999-12-31','\0',4,102),(68,'2010-11-02','9999-12-31','\0',4,103),(69,'2014-08-11','9999-12-31','\0',4,104),(70,'2009-01-20','9999-12-31','\0',4,105),(71,'2008-09-01','9999-12-31','\0',4,106),(72,'2009-11-02','9999-12-31','\0',4,107),(73,'2010-12-13','9999-12-31','\0',4,108),(74,'2011-06-14','9999-12-31','\0',4,109),(75,'2007-08-06','9999-12-31','\0',4,110),(76,'2007-04-16','9999-12-31','\0',4,111),(77,'2004-11-01','9999-12-31','\0',4,113),(78,'2011-01-31','9999-12-31','\0',4,114),(79,'2011-11-14','9999-12-31','\0',4,115),(80,'2010-09-01','9999-12-31','\0',4,116),(81,'2014-10-13','9999-12-31','\0',4,117),(82,'2004-11-01','9999-12-31','\0',4,118),(83,'2011-10-01','9999-12-31','\0',4,119),(84,'2010-12-06','9999-12-31','\0',4,120),(85,'2006-11-02','9999-12-31','\0',4,121),(86,'2006-02-01','9999-12-31','\0',4,122),(87,'2011-08-01','9999-12-31','\0',4,123),(88,'2010-03-01','9999-12-31','\0',4,124),(89,'2006-07-31','9999-12-31','\0',4,125),(90,'2006-09-05','9999-12-31','\0',4,126),(91,'2011-10-03','9999-12-31','\0',4,127),(92,'2007-09-03','9999-12-31','\0',4,128),(93,'2013-10-28','9999-12-31','\0',4,129),(94,'2010-10-04','9999-12-31','\0',4,130),(95,'2012-07-02','9999-12-31','\0',4,131),(96,'2010-09-24','9999-12-31','\0',1,132),(97,'2004-11-01','2016-01-03','\0',1,133),(98,'2011-04-11','9999-12-31','\0',1,134),(99,'2004-11-01','9999-12-31','\0',1,135),(100,'2012-07-02','9999-12-31','\0',1,136),(101,'2007-02-01','9999-12-31','\0',1,137),(102,'2012-03-12','9999-12-31','\0',1,138),(103,'2004-11-01','9999-12-31','\0',1,139),(104,'1999-12-07','9999-12-31','\0',1,140),(105,'2012-03-26','9999-12-31','\0',1,141),(106,'2008-11-06','9999-12-31','\0',1,142),(107,'2008-07-15','9999-12-31','\0',1,143),(108,'2010-08-02','9999-12-31','\0',1,144),(109,'2006-07-01','9999-12-31','\0',1,145),(110,'2011-10-10','9999-12-31','\0',1,146),(111,'2008-01-07','9999-12-31','\0',1,147),(112,'2007-10-01','9999-12-31','\0',1,148),(113,'2007-12-17','9999-12-31','\0',1,149),(114,'2006-01-01','9999-12-31','\0',1,150),(115,'1999-12-15','9999-12-31','\0',1,151),(116,'2006-07-01','9999-12-31','\0',1,152),(117,'2011-10-17','9999-12-31','\0',1,153),(118,'2005-09-01','9999-12-31','\0',1,154),(119,'2007-03-12','9999-12-31','\0',1,155),(120,'2008-11-03','9999-12-31','\0',1,156),(121,'2014-05-05','9999-12-31','\0',1,157),(122,'2011-02-28','9999-12-31','\0',1,158),(123,'2011-09-12','9999-12-31','\0',1,159),(124,'2008-06-01','9999-12-31','\0',1,160),(125,'2007-08-01','9999-12-31','\0',1,161),(126,'2015-04-27','9999-12-31','\0',1,162),(127,'2012-01-01','9999-12-31','\0',1,163),(128,'2008-02-18','9999-12-31','\0',1,164),(129,'2009-01-01','9999-12-31','\0',1,165),(130,'2007-10-26','9999-12-31','\0',1,166),(131,'2005-12-05','9999-12-31','\0',1,167),(132,'2011-01-01','9999-12-31','\0',1,168),(133,'2011-10-01','9999-12-31','\0',1,169),(134,'2005-07-11','9999-12-31','\0',1,170),(135,'2014-09-01','9999-12-31','\0',1,171),(136,'2011-03-28','9999-12-31','\0',1,172),(137,'2005-10-31','9999-12-31','\0',1,273),(138,'2011-11-02','9999-12-31','\0',1,274),(139,'2015-02-16','9999-12-31','\0',1,275),(140,'2006-01-02','9999-12-31','\0',1,276),(141,'2008-04-02','9999-12-31','\0',1,277),(142,'2010-07-01','9999-12-31','\0',1,278),(143,'2005-01-24','9999-12-31','\0',1,279),(144,'2015-06-03','9999-12-31','\0',1,371),(145,'2005-11-28','9999-12-31','\0',1,372),(146,'2007-04-02','9999-12-31','\0',1,373),(147,'2014-06-23','9999-12-31','\0',1,374),(148,'2011-10-03','9999-12-31','\0',1,375),(149,'2014-06-02','9999-12-31','\0',1,376),(150,'2015-05-26','9999-12-31','\0',1,377),(151,'2006-04-03','9999-12-31','\0',2,378),(152,'2004-11-01','9999-12-31','\0',2,379),(153,'1998-10-12','9999-12-31','\0',2,380),(154,'2013-10-14','9999-12-31','\0',2,381),(155,'2005-07-18','9999-12-31','\0',2,382),(156,'2006-08-28','9999-12-31','\0',2,383),(157,'2006-02-15','9999-12-31','\0',2,384),(158,'1997-01-01','9999-12-31','\0',2,385),(159,'2010-11-29','9999-12-31','\0',2,386),(160,'2015-06-08','9999-12-31','\0',2,387),(161,'2011-03-01','9999-12-31','\0',2,388),(162,'2005-05-16','9999-12-31','\0',2,389),(163,'2004-11-01','9999-12-31','\0',2,390),(164,'1997-01-01','9999-12-31','\0',2,391),(165,'2007-09-03','9999-12-31','\0',2,392),(166,'2007-03-01','9999-12-31','\0',2,393),(167,'1997-01-01','9999-12-31','\0',2,394),(168,'2006-03-01','9999-12-31','\0',2,395),(169,'2011-06-20','9999-12-31','\0',2,396),(170,'2011-03-21','9999-12-31','\0',2,397),(171,'2011-03-14','9999-12-31','\0',2,398),(172,'2014-07-01','9999-12-31','\0',2,399),(173,'2004-11-01','9999-12-31','\0',2,400),(174,'2012-06-18','9999-12-31','\0',2,401),(175,'2014-12-11','9999-12-31','\0',2,402),(176,'1997-01-01','9999-12-31','\0',2,403),(177,'2014-09-01','9999-12-31','\0',2,404),(178,'2014-03-03','9999-12-31','\0',2,405),(179,'2010-02-17','9999-12-31','\0',2,406),(180,'2006-08-02','9999-12-31','\0',2,407),(181,'2008-08-11','9999-12-31','\0',2,408),(182,'2008-09-01','9999-12-31','\0',2,409),(183,'2015-02-25','9999-12-31','\0',2,410),(184,'1997-01-01','9999-12-31','\0',2,411),(185,'2011-01-10','9999-12-31','\0',2,412),(186,'2001-03-19','9999-12-31','\0',2,413),(187,'2005-09-06','9999-12-31','\0',2,414),(188,'2011-04-04','9999-12-31','\0',2,415),(189,'2007-11-19','9999-12-31','\0',2,416),(190,'2004-11-01','9999-12-31','\0',2,417),(191,'2014-10-27','9999-12-31','\0',2,418),(192,'2007-01-02','9999-12-31','\0',2,419),(193,'2014-10-13','9999-12-31','\0',2,420),(194,'2015-02-02','9999-12-31','\0',2,421),(196,'2004-11-01','9999-12-31','\0',2,423),(197,'2011-09-19','9999-12-31','\0',2,424),(198,'2011-03-01','9999-12-31','\0',2,425),(199,'2010-06-01','9999-12-31','\0',2,426),(200,'2015-04-01','9999-12-31','\0',2,461),(201,'2007-10-22','9999-12-31','\0',2,462),(202,'2008-09-01','9999-12-31','\0',2,463),(203,'1998-11-02','9999-12-31','\0',2,464),(204,'2011-06-01','9999-12-31','\0',2,465),(205,'2008-05-05','9999-12-31','\0',2,466),(206,'2015-06-10','9999-12-31','\0',2,467),(207,'2014-06-02','9999-12-31','\0',2,468),(208,'2008-12-15','9999-12-31','\0',2,469),(209,'2015-01-01','9999-12-31','\0',8,470),(210,'2015-02-01','9999-12-31','\0',8,471),(211,'2015-04-01','9999-12-31','\0',8,472),(212,'2015-04-01','9999-12-31','\0',8,473),(213,'2015-02-01','9999-12-31','\0',8,474),(214,'2015-03-01','9999-12-31','\0',8,490),(215,'2015-03-01','9999-12-31','\0',8,476),(216,'2015-05-01','9999-12-31','\0',8,477),(217,'2015-04-01','9999-12-31','\0',8,478),(218,'2015-01-01','9999-12-31','\0',8,479),(219,'2015-05-01','9999-12-31','\0',8,489),(220,'2014-10-01','9999-12-31','\0',8,481),(221,'2014-09-01','9999-12-31','\0',8,482),(222,'2015-05-01','9999-12-31','\0',8,484),(223,'2015-01-01','9999-12-31','\0',8,488),(224,'2014-11-01','9999-12-31','\0',8,485),(225,'2015-04-01','9999-12-31','\0',8,486),(226,'2011-04-01','9999-12-31','',1,493),(227,'2015-03-23','9999-12-31','\0',4,494),(228,'2013-12-06','9999-12-31','\0',2,495),(231,'2009-05-04','9999-12-31','',2,496),(232,'2014-08-11','9999-12-31','\0',1,497),(233,'2004-11-01','9999-12-31','\0',4,498),(234,'2013-09-17','9999-12-31','',4,499),(235,'2014-04-03','9999-12-31','',3,500),(236,'2015-12-01','9999-12-31','\0',4,501),(237,'2012-05-09','9999-12-31','\0',4,543),(238,'2015-12-01','9999-12-31','\0',4,544),(239,'2016-01-04','9999-12-31','\0',2,545),(240,'2016-02-01','9999-12-31','\0',4,546),(241,'2016-01-18','9999-12-31','\0',4,580),(242,'2016-03-29','9999-12-31','\0',1,581),(244,'2016-04-11','9999-12-31','\0',3,587),(245,'2016-05-02','9999-12-31','\0',3,588),(246,'2016-05-02','9999-12-31','\0',3,589),(247,'2016-05-23','9999-12-31','\0',3,595),(248,'2016-06-06','9999-12-31','\0',3,596),(249,'2016-06-06','9999-12-31','\0',3,597),(250,'2016-06-20','9999-12-31','\0',3,598),(251,'2016-06-20','2016-12-31','\0',3,599),(252,'2016-05-02','2016-12-31','\0',3,602),(253,'2016-06-06','9999-12-31','\0',3,603),(254,'2016-03-01','9999-12-31','\0',1,604),(255,'2016-03-01','9999-12-31','\0',1,605),(256,'2004-11-01','9999-12-31','\0',4,606),(257,'2006-10-02','9999-12-31','\0',4,607),(258,'2016-04-01','9999-12-31','\0',1,608),(259,'2016-06-01','9999-12-31','\0',3,609),(260,'2016-06-01','9999-12-31','\0',3,610),(261,'2016-07-01','9999-12-31','\0',2,611),(262,'2016-09-12','9999-09-12','\0',4,614),(263,'2016-10-03','2020-10-03','\0',4,615),(265,'2016-09-05','9999-09-05','\0',4,619),(268,'2016-09-19','9999-09-19','\0',2,622),(269,'2016-09-19','9999-09-19','\0',4,623),(270,'2016-10-03','9999-10-03','\0',2,624),(272,'2016-06-01','2016-09-30','\0',2,626),(273,'2016-12-05','2017-12-05','\0',4,627),(276,'2016-12-05','2017-12-05','\0',4,630),(277,'2016-12-12','2017-12-12','\0',9,631),(278,'2016-12-12','2017-12-12','\0',9,632),(279,'2017-01-02','2018-01-02','\0',1,633),(280,'2016-10-05','9999-10-05','\0',4,634),(281,'2015-10-26','9999-12-31','\0',2,635),(282,'2016-06-27','9999-12-31','\0',1,636),(283,'2016-04-04','9999-12-31','\0',1,637),(284,'2016-12-12','9999-12-12','\0',4,638),(285,'1998-12-01','9999-12-31','',2,639);
/*!40000 ALTER TABLE `agence_collab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arret_maladie`
--

DROP TABLE IF EXISTS `arret_maladie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arret_maladie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `arret_maladie_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arret_maladie`
--

LOCK TABLES `arret_maladie` WRITE;
/*!40000 ALTER TABLE `arret_maladie` DISABLE KEYS */;
INSERT INTO `arret_maladie` VALUES (1,'','2015-09-01','2015-10-04',160),(2,'','2015-09-01','2015-10-31',20);
/*!40000 ALTER TABLE `arret_maladie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avant_vente`
--

DROP TABLE IF EXISTS `avant_vente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avant_vente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `avant_vente_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avant_vente`
--

LOCK TABLES `avant_vente` WRITE;
/*!40000 ALTER TABLE `avant_vente` DISABLE KEYS */;
INSERT INTO `avant_vente` VALUES (1,'','2015-09-01','9999-12-31',33);
/*!40000 ALTER TABLE `avant_vente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bench`
--

DROP TABLE IF EXISTS `bench`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bench` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `bench_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bench`
--

LOCK TABLES `bench` WRITE;
/*!40000 ALTER TABLE `bench` DISABLE KEYS */;
INSERT INTO `bench` VALUES (1,'','2015-09-14','2015-11-22',2),(2,'Sortie de mission le 2/10. Puis Formation et CP. Dispo 20/10','2015-10-20','2015-11-30',10),(3,'Projet EMMAUS : pas dans ormda','2015-01-01','2015-09-30',11),(4,'','2015-09-01','2016-02-05',24),(6,'Projet EMMAUS : pas dans ormda','2015-09-01','2015-09-30',22),(8,'Attention GIE Innovation\nFormation en Sept. et Oct. sur Java/JEE+Web','2015-09-01','2015-11-08',423),(13,'05/08 arret maladie','2015-10-25','2016-10-16',20),(16,'De retour de maladie le 05/10','2015-10-05','2015-11-13',160),(21,'','2015-09-15','2015-11-02',465),(25,'','2015-10-05','2015-12-06',146),(27,'Sortie des effectifs au 31/12/15','2015-10-05','2015-12-31',468),(29,'A staffer en ER','2015-12-01','2016-04-06',401),(30,'Mission Est : Chooz','2015-10-20','2016-01-18',18),(35,'Profil Analyse Fonctionnelle','2016-01-31','2016-03-07',130),(38,'','2016-02-01','2016-02-28',51),(39,'Sortie Effectif le 5/08','2016-03-07','2016-08-05',46),(40,'','2016-01-01','2016-01-10',404),(41,'','2016-01-01','2016-01-18',497),(42,'','2016-01-01','2016-01-27',498),(43,'Démarrage Orange le 29/03 en attente de confirmation','2015-12-01','2016-03-28',501),(44,'','2016-01-01','2016-01-06',7),(47,'','2016-05-13','2016-06-01',113),(48,'A sortir en fonction de ESOPE et dispo profil oracle retail','2016-03-15','2016-03-22',405),(50,'','2015-12-01','2016-01-11',61),(51,'','2016-02-01','2016-05-16',170),(52,'Démarrage SG le 01/04','2016-02-15','2016-03-23',58),(54,'Arret Maladie jusqu\'au 28/02','2016-02-28','2016-03-07',426),(57,'','2016-01-01','2016-02-05',544),(58,'Démarrage Orange le 29/03 en attente de confirmation','2016-01-04','2016-03-29',545),(59,'demarrage le 18/04 SNCF','2016-03-01','2016-04-03',546),(60,'RDV RH réduction du préavis','2017-01-09','2017-02-01',580),(61,'Congés sabbatiques en mai 2016 pour 1 an','2016-01-21','2016-01-24',143),(63,'Sortie ELOISE','2016-09-01','2016-10-09',152),(67,'Action RH en cours sortie de effectifs le 04/06','2016-01-11','2016-05-03',21),(68,'','2016-04-01','2016-05-31',384),(69,'Démarrage SNCF validé','2016-04-08','2016-04-08',379),(70,'Mission actuellement en IR','2016-02-17','2016-04-03',401),(73,'Rendez vous SDX et GGD','2016-04-04','2017-12-31',44),(74,'COOPTALIS','2016-04-11','2016-05-25',587),(75,'COOPTALIS','2016-05-09','2016-05-25',588),(77,'En mission jusque fin Juin','2016-07-01','2016-07-31',126),(79,'COOPTALIS','2016-09-06','2016-09-14',596),(81,'COOPTALIS','2016-06-20','2016-07-14',598),(82,'COOPTALIS','2016-06-20','2016-07-14',599),(85,'Demarrage CDS SNCF le 11/04 après les congés','2016-04-04','2016-04-04',604),(86,'Démarrage Swisslife le 04/04','2016-04-04','2016-04-04',605),(93,'Jours de formations ???','2016-06-01','9999-12-31',10),(94,'RDV RH 27/05','2016-05-10','2016-07-03',608),(102,'','2016-05-31','2016-05-31',12),(103,'','2016-05-17','2016-05-31',396),(106,'','2016-10-01','2016-12-30',279),(107,'','2016-09-01','2016-10-09',50),(108,'','2016-08-01','2016-08-31',28),(109,'','2016-07-01','2016-08-31',104),(110,'Cooptalis','2016-09-12','2016-10-09',614),(111,'Juste techniquement CDS SNCF','2016-09-01','2016-09-18',610),(114,'AngularJS / PHP / JEE','2016-09-19','2016-10-16',623),(116,'Réseaux','2016-10-03','2017-01-02',624),(117,'JEE Certifié','2016-10-03','2016-10-16',615),(121,'','2016-12-12','2017-12-31',631),(123,'','2016-12-05','2017-12-31',627),(124,'','2016-12-12','2016-12-31',632),(126,'','2017-01-02','2017-12-31',630),(127,'','2017-02-06','2017-12-31',633),(128,'','2016-11-21','2016-12-21',393),(131,'','2016-10-05','2016-10-16',634),(132,'','2016-11-01','2016-12-15',15),(133,'','2016-11-28','2016-12-15',396),(134,'Mi Temps thérapeutique à 50%','2016-10-24','2017-01-31',61),(137,'05/08 arret maladie','2016-02-03','2016-10-24',20),(140,'Fin de mission AXA','2017-01-02','2017-01-02',637),(141,'Fin de mission AXA','2017-01-02','2017-01-02',636),(143,'Réduction du préavis RDV RH','2017-01-02','9999-12-31',128),(144,'','2017-02-01','2017-12-31',101),(145,'','2016-12-12','2017-01-16',638),(146,'','2017-01-02','2017-01-09',379),(149,'Départ en retraite','2017-01-04','2017-12-31',626),(150,'','2017-01-06','2017-01-10',619),(151,'Sortie du programmation','2017-01-16','2017-12-31',615);
/*!40000 ALTER TABLE `bench` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Auchan'),(2,'Conseil Régional NPdC'),(3,'Cofidis'),(4,'AG2R'),(5,'Swisslife'),(6,'Experian'),(7,'Société Générale'),(8,'CEGEDIM'),(9,'SIGMAP'),(10,'IT-CE'),(11,'AXA'),(12,'La Banque Postale'),(13,'Banque Accord'),(14,'Nexity'),(15,'GIE Innovation Santé'),(16,'CA-CF'),(17,'SNCF'),(18,'SDIS'),(19,'OBS'),(20,'Emmaus'),(21,'EDF / SDIN'),(22,'Renault'),(23,'Arcelor'),(24,'EID'),(25,'CANSSM'),(26,'FOT'),(27,'FastConnect'),(28,'La Redoute'),(29,'Leroy Merlin'),(30,'ADEO'),(31,'CR NPdC'),(32,'Imprimerie Nationale'),(33,'EDF'),(34,'ANTS'),(35,'Orange'),(36,'Immochan'),(37,'CNAMTS'),(38,'KITS'),(39,'CG 59'),(40,'Happy Chic'),(41,'Kiabi'),(42,'ROQUETTE'),(43,'Kiloutou'),(44,'CARSAT'),(45,'Vallourec'),(46,'ITS Group'),(47,'Esope - Auchan'),(48,'CVG'),(49,'Contentia'),(50,'Camaïeu'),(51,'Alteka'),(52,'BP-CE'),(53,'Délégation Syndicale'),(54,'Crédit du Nord'),(55,'Humanis'),(56,'Mission Atos (IR)'),(57,'MROD'),(58,'CA-TS');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collab`
--

DROP TABLE IF EXISTS `collab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dasId` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `gcm_id` int(11) DEFAULT NULL,
  `metier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `U_COLLAB_DASID` (`dasId`),
  KEY `gcm_id` (`gcm_id`),
  KEY `metier_id` (`metier_id`),
  CONSTRAINT `collab_ibfk_1` FOREIGN KEY (`gcm_id`) REFERENCES `gcm` (`id`) ON DELETE SET NULL,
  CONSTRAINT `collab_ibfk_2` FOREIGN KEY (`metier_id`) REFERENCES `metier` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collab`
--

LOCK TABLES `collab` WRITE;
/*!40000 ALTER TABLE `collab` DISABLE KEYS */;
INSERT INTO `collab` VALUES (1,'FR25055','alain.dhennin@atos.net','DHENNIN','Alain',NULL,11,5),(2,'A602557','quentin.bauduin@atos.net','BAUDUIN','Quentin','',18,7),(3,'A607026','pierre.lefebvre@atos.net','LEFEBVRE','Pierre','+33671435552',17,7),(4,'A603208','david.victoire@atos.net','VICTOIRE','David','+33647948963',136,7),(5,'A147449','jean-paul.masquelier@atos.net','MASQUELIER','Jean-Paul','+33612656495',1,1),(6,'A136049','xavier.charbaut@atos.net','CHARBAUT','Xavier','+33685231298',9,7),(7,'A515849','eric.grzonka@atos.net','GRZONKA','Eric','+33787052788',12,7),(8,'A138645','emmanuel.mignien@atos.net','MIGNIEN','Emmanuel','+33762140363',10,7),(9,'A102735','nicolas.bebin@atos.net','BEBIN','Nicolas',NULL,101,7),(10,'A510605','jean-philippe.bourriez@atos.net','BOURRIEZ','Jean-Philippe',NULL,101,7),(11,'A102274','houssine.brahim@atos.net','BRAHIM','Houssine',NULL,18,7),(12,'A533794','benjamin.cardon@atos.net','CARDON','Benjamin',NULL,20,7),(13,'A505168','lionel.delaplace@atos.net','DELAPLACE','Lionel',NULL,10,6),(14,'FR25520','jean-marie.flamme@atos.net','FLAMME','Jean-Marie',NULL,11,6),(15,'A505590','manuel.joly@atos.net','JOLY','Manuel',NULL,156,7),(16,'S237551','philippe2.laurent@atos.net','LAURENT','Philippe',NULL,19,7),(17,'S235938','marc.nilson@atos.net','NILSON','Marc','+33607591519',125,4),(18,'A508190','satish.paul@atos.net','PAUL','Satish',NULL,19,7),(19,'A589435','emmanuel.tellier@atos.net','TELLIER','Emmanuel','',235,7),(20,'A165505','gregory.decan@atos.net','DECAN','Grégory',NULL,106,7),(21,'A135828','gregory.mullier@atos.net','MULLIER','Grégory',NULL,11,7),(22,'FR21337','olivier.richet@atos.net','RICHET','Olivier',NULL,128,7),(23,'FR18576','patricia.schirmer@atos.net','SCHIRMER','Patricia','+33320609584',318,7),(24,'A164025','david.cheval@atos.net','CHEVAL','David',NULL,12,7),(26,'A509127','lynda.talbi@atos.net','TALBI','Lynda',NULL,10,7),(27,'S242273','viviane.aledji@atos.net','ALEDJI','Annatou',NULL,11,7),(28,'FR20751','yacine.belfodil@atos.net','BELFODIL','Yacine',NULL,9,7),(29,'A513510','yann.allemon@atos.net','ALLEMON','Yann',NULL,12,7),(30,'A131580','ludovic.barraud@atos.net','BARRAUD','Ludovic',NULL,13,6),(31,'A184622','marc-antoine.bernard@atos.net','BERNARD','Marc Antoine',NULL,139,7),(32,'A117695','stephane-philippe.buffe@atos.net','BUFFE','Stéphane',NULL,137,7),(33,'S287115','jean-noel.cadet@atos.net','CADET','Jean Noël',NULL,80,7),(34,'A578433','cyril.campagne@atos.net','CAMPAGNE','Cyril',NULL,137,7),(35,'FR24757','nicolas.canavate@atos.net','CANAVATE','Nicolas',NULL,138,7),(36,'A162630','vincent.capron@atos.net','CAPRON','Vincent',NULL,138,7),(37,'A528312','anthony.caron@atos.net','CARON','Anthony',NULL,19,7),(38,'A173265','frederic.chartier@atos.net','CHARTIER','Frédéric','+33631507976',90,7),(39,'A592038','guillaume.coget@atos.net','COGET','Guillaume',NULL,18,7),(40,'S241507','maud.corbel@atos.net','CORBEL','Maud','+33251803661',10,7),(41,'A183436','valentin.dagniaux@atos.net','DAGNIAUX','Valentin',NULL,133,7),(42,'S243073','thomas.deroo@atos.net','DEROO','Thomas',NULL,90,7),(43,'A166391','sebastien.desion@atos.net','DESION','Sébastien',NULL,9,7),(44,'S225898','max.deswarte@atos.net','DESWARTE','Max',NULL,81,7),(45,'A581702','alexandre.devos@atos.net','DEVOS','Alexandre',NULL,18,7),(46,'A564961','fabrice.drieux@atos.net','DRIEUX','Fabrice',NULL,138,7),(47,'A577097','matthieu.dubus@atos.net','DUBUS','Matthieu','+33662895921',88,7),(48,'S242291','stephane.duez@atos.net','DUEZ','Stéphane','+33320609506',9,7),(49,'A538697','jerome.duhaut@atos.net','DUHAUT','Jérôme',NULL,19,7),(50,'A141251','vincent.dujardin@atos.net','DUJARDIN','Vincent',NULL,40,7),(51,'A533837','benjamin.dupont@atos.net','DUPONT','Benjamin',NULL,19,7),(52,'S242989','dominique.dupuis@atos.net','DUPUIS','Dominique','+33320814081',10,6),(53,'S261634','gilbert.duriez@atos.net','DURIEZ','Gilbert',NULL,139,7),(54,'S227145','jean-francois.ecrepont@atos.net','ECREPONT','Jean-François',NULL,81,7),(55,'A572038','remi.flanquart@atos.net','FLANQUART','Rémi','+33636550508',18,7),(56,'A578303','romain.frangi@atos.net','FRANGI','Romain',NULL,18,7),(57,'A505404','yannick.gajocha@atos.net','GAJOCHA','Yannick',NULL,53,7),(58,'A205365','virginie.gay@atos.net','GAY','Virginie',NULL,20,7),(59,'A139583','maxime.gourmez@atos.net','GOURMEZ','Maxime',NULL,20,7),(60,'FR23234','catherine.grioche@atos.net','GRIOCHE','Catherine',NULL,20,7),(61,'A522980','ali.hadherbache@atos.net','HADHERBACHE','Ali',NULL,102,7),(97,'A590898','amara.hadherbache@atos.net','HADHERBACHE','Amara',NULL,17,7),(98,'A571244','quentin.haution@atos.net','HAUTION','Quentin',NULL,93,7),(99,'A503551','arnaud.hedin@atos.net','HEDIN','Arnaud',NULL,10,7),(100,'A570475','marina.herbaut@atos.net','HERBAUT','Marina',NULL,19,7),(101,'A580546','guillaume.huylebroeck@atos.net','HUYLEBROECK','Guillaume',NULL,18,7),(102,'A576619','alexandre.kaczmarek@atos.net','KACZMAREK','Alexandre',NULL,18,7),(103,'A501783','alexis.kara@atos.net','KARA','Alexis',NULL,88,7),(104,'A456465','dalel.kharrat-frevin@atos.net','KHARRAT','Frevin Dalel',NULL,157,7),(105,'A174595','johan.korger@atos.net','KORGER','Johan',NULL,18,7),(106,'A163856','sana.koubaakamoun@atos.net','KOUBAA','Kamoun Sana',NULL,38,7),(107,'A180190','benjamin.langrez@atos.net','LANGREZ','Benjamin',NULL,137,7),(108,'A502674','nicolas.lecaille@atos.net','LECAILLE','Nicolas',NULL,138,7),(109,'A508991','fanny.lemaire@atos.net','LEMAIRE','Fanny',NULL,101,7),(110,'A145897','romain.levecq@atos.net','LEVECQ','Romain',NULL,20,7),(111,'A138838','matthieu.louis@atos.net','LOUIS','Matthieu',NULL,9,7),(113,'S240671','jean-michel.moineau@atos.net','MOINEAU','Jean Michel','+33320609540',40,7),(114,'A505515','gregory.nevelestyn@atos.net','NEVELESTYN','Grégory',NULL,138,7),(115,'A517180','xavier.opsomer@atos.net','OPSOMER','Xavier',NULL,138,7),(116,'A186139','kevin.oster@atos.net','OSTER','Kévin',NULL,139,7),(117,'A590911','ala-eddine.ouazani@atos.net','OUAZANI','Ala-Eddine','+33320249251',17,7),(118,'S250514','el-mostafa.oumghar@atos.net','OUMGHAR','El Mostafa',NULL,102,7),(119,'A162639','david.pollet@atos.net','POLLET','David',NULL,139,7),(120,'A503079','sebastien.potereau@atos.net','POTEREAU','Sébastien',NULL,137,7),(121,'A125772','vincent.potrzebski@atos.net','POTRZEBSKI','Vincent',NULL,10,7),(122,'A118364','stephane.royer@atos.net','ROYER','Stéphane',NULL,102,7),(123,'A513177','mohamed.sadiki@atos.net','SADIKI','Mohamed',NULL,101,7),(124,'A182983','marlon.sancheznunez@atos.net','SANCHEZ','Nunez Marlon',NULL,139,7),(125,'A126967','gaetan.scottodiapollonia@atos.net','SCOTTO DI APOLLONIA','Gaetan',NULL,39,7),(126,'A127589','morgane.seurat@atos.net','SEURAT','Morgane',NULL,9,7),(127,'A501794','jean-michel.szmacinski@atos.net','SZMACINSKI','Jean-Michel',NULL,165,7),(128,'A145435','tanguy.tribou@atos.net','TRIBOU','Tanguy',NULL,138,7),(129,'A571198','jeremy.walczak@atos.net','WALCZAK','Jérémy',NULL,18,7),(130,'A500444','nathalie.widehen@atos.net','WIDEHEN','Nathalie',NULL,9,7),(131,'A538699','philippe.wrobel@atos.net','WROBEL','Philippe',NULL,19,7),(132,'A186164','alexandre.alonso@atos.net','ALONSO','Alexandre',NULL,139,7),(133,'S243386','thierry.bailleul@atos.net','BAILLEUL','Thierry',NULL,81,7),(134,'A506184','francois.bera@atos.net','BERA','François',NULL,101,7),(135,'S225993','pascal.boinet@atos.net','BOINET','Pascal',NULL,102,7),(136,'A538852','pierre.cambien@atos.net','CAMBIEN','Pierre',NULL,137,7),(137,'A134804','jose.dasilva@atos.net','DA SILVA','José',NULL,102,7),(138,'A527765','jeremy.delbart@atos.net','DELBART','Jérémy',NULL,102,7),(139,'S225980','stephane.deneuville@atos.net','DENEUVILLE','Stéphane',NULL,102,7),(140,'FR21615','rachid.derdaki@atos.net','DERDAKI','Rachid',NULL,20,7),(141,'A531337','harold.hautier@atos.net','HAUTIER','Harold',NULL,9,7),(142,'A172826','thomas2.koch@atos.net','KOCH','Thomas',NULL,81,7),(143,'A165616','valerie.lelong@atos.net','LELONG','Valérie',NULL,19,7),(144,'A188461','lionel.leroy@atos.net','LEROY','Lionel',NULL,138,7),(145,'FR23419','jerome.milliot@atos.net','MILLIOT','Jérôme',NULL,138,7),(146,'A157571','jonathan.moreaux@atos.net','MOREAUX','Jonathan',NULL,101,7),(147,'A154199','stephane.renoult@atos.net','RENOULT','Stéphane',NULL,101,7),(148,'A142333','pierre.weaver@atos.net','WEAVER','Pierre',NULL,80,7),(149,'A154150','yannick.azzoug@atos.net','AZZOUG','Yannick',NULL,101,7),(150,'FR24192','frederic.charlet@atos.net','CHARLET','Frédéric',NULL,100,7),(151,'FR19147','fabrice.franchet@atos.net','FRANCHET','Fabrice',NULL,106,7),(152,'A103407','benoit.tanchou@atos.net','TANCHOU','Benoît',NULL,101,7),(153,'A517976','olivier.capron@atos.net','CAPRON','Olivier',NULL,139,7),(154,'A110808','olivier.gabathuler@atos.net','GABATHULER','Olivier',NULL,10,7),(155,'A137930','jean-claude.huret@atos.net','HURET','Jean Claude',NULL,103,7),(156,'A166477','jerome.konig@atos.net','KONIG','Jérôme',NULL,9,7),(157,'A581272','said.merabet@atos.net','MERABET','Said',NULL,139,7),(158,'A504795','philippe.oublier@atos.net','OUBLIER','Philippe',NULL,138,7),(159,'A514153','arnaud.treiber@atos.net','TREIBER','Arnaud',NULL,101,7),(160,'A161789','lukasz.adamczyk@atos.net','ADAMCZYK','Lukasz',NULL,136,7),(161,'A145647','remy.bach@atos.net','BACH','Rémy',NULL,20,7),(162,'A603979','julien.bouchery@atos.net','BOUCHERY','Julien',NULL,136,7),(163,'FR24759','fabrice.carpentier@atos.net','CARPENTIER','Fabrice',NULL,124,7),(164,'A157471','stephane.cay@atos.net','CAY','Stéphane',NULL,101,7),(165,'A105072','stephan.courtin@atos.net','COURTIN','Stéphane',NULL,103,7),(166,'A146607','jonathan.craven@atos.net','CRAVEN','Jonathan','+33328379682',10,7),(167,'A116151','christophe.dhainaut@atos.net','DHAINAUT','Christophe','',10,6),(168,'FR24230','michael.dolata@atos.net','DOLATA','Michael',NULL,123,7),(169,'A513015','maxime.drouet@atos.net','DROUET','Maxime',NULL,139,7),(170,'A108805','pierre.emery@atos.net','EMERY','Pierre',NULL,139,7),(171,'A588764','thomas.florin@atos.net','FLORIN','Thomas',NULL,137,7),(172,'A187465','maxime.godefroid@atos.net','GODEFROID','Maxime',NULL,138,7),(273,'A109494','martine.hornez@atos.net','HORNEZ','Martine',NULL,138,6),(274,'A518199','jean-emmanuel.klupsch@atos.net','KLUPSCH','Jean-Emmanuel',NULL,80,7),(275,'A599224','jean-philippe.laurent@atos.net','LAURENT','Jean-Philippe',NULL,137,7),(276,'A117389','ludovic.lenglet@atos.net','LENGLET','Ludovic',NULL,20,7),(277,'A159700','thomas.lievens@atos.net','LIEVENS','Thomas',NULL,138,7),(278,'A184483','sebastien.machy@atos.net','MACHY','Sébastien',NULL,90,7),(279,'A105053','florence.marchandise@atos.net','MARCHANDISE','Florence',NULL,39,7),(371,'A608626','safaa.ouadif@atos.net','OUADIF','Safaa',NULL,19,7),(372,'A116402','fazia.rekibi@atos.net','REKIBI','Fazia',NULL,20,7),(373,'A138794','valerie.rodrigues@atos.net','RODRIGUES','Vaérie',NULL,101,7),(374,'A581224','thomas.roussel@atos.net','ROUSSEL','Thomas',NULL,138,7),(375,'A515787','nicolas.schrefheere@atos.net','SCHREFHEERE','Nicolas',NULL,10,7),(376,'A124522','olivier.thys@atos.net','THYS','Olivier',NULL,138,7),(377,'A175255','sebastien.vanoutryve@atos.net','VANOUTRYVE','Sébastien',NULL,20,7),(378,'A121643','foli.aboussafolly@atos.net','ABOUSSA FOLLY','Foli',NULL,101,7),(379,'S226631','pascale.beckaert@atos.net','BECKAERT','Pascale',NULL,11,7),(380,'FR20760','xavier.beghin@atos.net','BEGHIN','Xavier','+33320609585',11,6),(381,'A570752','yohann.bouderbane-gueguin@atos.net','BOUDERBANE-GUEGUIN','Yohann',NULL,93,7),(382,'A108804','christophe.boulanger@atos.net','BOULANGER','Christophe',NULL,139,7),(383,'A126228','nordine.boutaba@atos.net','BOUTABA','Nordine',NULL,101,7),(384,'A118911','arnaud.bultel@atos.net','BULTEL','Arnaud',NULL,157,7),(385,'FR20672','frederic.cailliau@atos.net','CAILLIAU','Frédéric',NULL,9,7),(386,'A501599','stephane.calais@atos.net','CALAIS','Stéphane',NULL,124,7),(387,'A608658','jeremy.carpentier@atos.net','CARPENTIER','Jérémy',NULL,39,7),(388,'A505387','dominique.cattier@atos.net','CATTIER','Dominique',NULL,9,7),(389,'A205367','didier.cauchie@atos.net','CAUCHIE','Didier',NULL,149,7),(390,'S243482','jean-elie.clio@atos.net','CLIO','Jean Elie',NULL,102,7),(391,'FR21809','frederic.danel@atos.net','DANEL','Frédéric',NULL,129,7),(392,'A145433','sebastien.decanter@atos.net','DECANTER','Sébastien',NULL,96,7),(393,'A136737','sebastien.decroix@atos.net','DECROIX','Sébastien','+33320608460',20,7),(394,'FR21797','catherine.dekeyser@atos.net','DEKEYSER','Catherine',NULL,21,7),(395,'A119068','arnaud.desfrennes@atos.net','DESFRENNES','Arnaud',NULL,139,7),(396,'A511342','frederic.donze@atos.net','DONZE','Frédéric',NULL,19,7),(397,'A506851','david2.dubois@atos.net','DUBOIS','Favid',NULL,59,7),(398,'A504794','vincent.dufresne@atos.net','DUFRESNE','Vincent',NULL,139,7),(399,'A584711','fabrice.dusautoir@atos.net','DUSAUTOIR','Fabrice',NULL,11,6),(400,'S243477','olivier.dutoit@atos.net','DUTOIT','Olivier','+33320814081',21,7),(401,'A537999','abdeljalil.ettihir@atos.net','ETTIHIR','Abdeljalil',NULL,163,7),(402,'A594334','pauline.faucon@atos.net','FAUCON','Pauline','06.32.23.11.39',37,7),(403,'FR21663','pascal.fevrier@atos.net','FEVRIER','Pascal',NULL,21,7),(404,'A588260','paul.fleury@atos.net','FLEURY','Paul',NULL,18,7),(405,'A577445','nicolas.fournier@atos.net','FOURNIER','Nicolas',NULL,137,7),(406,'A183062','remi.grymonprez@atos.net','GRYMONPREZ','Rémi',NULL,100,7),(407,'A126192','arnaud.guiggi@atos.net','GUIGGI','Arnaud','+33320609573',20,7),(408,'A164621','benjamin.jakmakian@atos.net','JAKMAKIAN','Benjamin',NULL,20,7),(409,'FR17764','frederic.jean@atos.net','JEAN','Frédéric',NULL,102,7),(410,'A189165','jerome.laine@atos.net','LAINE','Jérôme',NULL,19,7),(411,'FR21157','noel.larange@atos.net','LARANGE','Noël',NULL,21,7),(412,'A505017','sebastien.largillet@atos.net','LARGILLET','Sébastien',NULL,102,7),(413,'FR21247','samuel.ledresseur@atos.net','LEDRESSEUR','Samuel',NULL,162,7),(414,'A111132','jerome2.lefebvre@atos.net','LEFEBVRE','Jérôme',NULL,11,7),(415,'A507942','nicolas.m.lemaire@atos.net','LEMAIRE','Nicolas',NULL,138,7),(416,'A150781','bruno.leplae@atos.net','LEPLAE','Bruno','+33320606801',163,7),(417,'S257807','laurent.longueville@atos.net','LONGUEVILLE','Laurent',NULL,137,7),(418,'A578575','zouhair.makhout@atos.net','MAKHOUT','Zouhair',NULL,18,7),(419,'A133331','pierre.maringue@atos.net','MARINGUE','Pierre',NULL,21,6),(420,'A591102','mohamed.merabet@atos.net','MERABET','Mohamed',NULL,17,7),(421,'A598066','sebastien.2.merlin@atos.net','MERLIN','Sébastien',NULL,9,7),(423,'S240148','arnaud.patigniez@atos.net','PATIGNIEZ','Arnaud','+33146145678',20,7),(424,'A515676','tanguy.pauwels@atos.net','PAUWELS','Tanguy',NULL,18,7),(425,'A506686','franck.perissoud@atos.net','PERISSOUD','Franck',NULL,19,7),(426,'A185862','gilles.polomski@atos.net','POLOMSKI','Gilles',NULL,100,7),(461,'A600795','celine.rigaux@atos.net','RIGAUX','Céline',NULL,10,7),(462,'A150264','nicolas.ringot@atos.net','RINGOT','Nicolas',NULL,102,7),(463,'A165671','anne-sophie.roger@atos.net','ROGER','Anne Sophie',NULL,148,7),(464,'FR22260','jean-christophe.rougieux@atos.net','ROUGIEUX','Jean-Christophe',NULL,21,7),(465,'A510387','anais.rousseau@atos.net','ROUSSEAU','Anaïs',NULL,9,7),(466,'A162650','emmanuel.saintmichel@atos.net','SAINT-MICHEL','Emmanuel',NULL,103,7),(467,'A608571','pierre-julien.sloves@atos.net','SLOVES','Pierre-Julien',NULL,19,7),(468,'A114014','berthelot.tchana@atos.net','TCHANA','Berthelot',NULL,81,7),(469,'A172588','marc.vanhaecke@atos.net','VANHAECKE','Marc',NULL,10,7),(470,'A598030','sidi-ahmed.abdallah-bennekrouf.external@atos.net','ABDALLAH-BENNEKROUF','Sidi-Ahmed',NULL,40,7),(471,'A603217','alexandre.allart.external@atos.net','ALLART','Alexandre',NULL,129,7),(472,'A604434','mehdi.baiteche.external@atos.net','BAITECHE','Mehdi',NULL,39,7),(473,'A603823','francois.boyaval.external@atos.net','BOYAVAL','François',NULL,139,7),(474,'A598930','jonathan.castelain.external@atos.net','CASTELAIN','Jonathan',NULL,21,7),(476,'A603330','fergal.clancy.external@atos.net','CLANCY','Fergal',NULL,139,7),(477,'A607354','guillaume.coeugnet.external@atos.net','COEUGNET','Guillaume',NULL,139,7),(478,'A604427','thibault.deheunynck.external@atos.net','DEHEUNYNCK','Thibault',NULL,134,7),(479,'A601584','pierre.desforges.external@atos.net','DESFORGES','Pierre',NULL,138,7),(481,'A592667','christian.entem.external@atos.net','ENTEM','Christian',NULL,10,7),(482,'A589429','christophe.girdal.external@atos.net','GIRDAL','Christophe',NULL,12,7),(484,'A607352','guillaume.jourdin.external@atos.net','JOURDIN','Guillaume',NULL,139,7),(485,'A593050','xavier.llorens.external@atos.net','LLORENS','Xavier',NULL,12,7),(486,'A603820','simon.mattei.external@atos.net','MATTEI','Simon',NULL,139,7),(488,'A601583','quentin.soete.external@atos.net','SOETE','Quentin',NULL,138,7),(489,'A607349','tony.touret.external@atos.net','TOURET','Tony',NULL,139,7),(490,'A603220','jean-baptiste.valentin.external@atos.net','VALENTIN','Jean Baptiste',NULL,139,7),(491,'A572162','benoit.wanaverbecq.external@atos.net','WANAVERBECQ','Benoît',NULL,139,7),(492,'A607342','thibaut.watterlot.external@atos.net','WATTERLOT','Thibaut',NULL,139,7),(493,'S250465','benjamin.jakubowski@atos.net','JAKUBOWSKI','Benjamin','+33677991122',118,2),(494,'A601625','melissa.wimetz@atos.net','WIMETZ','Mélissa','',200,1),(495,'A571151','carlos.2.gaspar@atos.net','GASPAR','Carlos',NULL,202,1),(496,'A176714','joffrey.masquelin@atos.net','MASQUELIN','Joffrey','',118,2),(497,'A456176','serge.herrmann@atos.net','HERRMANN','Serge',NULL,107,7),(498,'S267644','abdelkader.bouaziz@atos.net','BOUAZIZ','Abdelkader',NULL,38,7),(499,'A519881','sandrine.delcroix@atos.net','DELCROIX','Sandrine',NULL,118,2),(500,'A579683','jean.banquier@atos.net','BANQUIER','Jean',NULL,120,3),(501,'A620959','bertrand.marzais@atos.net','MARZAIS','Bertrand',NULL,18,7),(543,'A534706','geoffrey.bonnier@atos.net','BONNIER','Geoffrey',NULL,137,7),(544,'A620308','zakaria.rachad@atos.net','RACHAD','Zakaria',NULL,17,7),(545,'A623228','thomas.2.kedziora@atos.net','KEDZIORA','Thomas','+33663063299',18,7),(546,'AB12345','maxime.gens@atos.net','GENS','Maxime','+33625038020',18,7),(580,'A624002','quentin.bailleul@atos.net','BAILLEUL','Quentin','+33618685624',18,7),(581,'A999999','freddy.sorel.djembi@atos.net','SOREL DJEMBI','Freddy',NULL,19,7),(587,'C000001','tarik.elmoussaoui@atos.net','EL MOUSSAOUI','Tarik',NULL,19,7),(588,'A999996','tarik.elakkani@atos.net','EL AKKANI','Tarik',NULL,19,7),(589,'C000003','ilyass.kallida@atos.net','KALLIDA','Ilyass',NULL,139,7),(595,'C000005','ahmed.ammar@atos.net','AMMAR','Ahmed',NULL,18,7),(596,'C000009','arnaud.ouaba@atos.net','OUABA','Arnaud',NULL,20,7),(597,'C000007','amina.drissi@atos.net','DRISSI','Amina',NULL,20,7),(598,'C000010','fouzi.lamkadmi@atos.net','LAMKADMI','Fouzi',NULL,19,7),(599,'C000011','ouafik.marvane@atos.net','MARVANE','Ouafik',NULL,19,7),(602,'C000004','marouane.karjouh@atos.net','KARJOUH','Marouane',NULL,101,7),(603,'C000008','zouhair.hatim@atos.net','HATIM','Zouhair',NULL,138,7),(604,'A133971','david.warenghem@atos.net','WARENGHEM','David',NULL,139,7),(605,'A138636','lionel.houze@atos.net','HOUZE','Lionel',NULL,103,7),(606,'S228499','christophe.bert@atos.net','BERT','Christophe',NULL,138,7),(607,'A129195','celine.brasier@atos.net','BRASIER','Céline',NULL,20,7),(608,'FR25176','david.boone@atos.net','BOONE','David',NULL,101,7),(609,'A552167','arnaud.villevieille@atos.net','VILLEVIEILLE','Arnaud',NULL,53,7),(610,'C000006','ahmed.alalout@atos.net','ALALOUT','Ahmed',NULL,139,7),(611,'A625228','julie.amart@atos.net','AMART','Julie',NULL,9,7),(612,'A00000','nabta.el gueddar@atos.net','EL GUEDDAR','Nabta','',137,NULL),(614,'A0002','shaik.chadha@atos.net','CHADHA','Shaik','',19,NULL),(615,'A0004','béchir.ghodbane@atos.net','GHODBANE','Béchir','',19,NULL),(617,'A0006','moez.khattache@atos.net','KHATTACHE','Moez','',19,NULL),(619,'A0007','nabta.el gueddar@atos.net','EL GUEDDAR','Nabta','',136,7),(622,'AB6666','mourad.lafquih@atos.net','LAFQUIH','Mourad','',19,7),(623,'AB7777','madhi.lahfaya@atos.net','LAHFAYA','Madhi','',19,7),(624,'AB8888','aziz.mahjoub@atos.net','MAHJOUB','Aziz','',88,7),(626,'A173121','patrick.blois@atos.net','BLOIS','Patrick','',81,7),(627,'ACOOPTALIS','chadi.nanaa@atos.net','NANAA','Chadi','',138,7),(630,'ACOOPTALIS3','adil.waaziz@atos.net','WAAZIZ','Adil','',138,NULL),(631,'ACOOPTALIS4','moktar.hassani saissi@atos.net','HASSANI SAISSI','Moktar','',19,7),(632,'ABCOOPTALIS5','zouhair.raaidi@atos.net','RAAIDI','Zouhair','',19,7),(633,'ACOOPTALIS6','said.abouloula@atos.net','ABOULOULA','Said','',61,7),(634,'AB12346','nathan.vermelle@atos.net','VERMELLE','Nathan','',18,7),(635,'A617592','nicolas.coppin@atos.net','COPPIN','Nicolas','',40,7),(636,'AB1234COPT','ahmed.amar@atos.net','AMAR','Ahmed','',18,7),(637,'a631759','robin.szcezpaniak@atos.net','SZCEZPANIAK','Robin','',20,7),(638,'AB123456','abderrahmane.elamrati@atos.net','ELAMRATI','Abderrahmane','',137,7),(639,'FR20675','lionel.boulo@atos.net','BOULO','Lionel','',119,2);
/*!40000 ALTER TABLE `collab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conge`
--

DROP TABLE IF EXISTS `conge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `conge_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conge`
--

LOCK TABLES `conge` WRITE;
/*!40000 ALTER TABLE `conge` DISABLE KEYS */;
INSERT INTO `conge` VALUES (1,'Congé sabbatique pendant 1an','2016-05-02','2017-04-30',143);
/*!40000 ALTER TABLE `conge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departement`
--

DROP TABLE IF EXISTS `departement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departement`
--

LOCK TABLES `departement` WRITE;
/*!40000 ALTER TABLE `departement` DISABLE KEYS */;
INSERT INTO `departement` VALUES (1,'BS Nord');
/*!40000 ALTER TABLE `departement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_question_reponse`
--

DROP TABLE IF EXISTS `faq_question_reponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_question_reponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(4000) NOT NULL,
  `reponse` varchar(4000) NOT NULL,
  `faq_question_reponse_suivante_id` int(11) DEFAULT NULL,
  `faq_theme_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `U_FQ_QPNS_FAQ_QUESTION_REPONSE_SUIVANTE_ID` (`faq_question_reponse_suivante_id`),
  KEY `faq_theme_id` (`faq_theme_id`),
  CONSTRAINT `faq_question_reponse_ibfk_1` FOREIGN KEY (`faq_question_reponse_suivante_id`) REFERENCES `faq_question_reponse` (`id`) ON DELETE SET NULL,
  CONSTRAINT `faq_question_reponse_ibfk_2` FOREIGN KEY (`faq_theme_id`) REFERENCES `faq_theme` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_question_reponse`
--

LOCK TABLES `faq_question_reponse` WRITE;
/*!40000 ALTER TABLE `faq_question_reponse` DISABLE KEYS */;
INSERT INTO `faq_question_reponse` VALUES (5,'Je ne parviens pas à me connecter, qui contacter ?','Contacter alain.dhennin@atos.net pour la réinitilisation du mot de passe.',NULL,3),(6,'Test ?','test !',NULL,2);
/*!40000 ALTER TABLE `faq_question_reponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_theme`
--

DROP TABLE IF EXISTS `faq_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  `faq_theme_suivant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `U_FQ_THME_FAQ_THEME_SUIVANT_ID` (`faq_theme_suivant_id`),
  CONSTRAINT `faq_theme_ibfk_1` FOREIGN KEY (`faq_theme_suivant_id`) REFERENCES `faq_theme` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_theme`
--

LOCK TABLES `faq_theme` WRITE;
/*!40000 ALTER TABLE `faq_theme` DISABLE KEYS */;
INSERT INTO `faq_theme` VALUES (2,'A compléter...',NULL),(3,'Connexion à l\'application',2);
/*!40000 ALTER TABLE `faq_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiere`
--

DROP TABLE IF EXISTS `filiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filiere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiere`
--

LOCK TABLES `filiere` WRITE;
/*!40000 ALTER TABLE `filiere` DISABLE KEYS */;
INSERT INTO `filiere` VALUES (1,'Management'),(2,'Developpement et Maintenance de Systèmes'),(3,'Production Administration'),(4,'Conseil'),(5,'Qualité'),(6,'Relations Clients'),(7,'Formation'),(8,'Support & Administration'),(9,'Ressources Humaines'),(10,'Finance & Accounting'),(11,'Internal Audit'),(12,'Communication'),(13,'Affaires Juridiques'),(14,'Achats'),(15,'Facility Management'),(16,'Management and Office Support'),(17,'Services Médicaux');
/*!40000 ALTER TABLE `filiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gcm`
--

DROP TABLE IF EXISTS `gcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `niveau` smallint(6) NOT NULL,
  `filiere_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filiere_id` (`filiere_id`),
  CONSTRAINT `gcm_ibfk_1` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gcm`
--

LOCK TABLES `gcm` WRITE;
/*!40000 ALTER TABLE `gcm` DISABLE KEYS */;
INSERT INTO `gcm` VALUES (1,'BSM','Business Manager',6,1),(2,'BSM','Business Manager',7,1),(3,'BSM','Business Manager',8,1),(4,'BSM','Business Manager',9,1),(5,'FUM','Manager Fonctionnel',6,1),(6,'FUM','Manager Fonctionnel',7,1),(7,'FUM','Manager Fonctionnel',8,1),(8,'FUM','Manager Fonctionnel',9,1),(9,'PM','Chef de Projet',4,1),(10,'PM','Chef de Projet',5,1),(11,'PM','Chef de Projet Senior',6,1),(12,'PM','Directeur de Projet',7,1),(13,'PM','Directeur de Projet',8,1),(14,'PM','Directeur de Projet',9,1),(15,'PRM','Direction de Programme',8,1),(16,'PRM','Direction de Programme',9,1),(17,'AD','Réalisateur',1,2),(18,'AD','Concepteur / Réalisateur',2,2),(19,'AD','Concepteur / Réalisateur',3,2),(20,'AD','Concepteur / Réalisateur',4,2),(21,'AD','Concepteur / Réalisateur',5,2),(22,'AD','Concepteur / Réalisateur',6,2),(23,'AEM','Chargé d\'Applications / Solutions',2,2),(24,'AEM','Chargé d\'Applications / Solutions',3,2),(25,'AEM','Chargé d\'Applications / Solutions',4,2),(26,'AEM','Chargé d\'Applications / Solutions',5,2),(27,'AEM','Chargé d\'Applications / Solutions',6,2),(28,'ARC','Architecte',5,2),(29,'ARC','Architecte',6,2),(30,'ARC','Architecte',7,2),(31,'ARC','Architecte',8,2),(32,'ASP','Spécialiste d\'Application',1,2),(33,'ASP','Spécialiste d\'Application',2,2),(34,'ASP','Spécialiste d\'Application',3,2),(35,'ASP','Spécialiste d\'Application',4,2),(36,'ASP','Spécialiste d\'Application',5,2),(37,'IA','Analyste Fonctionnel',2,2),(38,'IA','Analyste Fonctionnel',3,2),(39,'IA','Analyste Fonctionnel',4,2),(40,'IA','Analyste Fonctionnel',5,2),(41,'IA','Analyste Fonctionnel',6,2),(42,'SE','Software Engineer',1,2),(43,'SE','Software Engineer',2,2),(44,'SE','Software Engineer',3,2),(45,'SE','Software Engineer',4,2),(46,'SE','Software Engineer',5,2),(47,'SE','Software Engineer',6,2),(48,'TE','Testeur / Recetteur',1,2),(49,'TE','Testeur / Recetteur',2,2),(50,'TE','Testeur / Recetteur',3,2),(51,'TE','Testeur / Recetteur',4,2),(52,'TE','Testeur / Recetteur',5,2),(53,'TEC','Expert Technique',4,2),(54,'TEC','Expert Technique',5,2),(55,'TEC','Expert Technique',6,2),(56,'TEC','Expert Technique',7,2),(57,'TI','Intégrateur',1,2),(58,'TI','Intégrateur',2,2),(59,'TI','Intégrateur',3,2),(60,'TI','Intégrateur',4,2),(61,'TI','Intégrateur',5,2),(62,'TI','Intégrateur',6,2),(63,'APM','Application production Management',2,3),(64,'APM','Application production Management',3,3),(65,'APM','Application production Management',4,3),(66,'APM','Application production Management',5,3),(67,'BO','Opérateur Back Office',1,3),(68,'BO','Opérateur Back Office',2,3),(69,'BO','Opérateur Back Office',3,3),(70,'BO','Opérateur Back Office',4,3),(71,'BO','Opérateur Back Office',5,3),(72,'CCCS','Centre de Contact Service Client',1,3),(73,'CCCS','Centre de Contact Service Client',2,3),(74,'CCCS','Centre de Contact Service Client',3,3),(75,'CCCS','Centre de Contact Service Client',4,3),(76,'CCCS','Centre de Contact Service Client',5,3),(77,'DBA','Adm. Bases de Données',1,3),(78,'DBA','Adm. Bases de Données',2,3),(79,'DBA','Adm. Bases de Données',3,3),(80,'DBA','Adm. Bases de Données',4,3),(81,'DBA','Adm. Bases de Données',5,3),(82,'IN','Installation & Test',1,3),(83,'IN','Installation & Test',2,3),(84,'IN','Installation & Test',3,3),(85,'IN','Installation & Test',4,3),(86,'LOG','Support Logistique',1,3),(87,'LOG','Support Logistique',2,3),(88,'NE','Ingénieur Réseaux',3,3),(89,'NE','Ingénieur Réseaux',4,3),(90,'NE','Ingénieur Réseaux',5,3),(91,'NE','Ingénieur Réseaux',6,3),(92,'NE','Ingénieur Réseaux',7,3),(93,'NOM','Gestion Opérationnelle Réseaux',1,3),(94,'NOM','Gestion Opérationnelle Réseaux',2,3),(95,'NOM','Gestion Opérationnelle Réseaux',3,3),(96,'NOM','Gestion Opérationnelle Réseaux',4,3),(97,'NOM','Gestion Opérationnelle Réseaux',5,3),(98,'NOM','Gestion Opérationnelle Réseaux',6,3),(99,'OA','Analyse d\'exploitation',1,3),(100,'OA','Analyse d\'exploitation',2,3),(101,'OA','Analyse d\'exploitation',3,3),(102,'OA','Analyse d\'exploitation',4,3),(103,'OA','Analyse d\'exploitation',5,3),(104,'OA','Analyse d\'exploitation',6,3),(105,'OCAE','Technicien Exploitation',1,3),(106,'OCAE','Technicien Exploitation',2,3),(107,'OCAE','Technicien Exploitation',3,3),(108,'OCAE','Chef d\'Equipe Technicien d\'Exploitation',4,3),(109,'PSM','Process Manager',4,3),(110,'PSM','Process Manager',5,3),(111,'PSM','Process Manager',6,3),(112,'RSM','Ressource Planner',3,3),(113,'RSM','Ressource Planner',4,3),(114,'RSM','Ressource Planner',5,3),(115,'RSM','Ressource Planner',6,3),(116,'RSM','Ressource Planner',7,3),(117,'SDM','Directeur de Compte',5,3),(118,'SDM','Directeur de Compte',6,3),(119,'SDM','Directeur de Compte',7,3),(120,'SDM','Directeur de Compte',8,3),(121,'SDM','Directeur de Compte',9,3),(122,'SDS','Support - Gestion de service',2,3),(123,'SDS','Support - Gestion de service',3,3),(124,'SDS','Support - Gestion de service',4,3),(125,'SDS','Support - Gestion de service',5,3),(126,'SEF','Support 1er Niveau',1,3),(127,'SEF','Support 1er Niveau',2,3),(128,'SEF','Support 1er Niveau',3,3),(129,'SEF','Support 1er Niveau',4,3),(130,'SEF','Support 1er Niveau',5,3),(131,'SES','Support 2ème Niveau',1,3),(132,'SES','Support 2ème Niveau',2,3),(133,'SES','Support 2ème Niveau',3,3),(134,'SES','Support 2ème Niveau',4,3),(135,'SES','Support 2ème Niveau',5,3),(136,'SM','Gestion Système',2,3),(137,'SM','Gestion Système',3,3),(138,'SM','Gestion Système',4,3),(139,'SM','Gestion Système',5,3),(140,'TEN','Concepteur Technique',2,3),(141,'TEN','Concepteur Technique',3,3),(142,'TEN','Concepteur Technique',4,3),(143,'TEN','Concepteur Technique',5,3),(144,'TEN','Concepteur Technique',6,3),(145,'TEN','Concepteur Technique',7,3),(146,'BMC','Support Conseil Fonctionnel',2,4),(147,'BMC','Support Conseil Fonctionnel',3,4),(148,'BMC','Support Conseil Fonctionnel',4,4),(149,'BMC','Consultant Fonctionnel',5,4),(150,'BMC','Consultant Fonctionnel',6,4),(151,'BMC','Consultant Fonctionnel',7,4),(152,'BMC','Consultant Fonctionnel',8,4),(153,'EC','Consultant Progiciel',2,4),(154,'EC','Consultant Progiciel',3,4),(155,'EC','Consultant Progiciel',4,4),(156,'EC','Consultant Progiciel',5,4),(157,'EC','Consultant Progiciel',6,4),(158,'EC','Consultant Progiciel',7,4),(159,'EC','Consultant Progiciel',8,4),(160,'ICC','Consultant Technique',2,4),(161,'ICC','Consultant Technique',3,4),(162,'ICC','Consultant Technique',4,4),(163,'ICC','Consultant Technique',5,4),(164,'ICC','Consultant Technique',6,4),(165,'ICC','Consultant Technique',7,4),(166,'ICC','Consultant Technique',8,4),(167,'SCM','Conseil en Sécurité',3,4),(168,'SCM','Conseil en Sécurité',4,4),(169,'SCM','Conseil en Sécurité',5,4),(170,'SCM','Conseil en Sécurité',6,4),(171,'SCM','Conseil en Sécurité',7,4),(172,'SCM','Conseil en Sécurité',8,4),(173,'SCM','Conseil en Sécurité',9,4),(174,'QM','Gestion de la Qualité',4,5),(175,'QM','Gestion de la Qualité',5,5),(176,'QM','Gestion de la Qualité',6,5),(177,'QM','Gestion de la Qualitév',7,5),(178,'RM','Gestion des Risques',6,5),(179,'RM','Gestion des Risques',7,5),(180,'RM','Gestion des Risques',8,5),(181,'RM','Gestion des Risques',9,5),(182,'BMG','Bid Manager',5,6),(183,'BMG','Bid Manager',6,6),(184,'BMG','Bid Manager',7,6),(185,'BMG','Bid Manager',8,6),(186,'CM','Gestion des Contrats',3,6),(187,'CM','Gestion des Contrats',4,6),(188,'CM','Gestion des Contrats',5,6),(189,'CM','Gestion des Contrats',6,6),(190,'CM','Gestion des Contrats',7,6),(191,'CM','Gestion des Contrats',8,6),(192,'CM','Gestion des Contrats',9,6),(193,'MKT','Assistant Marketing',2,6),(194,'MKT','Assistant Marketing',3,6),(195,'MKT','Assistant Marketing',4,6),(196,'MKT','Marketeer',5,6),(197,'MKT','Marketeer',6,6),(198,'MKT','Marketing Manager',7,6),(199,'MKT','Marketing Manager',8,6),(200,'SCL','Commerce et management du client',3,6),(201,'SCL','Commerce et management du client',4,6),(202,'SCL','Commerce et management du client',5,6),(203,'SCL','Commerce et management du client',6,6),(204,'SCL','Commerce et management du client',7,6),(205,'SCL','Commerce et management du client',8,6),(206,'SCL','Commerce et management du client',9,6),(207,'SOL','Solution Manager',3,6),(208,'SOL','Solution Manager',4,6),(209,'SOL','Solution Manager',5,6),(210,'SOL','Solution Manager',6,6),(211,'SOL','Solution Manager',7,6),(212,'SOL','Solution Manager',8,6),(213,'ET','Formateur',2,7),(214,'ET','Formateur',3,7),(215,'ET','Formateur',4,7),(216,'ET','Formateur',5,7),(217,'ET','Formateur',6,7),(218,'ET','Formateur',7,7),(219,'AMA','Asset Management Administrator',3,8),(220,'AMA','Asset Management Administrator',4,8),(221,'AMA','Asset Manager',5,8),(222,'AMA','Asset Manager',6,8),(223,'GA','Graphiste',2,8),(224,'GA','Graphiste',3,8),(225,'GA','Graphiste',4,8),(226,'PO','Planification Projet',2,8),(227,'PO','Planification Projet',3,8),(228,'PO','Planification Projet',4,8),(229,'HRBP','Human Ressources Business Partner',4,9),(230,'HRBP','Human Ressources Business Partner',5,9),(231,'HRBP','Human Ressources Business Partner',6,9),(232,'HRBP','Human Ressources Business Partner',7,9),(233,'HRBP','Human Ressources Business Partner',8,9),(234,'HRBP','Human Ressources Business Partner',9,9),(235,'HRS','Support RH',1,9),(236,'HRS','Support RH',2,9),(237,'HRS','Support RH',3,9),(238,'HRS','Support RH',4,9),(239,'HRS','Support RH',5,9),(240,'HRSP','Conseil / Expertise RH',3,9),(241,'HRSP','Conseil / Expertise RH',4,9),(242,'HRSP','Conseil / Expertise RH',5,9),(243,'HRSP','Conseil / Expertise RH',6,9),(244,'HRSP','Conseil / Expertise RH',7,9),(245,'HRSP','Conseil / Expertise RH',8,9),(246,'ACC','Accounting Supporter',2,10),(247,'ACC','Accounting Supporter',3,10),(248,'ACC','Accountant',4,10),(249,'ACC','Accountant',5,10),(250,'ACC','Accountant',6,10),(251,'ACC','Chief Accountant',7,10),(252,'ACC','Chief Accountant',8,10),(253,'COR','Consulidation & Reporting Supporter',2,10),(254,'COR','Consulidation & Reporting Supporter',3,10),(255,'COR','Consulidation & Reporting Specialist',4,10),(256,'COR','Consulidation & Reporting Specialist',5,10),(257,'COR','Consulidation & Reporting Specialist',6,10),(258,'COR','Consulidation & Reporting Manager',7,10),(259,'COR','Consulidation & Reporting Manager',8,10),(260,'FBA','Financial Business Analyst',4,10),(261,'FBA','Financial Business Analyst',5,10),(262,'FBA','Financial Business Analyst',6,10),(263,'FBA','Manager Financial Business',7,10),(264,'FBA','Manager Financial Business',8,10),(265,'FMG','Financial Manager',6,10),(266,'FMG','Financial Manager',7,10),(267,'FMG','Financial Manager',8,10),(268,'TAX','Tax Specialist',5,10),(269,'TAX','Tax Manager',6,10),(270,'TAX','Tax Manager',7,10),(271,'TAX','Tax Manager',8,10),(272,'TAX','Tax Manager',9,10),(273,'TRE','Treasury Backoffice ',4,10),(274,'TRE','Treasury Specialist',5,10),(275,'TRE','Treasury Manager',6,10),(276,'TRE','Treasury Manager',7,10),(277,'TRE','Treasury Manager',8,10),(278,'TRE','Treasury Manager',9,10),(279,'AUD','Audit Interne',5,11),(280,'AUD','Audit Interne',6,11),(281,'AUD','Audit Interne',7,11),(282,'AUD','Audit Interne',8,11),(283,'AUD','Audit Interne',9,11),(284,'COM','Communication Supporter',2,12),(285,'COM','Communication Supporter',3,12),(286,'COM','Communication Expert',4,12),(287,'COM','Communication Expert',5,12),(288,'COM','Communication Manager',6,12),(289,'COM','Communication Manager',7,12),(290,'COM','Communication Manager',8,12),(291,'LEGA','Support Juridique',2,13),(292,'LEGA','Support Juridique',3,13),(293,'LEGA','Support Juridique',4,13),(294,'LEGA','Support Juridique',5,13),(295,'LEGA','Support Juridique',6,13),(296,'LEGA','Support Juridique',7,13),(297,'LEGA','Support Juridique',8,13),(298,'LEGA','Support Juridique',9,13),(299,'PUR','Support Achat',2,14),(300,'PUR','Support Achat',3,14),(301,'PUR','Acheteur Assitant',4,14),(302,'PUR','Acheteur',5,14),(303,'PUR','Acheteur',6,14),(304,'PUR','Acheteur',7,14),(305,'PUR','Acheteur',8,14),(306,'PUR','Acheteur',9,14),(307,'FACI','Facility Supporter',1,15),(308,'FACI','Facility Supporter',2,15),(309,'FACI','Facility Officer',3,15),(310,'FACI','Facility Officer',4,15),(311,'FACI','Facility Manager',5,15),(312,'FACI','Facility Manager',6,15),(313,'FACI','Facility Manager',7,15),(314,'FACI','Facility Manager',8,15),(315,'MASS','Secretary',1,16),(316,'MASS','Secretary',2,16),(317,'MASS','Management Assistant',3,16),(318,'MASS','Executive Assistant',4,16),(319,'RECP','Receptionist',3,16),(320,'RECP','Receptionist',4,16),(321,'DOC','Docteur',5,17),(322,'DOC','Docteur',6,17),(323,'DOC','Docteur',7,17),(324,'DOC','Docteur',8,17),(325,'HCP','Infirmière',5,17),(326,'HCP','Infirmière',6,17),(327,'HCP','Infirmière',7,17);
/*!40000 ALTER TABLE `gcm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metier`
--

DROP TABLE IF EXISTS `metier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metier`
--

LOCK TABLES `metier` WRITE;
/*!40000 ALTER TABLE `metier` DISABLE KEYS */;
INSERT INTO `metier` VALUES (1,'Ingénieur d\'Affaire'),(2,'Responsable d\'Agence'),(3,'Directeur de département'),(4,'Resource Manager'),(5,'Directeur Technique'),(6,'Team Leader'),(7,'Collaborateur');
/*!40000 ALTER TABLE `metier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `descriptif` varchar(255) DEFAULT NULL,
  `is_internal_revenue` bit(1) NOT NULL DEFAULT b'0',
  `collab` int(11) NOT NULL,
  `activite` int(11) NOT NULL,
  `staffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  KEY `activite` (`activite`),
  KEY `staffeur` (`staffeur`),
  CONSTRAINT `mission_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mission_ibfk_2` FOREIGN KEY (`activite`) REFERENCES `activite` (`id`) ON DELETE CASCADE,
  CONSTRAINT `mission_ibfk_3` FOREIGN KEY (`staffeur`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (1,'','2015-10-01','9999-12-31','Analyste d\'exploitation','\0',137,4,493),(2,'','2015-09-21','9999-12-31','Ingé DBA','\0',33,13,493),(3,'','2015-10-01','2015-12-31','Expertise Teradata','\0',44,13,493),(4,'Longue Maladie','2015-10-01','9999-12-31','Mission en IR chez MS','',168,21,493),(5,'','2015-10-22','2015-12-31','Chef de projet','\0',6,32,17),(7,'','2015-11-09','9999-12-31','Présentation client EID le 20/10/2015','\0',423,24,493),(8,'','2015-11-02','9999-12-31','CdP à la SG','\0',465,7,493),(10,'','2015-11-02','2015-11-30','Drive : Qualif. Hors Prod','\0',146,1,495),(11,'','2015-11-16','9999-12-31','Developpement Web','\0',2,35,494),(12,'','2015-12-07','9999-12-31','Resp Appli Auchan Drive','\0',146,1,493),(13,'','2015-12-01','9999-04-30','Coordination','\0',10,33,496),(15,'Pour janvier 2016','2015-12-21','9999-12-31','integrateur Flux:BI','\0',466,7,493),(16,'','2016-01-11','9999-12-31','Dev Java','\0',404,26,496),(17,'','2015-12-21','9999-12-31','Admin Wintel','\0',4,1,495),(18,'','2016-01-01','9999-12-31','Prolongation CDS','\0',14,17,499),(19,'','2015-12-10','2016-12-31','Chef de Projet','\0',7,17,494),(20,'','2016-01-01','9999-12-31','Sharepoint','\0',401,43,496),(21,'','2016-02-01','9999-12-31','Admin Syst.','\0',497,21,494),(22,'','2016-02-01','9999-12-31','DBA Oracle','\0',142,7,5),(24,'','2016-01-29','9999-12-31','Ingé de prod','\0',273,17,494),(25,'','2016-01-11','2016-12-31','Resp. Appli','\0',61,31,499),(26,'Remplacement E. St Michel','2016-01-27','2016-12-31','Intégrateur Unix','\0',498,7,5),(27,'','2016-02-15','9999-12-31','?','\0',51,35,494),(28,'','2016-04-18','9999-12-31','Dev Java','\0',546,17,494),(29,'','2016-02-01','9999-12-31','Support Appli','\0',6,31,494),(30,'','2016-02-05','9999-12-31','Dev Java','\0',544,20,399),(31,'','2016-02-08','9999-12-31','Esope : Concept. et test','\0',143,1,495),(32,'Mardi 3/11/15','2015-10-01','9999-12-31','Admin Syst','\0',160,1,495),(33,'','2016-02-16','9999-12-31','Dev Java','\0',580,26,495),(34,'','2016-01-25','9999-12-31','Projet GCA (Testeur)','\0',143,1,495),(35,'','2016-04-01','9999-12-31','Forfait remplacement Wroble','\0',384,35,499),(36,'','2016-02-08','9999-12-31','ATF','\0',143,1,495),(37,'','2016-02-29','9999-12-31','Testin et Qualif','\0',51,1,495),(38,'','2016-02-16','9999-12-31','BI Cube en AT sur Esope','\0',15,1,495),(39,'','2016-03-08','2016-05-31','MIssion de renfort','\0',130,35,494),(40,'','2016-03-24','9999-12-31','Resp. d\'appli Trait. Chèques','\0',58,7,493),(41,'','2016-03-08','2016-03-31','Remplacement de P. Wrobel','\0',426,35,499),(42,'','2016-03-29','9999-12-31','Remplact P. BECKEART','\0',405,22,496),(43,'','2016-03-21','9999-12-31','Marescotti','\0',164,17,499),(44,'','2016-04-04','2016-12-31','Intégrateur MVS','\0',605,5,5),(45,'','2016-04-11','9999-12-31','Process Build','\0',379,17,499),(46,'','2016-04-01','9999-12-31','CDS SNCF','\0',604,17,494),(47,'','2016-03-29','9999-12-31','JoliClerc est en maladie donc attente confirmation','\0',501,35,494),(48,'','2016-03-29','9999-12-31','JoliClerc est en maladie donc attente confirmation','\0',545,35,494),(51,'','2016-04-04','9999-12-31','Marc Sarrat : remplacement morgane','\0',396,35,494),(52,'','2016-05-09','9999-12-31','Entretien Planifié le Vendredi 15 a 16H30','\0',54,5,493),(53,'','2016-05-09','9999-12-31','VSC','\0',589,17,494),(55,'','2016-04-08','2016-05-23','SAP KM --> SP','\0',401,43,496),(56,'ORANGE','2016-04-04','2018-04-04','ORANGE','\0',396,35,494),(57,'','2016-04-01','9999-12-31','OAB , retour vendredi','\0',607,35,494),(58,'','2016-06-06','9999-12-31','CDS','\0',603,17,500),(59,'','2016-02-08','2016-06-05','Incident Manager','',6,21,496),(60,'','2015-10-01','9999-12-31','Projet de dev de gestion d\'entrepot','',11,20,496),(61,'','2015-10-01','9999-12-31','Dev gestion des stocks et des vents','',22,20,496),(62,'','2016-01-01','2016-05-31','Mission Projet sensible','',104,1,496),(63,'','2016-01-01','2016-12-31','SDIN','',9,21,493),(64,'','2016-01-01','2016-12-31','EDF SDIN','',150,21,499),(65,'','2016-01-01','2016-12-31','Kits','',378,38,496),(66,'','2016-05-01','9999-12-31','Mission IR','',151,34,499),(67,'Entretien planifie le 22 a 15H30','2016-05-23','9999-12-31','E Morge A BI','\0',131,1,495),(69,'','2016-01-01','2016-12-31','CE - DP - CHSCT','',16,53,500),(70,'','2016-06-04','2016-06-30','Sortie des effectifs','',21,53,500),(71,'','2016-06-17','2016-09-12','Sortie de effectif le 17/06','',543,53,500),(72,'','2016-05-26','9999-12-31','Maximo','\0',587,17,494),(73,'','2016-05-26','9999-12-31','2IL','\0',588,17,494),(74,'','2016-06-01','9999-12-31','CDS','\0',610,17,499),(75,'OK demande de validation','2016-06-15','9999-12-31','Ducloy','\0',31,7,5),(76,'','2016-05-17','9999-12-31','Deux mission possibles.\nEntretien le 04/05','\0',170,51,493),(77,'','2016-06-01','9999-12-31','CP metier resilience','\0',12,7,5),(78,'Démarrage le 06/06','2016-05-02','9999-12-31','VSc Mercredi après midi rendez vous','\0',602,17,494),(79,'','2016-06-01','9999-12-31','Forfait Orange','\0',396,35,499),(80,'Démarrage le 06/06','2016-05-23','9999-12-31','Push','\0',595,11,493),(81,'','2016-05-15','9999-12-31','CP','\0',106,10,493),(82,'','2016-06-01','9999-12-31','Remplacement de Maxime Bert ( JAVA J2E )','\0',388,35,499),(83,'Démarrage le 01/06 chez KITS','2016-06-01','9999-12-31','chez MS','\0',147,38,493),(84,'Démarrage le 01/06','2016-05-01','9999-12-31','Mission DEV JAVA / Louis Fabien: NEW LOGO','\0',609,5,493),(85,'Démarrage le 02/06','2016-06-15','9999-12-31','testing','\0',130,31,499),(86,'Démarrage 02/06','2016-06-06','9999-12-31','Dev','\0',597,22,496),(87,'','2016-07-04','9999-12-31','CDS','\0',154,17,499),(88,'Dispo à partir du 01/07/2016','2016-06-01','2016-06-30','Orange - Prolongation','\0',126,35,494),(89,'','2016-06-01','9999-12-31','Démarrage VSC AE','\0',602,17,494),(90,'','2016-06-02','9999-12-31','Qualifacation','\0',113,31,494),(91,'','2016-06-06','9999-12-31','Dev Webmethod','\0',595,11,5),(92,'','2016-06-01','9999-12-31','CP Banque','\0',106,10,5),(93,'','2016-06-02','9999-12-31','Qualifaction','\0',388,31,494),(94,'','2016-06-01','9999-12-31','Dev Java','\0',609,5,5),(95,'','2016-06-02','9999-12-31','Qualifation','\0',130,31,494),(96,'','2016-06-06','9999-12-31','CP','\0',6,52,5),(97,'','2016-06-01','9999-12-31','Projet Logictique','',384,20,500),(98,'','2016-06-01','9999-12-31','IR chez MS','\0',147,38,493),(99,'11/07\n22/07\n4/09','2016-07-04','9999-12-31','Dans les équipes de Stéphane Courtin','\0',608,12,5),(100,'','2016-06-03','9999-12-31','Besoin architecte ==> Push','\0',598,31,494),(101,'','2016-07-15','9999-12-31','MAXIMO','\0',599,17,494),(102,'','2016-06-06','9999-12-31','CDS Coordination','\0',611,17,499),(103,'','2016-07-15','9999-12-31','Maximo','\0',598,17,494),(104,'','2016-07-01','9999-12-31','Entretien le 27/07','\0',164,37,494),(105,'','2016-06-01','9999-12-31','Continuité de service sur tearadata','\0',44,13,5),(106,'Accord client mais désaccord de tarif ....','2016-09-01','2016-12-31','CP Métier transverses','\0',104,1,495),(107,'','2016-09-01','2016-12-31','Sujet BPM','\0',28,31,494),(108,'','2016-06-01','9999-12-31','ROSES','\0',152,17,499),(109,'','2016-09-15','2016-12-31','Orange','\0',596,35,494),(110,'','2016-10-10','2016-12-31','Maximo 2IL','\0',614,17,494),(112,'','2016-09-07','2016-12-31','Chef de Projet','\0',28,7,5),(113,'Projet CDS SNCF','2016-09-19','2016-12-31','Chef de Projet Technique','\0',610,17,499),(115,'RDV LE 25/08/2016','2016-08-01','9999-12-31','+1 équipe Rachid et Virignie','\0',126,7,493),(116,'','2016-10-10','2016-12-31','Chef de Projet','\0',50,10,5),(117,'Tarif négociation','2016-10-17','2016-12-31','MAXIMO','\0',623,17,494),(118,'','2016-09-17','2016-12-31','MAXIMO','\0',617,17,494),(119,'CP mobilite office 365','2016-10-12','2016-12-31','Commission Europeene','',52,2,1),(120,'','2016-10-17','2016-12-31','AE','',20,38,493),(121,'Equipe de Stéphane CAY','2016-10-10','2016-12-31','Analyste d\'exploitation : Entretien Vendredi 14','\0',152,37,494),(122,'','2016-10-03','2016-12-31','JEE / Jasper Report','\0',615,31,499),(123,'','2016-10-17','2016-12-31','IN Projet CMI','\0',615,31,494),(124,'','2016-10-24','2016-12-31','MAXIMO','\0',617,17,494),(125,'Attente de créneau','2016-10-10','2016-12-31','DPC / AMOA presentation Jeudi 13','\0',279,1,495),(126,'','2016-10-26','2016-12-31','Mission MS','',20,38,493),(127,'','2016-10-17','2016-12-31','Intégrateur','\0',152,37,494),(128,'','2016-10-26','2016-12-31','Remplacement F. Donze','\0',279,35,499),(129,'','2016-10-17','2016-12-31','Maximo POC ANDROID','\0',634,17,494),(130,'','2017-01-09','2017-12-31','Projet SI / Stockage','\0',15,35,494),(131,'','2016-11-04','2016-12-31','Swap Morgane Seurat','\0',393,7,496),(132,'','2017-01-02','2017-12-31','Orange Forfait','\0',131,35,494),(133,'','2017-01-02','2017-12-31','SG / HOT / Load Runner','\0',638,7,496),(134,'','2017-01-02','2017-12-31','SNCF','\0',379,17,494),(135,'','2017-01-04','2017-12-31','PROJET HOT attente confirmation du client.','\0',638,7,496),(136,'','2017-01-11','2017-12-31','SNCF LA TOUR','\0',619,17,494),(137,'','2016-06-01','9999-12-31','CDS','\0',154,17,499),(138,'','2017-01-04','2017-12-31','Remplacement Quentin BAILLEUL','\0',101,26,495);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunite`
--

DROP TABLE IF EXISTS `opportunite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `descriptif` varchar(255) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  `collab` int(11) NOT NULL,
  `activite` int(11) NOT NULL,
  `staffeur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  KEY `activite` (`activite`),
  KEY `staffeur` (`staffeur`),
  CONSTRAINT `opportunite_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE,
  CONSTRAINT `opportunite_ibfk_2` FOREIGN KEY (`activite`) REFERENCES `activite` (`id`) ON DELETE CASCADE,
  CONSTRAINT `opportunite_ibfk_3` FOREIGN KEY (`staffeur`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=564 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunite`
--

LOCK TABLES `opportunite` WRITE;
/*!40000 ALTER TABLE `opportunite` DISABLE KEYS */;
INSERT INTO `opportunite` VALUES (1,'','2015-11-01','9999-12-31','Chef de projet','KO_ENTRETIEN',24,17,494),(2,'','2015-12-01','9999-12-31','Developpement Android et JEE','KO_DISPO',2,18,494),(4,'Rendez-bvous encours de planification.','2015-09-01','9999-12-31','Inge systeme','KO_BESOIN',160,6,493),(8,'','2015-10-15','9999-12-31','projet','KO_DISPO',13,20,496),(10,'','2015-10-01','9999-12-31','Push CV','KO_DISPO',15,24,493),(13,'','2015-10-01','9999-12-31','AMOA SAP','KO_DISPO',104,17,494),(14,'RDV client le 21/10','2015-10-01','9999-12-31','Prospect dev JEE','KO_DISPO',2,26,496),(16,'','2015-10-01','9999-12-31','Remp Dalel (recouvrement 4 semaines)','KO_BESOIN',24,27,496),(17,'CV envoyé le 13/10. Attente retour client. ARRIGHI, DOAPI','2015-10-01','9999-12-31','AMOA','KO_DISPO',465,1,495),(18,'Attente retour client\nRelance client','2015-10-01','9999-12-31','AMOA','KO_DISPO',465,31,494),(20,'','2015-10-01','9999-12-31','Pas de descriptif','KO_BESOIN',160,17,494),(21,'','2015-10-01','9999-12-31','Pas de descriptif','KO_DISPO',6,33,493),(23,'Entretien avec David SAVARI le 12/11','2015-10-01','9999-12-31','DBA','KO_DISPO',142,34,494),(25,'','2015-11-02','9999-12-31','Direction de projet','KO_DISPO',24,7,493),(26,'','2015-11-02','9999-12-31','Chef de projet','KO_DISPO',24,31,494),(27,'','2015-10-01','9999-12-31','Consultant BI','KO_DISPO',15,30,495),(30,'Push CV','2015-10-01','9999-12-31','Developpement','KO_DISPO',2,36,495),(31,'','2015-10-01','9999-12-31','Push CV','KO_DISPO',465,30,495),(32,'','2015-10-01','9999-12-31','AMOA Test & Qualif','KO_DISPO',465,28,495),(33,'','2015-10-01','9999-12-31','ESOPE/BI','KO_DISPO',104,1,496),(34,'','2015-10-01','9999-12-31','Remp P. WROBEL  sur Forfait Orange ?','KO_DISPO',146,35,494),(36,'RDV client le 22/10\nAttente retour client S46','2015-11-02','9999-12-31','CP exploit (SNCF Lille)','KO_CV',466,17,494),(38,'','2015-11-02','9999-12-31','DBA','KO_DISPO',468,17,494),(40,'','2015-11-02','9999-12-31','Exploitation','KO_DISPO',10,37,494),(44,'','2015-10-26','2015-11-04','Integrateur Syst.','KO_CV',160,31,494),(45,'','2015-10-01','9999-12-31','Admin Syst','KO_CV',160,14,493),(46,'','2015-10-01','9999-12-31','Admin Syst','KO_CV',160,17,494),(53,'','2015-11-01','9999-12-31','Developpeur sur OSCAR','KO_DISPO',2,1,496),(56,'','2015-11-04','9999-12-31','Expertise Weblo','KO_DISPO',160,7,493),(59,'','2015-11-01','9999-12-31','Dev Java','A_L_ETUDE',56,26,496),(60,'','2015-11-04','9999-12-31','DBA','KO_DISPO',468,39,494),(61,'Attente Piste EDF et CNAM TS','2015-11-04','9999-12-31','AE','KO_DISPO',10,38,17),(62,'','2015-11-04','9999-12-31','Tech. exploitation $U','KO_DISPO',10,40,496),(67,'','2015-11-01','9999-12-31','Dev Java','A_L_ETUDE',105,26,496),(69,'','2015-11-01','9999-12-31','Resp d\'appli / Expert Qualif','KO_CV',130,35,494),(75,'','2015-12-01','9999-12-31','Stockage Systeme','KO_CV',46,9,493),(77,'','2016-01-04','9999-12-31','Inge de prod VSC','KO_BESOIN',273,17,494),(78,'','2016-01-04','9999-12-31','Remplacement K. BOUAZIZ','KO_DISPO',273,31,494),(79,'','2016-01-04','9999-12-31','Inge de prod','KO_DISPO',273,4,5),(80,'','2016-01-04','9999-12-31','Inge de prod (coordination)','KO_DISPO',273,28,495),(81,'','2016-01-04','9999-12-31','Dev PHP MySQL','A_L_ETUDE',105,1,495),(83,'','2016-01-04','9999-12-31','Ingenieur d\'Etude','KO_DISPO',51,28,495),(84,'','2015-12-01','9999-12-31','Dev Natural Adabse + Support','KO_CV',16,23,496),(86,'','2015-12-01','9999-12-31','Dev Java','KO_BESOIN',501,18,494),(87,'','2016-01-04','9999-12-31','- administrer les bases de données Oracle à AG2R LA MONDIALE\r - contribuer aux projets fonctionnels et techniques \r - accompagner le décommissionnement des installations Oracle sur plate-forme X86','KO_CV',142,4,493),(89,'','2015-12-08','9999-12-31','ESOPE : Chef de projet','A_L_ETUDE',7,1,496),(90,'Démarrage Orange','2016-01-04','9999-12-31','Dev AngularJS + HTML5','KO_DISPO',501,42,495),(91,'','2016-01-01','9999-12-31','Projet Reboot','A_L_ETUDE',7,17,499),(93,'','2015-12-01','9999-12-31','Equipe de Yves','KO_CV',18,35,494),(94,'','2016-02-01','9999-12-31','Remplacement Kader','KO_DISPO',20,31,494),(95,'','2015-12-01','9999-12-31','Chez Olivier Bracelet','KO_BESOIN',501,1,495),(96,'','2016-01-01','9999-12-31','Remplacement O Thys','KO_CV',46,5,493),(97,'','2015-12-01','9999-12-31','Delivery Manager','A_L_ETUDE',7,31,494),(98,'','2015-01-01','9999-12-31','La tour Chrsistelle','KO_BESOIN',142,17,494),(103,'','2016-01-01','9999-12-31','CdP Infra','CV_ENVOYE',7,4,5),(104,'','2016-02-01','9999-12-31','Recettage','KO_BESOIN',130,31,494),(105,'','2016-01-01','9999-12-31','Testeur','KO_CV',130,13,493),(109,'','2016-01-06','9999-12-31','Dev Java','KO_CV',501,17,494),(110,'','2016-01-06','2016-01-18','Dev Java','KO_BESOIN',501,31,494),(111,'','2016-01-06','9999-12-31','Integrateur Unix','KO_DISPO',498,17,494),(116,'','2016-03-01','9999-12-31','CdP','KO_CV',113,13,5),(118,'','2016-02-16','9999-12-31','Resp. d\'appli','KO_DISPO',426,35,494),(119,'Manque IOS','2016-01-18','2016-01-25','Resp. appli','KO_CV',426,44,495),(120,'','2016-03-01','9999-12-31','ATF Esope','KO_DISPO',131,1,496),(121,'','2016-01-25','9999-12-31','Admin Syst','KO_BESOIN',46,31,494),(122,'','2016-01-25','9999-12-31','Admin Syst','KO_CV',46,7,5),(123,'','2016-02-01','9999-12-31','Qualif.','KO_BESOIN',130,45,494),(124,'','2016-02-01','9999-12-31','Admin N3','KO_CV',170,17,494),(125,'','2016-02-01','9999-12-31','Qualif BI','KO_DISPO',15,45,494),(126,'','2016-03-01','9999-12-31','CdP (remplacement de Maud CORBEL)','KO_DISPO',104,31,494),(127,'','2016-03-01','9999-12-31','CdP MOA','KO_DISPO',104,13,5),(128,'','2016-02-22','9999-12-31','CdP Bureautique (migration poste de travil)','KO_DISPO',6,4,5),(129,'','2016-03-01','9999-12-31','Qualif','KO_CV',113,45,494),(131,'','2016-01-18','9999-12-31','Dev Java','KO_CV',544,26,495),(132,'','2016-01-18','9999-12-31','Dev Java','KO_DISPO',544,15,5),(133,'','2016-01-18','9999-12-31','Dev Java / Mobile','KO_CV',545,17,494),(135,'','2016-01-18','2016-02-08','Dev Java','KO_CV',580,10,5),(136,'','2016-01-18','2016-02-15','Dav Java','KO_DISPO',580,31,494),(137,'','2016-01-18','2016-02-15','Dav Java Jee','KO_DISPO',580,23,495),(138,'','2016-01-18','9999-12-31','Analyste exp.','KO_DISPO',498,1,495),(139,'Démarrage Orange','2016-01-18','9999-12-31','Dev Java Jee','KO_DISPO',545,1,495),(140,'','2016-01-18','9999-12-31','Inge etude','KO_BESOIN',51,11,5),(141,'','2016-01-18','9999-12-31','Admin N3','KO_CV',170,31,494),(142,'','2016-01-20','9999-12-31','Integration Win','KO_CV',543,14,5),(143,'','2016-01-20','9999-12-31','Integration Win','KO_CV',46,14,5),(144,'Démarrage Orange','2016-01-25','9999-12-31','Dev Java','KO_DISPO',501,31,494),(145,'','2016-01-25','9999-12-31','Expert BI et/ou CdP','KO_DISPO',15,35,494),(146,'','2016-01-25','2016-02-24','Dev Java','KO_CV',501,38,495),(148,'','2016-01-25','9999-12-31','?','KO_DISPO',51,38,495),(149,'','2016-01-25','9999-12-31','Inge Syst','KO_CV',170,29,495),(150,'','2016-01-25','9999-12-31','Inge Syst','KO_CV',170,28,495),(152,'','2016-01-25','9999-12-31','CdP','KO_DISPO',6,36,495),(153,'','2016-01-27','9999-12-31','Admin Syst','KO_CV',543,31,494),(154,'','2016-01-27','9999-12-31','Admin Syst','KO_CV',543,38,495),(155,'Nego TJM en cours','2016-01-01','9999-12-31','Support Appli','KO_CV',545,31,494),(156,'','2016-01-27','9999-12-31','Admin Virtu','KO_CV',170,38,495),(157,'','2016-01-27','9999-12-31','Admin Syst','KO_CV',46,38,495),(158,'','2016-02-15','9999-12-31','Demande de Chef de projet','KO_CV',113,31,494),(161,'','2016-02-08','9999-12-31','Support Appli','KO_CV',6,31,494),(162,'','2016-02-08','9999-12-31','Esope : Concep. et test','KO_CV',58,1,399),(163,'','2016-02-08','9999-12-31','Qualif fonct.','KO_CV',58,45,494),(164,'','2016-04-01','9999-12-31','Inge expl.','KO_DISPO',164,7,5),(165,'','2016-03-14','9999-12-31','N3 SNCF CDS : Niveau à  valider','KO_CV',405,17,499),(166,'','2016-02-15','9999-12-31','Ingé Win','KO_CV',170,14,5),(167,'','2016-02-15','9999-12-31','CdP','KO_ENTRETIEN',6,10,5),(169,'Démarrage Orange','2016-02-08','9999-12-31','Dev Java C++','KO_DISPO',501,23,496),(170,'','2016-02-08','9999-12-31','Dav JAVA','KO_CV',501,26,495),(171,'','2016-02-08','9999-12-31','Dev Java','KO_CV',545,26,495),(173,'','2016-02-08','2016-02-15','Dev Java','KO_DISPO',580,1,399),(174,'','2016-02-08','9999-12-31','?','KO_DISPO',58,22,496),(175,'','2016-02-08','9999-12-31','CDP Desk','KO_CV',6,4,5),(176,'','2016-03-01','9999-12-31','Developpement Java REST','KO_CV',501,10,5),(177,'','2016-03-01','9999-12-31','Developpement Java REST','KO_CV',545,10,5),(178,'négociation en cours pour démarrage plutôt.','2016-04-01','9999-12-31','SNCF 2IL - Maximo','KO_DISPO',51,17,494),(179,'','2016-02-01','9999-12-31','Piste audit du SI','KO_BESOIN',170,4,5),(180,'','2016-03-01','9999-12-31','Refonte SI','KO_ENTRETIEN',113,4,5),(182,'','2016-02-01','9999-12-31','Dans les equipes de Derdaki.','KO_DISPO',131,7,5),(183,'Profil trop juste par rapport a la concurence....','2016-04-01','9999-12-31','poste ISM','KO_CV',163,7,5),(184,'','2016-04-01','9999-12-31','O Ducloy','KO_CV',147,7,5),(185,'','2016-04-01','9999-12-31','Mission chez MS','KO_DISPO',152,38,493),(187,'','2016-02-20','9999-12-31','Auchan GCA - AT','KO_DISPO',58,1,495),(188,'','2016-04-01','9999-12-31','Integrateur','KO_CV',405,7,5),(189,'','2016-03-01','9999-12-31','Testing Qualif - Dallel','KO_CV',501,1,495),(190,'','2016-03-01','9999-12-31','Admin N2 Systeme','KO_CV',543,5,493),(192,'','2016-04-01','9999-12-31','Remplacement de Pascale Beckaert','KO_BESOIN',113,22,496),(193,'','2016-03-01','9999-12-31','Admini systeme','KO_CV',543,29,495),(194,'','2016-04-01','9999-12-31','Remplacement de Pascale','KO_CV',163,22,496),(195,'','2016-02-01','9999-12-31','AE chez Leosewski & Maillet','A_L_ETUDE',147,4,5),(197,'','2016-02-01','9999-12-31','Marecotti','KO_CV',147,17,499),(198,'','2016-03-01','9999-12-31','Admin Sharepoint','KO_CV',543,46,496),(199,'','2016-03-01','9999-12-31','Admin Sharepoint','KO_CV',46,46,496),(200,'','2016-03-01','9999-12-31','Admin Sharepoint','KO_CV',405,46,496),(202,'','2016-03-01','9999-12-31','Mission CP','KO_CV',6,36,495),(206,'','2016-05-02','9999-12-31','Poste integrateur Weblogic','CV_ENVOYE',589,7,5),(207,'','2016-04-01','9999-12-31','Traitement Cheques','KO_CV',130,7,493),(208,'','2016-04-01','9999-12-31','Remplact Morgane Seurat','KO_DISPO',58,35,494),(212,'','2016-04-01','9999-12-31','Remplact WROBEL','KO_CV',384,35,494),(213,'','2016-04-01','9999-12-31','Analyste d\'exp.','KO_DISPO',152,21,499),(214,'nous sommes referencés....','2016-04-04','9999-12-31','DBA','KO_DISPO',44,47,499),(215,'Entretien le 07/03\nRetour client le 14/03','2016-04-01','9999-12-31','DBA','KO_DISPO',44,5,493),(217,'','2016-04-01','9999-12-31','meme poste sur les traitement cheque','KO_DISPO',396,7,5),(218,'','2016-03-01','9999-12-31','Sur meme mission que precedement qui n\'avait pu demarrer','KO_DISPO',20,17,494),(219,'','2016-04-01','9999-12-31','CP confirme','KO_CV',113,48,496),(221,'','2016-03-14','9999-12-31','Dev Java','KO_CV',501,13,5),(223,'','2016-03-14','9999-12-31','Dev JAVA','KO_CV',545,13,5),(224,'Démarrage Orange','2016-03-25','9999-12-31','Damien Willems /  Dev Agile','KO_BESOIN',501,1,399),(225,'Démarrage Orange','2016-03-25','9999-12-31','Damien Willems / Dev Agile','KO_DISPO',545,1,399),(226,'','2016-03-14','9999-12-31','Besoin a mi-temps','KO_DISPO',401,31,494),(227,'','2016-04-04','9999-12-31','Mi-temps','KO_CV',401,7,5),(229,'','2016-04-04','9999-12-31','Ingé Systeme','KO_DISPO',604,31,494),(232,'','2016-04-04','9999-12-31','Push Mmme Buisine','KO_BESOIN',113,16,5),(233,'','2016-03-09','9999-12-31','Push chez Xavier Helain , a la place de V. Gay','KO_DISPO',126,1,495),(235,'','2016-04-04','9999-12-31','2 eme poste pour Rachid','KO_DISPO',131,7,5),(239,'Motivation Celine KO.','2016-04-11','9999-12-31','DEv Java et Conception ...','KO_ENTRETIEN',607,13,5),(240,'','2016-04-18','9999-12-31','Maximo','ATTENTE_CLIENT',607,17,494),(241,'','2016-05-02','9999-12-31','Dev java','KO_CV',607,31,494),(242,'Démarrage Orange','2016-04-01','9999-12-31','Thelemaque : OAB','KO_DISPO',501,35,494),(243,'Bien préparer le collaborateur.\r Jamais d\'entretien.','2016-04-01','2016-12-31','Presentation Auchan','KO_DISPO',604,1,495),(244,'','2016-04-01','9999-12-31','Admin Windows','KO_DISPO',543,49,495),(245,'','2016-04-01','9999-12-31','Admin Windows','KO_BESOIN',46,49,495),(246,'','2016-03-01','9999-12-31','Mission Windows + AD','KO_DISPO',543,38,495),(248,'','2016-05-01','9999-12-31','Ingé de Produ','KO_CV',163,4,5),(249,'','2016-05-02','9999-12-31','Ingé de production','KO_DISPO',163,4,5),(253,'Ce vendredi','2016-04-01','9999-12-31','Présentation vendredi 25/03 à 10H30','KO_CV',170,5,493),(255,'','2016-04-18','9999-12-31','CP','KO_CV',6,10,5),(256,'','2016-05-02','9999-12-31','recette Benoit Dumont','KO_CV',113,28,495),(258,'','2016-05-01','9999-12-31','Chez Matthieu Delattre','KO_CV',147,44,495),(259,'','2016-05-01','9999-12-31','Matthieu Delattre','KO_DISPO',152,44,495),(260,'','2016-04-01','9999-12-31','Projet DYNACO','KO_CV',595,48,500),(263,'','2016-06-06','9999-12-31','Push','A_L_ETUDE',597,24,5),(265,'','2016-04-01','9999-12-31','DYNACO','KO_CV',596,48,500),(266,'','2016-04-01','9999-12-31','Projet DYNACO','KO_CV',598,48,500),(267,'','2016-04-01','9999-12-31','Projet DYNACO','KO_CV',599,48,500),(268,'','2016-04-01','9999-12-31','Push','KO_CV',599,11,5),(271,'','2016-05-01','9999-12-31','Expert virtu N3','KO_ENTRETIEN',170,30,495),(272,'Chez Artigue','2016-05-01','2016-11-01','Audit Métier, pour recueillir les besoins fonctionnels des équipes métier : ARIBA','A_L_ETUDE',384,1,495),(273,'Vendredi','2016-05-01','2018-04-04','KIABI - Dev JAVA','ENTRETIEN_PLANIFIE',587,42,495),(274,'','2016-04-01','9999-12-31','Push','KO_DISPO',44,24,5),(275,'Jeudi Apres midi','2016-04-01','9999-12-31','Axel, Cugier','ENTRETIEN_PLANIFIE',587,41,495),(276,'','2016-05-01','9999-12-31','Poste CP en accompagnement de Safia Sidi moussa','KO_DISPO',104,7,5),(277,'','2016-04-01','9999-12-31','Projet SNCF DataCenter','KO_DISPO',152,17,500),(279,'','2016-06-01','9999-12-31','Apro / Logistique','A_L_ETUDE',388,50,495),(280,'','2016-06-01','9999-12-31','Projet Appro / Logistique','KO_DISPO',44,50,495),(281,'Demander son planning.','2016-05-01','9999-12-31','Audit sur la partie ERP, avec Anglais.','KO_DISPO',126,41,495),(282,'','2016-05-14','9999-12-31','Poste CP sur projet resilience','KO_CV',113,7,5),(283,'','2016-05-01','9999-12-31','Arnaud Deryckx','KO_BESOIN',147,41,495),(284,'','2016-05-02','9999-12-31','Jean Michel Passagne','A_L_ETUDE',602,1,495),(285,'','2016-04-01','9999-12-31','Dev Java Natural adabase : avec Noel.','KO_BESOIN',596,23,496),(286,'','2016-05-24','9999-12-31','Remplacement de Céline Brasier','KO_CV',595,35,499),(287,'','2016-06-06','9999-12-31','Remplacement de Celine Brasier','KO_BESOIN',596,35,499),(291,'Manque de qualification sur la solution Load Runner voir pour une formation.','2016-09-01','9999-12-31','Benchmark / Load Runner','A_L_ETUDE',384,7,5),(292,'','2016-05-15','9999-12-31','CP','KO_DISPO',126,52,5),(294,'','2016-05-01','9999-12-31','CP : projet GCA attente date de demarrage ==> BDS','ATTENTE_CLIENT',113,1,495),(296,'','2016-06-15','9999-12-31','testing','A_L_ETUDE',130,1,495),(297,'','2016-06-01','9999-12-31','Testing','A_L_ETUDE',130,54,5),(298,'','2016-06-01','9999-12-31','DEV JAVA','A_L_ETUDE',609,11,5),(299,'','2016-06-01','9999-12-31','DEV','KO_BESOIN',609,35,494),(300,'','2016-05-01','9999-12-31','Coordinateur','KO_BESOIN',46,22,496),(302,'','2016-05-01','9999-12-31','PUSH','KO_DISPO',44,23,496),(303,'','2016-06-01','9999-12-31','Coordinateur','KO_BESOIN',10,23,496),(304,'','2016-06-01','9999-12-31','Coordinateur','KO_CV',10,22,496),(305,'','2016-06-01','9999-12-31','Equipe POK','KO_CV',147,17,499),(308,'Prise de rendez vous le 20/05','2016-06-01','9999-12-31','Testing dans nouveau périemtre','CV_ENVOYE',106,54,5),(311,'','2016-06-01','9999-12-31','Dev Java Web','A_L_ETUDE',595,42,495),(313,'Attente  retour client.','2016-06-01','9999-12-31','Leoseswki','KO_DISPO',164,4,5),(314,'','2016-06-01','9999-12-31','CDS','KO_CV',150,17,499),(315,'','2016-06-01','9999-12-31','CDS','KO_CV',9,17,499),(318,'Ko compétence MVC','2016-06-10','9999-12-31','Dev Angular JS et #Net : RDV Jeudi 19/05','KO_CV',598,55,493),(319,'','2016-05-15','9999-12-31','MS','KO_DISPO',20,38,493),(320,'','2016-05-15','9999-12-31','MS','KO_DISPO',164,38,493),(321,'','2016-05-01','9999-12-31','Dev et Conception Cobol&  Java','A_L_ETUDE',597,13,5),(322,'','2016-05-15','9999-12-31','Flux et Echange','A_L_ETUDE',106,1,495),(323,'Attente retour client','2016-05-15','9999-12-31','Dev','A_L_ETUDE',598,23,496),(324,'','2016-05-01','9999-12-31','Push','A_L_ETUDE',12,24,493),(325,'','2016-05-01','9999-12-31','Push','A_L_ETUDE',12,3,5),(327,'','2016-06-01','9999-12-31','Recette & Qualif','ENTRETIEN_PLANIFIE',106,31,494),(329,'','2016-05-01','9999-12-31','DEV JAVA','CV_ENVOYE',609,31,494),(330,'','2016-06-01','9999-12-31','Dev .Net','KO_CV',596,31,494),(331,'Arrive trop tard','2016-06-01','9999-12-31','Dev .Net','KO_DISPO',598,31,494),(332,'','2016-06-01','9999-12-31','Dev .Net','KO_CV',599,31,494),(333,'','2016-06-01','9999-12-31','.net','CV_ENVOYE',599,23,496),(335,'','2016-06-01','9999-12-31','Mission dans l\'EST','KO_CV',384,56,496),(336,'','2016-06-01','9999-12-31','Audit 2 jours sur laval\nSQL Server 2012','KO_DISPO',44,56,493),(337,'','2016-06-01','9999-12-31','ONEY Banque Accord','KO_CV',608,13,493),(338,'','2016-09-01','9999-12-31','Concepteur C','KO_CV',596,46,496),(339,'Nouveau client MROD Dany Tetard','2016-09-01','9999-12-31','Développeur C++','KO_CV',596,19,494),(340,'Pour compétences MVC','2016-06-20','9999-12-31','Développeur .NET','A_L_ETUDE',599,55,493),(342,'','2016-06-01','9999-12-31','Intégrateur','KO_CV',46,31,494),(344,'','2016-06-01','9999-12-31','DBA','KO_DISPO',44,28,495),(352,'','2016-06-20','9999-12-31','Dev Java','KO_CV',598,17,494),(355,'Jeudi 23/06','2016-06-01','9999-12-31','Auchan Drive','KO_DISPO',164,1,495),(356,'','2016-09-01','9999-12-31','Projet sur Septembre','KO_DISPO',164,17,494),(357,'','2016-06-01','9999-12-31','TMA MVS','A_L_ETUDE',608,28,495),(358,'','2016-06-01','9999-12-31','JC Michel','KO_CV',10,21,500),(359,'','2016-06-01','9999-12-31','Projet au forfait !','A_L_ETUDE',598,50,399),(360,'','2016-06-01','9999-12-31','Remplacement Anthony Caron','A_L_ETUDE',598,26,399),(361,'','2016-06-01','9999-12-31','Projet Forfait','A_L_ETUDE',599,50,399),(363,'','2016-06-01','9999-12-31','Projet forfait','KO_CV',596,50,399),(364,'','2016-07-01','9999-12-31','Besoin Coordination : Applicca\ntion téléphonie / internet - Michael Delannoy','KO_CV',10,35,494),(366,'','2016-07-01','9999-12-31','Coordination projet autour du CDS','KO_DISPO',126,17,499),(367,'','2016-07-01','9999-12-31','Coordination','A_L_ETUDE',611,35,494),(368,'','2016-06-01','9999-12-31','Arnaud Derycx','A_L_ETUDE',611,1,495),(370,'','2016-07-01','9999-12-31','kits','KO_CV',150,38,495),(371,'','2016-07-01','9999-12-31','kits','KO_BESOIN',150,38,495),(372,'','2016-07-01','9999-12-31','kits','KO_CV',9,38,495),(373,'','2016-07-01','9999-12-31','Remplacement STT.','KO_DISPO',44,57,493),(375,'','2016-09-01','9999-12-31','MAXIMO','A_L_ETUDE',596,17,494),(376,'','2016-08-01','9999-12-31','+1 dans équipe Rachid et Virignie','KO_DISPO',164,7,493),(377,'','2016-08-01','9999-12-31','+1 dans équipe Rachid et Virginie','KO_CV',10,7,493),(379,'Besoin AE / Scripting Linux / Unix interne Atos Nantes :)','2016-07-01','9999-12-31','CNAMTS','KO_CV',10,37,494),(380,'Piste Nantes','2016-07-01','9999-12-31','Analyste D\'exploitation / Unix / Linux / Scripting','KO_DISPO',20,37,494),(381,'','2016-07-01','9999-12-31','DBA Etude','KO_DISPO',44,28,496),(383,'','2016-07-01','9999-12-31','Besoin Développement.','A_L_ETUDE',596,23,496),(385,'','2016-01-01','2016-12-31','ITS Group','KO_BESOIN',10,47,17),(386,'Jasper Report','2016-09-01','2016-12-31','Profil','KO_DISPO',44,31,494),(387,'','2016-08-17','2016-12-31','Poste de Concepteur JEE Expériementé.','KO_CV',596,42,495),(388,'','2016-09-15','2016-12-31','Chef de Projet  Référentiel de données.','KO_DISPO',50,28,495),(391,'','2016-09-01','2016-12-31','Analyste d\'exploitation Unix / Linux sous traitance ITS Groupe\n\nSandby car présentation Camieu','KO_DISPO',20,47,17),(392,'Tarification','2016-08-11','2016-12-16','Mission Analyste d\'exploitation Système & Réseau','KO_BESOIN',10,47,17),(393,'Désaccord tarif','2016-08-24','2016-12-31','Chef de projet transverse.','ENTRETIEN_PLANIFIE',104,1,495),(394,'','2016-09-20','2016-12-31','Poste Ingénieur Systèmes Microsoft N3','KO_DISPO',610,38,495),(396,'Le client souhaite rencontrer le Profil','2016-08-24','2016-12-31','.NET / JEE','KO_DISPO',614,31,494),(397,'','2016-10-03','2016-12-31','Consultant AMOA / Référentiel Prix','KO_DISPO',279,28,495),(398,'','2016-10-03','2016-12-31','Consultante AMOA SI / STOCKS','KO_DISPO',279,42,495),(399,'A valider avec le client','2016-09-15','2016-12-31','Consultant Applicatif','KO_BESOIN',13,19,499),(400,'','2016-09-07','2016-12-31','Coordinateur / Gestion du parc','KO_CV',10,44,495),(402,'','2016-09-19','2016-12-31','Projet ROSE','KO_DISPO',152,17,499),(403,'','2016-09-19','2016-12-31','CUD','KO_DISPO',50,19,499),(405,'','2016-09-07','2016-12-31','Ingé N3 Réseaux','KO_DISPO',610,29,495),(406,'Trop juste techniquement.','2016-09-07','2016-12-31','CERTI C++','KO_ENTRETIEN',596,32,494),(407,'CDS SNCF','2016-09-12','2016-12-31','.NET','KO_DISPO',614,17,499),(408,'AngularJS / .NET /','2016-09-19','2016-12-31','Développement remplacement Anthony Caron','KO_DISPO',623,26,496),(409,'','2016-09-19','2016-12-31','Ingé d\'études Angular JS / JEE / PHP','KO_DISPO',623,31,494),(410,'Soutenance le 02/09 - 15/09','2016-10-03','2016-12-31','Recette / AMOA','KO_DISPO',279,31,494),(411,'','2016-10-03','2016-12-31','Ingénieur Réseaux','KO_BESOIN',624,56,493),(413,'','2016-09-19','2016-12-31','JEE / PL/SQL','KO_DISPO',617,1,495),(414,'','2016-09-19','2016-12-31','Besoins projet Fabrice','KO_DISPO',617,31,499),(415,'','2016-09-12','2016-12-31','Remplacement sous traitant DBA','A_L_ETUDE',44,57,493),(416,'','2016-10-10','2016-12-31','Poste PMO + CP Automatisation.','KO_DISPO',13,7,496),(417,'','2016-09-21','2016-12-31','Poste analyste exploitation','KO_DISPO',20,50,495),(418,'','2016-09-21','2016-12-31','Dans la réponse globale sur poste AE','KO_DISPO',20,1,495),(419,'','2016-09-21','2016-12-31','a valider si positionner ou pas dans le passé.\nAttente retour Cameiu','KO_DISPO',20,37,494),(420,'','2017-01-02','2017-12-31','Poste AE sur perimetre Drive','A_L_ETUDE',10,1,495),(421,'','2016-09-21','2016-12-31','Poste AE','KO_CV',10,50,495),(422,'','2016-09-21','2016-12-31','PMO Devops sur avenant.','KO_DISPO',50,7,496),(424,'','2016-09-21','2016-12-31','Présenté le 19/09 retour le 21/09','KO_DISPO',279,4,496),(425,'','2016-09-21','2016-12-31','Presentation le 20 retour le 26/09','KO_CV',624,57,496),(426,'','2016-09-21','2016-12-31','6 ans d\'experince','KO_DISPO',615,23,495),(427,'','2016-09-21','2016-12-31','synchor avec PHP et MRS','KO_DISPO',617,28,495),(428,'','2016-09-21','2016-12-31','Offre AE','A_L_ETUDE',9,1,495),(429,'','2016-09-21','2016-12-31','Offre AE','A_L_ETUDE',150,1,495),(430,'','2016-09-21','2016-12-31','Offre AE','A_L_ETUDE',151,1,495),(432,'Equipe de Christelle SNCF','2016-10-10','2016-12-31','Analyste d\'exploitation / Intégrateur','KO_DISPO',152,17,494),(436,'','2016-09-28','2016-12-31','PHP dispositif','KO_DISPO',623,35,494),(437,'','2016-09-28','2016-12-31','JEE','KO_DISPO',615,28,495),(438,'','2016-09-28','2016-12-31','JEE','KO_DISPO',615,42,495),(440,'','2016-10-18','2016-12-31','CDS SNCF / SOLARIS','A_L_ETUDE',626,17,499),(441,'','2016-09-28','2016-12-31','MAXIMO','A_L_ETUDE',632,17,494),(442,'','2016-09-28','2016-12-31','Weblogic','A_L_ETUDE',633,7,496),(443,'KO de Max Mobilité / Mission','2016-09-27','2016-12-31','MGEN / DBA','KO_DISPO',44,56,19),(444,'KO de Max Mobilité / Mission','2016-09-27','2016-12-31','MGEN / DBA','KO_DISPO',44,56,19),(445,'','2016-09-27','2016-12-31','MGEN DBA','KO_BESOIN',44,56,19),(448,'Attente amélioration situation actuellement en Arrêt maladie','2016-10-17','2016-12-31','Responsable d\'applications','KO_DISPO',393,35,499),(449,'Point équipe','2016-12-05','2016-12-31','CDS SNCF','KO_CV',627,17,499),(450,'','2016-12-12','2016-12-31','SNCF / Android Conception','A_L_ETUDE',631,17,494),(451,'','2016-12-12','2016-12-31','Mobilité / MAXIMO','ENTRETIEN_PLANIFIE',632,31,494),(452,'','2016-10-10','2016-12-31','Chef de Projet','ATTENTE_CLIENT',50,10,5),(453,'','2016-10-05','2016-12-31','Remplacement Renoult','KO_DISPO',152,38,19),(454,'','2016-10-10','2016-12-31','Présentation client','KO_DISPO',634,28,495),(456,'','2016-10-17','2016-12-31','Forfait','KO_DISPO',279,35,494),(457,'','2016-10-12','2016-12-31','Poste BI','KO_DISPO',15,35,494),(459,'','2016-10-12','2016-12-31','Swap avec Ludociv Lenglet','A_L_ETUDE',632,4,496),(460,'','2016-10-12','2016-12-31','DAMART / Proposition N3','A_L_ETUDE',610,1,495),(461,'','2016-10-13','2016-12-31','Forfait Devops','A_L_ETUDE',50,7,496),(462,'','2016-10-12','2016-12-31','Piste !!!!','A_L_ETUDE',52,31,494),(463,'','2016-10-12','2016-12-31','A regarder','A_L_ETUDE',52,7,496),(464,'','2016-10-12','2016-12-31','CA-TS swap STT','A_L_ETUDE',52,16,496),(468,'','2017-01-02','2017-04-04','DBA Back Up 2017','A_L_ETUDE',44,21,495),(469,'Ingénieur Réseaux','2016-10-21','2016-12-31','ITS Group rdv 26/10','KO_BESOIN',624,47,494),(470,'','2016-10-26','2016-12-31','Besoin Teradata : mais grille de prix !!!!','KO_CV',44,35,494),(471,'','2016-10-26','2016-12-31','Swap Anais','KO_BESOIN',10,7,496),(473,'','2016-10-26','2016-12-31','Safia Sidi Moussa','KO_DISPO',15,7,496),(474,'','2016-10-26','2016-12-31','THALES','KO_BESOIN',627,57,496),(477,'Demande du WF','2016-11-09','2016-12-31','DBA Oracle / My SQL / IR','KO_CV',44,56,19),(478,'','2016-11-14','2016-12-31','Réseaux Damart','ATTENTE_CLIENT',624,56,495),(479,'','2016-11-16','2016-12-31','DBA','KO_BESOIN',44,56,19),(480,'','2016-12-12','2016-12-31','Android','KO_CV',631,30,495),(481,'','2016-12-12','2016-12-31','Ingénieur JEE','CV_ENVOYE',631,29,495),(483,'','2016-12-12','2016-12-31','JEE','CV_ENVOYE',632,30,495),(484,'','2016-11-28','2016-12-31','ATF','KO_BESOIN',279,1,495),(485,'','2016-11-16','2016-12-31','ATF Chèque','KO_CV',279,54,496),(486,'','2016-11-23','2016-12-31','Chef de Projet (HUMANIS)','KO_BESOIN',279,55,496),(487,'','2017-01-02','2017-12-29','Push','ENTRETIEN_PLANIFIE',624,31,494),(488,'','2016-11-30','2017-05-27','PUSH','ATTENTE_CLIENT',624,35,494),(489,'','2017-01-02','2017-02-28','BI - Mission dans l\'EST','KO_DISPO',15,56,19),(490,'Attente réponse SG','2016-12-12','2016-12-31','Responsable d\'applications','KO_DISPO',393,35,494),(491,'','2017-01-02','2017-12-29','ORANGE SI STOCKAGE','A_L_ETUDE',396,35,499),(492,'Entretien','2016-12-05','2016-12-31','CDS SNCF','KO_CV',630,17,499),(493,'Voir GCM','2016-12-12','2017-12-31','Orange Responsable d’applications','KO_DISPO',635,35,499),(494,'','2017-01-09','2018-01-31','Poste ITIL remplacement de Marc.','KO_BESOIN',10,38,495),(496,'','2017-01-02','2017-12-31','Qualification / test','ATTENTE_CLIENT',279,31,494),(497,'','2017-01-02','2017-12-31','AMOA / CP Test','ATTENTE_CLIENT',279,28,495),(498,'','2017-01-02','2017-12-31','AMOA / TEST','ATTENTE_CLIENT',279,29,495),(499,'','2017-01-09','2017-12-31','Test / Recette','KO_CV',279,4,496),(500,'','2017-01-09','2017-12-31','TOURS - BI SAS SSIS BO Data Integrator.','KO_DISPO',15,56,19),(502,'','2017-01-09','2017-12-31','Grenoble LEAD TECH','KO_DISPO',15,56,19),(503,'','2017-01-09','2017-12-31','Chef de Projet','A_L_ETUDE',635,7,496),(504,'','2017-01-09','2017-12-31','Test / Recette','A_L_ETUDE',635,13,496),(505,'','2017-01-09','2017-12-31','Conception JEE','CV_ENVOYE',632,13,496),(506,'','2017-01-09','2017-12-31','JEE','CV_ENVOYE',636,31,494),(508,'','2017-01-02','2017-12-31','Chef de projet','KO_DISPO',15,4,496),(509,'','2017-01-02','2017-12-31','Chef de Projet','KO_DISPO',15,13,496),(510,'','2017-01-02','2017-03-06','RR 210215  BI Talent BDD Développement','KO_DISPO',15,56,19),(511,'','2017-01-02','2017-03-06','RR 210215  BI Talent BDD Développement','KO_DISPO',15,56,19),(512,'','2017-01-02','2017-12-31','DBA','A_L_ETUDE',44,29,495),(513,'','2017-01-02','2017-12-31','Coordinateur attente AO portail pré installation.','KO_BESOIN',10,17,499),(514,'','2017-01-02','2017-12-31','Mission IR MS','KO_DISPO',61,38,493),(515,'','2016-01-02','2017-12-31','2IL - Android Remplacement Bertrand MARZAIS','KO_BESOIN',631,17,499),(516,'','2017-01-02','2017-12-31','KENEOSOFT /  JEE / Développement','CV_ENVOYE',632,56,19),(517,'','2017-01-02','2017-12-31','SOA / Webmethods','A_L_ETUDE',637,28,495),(518,'','2016-12-14','2016-12-31','SOA / REST / TIBCO','A_L_ETUDE',637,1,495),(519,'','2016-12-19','2017-12-31','JEE / AngularJS Remplacement Quentin BAILLEUL.','ENTRETIEN_PLANIFIE',636,26,495),(520,'','2016-12-19','2016-12-31','Microsoft   N2/N3','A_L_ETUDE',627,23,495),(521,'','2016-12-15','2016-12-31','Coordinateur','CV_ENVOYE',10,21,495),(522,'','2017-01-02','2017-12-31','AUCHAN Linux','KO_DISPO',638,1,495),(523,'','2017-01-02','2017-12-31','AMOA /','ENTRETIEN_PLANIFIE',279,17,494),(524,'','2017-01-02','2017-12-31','CP AMOA','CV_ENVOYE',279,13,496),(525,'','2017-01-02','2017-12-31','Restos du coeur','A_L_ETUDE',61,56,495),(527,'','2017-02-01','2017-12-31','AUCHAN DPC CDS PROXIMITE','A_L_ETUDE',635,1,495),(528,'','2017-01-02','2017-12-31','KITS','KO_DISPO',379,38,495),(530,'Entretien planifié avec MARLON','2017-01-02','2017-12-31','Partie Linux remplacement STT équipe de Marlon','KO_DISPO',638,17,19),(531,'','2017-01-04','2017-12-31','Chef de Projet en appui au usine de Bouchain.','KO_CV',10,21,495),(532,'','2017-01-04','2017-12-31','Projet HOT','A_L_ETUDE',61,7,496),(533,'','2017-01-04','2017-12-31','Intégrateur','ENTRETIEN_PLANIFIE',630,17,494),(534,'','2017-01-04','2017-12-31','Push STT','KO_CV',630,47,19),(535,'','2017-01-04','2017-12-31','Architecte / CP Technique','KO_DISPO',154,29,495),(537,'','2017-01-04','2017-12-31','Développement JEE','KO_DISPO',101,35,494),(538,'','2017-01-04','2017-12-31','Développement JEE','KO_DISPO',101,35,494),(539,'','2017-01-04','2017-12-31','Recette / test / Développement WebServices','KO_DISPO',101,5,496),(540,'','2017-02-02','2017-12-31','Weblogic','A_L_ETUDE',633,7,496),(542,'','2017-01-04','2017-12-31','PUSH','KO_BESOIN',627,47,19),(543,'','2017-01-04','2017-12-31','Push','KO_CV',627,17,494),(544,'','2017-01-06','2017-12-31','Analyste D\'exploitation','ENTRETIEN_PLANIFIE',627,56,19),(545,'','2017-01-16','2017-12-31','Projet ROSE','KO_BESOIN',626,17,19),(547,'','2017-01-06','2017-12-31','ITIL','KO_DISPO',619,38,495),(548,'','2017-01-11','2017-12-31','PROJET CMI remplacement de Ghodbane Béchir','KO_DISPO',580,31,494),(549,'','2017-01-16','2017-12-31','Développement','CV_ENVOYE',631,13,496),(550,'','2017-01-11','2017-12-31','DBA','CV_ENVOYE',44,13,496),(551,'','2017-01-11','2017-12-31','Push','A_L_ETUDE',631,31,494),(552,'','2017-01-11','2017-12-31','Developpement','CV_ENVOYE',631,5,496),(553,'','2017-01-11','2017-12-31','Developpement','KO_DISPO',101,5,496),(554,'','2017-01-11','2017-12-31','Remplacement GHODBANE','KO_DISPO',101,31,494),(555,'','2017-01-11','2017-12-31','Weblogic','A_L_ETUDE',633,37,494),(556,'Attente retour SG','2017-01-11','2017-12-31','VSC','A_L_ETUDE',633,17,494),(557,'','2017-01-18','2017-12-31','DBA Remplacement d\'un STT','CV_ENVOYE',44,16,496),(558,'','2017-01-18','2017-12-31','AO / Digital AMOA / Projet','A_L_ETUDE',10,34,494),(559,'','2017-01-18','2017-12-31','CDS SNCF','ENTRETIEN_PLANIFIE',627,17,499),(560,'','2017-02-01','2017-12-31','Remplacement d\'un STT sur 2IL','A_L_ETUDE',631,17,494),(561,'','2017-01-18','2017-12-31','TERADATA Auchan qualification du besoin avec le client','A_L_ETUDE',626,1,495),(562,'','2017-01-18','2017-12-31','JEE / Joseph','A_L_ETUDE',615,35,494),(563,'','2017-01-18','2017-12-31','JEE','CV_ENVOYE',615,28,495);
/*!40000 ALTER TABLE `opportunite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsable_client`
--

DROP TABLE IF EXISTS `responsable_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsable_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `responsable_client_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsable_client`
--

LOCK TABLES `responsable_client` WRITE;
/*!40000 ALTER TABLE `responsable_client` DISABLE KEYS */;
INSERT INTO `responsable_client` VALUES (1,'pgrember.emmaustg@gmail.com','GREMBER','Philippe','',20),(2,'benjamin.jakubowski@atos.net','DSI','Dsi','',49),(3,'fpadieu@alteca.fr','PADIEU','Frédéric','',51),(4,'Dany.tetard@mrod.fr','TETARD','Dany','',57);
/*!40000 ALTER TABLE `responsable_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage`
--

DROP TABLE IF EXISTS `stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `collab` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collab` (`collab`),
  CONSTRAINT `stage_ibfk_1` FOREIGN KEY (`collab`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage`
--

LOCK TABLES `stage` WRITE;
/*!40000 ALTER TABLE `stage` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `token_id` int(11) NOT NULL AUTO_INCREMENT,
  `dasId` varchar(255) NOT NULL,
  `timeout` datetime DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `U_TOKEN_TOKEN` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `statut` varchar(20) NOT NULL,
  `collab_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `U_UTLSTUR_COLLAB_ID` (`collab_id`),
  CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`collab_id`) REFERENCES `collab` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'18bd56017275d1d3aad29b30dc559265','UTILISATEUR','ACTIF',2),(2,'18bd56017275d1d3aad29b30dc559265','ADMINISTRATEUR','ACTIF',1),(4,'d80a2ad6c785b863b6b8618dd45acfa4','ADMINISTRATEUR','ACTIF',493),(5,'d80a2ad6c785b863b6b8618dd45acfa4','UTILISATEUR','INACTIF',17),(6,'18bd56017275d1d3aad29b30dc559265','UTILISATEUR','ACTIF',494),(8,'af2fc6696430a9fac52a5d32fe791b01','UTILISATEUR','ACTIF',495),(9,'d80a2ad6c785b863b6b8618dd45acfa4','UTILISATEUR','ACTIF',496),(10,'af2fc6696430a9fac52a5d32fe791b01','UTILISATEUR','ACTIF',499),(13,'18bd56017275d1d3aad29b30dc559265','ADMINISTRATEUR','ACTIF',19),(14,'e4321de95a0629561fbff6fb29fdf7ca','UTILISATEUR','ACTIF',167),(15,'e4321de95a0629561fbff6fb29fdf7ca','UTILISATEUR','ACTIF',639);
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-19 13:32:31
