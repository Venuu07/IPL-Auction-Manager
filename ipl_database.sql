-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: ipl
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_name` varchar(100) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (27,'DC','Rohith Sharma',25.00),(28,'CSK','Nitish Rana',10.50),(29,'SRH','B Muzarabani',5.00),(30,'LSG','Chris Gayle',21.00),(31,'KKR','Shubman Gill',21.00),(32,'RR','Ish Sodhi (RAL Spinner)',6.50),(33,'RR','DJ Bravo (All Rounder)',18.50),(34,'CSK','T Bavuma (R H Batsman)',5.50),(35,'RCB','J Unadkat (L A M fast Bowler)',11.50),(36,'PBKS','R Gaikwad (R H Batsman)',16.00),(37,'SRH','Rishabh pant (w k)',25.00),(38,'CSK','Mayank Yadav (R A F Bowler)',10.50),(39,'RR','SKY (R H Batsman)',23.50),(40,'GT','Axar Patel (All rounder)',18.00),(41,'DC','Abishek porel (w k)',10.50),(42,'CSK','Naveen UL Haq (RAMF Bowler)',9.50),(43,'CSK','Harry Brook (RH Batsman)',6.50),(44,'CSK','Lalit Yadav (All rounder)',5.00),(45,'SRH','Najibullah zadran (LH batsman)',5.00),(46,'MI','Virat Kohli(R H Batsman)',25.00),(47,'KKR','B Thampi (RAM Fast Bowler)',3.50),(48,'LSG','A Markram (R H Batsman)',11.00),(49,'CSK','Nicholas Pooran (wk)',20.50),(50,'KKR','Karn Sharma (Leg Spinner)',10.50),(51,'KKR','Rahmanullah Gurbaz(wk)',15.00),(52,'RCB','H.Pandya (All Rounder)',22.00),(53,'DC','Alex Carey (LH Batsman)',6.00),(54,'RCB','Yash Dull (RH Batsman)',6.00),(55,'PBKS','T Shamsi (LA Spinner)',9.00),(56,'GT','Shikar Dhawan (LH Batsman)',18.00),(57,'SRH','Umesh Yadav (RAF Bowler)',11.00),(58,'MI','Aaron Jones (RH Batsman)',5.00),(59,'PBKS','Sandeep Sharma (RAMF Bowler)',13.00),(60,'DC','Yuvaraj Singh(All Rounder)',16.50),(61,'KKR','Cheteshwar pujara(RH Batsman)',2.50),(62,'MI','Y Chahal(RAL Spinner)',14.50),(63,'LSG','Shivam Dube(All Rounder)',13.50),(64,'DC','S. Thakur(RAMF Bowler)',11.50),(65,'KKR','CD Grandhome (All rounder)',9.50),(66,'DC','S jayasurya (LH Batsman)',5.00),(67,'LSG','Shivam Mavi (RAMF Bowler)',7.00),(68,'GT','S Rizvi (RH Batsman)',6.00),(69,'SRH','Moeen Ali (All rounder)',8.50),(70,'PBKS','T Boult (LAF Bowler)',16.50),(71,'MI','H Klaasen (wk)',19.00),(72,'DC','KM Asif (RAMF Bowler)',1.60),(73,'MI','M Nabi (All rounder)',7.50),(74,'GT','Karthik Tyagi (RAF Bowler)',5.50),(75,'SRH','Murali Vijay (RH Batsman)',7.50),(76,'MI','Tom Curran (RAMF Bowler)',4.00),(77,'GT','T Natarajan (LAF Bowler)',10.00),(78,'RR','G.Phillips (All Rounder)',7.00),(79,'SRH','Umran Malik (RAF Bowler)',4.50),(80,'PBKS','FAF DU PLESSIS (RH Batsman)',12.50),(81,'RCB','Varun Chakravarthy (RAL Spinner)',11.00),(82,'CSK','Avesh Khan (RAF Bowler)',5.50),(83,'PBKS','V Iyer (All Rounder)',9.00),(84,'KKR','Bhuvanesh Kumar(RAMF Bowler)',12.50),(85,'GT','A Finch (RH Batsman)',10.00),(86,'SRH','R Tripathi (RH Batsman)',8.00),(87,'SRH','Shahbaz Ahmed (All rounder)',5.00),(88,'SRH','Abhishek Sharma (LH Batsman)',10.00),(89,'KKR','Shreyas Iyer (RH Batsman)',12.00),(90,'DC','Mohammad Shami (RHF Bowler)',9.50),(91,'RR','T.Head (LH Batsman)',10.00),(92,'SRH','Kiran Bolart    (All rounder)',7.50),(93,'RCB','Mayank Agarwal (RH Batsman)',6.50),(94,'RCB','Mohith Sharma (RHF Bowler)',7.00),(95,'PBKS','Fakar Zaman (LH Batsman)',4.00),(96,'LSG','MS DHONI (wk)',18.00),(97,'GT','Fazal Farooki (LAMF Bowler)',2.50),(98,'MI','Suresh Raina (All Rounder)',9.50),(99,'LSG','David Warner (LH Batsman)',10.50),(100,'CSK','Rahul Chahar (LAF Bowler)',8.50),(101,'DC','Zassen Roy (RH Batsman)',3.00),(102,'DC','Pithchel Satner (All rounder)',5.50),(103,'RCB','Yashaswi Jaiswal (LH Batsman)',10.00),(104,'RR','Deepak Huda (All Rounder)',6.50),(105,'KKR','Steve Smith (RH Batsman)',2.50),(106,'LSG','Rajapaksha (RAM Bowler)',0.50),(107,'MI','Tilak Varma (LH Batsman)',7.00),(108,'PBKS','Arshal Patel (RAMF Bowler)',5.50),(109,'GT','Josh Hinglish (wk)',3.50),(110,'DC','Pathirana (RAF Bowler)',3.00),(111,'RR','Nehar Wathera (LH Batsman)',4.50),(112,'GT','Amith Mishra (RAL Bowler)',5.50),(113,'RR','K Nagarkoti (RAF Bowler)',1.80),(114,'KKR','Rahul Tewatia (All Rounder)',2.50),(115,'GT','Rajat Patidar(RH Batsman)',7.50),(116,'MI','Rasikh Salam (RAF Bowler)',1.20),(117,'DC','Sarfaraz Khan (RH Batsman)',2.50),(118,'CSK','Ravindra Jadeja (All Rounder)',8.00),(119,'LSG','Mark Wood (RAF Bowler)',1.80),(120,'CSK','Ajinkya Rahane (RH Batsman)',5.00),(121,'RCB','Dinesh Karthik (wk)',10.00),(122,'GT','Ramandeep Singh (All Rounder)',5.00),(123,'RR','Jasprit Bumrah (RAF Bowler)',6.00),(124,'PBKS','Jitesh Sharma (wk)',8.50),(125,'LSG','Arjun Tendulkar (LAMF Bowler)',0.60),(126,'RCB','Cameron Green (All Rounder)',3.50),(127,'RR','Prithvi Shaw (RH Batsman)',2.00),(128,'LSG','Ravi Bishnoi (RALB Bowler)',3.50),(129,'RR','Dhruv Jurel (wk)',6.00),(130,'MI','Haeshit Rana (RAF Bowler)',3.50),(131,'RCB','Ravichandran Ashwin (All Rounder)',4.50),(132,'RR','Goutam Gambir (LH Batsman)',5.00),(133,'RCB','Deepak Chahar (RAFM Bowler)',5.00),(135,'CSK','W Sundar (All Rounder)',4.00),(136,'SRH','Navdeep Saini (RAF Bowler)',2.00),(137,'RCB','Dewald Brevis (RH Batsman)',1.00),(138,'KKR','Chetan Sakariya (LAMF Bowler)',1.40),(139,'PBKS','Riyan Parag (All Rounder)',4.00),(140,'CSK','Hasim Amla (RH Batsmen)',0.50),(141,'LSG','Mark Adair (RAF Bowler)',1.00),(142,'MI','Harpreet Brar (All Rounder)',2.00),(143,'MI','Ben Duckett',1.80);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-21 10:29:13
