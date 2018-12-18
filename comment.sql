/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : emoji

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 18/12/2018 00:21:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_content` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 'admin', 'test1', '2018-12-10 19:30:00');
INSERT INTO `comment` VALUES (3, 'jc', 'emmmmmm', '2018-12-11 08:48:00');
INSERT INTO `comment` VALUES (4, 'admin', 'sda', '2018-12-17 22:43:19');
INSERT INTO `comment` VALUES (5, 'admin', '顶顶顶', '2018-12-17 22:43:46');
INSERT INTO `comment` VALUES (7, 'admin', '大苏打', '2018-12-19 22:44:32');
INSERT INTO `comment` VALUES (8, 'mannzuo', '埃杜阿多', '2018-12-05 22:44:53');

SET FOREIGN_KEY_CHECKS = 1;
