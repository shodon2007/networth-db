-- MariaDB dump 10.19  Distrib 10.9.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: networth
-- ------------------------------------------------------
-- Server version	10.9.7-MariaDB-1:10.9.7+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `file`
--

CREATE DATABASE networth;
USE networth

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `type` varchar(100) NOT NULL,
  `file_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `file_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `friend_id` (`friend_id`),
  CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`friend_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `likes` mediumint(9) NOT NULL,
  `dislikes` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` smallint(6) DEFAULT NULL,
  `activationLink` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(1000) DEFAULT NULL,
  `isActivated` tinyint(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `code` int(6) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(52,'ZXC','Baron','$2b$04$d85sxjrY33SEQXwq0tyYf.TzGxxbLStR0abS4nhWNWzqwhfNWQkS2','alwx202@mail.ru',NULL,'00143f5a-d799-4573-bf31-857c1f95b33a','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsd3gyMDJAbWFpbC5ydSIsIm5hbWUiOiJaWEMiLCJzdXJuYW1lIjoiQmFyb24iLCJpZCI6NTIsImlzQWN0aXZhdGVkIjowLCJpYXQiOjE3MTQ4MzIyOTUsImV4cCI6MTcxNzQyNDI5NX0.E1YZaJbZxZTptIokJQlQcBfMz4b0CMW30iZYRmUMCmQ',0,'default.png',NULL,'public'),
(53,'ZXC','ZXC','$2b$04$Z.WyrAQ1/i6zDwEqbgZupuOk.WbpwhyMSZMjETeYHYCg/tQBHPMXy','alwx218@maul.ru',NULL,'885540a2-ce57-4880-a1d0-1f15eb86a9ab',NULL,0,'default.png',NULL,'public'),
(54,'ZXC','ZXC','$2b$04$yaTw8of0RWeys/MGWg1yWuD5BWOzNLHp54NlQ2qzqnCMtrhzBGfsy','alwx2021@maul.ru',NULL,'495ccb71-c73c-45b0-a715-7f792c796dc7',NULL,0,'default.png',NULL,'public'),
(55,'ZXC','ZXC','$2b$04$Aoz4J3s/R3F1A.BBrXOY5ee52FqC14qDs9K.9UgXEC5hOcK0ynMCa','brawl218@maul.ru',NULL,'3b0c87fd-3425-4423-a887-9389c4fa4ce3',NULL,0,'default.png',NULL,'public'),
(56,'ZXC','Man','$2b$04$N8fa9LN05FJQ1xfrmgq10OUsJjUPgQ3V06/PUsr9sDIxOJCEKS0s.','brawl218@mail.ru',NULL,'2f404462-07d6-4423-a881-b05147c22671','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJyYXdsMjE4QG1haWwucnUiLCJuYW1lIjoiWlhDIiwic3VybmFtZSI6Ik1hbiIsImlkIjo1NiwiaXNBY3RpdmF0ZWQiOjAsImlhdCI6MTcxNTAyMDA0MCwiZXhwIjoxNzE3NjEyMDQwfQ.VX6UWJlKbXr1UViSlvoY0e-EDiathUGbLNKOc92_OfY',1,'default.png',NULL,'public'),
(57,'editinlocal\r\n','Asrorov2','$2b$04$7WWTkofg0V3kvSyNZzHei.XDXDQIcdGzka8HKmIwlWR05CfGLBGzK','me@shodon.ru',NULL,'9fd10693-cca4-4362-96a0-69ea1248f0a5','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1lQHNob2Rvbi5ydSIsIm5hbWUiOiJlZGl0aW5sb2NhbFxyXG4iLCJzdXJuYW1lIjoiQXNyb3JvdjIiLCJpZCI6NTcsImlzQWN0aXZhdGVkIjoxLCJhdmF0YXIiOiJodHRwczovL25ldHdvcnRoLnNob2Rvbi5ydS9hcGkvZmlsZS9hdmF0YXIvOGU4YWNiMjUtZjdlMC00NzJkLWJkNGUtYjYwOWY5ODJkZjQ4LmpwZyIsImNvZGUiOm51bGwsImlhdCI6MTcyMTY1MDg0NywiZXhwIjoxNzI0MjQyODQ3fQ.ltFIIOcD8u7Kdi6AL2XeORwv1Ds9LUsOEalD1MwQ8xA',1,'8e8acb25-f7e0-472d-bd4e-b609f982df48.jpg',NULL,'public'),
(59,'ZXC','man','$2b$04$cLVG7Z6.cVukpVfYfKSRB.cWPaYBPuL/jomEUAjO8wTILYZUfD8VK','alwx2021@mail.ru',NULL,'62728613-2b89-4be1-a098-80802cb5a714','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsd3gyMDIxQG1haWwucnUiLCJuYW1lIjoiWlhDIiwic3VybmFtZSI6Im1hbiIsImlkIjo1OSwiaXNBY3RpdmF0ZWQiOjEsImlhdCI6MTcxNTM1NjUyNSwiZXhwIjoxNzE3OTQ4NTI1fQ.KTUTAePHmkFCo919vMaHHbJ0lgCGGwoInUWLNTalQCs',1,'default.png',NULL,'public'),
(60,'sfsdf','fdsfsdf','$2b$04$llb5kwN9Tg4mnMu3rnmRK.OiC0mofU2aU6mPX37xfxcjcvPb0F2xC','asrorovirbis2@gmail.com',NULL,'5cb6e5fc-b568-404c-8848-d7a6d262e53b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpczJAZ21haWwuY29tIiwibmFtZSI6InNmc2RmIiwic3VybmFtZSI6ImZkc2ZzZGYiLCJpZCI6NjAsImlzQWN0aXZhdGVkIjowLCJpYXQiOjE3MTUyNjE5MjUsImV4cCI6MTcxNzg1MzkyNX0.QbLu_1foaqeXfk_gKI2nL_TCnX1FKbFl1mqWyWvjApU',0,'default.png',NULL,'public'),
(61,'ZXC','man','$2b$04$.4m4x3gxG5OdC4GOehQFK.6abg3T1n0bN3.7kQbzrW1EgsOzkaS6.','alwxl218@mail.ru',NULL,'36213cd2-fc7c-4473-9f4a-980943d20bda',NULL,0,NULL,NULL,'public'),
(62,'ZXC','man','$2b$04$ji4As4SU.rHgiLxolipap.KTlNit8zx47fSJoRgnq0a4aTX6dhBrK','alwx218@mail.ru',NULL,'f84c8c0b-80d0-4b55-8733-bb911f9e824d','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFsd3gyMThAbWFpbC5ydSIsIm5hbWUiOiJaWEMiLCJzdXJuYW1lIjoibWFuIiwiaWQiOjYyLCJpc0FjdGl2YXRlZCI6MCwiaWF0IjoxNzE2MzAzODc5LCJleHAiOjE3MTg4OTU4Nzl9.xz-EnrXPbs8QYy5HhonE6gukaDrCK0w-Vv0DW4ARXck',0,NULL,NULL,'public'),
(63,'ZXC','man','$2b$04$LEMUGiR.0PVcbNLzlstW4OjsIEUlnwbKGMM4580zc5rcvImKF/O8a','Klara218@mail.ru',NULL,'5797d6c3-f045-4207-8666-697032cdad5b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IktsYXJhMjE4QG1haWwucnUiLCJuYW1lIjoiWlhDIiwic3VybmFtZSI6Im1hbiIsImlkIjo2MywiaXNBY3RpdmF0ZWQiOjAsImlhdCI6MTcxNjQ2NTU3MSwiZXhwIjoxNzE5MDU3NTcxfQ.1t5h-NEZdkJrkl06EonzyKq7o5xnyJ_9PWNKfhmtzbY',0,NULL,NULL,'public'),
(64,'ZXC','man','$2b$04$Lq1tNAK2bVEpIQbu/T4R0OvXg1l8AyeQ8aa1Uj31rxKq.8VX4Ejk6','lexaonetwoone@maul.ru',NULL,'c03e2ac2-bd30-4cb9-8555-c22391522232',NULL,0,NULL,NULL,'public'),
(65,'ZXC','Baron','$2b$04$1kzcfvDO32sXZDUMuydESevbhtd3G0k4lM8FZNBk3aUord.qsgJ2K','ithacker102@mail.ru',NULL,'51bf833b-4dc4-4937-b756-c23d1b1006d0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Iml0aGFja2VyMTAyQG1haWwucnUiLCJuYW1lIjoiWlhDIiwic3VybmFtZSI6Im1hbiIsImlkIjo2NSwiaXNBY3RpdmF0ZWQiOjAsImF2YXRhciI6bnVsbCwiY29kZSI6bnVsbCwiaWF0IjoxNzE3MzE5MDc1LCJleHAiOjE3MTk5MTEwNzV9.bNSsCArCKfw-m37ExLC7Ijbl52gMu5-JLQQDBVBnwK8',0,NULL,NULL,'public'),
(67,'fsdfsdaf','sdfasdfsdf','$2b$04$hM4/qw/RiZqUrH3W8pY6dOzX1Mdqzs597zyepNPhZs4KBjAvRMaSG','asrorovirbis232132@gmail.com',NULL,'104db2dd-007d-4f4b-bd42-00b3fefb1d33','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpczIzMjEzMkBnbWFpbC5jb20iLCJuYW1lIjoiZnNkZnNkYWYiLCJzdXJuYW1lIjoic2RmYXNkZnNkZiIsImlkIjo2NywiaXNBY3RpdmF0ZWQiOjAsImF2YXRhciI6bnVsbCwiY29kZSI6bnVsbCwiaWF0IjoxNzE3MzkyNzAxLCJleHAiOjE3MTk5ODQ3MDF9.WGklEyNRAK-Z98R12TTp7tquWYlHiL-jmhFcSFXAovw',0,NULL,NULL,'public'),
(68,'fsdfsdaf','sdfasdfsdf','$2b$04$/dkypuzzlUJuvVFC/V2PF.ndew0Hi1CRP.RlAejbTS9YcgYxEdlGm','asrorovirbis2321322@gmail.com',NULL,'d384d786-54aa-4397-b2d9-96cfed8c4fa0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpczIzMjEzMjJAZ21haWwuY29tIiwibmFtZSI6ImZzZGZzZGFmIiwic3VybmFtZSI6InNkZmFzZGZzZGYiLCJpZCI6NjgsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcxNzM5MjczNSwiZXhwIjoxNzE5OTg0NzM1fQ.1mYJKjhprZoH8Jp1_YsVDg2xDumIGZI-GaiAWd4cm6I',0,NULL,NULL,'public'),
(69,'dfasf','sdfsdf','$2b$04$qdzYqAL/2Oq48J9eB7vhmeqkRQx4ncgQTsau/LTHBrXxkysmK8ppq','dfsdfdsf@mail.ru',NULL,'f221f6bb-5f0e-4094-80de-cd2ddd7d396f',NULL,0,NULL,NULL,'public'),
(70,'dfasf','sdfsdf','$2b$04$ecYcbthuQhXlnWZpNVUov.RXWBuQhA8HhmfIlys6vu7pBV3rZx4m6','work@mail.ru',NULL,'c9b227c4-0454-433a-b67d-cc4274a58736','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IndvcmtAbWFpbC5ydSIsIm5hbWUiOiJkZmFzZiIsInN1cm5hbWUiOiJzZGZzZGYiLCJpZCI6NzAsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcxNzM5Mjc3MCwiZXhwIjoxNzE5OTg0NzcwfQ.f4CC7QzCF-U2Py826TVhJZKRww7o6FCucQOQFS_FrUI',0,NULL,NULL,'public'),
(71,'dsfadsf','dfsfdsf','$2b$04$GFzcOOhPTlKLYTp8lZ52guLuimfbeLgfxBi1PZYwDEzmeyGV9DCfG','shodon2007@gmail.com',NULL,'429e2655-f6b8-412f-8091-806d54cd2b0b','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNob2RvbjIwMDdAZ21haWwuY29tIiwibmFtZSI6ImRzZmFkc2YiLCJzdXJuYW1lIjoiZGZzZmRzZiIsImlkIjo3MSwiaXNBY3RpdmF0ZWQiOjAsImF2YXRhciI6bnVsbCwiY29kZSI6bnVsbCwiaWF0IjoxNzE3MzkyODYxLCJleHAiOjE3MTk5ODQ4NjF9.voXBPC_kSaTPvSegPa0swo_YsyQjJ3asop0mxlX_J2A',0,NULL,NULL,'public'),
(72,'dsfas','fdsfdsf','$2b$04$ZuGdykC0WmK6wgUz0sdpbe9zbR90OXYNk6OGd.O0l7zInLqPiPTr2','sdfsdfds@mail.ru',NULL,'153d090e-a004-4b46-84ac-babee8d19379',NULL,0,NULL,NULL,'public'),
(73,'dsfas','fdsfdsf','$2b$04$xXu1lbWdazOcenTK2Dn6TutfQcko/ZiTN5N8uwHZILIxHj84RG7Ue','sdfsdfdsd@mail.ru',NULL,'38894ebb-41de-4129-a431-4a1c794327c0',NULL,0,NULL,NULL,'public'),
(74,'dsfas','fdsfdsf','$2b$04$/98RNO9FtBwKFBL8mYPvreu11w2HrzBKyFM.ubwGidwwimf1e0h8i','sardorabdullaev1810@gmail.com',NULL,'c0266146-95bd-487a-8509-4b75477059bb','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhcmRvcmFiZHVsbGFldjE4MTBAZ21haWwuY29tIiwibmFtZSI6ImRzZmFzIiwic3VybmFtZSI6ImZkc2Zkc2YiLCJpZCI6NzQsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcxNzM5MzAxNCwiZXhwIjoxNzE5OTg1MDE0fQ.ineFonjC9W4I8LhjzAyYQsFASoRer2XVUtym6R08sSE',0,NULL,NULL,'public'),
(75,'dafsdf','sdfdsf','$2b$04$1ZD/xaRIBiJrBdnraYyG9uVVP0h06UKzYAPNeM4telEi9Osdji8xC','test@mail.ru',NULL,'fd0d8c85-7a7a-4c9d-85ff-4b9e27d3d105','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRlc3RAbWFpbC5ydSIsIm5hbWUiOiJkYWZzZGYiLCJzdXJuYW1lIjoic2RmZHNmIiwiaWQiOjc1LCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjpudWxsLCJjb2RlIjpudWxsLCJpYXQiOjE3MTc0MTY5NzYsImV4cCI6MTcyMDAwODk3Nn0.0eTzzJxAyvOQLJhSgUYKYPxTDYqt120OkIvgmKAAJtQ',0,NULL,NULL,'public'),
(76,'dfsf','dsfsdaf','$2b$04$.0G/MTo4vE1uc9/XYe7Q9.m7nHNU3gk6c/auypFYOLvCnLwNKD7Ty','school216@gmail.com',NULL,'a656b881-cd4c-4268-b9e4-050c6305a2e6','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNjaG9vbDIxNkBnbWFpbC5jb20iLCJuYW1lIjoiZGZzZiIsInN1cm5hbWUiOiJkc2ZzZGFmIiwiaWQiOjc2LCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjpudWxsLCJjb2RlIjpudWxsLCJpYXQiOjE3MTc0MTcwMzEsImV4cCI6MTcyMDAwOTAzMX0.4SzjlClFikpdOk4hZ917xORwTjlPecsnYolPObaL6fY',0,NULL,NULL,'public'),
(77,'sdfdsaf','sdffsf','$2b$04$CJYNhGbPaDXApxtwVpcOJucCx.WtXQsUSrSqH0y9Llic7IE.NwT62','speed2007@gmail.com',NULL,'52c18ee6-fba9-4429-a922-48a9e5b55120','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNwZWVkMjAwN0BnbWFpbC5jb20iLCJuYW1lIjoic2RmZHNhZiIsInN1cm5hbWUiOiJzZGZmc2YiLCJpZCI6NzcsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcxNzQxNzA1NiwiZXhwIjoxNzIwMDA5MDU2fQ.ypLRDtylYPy8H_eZc8Aso21Ca-ydd42IKanxU0YWonk',0,NULL,NULL,'public'),
(78,'fdsfasdfs','sdfsdff','$2b$04$uILntNohmFCgv28vKUu1J.1m1Z8B6hZprurCZXwv4YGWLT7n9zJwK','bro2007@gmail.com',NULL,'fec1632e-7518-406d-95e4-821d98e5e9bf','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJybzIwMDdAZ21haWwuY29tIiwibmFtZSI6ImZkc2Zhc2RmcyIsInN1cm5hbWUiOiJzZGZzZGZmIiwiaWQiOjc4LCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjpudWxsLCJjb2RlIjpudWxsLCJpYXQiOjE3MTc0MTcxNzMsImV4cCI6MTcyMDAwOTE3M30.r9hWCCWsQPpPbv8gK3_nhqi7IilGua7gSYX-x5BgNIc',0,NULL,NULL,'public'),
(101,'ssdfsd','fsdfsd','$2b$04$cDlTLrJGE3dQWxb/DFa8jezdUX3xMOioe4OQXMkNx3suBYnm3xRM6','sardor@gmail.com',NULL,'048cbf7a-77da-4041-aa95-200075b82df7','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhcmRvckBnbWFpbC5jb20iLCJuYW1lIjoic3NkZnNkIiwic3VybmFtZSI6ImZzZGZzZCIsImlkIjoxMDEsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcxOTM3NzUxMCwiZXhwIjoxNzIxOTY5NTEwfQ.URfiKKqzLGWJklUg77GrfnyKdB0NGIQiEJpTGbLoi3g',0,NULL,NULL,'public'),
(120,'abc12dsfdf','shodon2007','$2b$04$KhTGL4kLRrg3aSXfegs61uZIQwhJ.sai7FuWVFp5JR9UJLKZ.XmF.','work@shodon.ru',NULL,'157f9dda-bd9c-418a-96ec-a5e6b33941f2','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6IndvcmtAc2hvZG9uLnJ1IiwibmFtZSI6ImFiYzEyIiwic3VybmFtZSI6InNob2RvbjIwMDciLCJpZCI6MTIwLCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjoiaHR0cHM6Ly9uZXR3b3J0aC5zaG9kb24ucnUvYXBpL2ZpbGUvYXZhdGFyLzcyYWQ4ZDE2LWQ2MGEtNGQ3NC1hMzdiLWM5OTU2OWQ5MmM0MC5qcGciLCJjb2RlIjpudWxsLCJpYXQiOjE3MjEzNzU3MTgsImV4cCI6MTcyMzk2NzcxOH0.AK8UussIZq1fEVkME8IQ1vnKXwz1p5MuB4jwBh8IHYU',0,'72ad8d16-d60a-4d74-a37b-c99569d92c40.jpg',NULL,'public'),
(121,'sdfsd','fsdfsdf','$2b$04$2nvnov9eOL0aujt48AVvje6EsdGzlG3YwZ0KK0KYmOuItQHZx65/a','asdf@gmail.com',NULL,'4df9dd04-a015-4d71-80ea-8e6a57c5683e','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzZGZAZ21haWwuY29tIiwibmFtZSI6InNkZnNkIiwic3VybmFtZSI6ImZzZGZzZGYiLCJpZCI6MTIxLCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjpudWxsLCJjb2RlIjpudWxsLCJpYXQiOjE3MjExMjMxMjEsImV4cCI6MTcyMzcxNTEyMX0.nXfd2l7H-iWhW3LgF9jRPuBydHG6uahZjhPsOqunKtM',0,NULL,NULL,'public'),
(122,'shodon','asrorov','$2b$04$mB9hpV320kld7cQ5ScApeOAovtXSIZI.ZeBxzMjCzEyUXNMk.nnTa','asrorovirbis@gmail.com',NULL,'cca88aa9-c2af-46f7-ace0-05443cdd56c0','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpc0BnbWFpbC5jb20iLCJuYW1lIjoic2hvZG9uIiwic3VybmFtZSI6ImFzcm9yb3YiLCJpZCI6MTIyLCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjpudWxsLCJjb2RlIjpudWxsLCJpYXQiOjE3MjExODU2NTcsImV4cCI6MTcyMzc3NzY1N30.BzWQv3vgcBZGpN6ZTv9IvYylhtbAhmNr40M9PbpdTD0',0,NULL,NULL,NULL),
(123,'asefesfsfasfsdfasdfs','dfsdfsssdfsdfsfd','$2b$04$I1BKLgOq8U49tgQE77UaJuEmpOaHnN3WOZuh0ULiGfSqJLjYOIBC6','asrorovirbis3@gmail.com',NULL,'e5c17f9b-bacf-49c7-a709-8dcb4abfdf25','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpczNAZ21haWwuY29tIiwibmFtZSI6ImFzZWZlc2ZzZiIsInN1cm5hbWUiOiJkZnNkZnNzIiwiaWQiOjEyMywiaXNBY3RpdmF0ZWQiOjAsImF2YXRhciI6bnVsbCwiY29kZSI6bnVsbCwiaWF0IjoxNzIxMTkwNjg0LCJleHAiOjE3MjM3ODI2ODR9.x3IBm1DvHbwV5fL50M04qpG1WF_77RNLwmqTOLA56vg',0,NULL,NULL,NULL),
(124,'fasefefs','sdfasdfsdfsfdsfsdf','$2b$04$dL/sosLU6Z1PghlIYSSX1eSVVI5dZAwRNycK96SHVwZm7vfILXHGa','asrorovirbis4@gmail.com',NULL,'bb49be1f-aa6a-455c-8bf2-998206b49e51','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFzcm9yb3ZpcmJpczRAZ21haWwuY29tIiwibmFtZSI6ImZhc2VmZWZzIiwic3VybmFtZSI6InNkZmFzZGZzZGZzZmRzZnNkZiIsImlkIjoxMjQsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOm51bGwsImNvZGUiOm51bGwsImlhdCI6MTcyMTE5MTE0MywiZXhwIjoxNzIzNzgzMTQzfQ.giKM_Eh5DaYoQwnjgPQ_5-cIkQM9ha2fyZKyVMRNlJA',0,'b2e8dba7-e88c-4dda-92de-43fed1c62025.jpg',NULL,'public'),
(125,'fsdfsd','sdfsdf','$2b$04$Rw/FhUcfd40E4NpO86NpXO0wmKdKtuFdX9QhDAIas1yj4BNkGYYDi','midlle@gmail.com',NULL,'cd3d696d-5b29-47ec-a7a2-7fa7af803aea','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im1pZGxsZUBnbWFpbC5jb20iLCJuYW1lIjoiZnNkZnNkIiwic3VybmFtZSI6InNkZnNkZiIsImlkIjoxMjUsImlzQWN0aXZhdGVkIjowLCJhdmF0YXIiOiJodHRwczovL25ldHdvcnRoLnNob2Rvbi5ydS9hcGkvZmlsZS9hdmF0YXIvZGVmYXVsdC5wbmciLCJjb2RlIjpudWxsLCJpYXQiOjE3MjEyNjg0MzAsImV4cCI6MTcyMzg2MDQzMH0.Y-cnObSeGihAozHp08cmq_K9qrXto9JWsnOPVB-FD98',0,'default.png',NULL,'public'),
(126,'sdfsdf','sdfdsfsf','$2b$04$Xis2AAyqaw1lVFZwMlRpW..tx312tbiZWqfpijMV0G7v63I.vmyMC','sfsdf@gmail.com',NULL,'d343569c-036c-4e46-8107-f6f6b99f1387','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNmc2RmQGdtYWlsLmNvbSIsIm5hbWUiOiJzZGZzZGYiLCJzdXJuYW1lIjoic2RmZHNmc2YiLCJpZCI6MTI2LCJpc0FjdGl2YXRlZCI6MCwiYXZhdGFyIjoiaHR0cHM6Ly9uZXR3b3J0aC5zaG9kb24ucnUvYXBpL2ZpbGUvYXZhdGFyL2RlZmF1bHQucG5nIiwiY29kZSI6bnVsbCwiaWF0IjoxNzIxMjczMTA4LCJleHAiOjE3MjM4NjUxMDh9._o9YpUCu5EosOgvCwv_uCiCHSK_0WAsP1V_vAYfF9-U',0,'default.png',NULL,'public');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 14:17:21
