CREATE DATABASE  IF NOT EXISTS `canteen_evaluation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `canteen_evaluation`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: canteen_evaluation
-- ------------------------------------------------------
-- Server version	8.0.43

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

--
-- Table structure for table `canteen`
--

DROP TABLE IF EXISTS `canteen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canteen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '食堂名称',
  `description` varchar(200) DEFAULT '' COMMENT '食堂描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canteen`
--

LOCK TABLES `canteen` WRITE;
/*!40000 ALTER TABLE `canteen` DISABLE KEYS */;
INSERT INTO `canteen` VALUES (3,' 新区一食堂 ',' 位于新校区核心区域，共三层，涵盖大众餐、特色窗口，满足日常就餐需求 '),(5,' 老区食堂 ','新校区人气食堂，窗口种类丰富，主打性价比，靠近学生宿舍区'),(6,' 清真食堂 ',' 专为清真饮食需求设立，菜品符合清真规范，有牛羊肉特色餐、面食等 '),(8,'槐香苑食堂','位于新校区核心区域，共两层，有电梯，涵盖大众餐、特色窗口，满足日常就餐需求，一层快餐，二层可聚餐，菜品兼顾南北口味'),(9,' 风味食堂 ',' 以各地特色风味为主，如麻辣烫、螺蛳粉、炸鸡等，深受学生喜爱 '),(10,'内农大西区食堂','内蒙古农业大学西区主食堂，共三层，一层大众餐、二层特色档口、三层聚餐区，主打蒙餐+家常菜，满足西区师生日常就餐'),(11,'内农大东区风味食堂','内农大东区特色食堂，聚焦内蒙古本地风味（手把肉、稍麦），兼营西北面食，靠近农学院教学楼'),(12,'内农大桃李园食堂','内农大校本部老牌食堂，环境翻新后更舒适，主打平价套餐、早餐（烧卖、奶茶），性价比高，靠近学生宿舍区');
/*!40000 ALTER TABLE `canteen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dish` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜品名',
  `canteen_id` bigint NOT NULL COMMENT '关联食堂ID',
  `price` decimal(5,2) NOT NULL COMMENT '价格',
  `img_url` varchar(200) DEFAULT '' COMMENT '菜品图片地址',
  PRIMARY KEY (`id`),
  KEY `canteen_id` (`canteen_id`),
  CONSTRAINT `dish_ibfk_1` FOREIGN KEY (`canteen_id`) REFERENCES `canteen` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (1,'一楼盖饭',8,8.00,''),(2,'蛋炒饭',8,5.00,''),(3,'面',5,7.00,''),(4,' 土豆烧牛肉盖饭 ',8,12.00,''),(5,' 西红柿鸡蛋面 ',8,8.00,''),(6,' 自选快餐（两素一荤）',8,10.00,''),(7,' 豆浆 ',8,1.50,''),(8,' 油条 ',8,2.00,''),(9,' 鱼香肉丝盖饭 ',5,11.00,''),(10,' 蛋炒饭 ',5,6.00,''),(11,' 牛肉拉面 ',5,9.00,''),(12,' 麻辣香锅（小份）',5,15.00,''),(13,' 紫菜蛋花汤 ',5,2.00,''),(14,' 红烧肉盖饭 ',3,13.00,''),(15,' 炸酱面 ',3,7.00,''),(16,' 包子（猪肉大葱）',3,1.00,''),(17,' 小米粥 ',3,1.00,''),(18,' 炒合菜 ',3,5.00,''),(19,' 手抓羊肉 ',8,38.00,''),(20,' 牛肉烩面 ',8,10.00,''),(21,' 羊肉泡馍 ',8,15.00,''),(22,' 清真包子（牛肉洋葱）',8,1.50,''),(23,' 炒面片 ',8,8.00,''),(24,' 一楼盖饭（任意两素）',5,8.00,''),(25,' 麻辣拌面 ',5,7.00,''),(26,' 砂锅土豆粉 ',5,10.00,''),(27,' 烤肠 ',5,3.00,''),(28,' 水果捞 ',5,8.00,''),(29,' 自选烤肉饭 ',6,14.00,''),(30,' 螺蛳粉 ',6,12.00,''),(31,' 馄饨（大份）',6,9.00,''),(32,' 芝士焗饭 ',6,16.00,''),(33,' 酸梅汤 ',6,3.00,''),(34,' 麻辣烫（自选）',8,18.00,''),(35,' 炸鸡排 ',8,8.00,''),(36,' 黄焖鸡米饭（小份）',8,14.00,''),(37,' 重庆小面 ',8,9.00,''),(38,' 冰粉 ',8,4.00,''),(39,' 土豆烧牛肉盖饭 ',8,12.00,''),(40,' 西红柿鸡蛋面 ',8,8.00,''),(41,' 自选快餐（两素一荤）',8,10.00,''),(42,' 豆浆 ',8,1.50,''),(43,' 油条 ',8,2.00,''),(44,' 鱼香肉丝盖饭 ',5,11.00,''),(45,' 蛋炒饭 ',5,6.00,''),(46,' 牛肉拉面 ',5,9.00,''),(47,' 麻辣香锅（小份）',5,15.00,''),(48,' 紫菜蛋花汤 ',5,2.00,''),(49,' 红烧肉盖饭 ',3,13.00,''),(50,' 炸酱面 ',3,7.00,''),(51,' 包子（猪肉大葱）',3,1.00,''),(52,' 小米粥 ',3,1.00,''),(53,' 炒合菜 ',3,5.00,''),(54,' 手抓羊肉 ',8,38.00,''),(55,' 牛肉烩面 ',8,10.00,''),(56,' 羊肉泡馍 ',8,15.00,''),(57,' 清真包子（牛肉洋葱）',8,1.50,''),(58,' 炒面片 ',8,8.00,''),(59,' 一楼盖饭（任意两素）',5,8.00,''),(60,' 麻辣拌面 ',5,7.00,''),(61,' 砂锅土豆粉 ',5,10.00,''),(62,' 烤肠 ',5,3.00,''),(63,' 水果捞 ',5,8.00,''),(64,' 自选烤肉饭 ',6,14.00,''),(65,' 螺蛳粉 ',6,12.00,''),(66,' 馄饨（大份）',6,9.00,''),(67,' 芝士焗饭 ',6,16.00,''),(68,' 酸梅汤 ',6,3.00,''),(69,' 麻辣烫（自选）',8,18.00,''),(70,' 炸鸡排 ',8,8.00,''),(71,' 黄焖鸡米饭（小份）',8,14.00,''),(72,' 重庆小面 ',8,9.00,''),(73,' 冰粉 ',8,4.00,''),(74,'青椒炒鸡腿盖饭',8,11.00,''),(75,'南瓜粥',8,1.50,''),(76,'凉拌黄瓜',8,3.00,''),(77,'香菇青菜包',8,1.50,''),(78,'红烧茄子盖饭',8,9.00,''),(79,'宫保鸡丁盖饭',5,10.00,''),(80,'小米南瓜粥',5,2.00,''),(81,'凉拌海带丝',5,2.50,''),(82,'韭菜盒子',5,3.00,''),(83,'酸菜肉丝面',5,8.00,''),(84,'梅菜扣肉盖饭',3,14.00,''),(85,'绿豆粥',3,1.00,''),(86,'凉拌豆腐皮',3,3.00,''),(87,'烧卖（羊肉馅）',3,6.00,''),(88,'青椒肉丝面',3,8.00,''),(89,'清炖羊肉汤',8,18.00,''),(90,'牛肉夹馍',8,7.00,''),(91,'凉拌牛筋',8,12.00,''),(92,'清真油香',8,2.00,''),(93,'羊肉臊子面',8,11.00,''),(94,'回锅肉盖饭',5,12.00,''),(95,'红糖糍粑',5,5.00,''),(96,'酸辣粉',5,8.00,''),(97,'玉米汁',5,3.00,''),(98,'香菇滑鸡煲仔饭',5,14.00,''),(99,'照烧鸡腿饭',6,15.00,''),(100,'杨枝甘露',6,7.00,''),(101,'鸭血粉丝汤',6,10.00,''),(102,'芝士玉米',6,8.00,''),(103,'日式咖喱饭',6,13.00,''),(104,'烤冷面（加肠）',8,6.00,''),(105,'钵钵鸡（小份）',8,12.00,''),(106,'芝士焗红薯',8,6.00,''),(107,'卤肉饭',8,11.00,''),(108,'爆肚粉丝',8,13.00,''),(109,'羊肉烧麦',10,12.00,''),(110,'蒙餐手把肉',10,38.00,''),(111,'土豆牛肉盖饭',10,14.00,''),(112,'奶茶（咸口）',10,3.00,''),(113,'稍麦（羊肉馅）',11,15.00,''),(114,'回勺面',11,10.00,''),(115,'羊杂汤',11,8.00,''),(116,'西北油泼面',11,9.00,''),(117,'早餐套餐（烧卖+豆浆）',12,6.00,''),(118,'西红柿牛腩面',12,10.00,''),(119,'素炒莜面',12,8.00,'');
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dish_id` bigint NOT NULL COMMENT '关联菜品ID',
  `user_id` bigint NOT NULL COMMENT '关联用户ID',
  `score` tinyint NOT NULL COMMENT '1-5星评分',
  `content` varchar(500) DEFAULT '' COMMENT '评价内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_dish` (`user_id`,`dish_id`) COMMENT '一个用户只能评价一次同一菜品',
  KEY `dish_id` (`dish_id`),
  CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`id`) ON DELETE CASCADE,
  CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
INSERT INTO `evaluation` VALUES (1,1,1,5,'简直！太香了孩子！！！！抽嘴巴子都不撒手','2025-12-08 22:07:58'),(2,16,1,5,'好吃的要死','2025-12-23 20:39:22');
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '学号',
  `password` varchar(32) NOT NULL COMMENT '密码（简单加密，如MD5）',
  `name` varchar(10) NOT NULL COMMENT '姓名',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2023122105992','6e1e6aa5cf6432af35cfc078f58c15e8','赵昕宇','2025-12-07 21:10:27'),(2,'2023002','e10adc3949ba59abbe56e057f20f883e','李四','2025-12-08 19:39:36'),(3,'zxy','zxy','李四','2025-12-08 19:57:18'),(4,'123456','654321','xx','2025-12-08 20:14:00'),(5,'2023001','e10adc3949ba59abbe56e057f20f883e','李四','2025-12-23 21:41:10'),(7,'2023003','e10adc3949ba59abbe56e057f20f883e','王五','2025-12-23 21:41:31'),(8,'2023004','e10adc3949ba59abbe56e057f20f883e','77','2025-12-23 21:41:39');
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

-- Dump completed on 2025-12-23 22:16:02
