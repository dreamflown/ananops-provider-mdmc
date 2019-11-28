/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.7
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : ananops_mdmc

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 27/11/2019 10:56:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for mdmc_device
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_device`;
CREATE TABLE `mdmc_device`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `device_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设别型号',
  `device_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备类型',
  `count` int(20) DEFAULT NULL COMMENT '剩余设备数',
  `cost` decimal(10, 3) DEFAULT NULL COMMENT '设备单价',
  `manufacture` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备生产厂商',
  `production_date` datetime(0) DEFAULT NULL COMMENT '设备生产日期',
  `installation_date` datetime(0) DEFAULT NULL COMMENT '设备安装日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_device_order
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_device_order`;
CREATE TABLE `mdmc_device_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '对应的任务ID',
  `task_item_id` bigint(20) DEFAULT NULL COMMENT '对应的任务子项ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '对应的维修工ID',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `cost` decimal(10, 3) DEFAULT NULL COMMENT '当前订单的花费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_exception_log
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_exception_log`;
CREATE TABLE `mdmc_exception_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '系统应用名',
  `exception_simple_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '异常类型',
  `exception_message` varchar(4500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '异常信息(通过exception.getMessage()获取到的内容)',
  `exception_cause` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '异常原因(通过exception.getCause()获取到的内容)',
  `exception_stack` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '异常堆栈信息',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '操作者姓名',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '操作者id',
  `create_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_review
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_review`;
CREATE TABLE `mdmc_review`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `facilitator_id` bigint(20) DEFAULT NULL COMMENT '服务商ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工程师ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '申请维修维护的用户的ID',
  `score` int(5) DEFAULT NULL COMMENT '服务评级',
  `contents` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '服务评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_task
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_task`;
CREATE TABLE `mdmc_task`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发起此次维修请求的用户ID',
  `principal_id` bigint(20) DEFAULT NULL COMMENT '用户负责人（领导）ID',
  `project_id` bigint(20) DEFAULT NULL COMMENT '任务对应的项目ID',
  `facilitator_id` bigint(20) DEFAULT NULL COMMENT '服务商ID',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工ID',
  `scheduled_finish_time` datetime(0) DEFAULT NULL COMMENT '预计完成时间',
  `actual_finish_time` datetime(0) DEFAULT NULL COMMENT '实际完成时间',
  `scheduled_start_time` datetime(0) DEFAULT NULL COMMENT '预计开始时间',
  `actual_start_time` datetime(0) DEFAULT NULL COMMENT '实际开始时间',
  `deadline` datetime(0) DEFAULT NULL COMMENT '最迟完成时间',
  `request_latitude` decimal(10, 6) DEFAULT NULL COMMENT '请求维修的地点，纬度',
  `request_longitude` decimal(10, 6) DEFAULT NULL COMMENT '请求维修的地点，经度',
  `status` int(10) DEFAULT NULL COMMENT '当前任务的进度状态',
  `total_cost` decimal(10, 3) DEFAULT NULL COMMENT '维修总花费',
  `clearing_form` int(5) DEFAULT NULL COMMENT '结算方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_task_item
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_task_item`;
CREATE TABLE `mdmc_task_item`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `device_id` bigint(20) DEFAULT NULL COMMENT '设备ID',
  `actual_finish_time` datetime(0) DEFAULT NULL COMMENT '完成维修的时间戳',
  `actual_start_time` datetime(0) DEFAULT NULL COMMENT '开始维修的时间戳',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '故障描述',
  `level` int(5) DEFAULT NULL COMMENT '故障等级',
  `device_latitude` decimal(10, 6) DEFAULT NULL COMMENT '故障设备位置，纬度',
  `device_longitude` decimal(10, 6) DEFAULT NULL COMMENT '故障设备位置，经度',
  `maintainer_id` bigint(20) DEFAULT NULL COMMENT '维修工ID',
  `status` int(5) DEFAULT NULL COMMENT '当前维修状态',
  `suggestion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修建议（维修工填写）',
  `result` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '维修结果（维修工填写）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_task_item_log
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_task_item_log`;
CREATE TABLE `mdmc_task_item_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '对应的任务ID',
  `status` int(10) DEFAULT NULL COMMENT '当前操作对应的状态',
  `movement` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当前发生动作的描述（维修工或甲方用户填写）',
  `task_item_id` bigint(20) DEFAULT NULL COMMENT '对应的任务子项ID',
  `status_timestamp` datetime(0) DEFAULT NULL COMMENT '当前发生操作对应的时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mdmc_task_log
-- ----------------------------
DROP TABLE IF EXISTS `mdmc_task_log`;
CREATE TABLE `mdmc_task_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `version` int(11) DEFAULT NULL COMMENT '版本号',
  `creator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人ID',
  `created_time` datetime(0) DEFAULT NULL COMMENT '创建时间',
  `last_operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '最近操作人',
  `last_operator_id` bigint(20) DEFAULT NULL COMMENT '最后操作人ID',
  `update_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '任务ID',
  `status` int(10) DEFAULT NULL COMMENT '当前操作对应的状态',
  `movement` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当前操作的描述',
  `status_timestamp` datetime(0) DEFAULT NULL COMMENT '当前操作对应的时间戳',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
