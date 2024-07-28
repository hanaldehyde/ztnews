-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: ztnews
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add article',7,'add_article'),(26,'Can change article',7,'change_article'),(27,'Can delete article',7,'delete_article'),(28,'Can view article',7,'view_article');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$U3DUNzTXvQSrBiBmqUTJQw$GxA57aVZutvhoqDXEHZCc6+lpTDB05iwGOfqpT2MrPQ=','2024-07-19 10:20:46.513639',1,'hyq0920','','','420338282@qq.com',1,1,'2024-06-15 01:26:31.290211');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-15 01:29:27.419243','1','dsnagnoa;n',1,'[{\"added\": {}}]',7,1),(2,'2024-06-15 01:29:38.263020','2','dskjngkang',1,'[{\"added\": {}}]',7,1),(3,'2024-06-15 03:01:04.031350','2','dskjngkang',3,'',7,1),(4,'2024-06-15 03:01:04.037337','1','dsnagnoa;n',3,'',7,1),(5,'2024-06-15 03:01:29.741819','3','构建自主碳足迹评估体系 应重视现有国际评估标准',1,'[{\"added\": {}}]',7,1),(6,'2024-06-15 03:06:20.275779','4','碳排放有了“管理员”，这些绿色新职业你了解多少',1,'[{\"added\": {}}]',7,1),(7,'2024-06-15 03:39:40.913606','5','印尼计划启动碳交易 到2060年实现净零排放',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'newsApp','article'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-15 01:25:49.570176'),(2,'auth','0001_initial','2024-06-15 01:25:50.529422'),(3,'admin','0001_initial','2024-06-15 01:25:50.751824'),(4,'admin','0002_logentry_remove_auto_add','2024-06-15 01:25:50.751824'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-15 01:25:50.767444'),(6,'contenttypes','0002_remove_content_type_name','2024-06-15 01:25:50.845636'),(7,'auth','0002_alter_permission_name_max_length','2024-06-15 01:25:50.923758'),(8,'auth','0003_alter_user_email_max_length','2024-06-15 01:25:50.939357'),(9,'auth','0004_alter_user_username_opts','2024-06-15 01:25:50.954982'),(10,'auth','0005_alter_user_last_login_null','2024-06-15 01:25:51.017475'),(11,'auth','0006_require_contenttypes_0002','2024-06-15 01:25:51.017475'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-15 01:25:51.033099'),(13,'auth','0008_alter_user_username_max_length','2024-06-15 01:25:51.271955'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-15 01:25:51.397023'),(15,'auth','0010_alter_group_name_max_length','2024-06-15 01:25:51.443809'),(16,'auth','0011_update_proxy_permissions','2024-06-15 01:25:51.459450'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-15 01:25:51.725036'),(18,'newsApp','0001_initial','2024-06-15 01:25:51.847239'),(19,'sessions','0001_initial','2024-06-15 01:25:51.988592');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2pwdwexopqidbvij9fpmq3qqc8msiju2','.eJxVjMsOwiAURP-FtSFcBEpduvcbyH1QqRqalHZl_HfbpAtdzpwz81YJ16WkteU5jaIuCtTptyPkZ647kAfW-6R5qss8kt4VfdCmb5Pk1_Vw_w4KtrKtPdKAveMovYAbwBrwETL7iDZv8QxiItlgpHMBrQ_coRUSjsY6pqw-X-fCOBc:1sIIEF:Ze5i2aCy56bWxscFtlLT5eoLkQoIYYqmtuDm4LkDQDQ','2024-06-29 01:29:15.344835'),('qcfkvq9fco6os01cqojb7j1uroqcein8','.eJxVjMsOwiAURP-FtSFcBEpduvcbyH1QqRqalHZl_HfbpAtdzpwz81YJ16WkteU5jaIuCtTptyPkZ647kAfW-6R5qss8kt4VfdCmb5Pk1_Vw_w4KtrKtPdKAveMovYAbwBrwETL7iDZv8QxiItlgpHMBrQ_coRUSjsY6pqw-X-fCOBc:1sUkjG:hUe0aFqFqVqSp_bHzzM0HEHJ6TLhdlnOnXhgbBqPNjs','2024-08-02 10:20:46.519511');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsapp_article`
--

DROP TABLE IF EXISTS `newsapp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsapp_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `overview` longtext NOT NULL,
  `content` longtext NOT NULL,
  `published_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsapp_article`
--

LOCK TABLES `newsapp_article` WRITE;
/*!40000 ALTER TABLE `newsapp_article` DISABLE KEYS */;
INSERT INTO `newsapp_article` VALUES (3,'构建自主碳足迹评估体系 应重视现有国际评估标准','近日，生态环境部联合国家发展改革委、工信部、财政部等15个部门共同发布了《关于建立碳足迹管理体系的实施方案》（以下简称《方案》）。','《方案》指出，到2027年，我国将初步建立碳足迹管理体系，制定并出台约100个关键产品的碳足迹核算规则标准，初步构建产品碳足迹因子数据库，建立产品碳足迹标识认证和分级管理制度，并在重点产品碳足迹规则的国际对接方面取得显著进展。','2024-06-15 03:01:29.740817'),(4,'碳排放有了“管理员”，这些绿色新职业你了解多少','当前，我国经济社会发展已进入加快绿色化、低碳化的高质量发展阶段，绿色发展是高质量发展的底色。《中华人民共和国职业分类大典(2022年版)》标识了134个绿色职业，约占职业总数的8%。','蓬勃发展的绿色职业，契合了我国全面推进生态文明建设、奋力实现“双碳”目标的经济社会发展需要，也是我国新产业、新业态不断发展壮大的生动写照，对推动美丽中国建设、实现经济社会高质量发展有重要意义。近日，人民日报记者实地探访碳排放管理员、建筑节能减排咨询师、湿地保护修复工程技术人员等绿色职业的工作场景，倾听他们为美丽中国减碳增绿的故事。\r\n\r\n\r\n\r\n　　1、碳排放管理员——\r\n\r\n\r\n\r\n　　科学核算数据助力企业降碳\r\n\r\n\r\n\r\n　　今年5月1日，我国应对气候变化领域的第一部专门的法规——《碳排放权交易管理暂行条例》施行，该条例明确重点排放单位“应当如实准确统计核算本单位温室气体排放量”。\r\n\r\n\r\n\r\n　　碳排放管理员是从事企事业单位二氧化碳等温室气体排放监测、统计核算、核查、交易和咨询等工作的人员。近日，记者跟随龙源(北京)碳资产管理技术有限公司的碳排放管理员王恒、叶欣，走进位于湖北省汉川市的国能长源汉川发电有限公司火力发电厂，实地体验碳排放数据现场盘查过程。\r\n\r\n\r\n\r\n　　换上工作服，戴好安全帽和工作记录仪，记者跟随王恒、叶欣来到电厂的燃料智能化管控中心。“请您帮忙调取一下A侧皮带秤从4月1日到4月30日的上煤历史数据。”叶欣对一名工作人员说。他们一一查看、记录和核算每台机组的入炉燃煤消耗量，并对电厂输煤日志记录是否规范、设备有无异常等进行核对。\r\n\r\n\r\n\r\n　　“化石燃料燃烧是火力发电厂最主要的碳排放源。”叶欣告诉记者，他们需要在现场查看燃料输送、台账记录、设备校验的全过程，并调取系统的底码数据，以完成统计周期内化石燃料的总消耗量溯源和交叉核对工作，最终确认用于计算企业碳排放量相关数据的准确性。','2024-06-15 03:06:20.274324'),(5,'印尼计划启动碳交易 到2060年实现净零排放','印度尼西亚金融监管机构周五表示，印度尼西亚计划在今年下半年启动碳交易，作为促进可再生能源使用和到 2060 年实现净零排放的努力的一部分。','东南亚最大的经济体是世界上最大的碳排放国之一，并希望到 30 年将排放量减少 2030% 以上。\r\n\r\n \r\n\r\n该国金融服务管理局（OJK）局长马亨德拉·西雷加（Mahendra Siregar）在周五的新闻发布会上表示：“我们正在准备启动碳交易……以支持燃煤电厂提前退役。”\r\n\r\n \r\n\r\n本周早些时候，投资部长 Bahlil Lahadalia 表示，只有在印度尼西亚经营的实体才能在交易所进行交易，该计划将类似于股票交易。\r\n\r\n \r\n\r\n他补充说，OJK 和环境部将监督交易所的活动。\r\n\r\n \r\n\r\n根据该条例的副本，碳交易所将实行限额与交易制度，对污染水平进行限制，配额可以由企业实体进行交易。\r\n\r\n \r\n\r\n印度尼西亚最初计划对尚未被碳信用额抵消的排放征收碳税，但以不利的全球经济状况为由推迟了实施。\r\n\r\n \r\n\r\n今年二月，政府对国有公用事业公司Perusahaan Listrik Negara (PLN) 旗下的近百家燃煤电厂启动了第一阶段的强制碳交易。\r\n\r\n \r\n\r\n印度尼西亚发电量的一半以上是煤炭。','2024-06-15 03:39:40.912604');
/*!40000 ALTER TABLE `newsapp_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-28 15:34:11
