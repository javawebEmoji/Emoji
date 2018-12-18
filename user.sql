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

 Date: 18/12/2018 00:21:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (6, 'manzuo', '12', '13777841581', 'java', 'web', '1706@hdu.edu.cn', '2018-12-14', '', '男', '2018-12-04 16:41:25');
INSERT INTO `user` VALUES (7, '17051705', 'root', '12345678901', 'api', 'api', NULL, NULL, NULL, NULL, '2018-12-12 00:48:54');
INSERT INTO `user` VALUES (9, '表情包', 'xiaowen', '12345678911', 'emoji', 'emoji', '1706@hdu.edu.cn', '2018-12-05', '阿斯顿', '男', '2018-12-17 19:24:56');
INSERT INTO `user` VALUES (10, 'emoji', '123', '13457134571', 'emoji', 'emoji', NULL, NULL, NULL, NULL, '2018-12-17 23:30:28');
INSERT INTO `user` VALUES (11, 'Aaron', 'Aaron', '13457156789', 'Aaron', 'Aaron', NULL, NULL, NULL, NULL, '2018-12-13 23:33:31');
INSERT INTO `user` VALUES (12, 'Darren', 'Darren', '17848754156', 'Darren', 'Darren', NULL, NULL, NULL, NULL, '2018-12-16 23:33:38');
INSERT INTO `user` VALUES (13, 'Baron', 'Baron', '16546416514', 'Baron', 'Baron', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
