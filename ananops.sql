-- MySQL dump 10.13  Distrib 5.6.43, for Win64 (x86_64)
--
-- Host: localhost    Database: ananops
-- ------------------------------------------------------
-- Server version	5.6.43

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
-- Table structure for table `mdmc_device`
--

DROP TABLE IF EXISTS `mdmc_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `device_model` varchar(20) DEFAULT NULL COMMENT '设别型号',
  `device_type` varchar(20) DEFAULT NULL COMMENT '设备类型',
  `count` int(20) DEFAULT NULL COMMENT '剩余设备数',
  `cost` decimal(10,3) DEFAULT NULL COMMENT '设备单价',
  `manufacture` varchar(50) DEFAULT NULL COMMENT '设备生产厂商',
  `production_date` datetime DEFAULT NULL COMMENT '设备生产日期',
  `installation_date` datetime DEFAULT NULL COMMENT '设备安装日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_device`
--

LOCK TABLES `mdmc_device` WRITE;
/*!40000 ALTER TABLE `mdmc_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdmc_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_device_order`
--

DROP TABLE IF EXISTS `mdmc_device_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_device_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '对应的任务ID',
  `task_item_id` bigint(20) DEFAULT NULL COMMENT '对应的任务子项ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '对应的维修工ID',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `cost` decimal(10,3) DEFAULT NULL COMMENT '当前订单的花费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_device_order`
--

LOCK TABLES `mdmc_device_order` WRITE;
/*!40000 ALTER TABLE `mdmc_device_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdmc_device_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_exception_log`
--

DROP TABLE IF EXISTS `mdmc_exception_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_exception_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(32) DEFAULT '' COMMENT '系统应用名',
  `exception_simple_name` varchar(200) DEFAULT '' COMMENT '异常类型',
  `exception_message` varchar(4500) DEFAULT '' COMMENT '异常信息(通过exception.getMessage()获取到的内容)',
  `exception_cause` varchar(500) DEFAULT '' COMMENT '异常原因(通过exception.getCause()获取到的内容)',
  `exception_stack` text COMMENT '异常堆栈信息',
  `creator` varchar(32) DEFAULT '' COMMENT '操作者姓名',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '操作者id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_exception_log`
--

LOCK TABLES `mdmc_exception_log` WRITE;
/*!40000 ALTER TABLE `mdmc_exception_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdmc_exception_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_order`
--

DROP TABLE IF EXISTS `mdmc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_order` (
  `id` bigint(20) NOT NULL COMMENT '工单编号',
  `version` varchar(20) DEFAULT NULL COMMENT '版本',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最近操作人id',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最近更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '对应的任务编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_order`
--

LOCK TABLES `mdmc_order` WRITE;
/*!40000 ALTER TABLE `mdmc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdmc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_review`
--

DROP TABLE IF EXISTS `mdmc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `facilitator_id` bigint(20) DEFAULT NULL COMMENT '服务商ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工程师ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '申请维修维护的用户的ID',
  `score` int(5) DEFAULT NULL COMMENT '服务评级',
  `contents` varchar(100) DEFAULT NULL COMMENT '服务评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_review`
--

LOCK TABLES `mdmc_review` WRITE;
/*!40000 ALTER TABLE `mdmc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdmc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_task`
--

DROP TABLE IF EXISTS `mdmc_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发起此次维修请求的用户ID',
  `title` varchar(20) DEFAULT NULL COMMENT '任务名称',
  `principal_id` bigint(20) DEFAULT NULL COMMENT '用户负责人（领导）ID',
  `project_id` bigint(20) DEFAULT NULL COMMENT '任务对应的项目ID',
  `facilitator_id` bigint(20) DEFAULT NULL COMMENT '服务商ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工ID',
  `scheduled_finish_time` datetime DEFAULT NULL COMMENT '预计完成时间',
  `actual_finish_time` datetime DEFAULT NULL COMMENT '实际完成时间',
  `scheduled_start_time` datetime DEFAULT NULL COMMENT '预计开始时间',
  `actual_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `deadline` datetime DEFAULT NULL COMMENT '最迟完成时间',
  `request_latitude` decimal(10,6) DEFAULT NULL COMMENT '请求维修的地点，纬度',
  `request_longitude` decimal(10,6) DEFAULT NULL COMMENT '请求维修的地点，经度',
  `status` int(10) DEFAULT NULL COMMENT '当前任务的进度状态',
  `total_cost` decimal(10,3) DEFAULT NULL COMMENT '维修总花费',
  `clearing_form` int(5) DEFAULT NULL COMMENT '结算方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_task`
--

LOCK TABLES `mdmc_task` WRITE;
/*!40000 ALTER TABLE `mdmc_task` DISABLE KEYS */;
INSERT INTO `mdmc_task` VALUES (1,NULL,'张三',1,'2019-12-05 14:53:17','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(2,NULL,'张三',1,'2019-12-05 14:54:52','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(3,NULL,'张三',1,'2019-12-05 14:56:34','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(4,NULL,'张三',1,'2019-12-05 14:56:34','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(5,NULL,'张三',1,'2019-12-05 14:57:56','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(6,NULL,'张三',1,'2019-12-05 14:59:17','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(7,NULL,'张三',1,'2019-12-05 15:23:01','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(8,NULL,'张三',1,'2019-12-05 15:40:24','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1),(9,NULL,'张三',1,'2019-12-05 15:49:20','张三',1,NULL,1,'摄像头维修',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,123.300000,222.100000,2,100.000,1);
/*!40000 ALTER TABLE `mdmc_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_task_item`
--

DROP TABLE IF EXISTS `mdmc_task_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_task_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `device_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '设备名称',
  `actual_finish_time` datetime DEFAULT NULL COMMENT '完成维修的时间戳',
  `actual_start_time` datetime DEFAULT NULL COMMENT '开始维修的时间戳',
  `description` varchar(100) DEFAULT NULL COMMENT '故障描述',
  `level` int(5) DEFAULT NULL COMMENT '故障等级',
  `device_latitude` decimal(10,6) DEFAULT NULL COMMENT '故障设备位置，纬度',
  `device_longitude` decimal(10,6) DEFAULT NULL COMMENT '故障设备位置，经度',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工ID',
  `status` int(5) DEFAULT NULL COMMENT '当前维修状态',
  `suggestion` varchar(100) DEFAULT NULL COMMENT '维修建议（维修工填写）',
  `result` varchar(100) DEFAULT NULL COMMENT '维修结果（维修工填写）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_task_item`
--

LOCK TABLES `mdmc_task_item` WRITE;
/*!40000 ALTER TABLE `mdmc_task_item` DISABLE KEYS */;
INSERT INTO `mdmc_task_item` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,1,'摄像头',NULL,NULL,'摄像头异常关闭',NULL,123.300000,222.100000,NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `mdmc_task_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_task_item_log`
--

DROP TABLE IF EXISTS `mdmc_task_item_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_task_item_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '对应的任务ID',
  `status` int(10) DEFAULT NULL COMMENT '当前操作对应的状态',
  `movement` varchar(100) DEFAULT NULL COMMENT '当前发生动作的描述（维修工或甲方用户填写）',
  `task_item_id` bigint(20) DEFAULT NULL COMMENT '对应的任务子项ID',
  `status_timestamp` datetime DEFAULT NULL COMMENT '当前发生操作对应的时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_task_item_log`
--

LOCK TABLES `mdmc_task_item_log` WRITE;
/*!40000 ALTER TABLE `mdmc_task_item_log` DISABLE KEYS */;
INSERT INTO `mdmc_task_item_log` VALUES (1,NULL,NULL,NULL,NULL,'张三',1,NULL,9,2,'维修任务提交成功，等待审核',1,NULL);
/*!40000 ALTER TABLE `mdmc_task_item_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdmc_task_log`
--

DROP TABLE IF EXISTS `mdmc_task_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdmc_task_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `status` int(10) DEFAULT NULL COMMENT '当前操作对应的状态',
  `movement` varchar(100) DEFAULT NULL COMMENT '当前操作的描述',
  `status_timestamp` datetime DEFAULT NULL COMMENT '当前操作对应的时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdmc_task_log`
--

LOCK TABLES `mdmc_task_log` WRITE;
/*!40000 ALTER TABLE `mdmc_task_log` DISABLE KEYS */;
INSERT INTO `mdmc_task_log` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,9,2,'维修任务提交成功，等待审核',NULL);
/*!40000 ALTER TABLE `mdmc_task_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 11:06:06
