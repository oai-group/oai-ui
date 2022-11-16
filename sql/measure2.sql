/*
 Navicat Premium Data Transfer

 Source Server         : enb2
 Source Server Type    : MySQL
 Source Server Version : 50733
 Source Host           : 192.168.31.50:3306
 Source Schema         : mytestdb

 Target Server Type    : MySQL
 Target Server Version : 50733
 File Encoding         : 65001

 Date: 22/10/2021 13:04:02
*/

CREATE DATABASE IF NOT EXISTS `mytestdb`;
USE `mytestdb`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for measure2
-- ----------------------------
DROP TABLE IF EXISTS `measure2`;
CREATE TABLE `measure2`  (
  `srcIP` bigint(0) NOT NULL,
  `dstIP` bigint(0) NOT NULL,
  `srcPort` smallint(0) UNSIGNED NOT NULL,
  `dstPort` smallint(0) UNSIGNED NOT NULL,
  `protocol` tinyint(0) UNSIGNED NOT NULL,
  `averBytes` double(20, 1) NULL DEFAULT NULL,
  `averPkts` double(20, 1) NULL DEFAULT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;