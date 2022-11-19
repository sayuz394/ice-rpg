-- MySQL dump 10.16  Distrib 10.1.43-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: server_3697_test
-- ------------------------------------------------------
-- Server version	10.1.43-MariaDB-1~jessie

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
-- Table structure for table `access_tokens`
--

DROP TABLE IF EXISTS `access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(32) NOT NULL,
  `token` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_tokens`
--

LOCK TABLES `access_tokens` WRITE;
/*!40000 ALTER TABLE `access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(21) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(61) NOT NULL DEFAULT 'None',
  `confirm_email` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `refer` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `money` int(11) NOT NULL DEFAULT '250',
  `bank` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `driving_lic` int(11) NOT NULL,
  `weapon_lic` int(11) NOT NULL,
  `suspect` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `phone_balance` int(11) NOT NULL,
  `phone_color` int(11) NOT NULL DEFAULT '9',
  `law_abiding` int(11) NOT NULL,
  `improvements` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `metall` int(11) NOT NULL,
  `wife` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `subdivison` int(11) NOT NULL,
  `wage` int(11) NOT NULL,
  `job` int(11) NOT NULL,
  `house_type` int(11) NOT NULL DEFAULT '-1',
  `house_room` int(11) NOT NULL DEFAULT '-1',
  `house` int(11) NOT NULL DEFAULT '-1',
  `business` int(11) NOT NULL DEFAULT '-1',
  `fuel_st` int(11) NOT NULL DEFAULT '-1',
  `reg_time` int(11) NOT NULL,
  `reg_ip` varchar(16) NOT NULL,
  `last_ip` varchar(16) NOT NULL,
  `last_login` int(11) NOT NULL,
  `game_for_hour` int(11) NOT NULL,
  `game_for_day` int(11) NOT NULL,
  `game_for_day_prev` int(11) NOT NULL,
  `setting_phone` varchar(13) NOT NULL DEFAULT 'None',
  `setting_pin_code` varchar(5) NOT NULL DEFAULT 'None',
  `request_phone` int(11) NOT NULL,
  `request_pin` int(11) NOT NULL,
  `setting1` int(11) NOT NULL DEFAULT '2',
  `setting2` int(11) NOT NULL DEFAULT '1',
  `setting4` int(11) NOT NULL DEFAULT '1',
  `setting5` int(11) NOT NULL DEFAULT '0',
  `setting6` int(11) NOT NULL DEFAULT '0',
  `warn` int(11) NOT NULL,
  `warn_time` int(11) NOT NULL,
  `mute` int(11) NOT NULL,
  `skill_colt` int(11) NOT NULL,
  `skill_sdpistol` int(11) NOT NULL,
  `skill_deagle` int(11) NOT NULL,
  `skill_shotgun` int(11) NOT NULL,
  `skill_mp5` int(11) NOT NULL,
  `skill_ak47` int(11) NOT NULL,
  `skill_m4` int(11) NOT NULL,
  `skill_sniper_rifle` int(11) NOT NULL,
  `skill_sawnoff` int(11) NOT NULL,
  `skill_combat_sg` int(11) NOT NULL,
  `skill_micro_uzi` int(11) NOT NULL,
  `donate` int(11) NOT NULL,
  `donate_total` int(11) NOT NULL,
  `org_skin` int(11) NOT NULL,
  `setting_spawn` int(11) NOT NULL,
  `hospital` int(11) NOT NULL,
  `health` float NOT NULL DEFAULT '100',
  `car_slots` int(11) NOT NULL DEFAULT '2',
  `jail` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `premium_time` int(11) NOT NULL,
  `load_skill` int(11) NOT NULL,
  `lumberg_skill` int(11) NOT NULL,
  `load_exp` int(11) NOT NULL,
  `lumberg_exp` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `family` int(11) NOT NULL,
  `family_rank` int(11) NOT NULL,
  `fish_mas` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '1',
  `eat` int(11) NOT NULL DEFAULT '100',
  `water` int(11) NOT NULL DEFAULT '100',
  `bug_paydays` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `truck_road` int(11) NOT NULL,
  `truck_wage` int(11) NOT NULL,
  `truck_mileage` float NOT NULL,
  `gifts` int(11) NOT NULL,
  `admin_warn` int(3) NOT NULL DEFAULT '0',
  `bonusget` int(11) NOT NULL DEFAULT '0',
  `loginday` int(11) NOT NULL DEFAULT '0',
  `driving_a` int(11) NOT NULL,
  `driving_b` int(11) NOT NULL,
  `driving_c` int(11) NOT NULL,
  `driving_d` int(11) NOT NULL,
  `lic_biz` int(11) NOT NULL,
  `lic_fly` int(11) NOT NULL,
  `lic_water` int(11) NOT NULL,
  `lic_weapon` int(11) NOT NULL,
  `online` int(11) NOT NULL DEFAULT '0',
  `fight_1` int(11) NOT NULL DEFAULT '0',
  `fight_2` int(11) NOT NULL DEFAULT '0',
  `fight_3` int(11) NOT NULL DEFAULT '0',
  `fight_4` int(11) NOT NULL DEFAULT '0',
  `fight_5` int(11) NOT NULL DEFAULT '0',
  `PDX` int(11) NOT NULL DEFAULT '0',
  `unj` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `email` (`email`),
  KEY `phone` (`phone`),
  KEY `house` (`house`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Kiruxa_MacWood','e10adc3949ba59abbe56e057f20f883e','dssa@yandex.ru',0,0,0,0,230,250,0,6,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1570526487,'85.140.2.237','85.140.2.237',1570526487,220,227,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'Colin_Bergman','4ba28db239cdbe4464fc1a2bc87a8fc0','dskkds@mail.ru',0,3,0,0,230,750,10500,6,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1570568841,'178.140.213.145','178.140.213.145',1570568841,0,0,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,2,0,0,0,0,0,0,0,0,0,0,0,3,100,100,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'Michael_Rodriguez','de53f9eec3dc020db9f1ea58ffbb4e74','dandyfajr200@gmail.com',0,0,0,0,230,250,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1582466836,'103.208.204.100','103.208.204.100',1582466836,641,641,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'Dhey','c42d75264b80bad63c8d825f5d71ecbf','pepek@gmail.com',0,2,0,0,230,250,1500,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1582486651,'182.253.122.240','182.253.122.240',1582486651,5296,5498,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,'Frank_Cheaster','d4ae088f8f212539977362f95fb0f055','kentirx12@Gmail.com',0,0,0,0,230,250,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1582526751,'115.178.238.135','115.178.238.135',1582526751,594,711,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(6,'Adriansyah_Azhari','578a43190c5e793cc7534e95d245eca2','bobbydrian17@gmail.com',0,0,0,1,13,250,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1582544068,'114.124.201.235','114.124.201.235',1582544068,0,0,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(7,'Frank_Hoxford','d3b680a51bcc01e3c3c9c2cfe8fa2be2','helidicky1@Gmail.com',0,0,0,0,230,250,0,0,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,-1,1582974899,'115.178.255.203','115.178.236.244',1582974899,742,742,0,'None','None',0,0,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,98,2,0,0,0,0,0,0,0,0,0,0,0,1,100,100,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `action_log`
--

DROP TABLE IF EXISTS `action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `type` int(11) NOT NULL,
  `description` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_log`
--

LOCK TABLES `action_log` WRITE;
/*!40000 ALTER TABLE `action_log` DISABLE KEYS */;
INSERT INTO `action_log` VALUES (1,1,'85.140.2.237',3,'Создал транспорт (560, 0, 0)',1570528861),(2,1,'85.140.2.237',3,'Выдал Kiruxa_MacWood[acc:1] лицензию 2',1570528881),(3,2,'178.140.213.145',3,'Использует меню телепортов',1570568989),(4,2,'178.140.213.145',3,'Инициировал PayDay',1570569062),(5,2,'178.140.213.145',3,'Инициировал PayDay',1570569065),(6,2,'178.140.213.145',3,'Инициировал PayDay',1570569067),(7,2,'178.140.213.145',3,'Установил Colin_Bergman[acc:2] уровень здоровья на 0',1570573614),(8,2,'178.140.213.145',3,'Очистил чат',1570573726),(9,2,'178.140.213.145',3,'Установил Colin_Bergman[acc:2] уровень здоровья на 0',1570573764);
/*!40000 ALTER TABLE `action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_list`
--

DROP TABLE IF EXISTS `ban_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ban_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ban_time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `description` varchar(32) NOT NULL,
  `admin` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_list`
--

LOCK TABLES `ban_list` WRITE;
/*!40000 ALTER TABLE `ban_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `ban_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(21) NOT NULL DEFAULT 'None',
  `balance` int(11) NOT NULL,
  `pin` varchar(9) NOT NULL DEFAULT '0000',
  `reg_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts`
--

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts_log`
--

DROP TABLE IF EXISTS `bank_accounts_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_accounts_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts_log`
--

LOCK TABLES `bank_accounts_log` WRITE;
/*!40000 ALTER TABLE `bank_accounts_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `x_angle` float NOT NULL,
  `y_angle` float NOT NULL,
  `z_angle` float NOT NULL,
  `view_x` float NOT NULL,
  `view_y` float NOT NULL,
  `view_z` float NOT NULL,
  `owner` int(11) NOT NULL DEFAULT '-1',
  `model` int(11) NOT NULL,
  `text` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '-1',
  `zone` int(11) NOT NULL DEFAULT '-1',
  `improvements` int(11) NOT NULL,
  `products` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `enter_price` int(11) NOT NULL,
  `enter_music` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `exit_x` float NOT NULL,
  `exit_y` float NOT NULL,
  `exit_z` float NOT NULL,
  `exit_angle` float NOT NULL,
  `eviction` int(11) NOT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_2` int(11) DEFAULT NULL,
  `price_3` int(11) DEFAULT NULL,
  `price_4` int(11) DEFAULT NULL,
  `price_5` int(11) DEFAULT NULL,
  `price_6` int(11) DEFAULT NULL,
  `price_7` int(11) DEFAULT NULL,
  `price_8` int(11) DEFAULT NULL,
  `price_9` int(11) DEFAULT NULL,
  `price_10` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_gps`
--

DROP TABLE IF EXISTS `business_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_gps`
--

LOCK TABLES `business_gps` WRITE;
/*!40000 ALTER TABLE `business_gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_profit`
--

DROP TABLE IF EXISTS `business_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fid` (`bid`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_profit`
--

LOCK TABLES `business_profit` WRITE;
/*!40000 ALTER TABLE `business_profit` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change_names`
--

DROP TABLE IF EXISTS `change_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(21) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_names`
--

LOCK TABLES `change_names` WRITE;
/*!40000 ALTER TABLE `change_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `change_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charity`
--

DROP TABLE IF EXISTS `charity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `charity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charity`
--

LOCK TABLES `charity` WRITE;
/*!40000 ALTER TABLE `charity` DISABLE KEYS */;
/*!40000 ALTER TABLE `charity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffers_log`
--

DROP TABLE IF EXISTS `coffers_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coffers_log` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(128) CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffers_log`
--

LOCK TABLES `coffers_log` WRITE;
/*!40000 ALTER TABLE `coffers_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `coffers_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donate_log`
--

DROP TABLE IF EXISTS `donate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) CHARACTER SET utf8 NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `donate` int(11) NOT NULL,
  `description` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT 'None',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donate_log`
--

LOCK TABLES `donate_log` WRITE;
/*!40000 ALTER TABLE `donate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `donate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donate_settings`
--

DROP TABLE IF EXISTS `donate_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donate_settings` (
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donate_settings`
--

LOCK TABLES `donate_settings` WRITE;
/*!40000 ALTER TABLE `donate_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `donate_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donations`
--

DROP TABLE IF EXISTS `donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `time` varchar(16) NOT NULL,
  `date` varchar(16) NOT NULL,
  `activated` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donations`
--

LOCK TABLES `donations` WRITE;
/*!40000 ALTER TABLE `donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrances`
--

DROP TABLE IF EXISTS `entrances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` int(11) NOT NULL DEFAULT '-1',
  `zone` int(11) NOT NULL DEFAULT '-1',
  `floors` int(11) NOT NULL DEFAULT '2',
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `exit_x` float NOT NULL,
  `exit_y` float NOT NULL,
  `exit_z` float NOT NULL,
  `exit_angle` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrances`
--

LOCK TABLES `entrances` WRITE;
/*!40000 ALTER TABLE `entrances` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `u_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `color` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `rank1` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank2` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank3` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank4` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank6` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank7` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank8` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank9` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `rank10` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT 'Пусто',
  `money` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `tree` int(11) NOT NULL,
  `metal` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `house_id` int(11) NOT NULL DEFAULT '-1',
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_stations`
--

DROP TABLE IF EXISTS `fuel_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'None',
  `city` int(11) NOT NULL DEFAULT '-1',
  `zone` int(11) NOT NULL DEFAULT '-1',
  `improvements` int(11) NOT NULL,
  `fuels` int(11) NOT NULL,
  `fuel_price` int(11) NOT NULL,
  `buy_fuel_price` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `eviction` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_stations`
--

LOCK TABLES `fuel_stations` WRITE;
/*!40000 ALTER TABLE `fuel_stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuel_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_stations_profit`
--

DROP TABLE IF EXISTS `fuel_stations_profit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel_stations_profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_stations_profit`
--

LOCK TABLES `fuel_stations_profit` WRITE;
/*!40000 ALTER TABLE `fuel_stations_profit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuel_stations_profit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gang_repositories`
--

DROP TABLE IF EXISTS `gang_repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gang_repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metall` int(11) NOT NULL,
  `ammo` int(11) NOT NULL,
  `drugs` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `lock` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gang_repositories`
--

LOCK TABLES `gang_repositories` WRITE;
/*!40000 ALTER TABLE `gang_repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `gang_repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gang_zones`
--

DROP TABLE IF EXISTS `gang_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gang_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_x` float NOT NULL,
  `min_y` float NOT NULL,
  `max_x` float NOT NULL,
  `max_y` float NOT NULL,
  `fraction` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gang_zones`
--

LOCK TABLES `gang_zones` WRITE;
/*!40000 ALTER TABLE `gang_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gang_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangzone`
--

DROP TABLE IF EXISTS `gangzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangzone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_x` float NOT NULL,
  `min_y` float NOT NULL,
  `max_x` float NOT NULL,
  `max_y` float NOT NULL,
  `fraction` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangzone`
--

LOCK TABLES `gangzone` WRITE;
/*!40000 ALTER TABLE `gangzone` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift`
--

DROP TABLE IF EXISTS `gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift`
--

LOCK TABLES `gift` WRITE;
/*!40000 ALTER TABLE `gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_lose`
--

DROP TABLE IF EXISTS `gift_lose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_lose` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gift_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_lose`
--

LOCK TABLES `gift_lose` WRITE;
/*!40000 ALTER TABLE `gift_lose` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_lose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` int(11) NOT NULL DEFAULT '-1',
  `zone` int(11) NOT NULL DEFAULT '-1',
  `improvements` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `lock` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `exit_x` float NOT NULL,
  `exit_y` float NOT NULL,
  `exit_z` float NOT NULL,
  `exit_angle` float NOT NULL,
  `car_x` float NOT NULL,
  `car_y` float NOT NULL,
  `car_z` float NOT NULL,
  `car_angle` float NOT NULL,
  `store_x` float NOT NULL,
  `store_y` float NOT NULL,
  `store_z` float NOT NULL,
  `eviction` int(11) NOT NULL,
  `store_metall` int(11) NOT NULL,
  `store_drugs` int(11) NOT NULL,
  `store_weapon` int(11) NOT NULL,
  `store_ammo` int(11) NOT NULL,
  `store_skin` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `mebel_1` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_renters`
--

DROP TABLE IF EXISTS `houses_renters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_renters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `rent_time` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`),
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_renters`
--

LOCK TABLES `houses_renters` WRITE;
/*!40000 ALTER TABLE `houses_renters` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses_renters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_log`
--

DROP TABLE IF EXISTS `money_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uip` varchar(16) NOT NULL DEFAULT '255.255.255.255',
  `time` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `description` varchar(64) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_log`
--

LOCK TABLES `money_log` WRITE;
/*!40000 ALTER TABLE `money_log` DISABLE KEYS */;
INSERT INTO `money_log` VALUES (1,2,'178.140.213.145',1570569062,0,'[BANK] Зарплата'),(2,2,'178.140.213.145',1570569065,0,'[BANK] Зарплата'),(3,2,'178.140.213.145',1570569067,0,'[BANK] Зарплата'),(4,2,'178.140.213.145',1570569110,500,'активация промокода'),(5,4,'182.253.122.240',1582488056,0,'[BANK] Зарплата'),(6,4,'182.253.122.240',1582491656,0,'[BANK] Зарплата');
/*!40000 ALTER TABLE `money_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownable_cars`
--

DROP TABLE IF EXISTS `ownable_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownable_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `color_1` int(11) NOT NULL DEFAULT '-1',
  `color_2` int(11) NOT NULL DEFAULT '-1',
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `angle` float NOT NULL,
  `number` varchar(7) NOT NULL DEFAULT '------',
  `status` int(11) NOT NULL,
  `alarm` int(11) NOT NULL,
  `key_in` int(11) NOT NULL,
  `mileage` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `health` float NOT NULL DEFAULT '1000',
  `pt_engine` int(11) NOT NULL,
  `pt_brake` int(11) NOT NULL,
  `pt_stability` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownable_cars`
--

LOCK TABLES `ownable_cars` WRITE;
/*!40000 ALTER TABLE `ownable_cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `ownable_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_books`
--

DROP TABLE IF EXISTS `phone_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(21) DEFAULT NULL,
  `number` varchar(9) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_books`
--

LOCK TABLES `phone_books` WRITE;
/*!40000 ALTER TABLE `phone_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocode`
--

DROP TABLE IF EXISTS `promocode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `usings` int(11) NOT NULL,
  `paydays` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocode`
--

LOCK TABLES `promocode` WRITE;
/*!40000 ALTER TABLE `promocode` DISABLE KEYS */;
INSERT INTO `promocode` VALUES (1,'#Pozitive',2,500,999,3),(2,'test',1,500,999,0);
/*!40000 ALTER TABLE `promocode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocode_activations`
--

DROP TABLE IF EXISTS `promocode_activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promocode_activations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `paydays` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocode_activations`
--

LOCK TABLES `promocode_activations` WRITE;
/*!40000 ALTER TABLE `promocode_activations` DISABLE KEYS */;
INSERT INTO `promocode_activations` VALUES (1,2,'#Pozitive',3),(2,2,'test',0);
/*!40000 ALTER TABLE `promocode_activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radar`
--

DROP TABLE IF EXISTS `radar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  `limit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radar`
--

LOCK TABLES `radar` WRITE;
/*!40000 ALTER TABLE `radar` DISABLE KEYS */;
/*!40000 ALTER TABLE `radar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositories`
--

DROP TABLE IF EXISTS `repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositories`
--

LOCK TABLES `repositories` WRITE;
/*!40000 ALTER TABLE `repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_money`
--

DROP TABLE IF EXISTS `return_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  `description` varchar(64) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_money`
--

LOCK TABLES `return_money` WRITE;
/*!40000 ALTER TABLE `return_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `return_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(64) NOT NULL,
  `issuer` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trunks`
--

DROP TABLE IF EXISTS `trunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trunks`
--

LOCK TABLES `trunks` WRITE;
/*!40000 ALTER TABLE `trunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `trunks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-03  8:35:36
