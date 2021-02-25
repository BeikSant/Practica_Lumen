-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: django
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'clientes'),(1,'gestion_clientes'),(3,'transacciones');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,25),(3,1,26),(4,1,27),(5,1,28),(6,1,29),(7,1,30),(8,1,31),(1,1,32),(11,3,28),(9,3,32),(10,3,33),(12,3,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cliente',7,'add_cliente'),(26,'Can change cliente',7,'change_cliente'),(27,'Can delete cliente',7,'delete_cliente'),(28,'Can view cliente',7,'view_cliente'),(29,'Can add cuenta',8,'add_cuenta'),(30,'Can change cuenta',8,'change_cuenta'),(31,'Can delete cuenta',8,'delete_cuenta'),(32,'Can view cuenta',8,'view_cuenta'),(33,'Can add transaccion',9,'add_transaccion'),(34,'Can change transaccion',9,'change_transaccion'),(35,'Can delete transaccion',9,'delete_transaccion'),(36,'Can view transaccion',9,'view_transaccion');
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
  `api_token` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$QU8lti2nEa8j$iLww2+bPuv4KisAzRY3Y0p1Sxh4cxpTaIS57+bMf/9E=','2021-02-23 22:01:01.220906',1,'beiksant','','','santorumbeiker068@gmail.com',1,1,'2021-01-27 02:58:53.000000','LqFSdg8PM21kfPWWvW8x4vsXDxJbUVreJcdLtKIvYhUYRMDJXpZ8kRTGZ9GTPUb4E22S4KRhadDyX4nkBVGbgXq2LejO1vF6ml0SYHMFAXnGW5CJyrBlai7tAUggVXenWYA53C2CZxGHJFxdueSv5q'),(2,'pbkdf2_sha256$216000$zUyUSTNruBSq$FV5Tcbrn0Lh5DRcA3VaiaImvLMU6OBpmGpEGLcwyPYQ=',NULL,0,'1950031375','','','beiker.santorum@unl.edu.ec',0,1,'2021-01-27 03:02:15.853785',NULL),(3,'pbkdf2_sha256$216000$FR416FHbbjN0$VftxCrNGPNfDhCLWOoe2Wgg6BUU1YCLcUdkAu2qRvCs=',NULL,0,'1150147410','','','ddddddd@gmail.com',0,1,'2021-01-27 03:04:20.205140',NULL),(4,'pbkdf2_sha256$216000$sll3zcKzm9ig$LWGYqq65IZCFQAfO456/qNJxHHKPFSnncPSQHQtzGI8=','2021-01-27 07:25:53.298643',0,'1111111111','Jheison','Santorum','jheison@hotmail.com',1,1,'2021-01-27 04:29:11.000000',NULL);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(3,1,3),(2,4,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
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
INSERT INTO `django_admin_log` VALUES (1,'2021-01-27 03:01:24.182807','1','gestion_clientes',1,'[{\"added\": {}}]',3,1),(2,'2021-01-27 03:01:34.387520','1','beiksant',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(3,'2021-01-27 04:23:30.529058','2','clientes',1,'[{\"added\": {}}]',3,1),(4,'2021-01-27 04:24:57.402838','3','transacciones',1,'[{\"added\": {}}]',3,1),(5,'2021-01-27 04:45:35.732983','1','beiksant',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(6,'2021-01-27 06:59:25.903487','4','1111111111',2,'[{\"changed\": {\"fields\": [\"Last login\"]}}]',4,1),(7,'2021-01-27 07:00:42.253219','4','1111111111',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'modelo','cliente'),(8,'modelo','cuenta'),(9,'modelo','transaccion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-27 02:52:25.850228'),(2,'auth','0001_initial','2021-01-27 02:52:28.618367'),(3,'admin','0001_initial','2021-01-27 02:52:36.654577'),(4,'admin','0002_logentry_remove_auto_add','2021-01-27 02:52:38.854110'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-27 02:52:38.921782'),(6,'contenttypes','0002_remove_content_type_name','2021-01-27 02:52:40.578623'),(7,'auth','0002_alter_permission_name_max_length','2021-01-27 02:52:41.639068'),(8,'auth','0003_alter_user_email_max_length','2021-01-27 02:52:41.898435'),(9,'auth','0004_alter_user_username_opts','2021-01-27 02:52:41.988841'),(10,'auth','0005_alter_user_last_login_null','2021-01-27 02:52:42.890061'),(11,'auth','0006_require_contenttypes_0002','2021-01-27 02:52:42.973377'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-27 02:52:43.040607'),(13,'auth','0008_alter_user_username_max_length','2021-01-27 02:52:43.991367'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-27 02:52:44.906597'),(15,'auth','0010_alter_group_name_max_length','2021-01-27 02:52:45.103139'),(16,'auth','0011_update_proxy_permissions','2021-01-27 02:52:45.183116'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-27 02:52:46.143912'),(18,'modelo','0001_initial','2021-01-27 02:52:47.481614'),(19,'modelo','0002_transaccion_updated_ad','2021-01-27 02:52:49.862976'),(20,'sessions','0001_initial','2021-01-27 02:52:50.260032');
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
INSERT INTO `django_session` VALUES ('agn22g10xe13urini20kf5storyfyifu','.eJxVjEEOwiAQRe_C2hAoCI5L956hGWYGqRpISrsy3l2bdKHb_977LzXiupRx7TKPE6uzsurwuyWkh9QN8B3rrWlqdZmnpDdF77Tra2N5Xnb376BgL9_aESMAm4EDJJvjEQki-EDmZLJFQWOZiGz2CcREY9FlCOKGzNGDiHp_APkbOJQ:1lEfbb:0pJalcXwykxb9eEDQnHkGtkhVifGYy0c-4iZygNa6AE','2021-03-09 21:52:31.756096'),('e4rp41wad0f1einzbsba25bddp9tdpyo','.eJxVjEEOwiAQRe_C2hAoCI5L956hGWYGqRpISrsy3l2bdKHb_977LzXiupRx7TKPE6uzsurwuyWkh9QN8B3rrWlqdZmnpDdF77Tra2N5Xnb376BgL9_aESMAm4EDJJvjEQki-EDmZLJFQWOZiGz2CcREY9FlCOKGzNGDiHp_APkbOJQ:1l4fDV:uLcFHdq8MW1p2wLsMkMEk5vwddcAFfZezi600f65qHo','2021-02-10 07:26:17.299649'),('mv8sf4nb2f99yuuutk1tt2m02r4nnv38','.eJxVjEEOwiAQRe_C2hAoCI5L956hGWYGqRpISrsy3l2bdKHb_977LzXiupRx7TKPE6uzsurwuyWkh9QN8B3rrWlqdZmnpDdF77Tra2N5Xnb376BgL9_aESMAm4EDJJvjEQki-EDmZLJFQWOZiGz2CcREY9FlCOKGzNGDiHp_APkbOJQ:1lEJff:T8oY0_fCKdiRnyBnUusNI1S9PydYPVlrKuagxCmldtU','2021-03-08 22:27:15.857491'),('yxnpyen2bt2cami9yiqnu4emf7ncg2ni','.eJxVjEEOwiAQRe_C2hAoCI5L956hGWYGqRpISrsy3l2bdKHb_977LzXiupRx7TKPE6uzsurwuyWkh9QN8B3rrWlqdZmnpDdF77Tra2N5Xnb376BgL9_aESMAm4EDJJvjEQki-EDmZLJFQWOZiGz2CcREY9FlCOKGzNGDiHp_APkbOJQ:1lEfjp:AoKqCVLQ1mgA50ywn40hrAjNc7ZQYWRtZm-0BCxwl6o','2021-03-09 22:01:01.360204');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_cliente`
--

DROP TABLE IF EXISTS `modelo_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(70) NOT NULL,
  `apellidos` varchar(70) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `estadoCivil` varchar(30) NOT NULL,
  `correo` varchar(105) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `direccion` longtext NOT NULL,
  `date_created` datetime(6) NOT NULL,
  PRIMARY KEY (`cliente_id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_cliente`
--

LOCK TABLES `modelo_cliente` WRITE;
/*!40000 ALTER TABLE `modelo_cliente` DISABLE KEYS */;
INSERT INTO `modelo_cliente` VALUES (1,'1950031375','Beiker','Santorum','masculino','soltero','beiker.santorum@unl.edu.ec','23014600','0985412365','San Jose','2021-01-27 03:02:15.728857'),(2,'1150147410','Jaime','Martines','masculino','casado','ddddddd@gmail.com','2301583','0986005899','Las Orquideas','2021-01-27 03:04:19.929766'),(5,'1111111111','Jheison','Santorum','masculino','soltero','jheison@hotmail.com','2305414','0688888888','San Jose','2021-01-27 04:29:11.497622'),(8,'2222222222','Lizeth','Carrion','femenino','soltero','lizeth@gmail.com','2301574','0988854565','Loja','2021-01-29 17:45:37.000000'),(11,'333333334','Jose','Cumbicus','masculino','soltero','jose@gmail.com','2301574','0988854565','Loja','2021-01-29 17:45:37.000000');
/*!40000 ALTER TABLE `modelo_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_cuenta`
--

DROP TABLE IF EXISTS `modelo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_cuenta` (
  `cuenta_id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `fechaApertura` datetime(6) NOT NULL,
  `tipoCuenta` varchar(30) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`cuenta_id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` (`cliente_id`),
  CONSTRAINT `modelo_cuenta_cliente_id_dcab0d68_fk_modelo_cliente_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `modelo_cliente` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_cuenta`
--

LOCK TABLES `modelo_cuenta` WRITE;
/*!40000 ALTER TABLE `modelo_cuenta` DISABLE KEYS */;
INSERT INTO `modelo_cuenta` VALUES (1,'1','2021-01-27 03:02:15.798171','ahorros',334.00,1,'2021-01-27 03:02:15.799139',1),(2,'41','2021-01-27 03:04:20.125132','ahorros',1100.00,1,'2021-01-27 03:04:20.125266',2),(5,'32','2021-01-27 04:29:11.550210','corriente',470.00,1,'2021-01-27 04:29:11.550456',5),(8,'112','2021-01-27 08:30:11.197878','ahorros',1100.00,1,'2021-01-27 08:30:11.198009',1);
/*!40000 ALTER TABLE `modelo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_transaccion`
--

DROP TABLE IF EXISTS `modelo_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_transaccion` (
  `trasaccion_id` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `cuenta_id` int NOT NULL,
  `updated_ad` datetime(6) NOT NULL,
  PRIMARY KEY (`trasaccion_id`),
  KEY `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` (`cuenta_id`),
  CONSTRAINT `modelo_transaccion_cuenta_id_13e268f8_fk_modelo_cuenta_cuenta_id` FOREIGN KEY (`cuenta_id`) REFERENCES `modelo_cuenta` (`cuenta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_transaccion`
--

LOCK TABLES `modelo_transaccion` WRITE;
/*!40000 ALTER TABLE `modelo_transaccion` DISABLE KEYS */;
INSERT INTO `modelo_transaccion` VALUES (1,'2021-01-27 05:06:45.451004','deposito',120.00,'aaaaaaa','2021-01-27 05:06:45.451176',5,'2021-01-27 05:06:45.451203'),(2,'2021-01-27 07:11:54.911815','deposito',458.00,'Te debia','2021-01-27 07:11:54.911994',1,'2021-01-27 07:11:54.912018'),(3,'2021-01-27 07:13:02.361448','deposito',100.00,'ss        ','2021-01-27 07:13:02.361602',1,'2021-01-27 07:13:02.361626'),(4,'2021-01-27 07:16:08.603832','deposito',1000.00,'lo necesito        ','2021-01-27 07:16:08.604284',1,'2021-01-27 07:16:08.604336'),(5,'2021-01-27 07:21:39.472492','deposito',1000.00,'        qq','2021-01-27 07:21:39.472648',1,'2021-01-27 07:21:39.472667'),(6,'2021-01-27 07:21:53.002218','deposito',100.00,'        qq','2021-01-27 07:21:53.002384',1,'2021-01-27 07:21:53.002409'),(7,'2021-01-27 07:22:00.303488','deposito',2000.00,'        qq','2021-01-27 07:22:00.305494',1,'2021-01-27 07:22:00.305565'),(8,'2021-01-27 07:22:14.410701','deposito',12323.00,'        1234','2021-01-27 07:22:14.411036',1,'2021-01-27 07:22:14.411069'),(9,'2021-01-27 07:22:30.740723','deposito',22222.00,'        ','2021-01-27 07:22:30.740908',1,'2021-01-27 07:22:30.740934'),(10,'2021-01-27 07:23:22.886700','deposito',10000.00,'        ','2021-01-27 07:23:22.886888',1,'2021-01-27 07:23:22.886917'),(11,'2021-01-27 07:23:56.966081','deposito',1000.00,'        ','2021-01-27 07:23:56.966301',1,'2021-01-27 07:23:56.966337'),(12,'2021-01-27 07:24:03.755802','deposito',2000.00,'        ','2021-01-27 07:24:03.755950',1,'2021-01-27 07:24:03.755968'),(13,'2021-01-27 07:24:19.458681','deposito',2000.00,'        ','2021-01-27 07:24:19.461705',1,'2021-01-27 07:24:19.461783'),(14,'2021-01-27 07:24:26.203569','deposito',200.00,'        ','2021-01-27 07:24:26.203732',1,'2021-01-27 07:24:26.203756'),(15,'2021-01-27 07:24:28.991308','deposito',20.00,'        ','2021-01-27 07:24:28.991462',1,'2021-01-27 07:24:28.991486'),(16,'2021-01-27 07:24:36.352277','deposito',100.00,'        00','2021-01-27 07:24:36.352541',5,'2021-01-27 07:24:36.352572'),(17,'2021-01-27 07:24:53.799676','deposito',1000.00,'        ','2021-01-27 07:24:53.799808',2,'2021-01-27 07:24:53.799829'),(18,'2021-01-27 07:26:32.580831','deposito',200.00,'0        ','2021-01-27 07:26:32.580983',1,'2021-01-27 07:26:32.581004'),(19,'2021-01-27 07:26:39.933445','deposito',1500.00,'        ','2021-01-27 07:26:39.933623',2,'2021-01-27 07:26:39.933649'),(20,'2021-01-29 17:45:37.000000','deposito',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(21,'2021-01-29 17:45:37.000000','deposito',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(22,'2021-01-29 17:45:37.000000','deposito',10.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(23,'2021-01-29 17:45:37.000000','retiro',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(24,'2021-01-29 17:45:37.000000','deposito',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(25,'2021-01-29 17:45:37.000000','deposito',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000'),(26,'2021-01-29 17:45:37.000000','deposito',20.00,'Compra','2021-01-29 17:45:37.000000',1,'2021-01-29 17:45:37.000000');
/*!40000 ALTER TABLE `modelo_transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-25 12:21:38
