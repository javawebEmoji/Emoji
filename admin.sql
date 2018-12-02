/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : emoji

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-12-02 13:52:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_name` varchar(20) NOT NULL,
  `admin_password` varchar(16) NOT NULL,
  `admin_account` varchar(20) NOT NULL,
  `admin_phone` varchar(11) DEFAULT NULL,
  `modifyadmin` varchar(20) DEFAULT NULL,
  `modifytime` time(6) DEFAULT NULL,
  PRIMARY KEY (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('系统管理员', 'root', 'root', '12345678', null, null);
