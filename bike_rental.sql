-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bike_rental
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bicycles`
--

DROP TABLE IF EXISTS `bicycles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bicycles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `price_per_hour` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicycles`
--

LOCK TABLES `bicycles` WRITE;
/*!40000 ALTER TABLE `bicycles` DISABLE KEYS */;
INSERT INTO `bicycles` VALUES (21,'Trek Domane','Road',1,25.00),(22,'Cannondale Synapse','Road',1,24.00),(23,'Specialized Roubaix','Road',1,28.00),(24,'Giant Defy','Road',1,22.50),(25,'Bianchi Infinito','Road',1,30.00),(26,'Trek Marlin','Mountain',1,18.00),(27,'Giant Talon','Mountain',1,19.50),(28,'Specialized Rockhopper','Mountain',1,20.00),(29,'Cannondale Trail','Mountain',1,21.00),(30,'Santa Cruz Chameleon','Mountain',1,26.00),(31,'Schwinn Discover','Hybrid',1,15.00),(32,'Cannondale Quick','Hybrid',1,16.50),(33,'Trek FX','Hybrid',1,17.00),(34,'Giant Escape','Hybrid',1,16.00),(35,'Specialized Sirrus','Hybrid',1,18.00),(36,'RadCity','Electric',1,35.00),(37,'Trek Verve+','Electric',1,36.50),(38,'Specialized Turbo Vado','Electric',1,40.00),(39,'Cannondale Adventure Neo','Electric',1,38.00),(40,'RadRover','Electric',1,42.00),(41,'Tern GSD','Cargo',1,45.00),(42,'Yuba Mundo','Cargo',1,44.00),(43,'Urban Arrow','Cargo',1,48.00),(44,'Babboe Big','Cargo',1,50.00),(45,'Riese & Müller Load','Cargo',1,55.00),(46,'Brompton','Folding',1,30.00),(47,'Tern Link','Folding',1,32.00),(48,'Dahon Mariner','Folding',1,28.00),(49,'Birdy','Folding',1,35.00),(50,'Strida','Folding',1,29.00),(55,'testtest','test',1,123.00);
/*!40000 ALTER TABLE `bicycles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bicycle_id` int(11) NOT NULL,
  `rental_start` date NOT NULL,
  `rental_end` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `bicycle_id` (`bicycle_id`),
  CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`bicycle_id`) REFERENCES `bicycles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` VALUES (9,1,21,'2024-08-01','2024-08-01'),(10,2,22,'2024-08-01','2024-08-01'),(11,3,23,'2024-08-02','2024-08-02'),(12,9,24,'2024-08-03','2024-08-03'),(13,10,25,'2024-08-04','2024-08-04'),(14,11,26,'2024-08-05','2024-08-05'),(15,12,27,'2024-08-05','2024-08-05'),(16,13,28,'2024-08-06','2024-08-06'),(17,14,29,'2024-08-07','2024-08-07'),(18,15,30,'2024-08-08','2024-08-08'),(19,16,31,'2024-08-09','2024-08-09'),(20,17,32,'2024-08-10','2024-08-10'),(21,18,33,'2024-08-11','2024-08-11'),(22,19,34,'2024-08-12','2024-08-12'),(23,20,35,'2024-08-13','2024-08-13'),(24,21,36,'2024-08-14','2024-08-14'),(25,22,37,'2024-08-15','2024-08-15'),(26,23,38,'2024-08-16','2024-08-16'),(27,24,39,'2024-08-17','2024-08-17'),(28,25,40,'2024-08-18','2024-08-18'),(29,26,41,'2024-08-19','2024-08-19'),(30,27,42,'2024-08-20','2024-08-20'),(31,28,43,'2024-08-21','2024-08-21'),(32,29,44,'2024-08-22','2024-08-22'),(33,1,45,'2024-08-23','2024-08-23'),(34,2,46,'2024-08-24','2024-08-24'),(35,3,47,'2024-08-25','2024-08-25'),(36,9,48,'2024-08-26','2024-08-26'),(37,10,49,'2024-08-27','2024-08-27'),(38,11,50,'2024-08-28','2024-08-28'),(39,2,50,'2024-09-01','2024-09-06'),(40,2,31,'2024-09-02','2024-09-11'),(42,1,21,'2023-04-23','2023-04-25'),(43,2,39,'2024-09-02','2024-09-04'),(45,1,36,'2024-10-02','2024-10-04'),(46,2,50,'2024-09-04','2024-10-03');
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('Admin','User') NOT NULL DEFAULT 'User',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@gmail.com','admin','Admin'),(2,'Ivan Pesic','ivan@gmail.com','ivan','User'),(3,'Snezana Nastic','snezana@gmail.com','snezana','User'),(9,'Aleksa Petrovic','aleksa@gmail.com','aleksa','User'),(10,'Marko Nikolic','marko@gmail.com','marko','User'),(11,'Jelena Markovic','jelena@gmail.com','jelena','User'),(12,'Milos Jovanovic','milos@gmail.com','milos','User'),(13,'Ana Petrovic','ana@gmail.com','ana','User'),(14,'Nikola Ilic','nikola@gmail.com','nikola','User'),(15,'Ivana Milosevic','ivana@gmail.com','ivana','User'),(16,'Dejan Stojanovic','dejan@gmail.com','dejan','User'),(17,'Sanja Kostic','sanja@gmail.com','sanja','User'),(18,'Milan Rakic','milan@gmail.com','milan','User'),(19,'Dragana Pavlovic','dragana@gmail.com','dragana','User'),(20,'Petar Lukic','petar@gmail.com','petar','User'),(21,'Milica Jankovic','milica@gmail.com','milica','User'),(22,'Vladimir Petrovic','vladimir@gmail.com','vladimir','User'),(23,'Suzana Jovanovic','suzana@gmail.com','suzana','User'),(24,'Nenad Stankovic','nenad@gmail.com','nenad','User'),(25,'Tijana Ivanovic','tijana@gmail.com','tijana','User'),(26,'Stefan Milosevic','stefan@gmail.com','stefan','User'),(27,'Jovana Petrovic','jovana@gmail.com','jovana','User'),(28,'Bojan Kostic','bojan@gmail.com','bojan','User'),(29,'Dragana Markovic','dragana2@gmail.com','dragana','User'),(30,'Test User','test@gmail.com','samplepass','User'),(31,'New User','newuser@example.com','password123','User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 16:10:08
