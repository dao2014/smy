/*
Navicat MySQL Data Transfer

Source Server         : MY
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : test_mybatis

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2015-12-02 10:11:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for datasource
-- ----------------------------
DROP TABLE IF EXISTS `datasource`;
CREATE TABLE `datasource` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DBS_ID` varchar(4) NOT NULL,
  `DBS_Name` varchar(64) DEFAULT NULL,
  `DBS_DriverClassName` varchar(256) NOT NULL,
  `DBS_URL` varchar(256) NOT NULL,
  `DBS_UserName` varchar(64) NOT NULL,
  `DBS_Password` varchar(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datasource
-- ----------------------------
INSERT INTO `datasource` VALUES ('1', '1', '本地连接1', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_1?useUnicode=true&amp;characterEncoding=utf-8', 'root', '123456');
INSERT INTO `datasource` VALUES ('2', '2', '本地连接2', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_2?useUnicode=true&amp;characterEncoding=utf-8', 'root', '123456');
INSERT INTO `datasource` VALUES ('3', '3', '本地连接3', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_3?useUnicode=true&amp;characterEncoding=utf-8', 'root', '123456');
INSERT INTO `datasource` VALUES ('4', '4', '本地连接4', 'com.mysql.jdbc.Driver', 'jdbc:mysql://127.0.0.1:3306/test_mybatis_4?useUnicode=true&amp;characterEncoding=utf-8', 'root', '123456');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_00
-- ----------------------------
DROP TABLE IF EXISTS `user_00`;
CREATE TABLE `user_00` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_00
-- ----------------------------

-- ----------------------------
-- Table structure for user_01
-- ----------------------------
DROP TABLE IF EXISTS `user_01`;
CREATE TABLE `user_01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_01
-- ----------------------------

-- ----------------------------
-- Table structure for user_02
-- ----------------------------
DROP TABLE IF EXISTS `user_02`;
CREATE TABLE `user_02` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_02
-- ----------------------------

-- ----------------------------
-- Table structure for user_03
-- ----------------------------
DROP TABLE IF EXISTS `user_03`;
CREATE TABLE `user_03` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_03
-- ----------------------------

-- ----------------------------
-- Table structure for user_04
-- ----------------------------
DROP TABLE IF EXISTS `user_04`;
CREATE TABLE `user_04` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_04
-- ----------------------------

-- ----------------------------
-- Table structure for user_05
-- ----------------------------
DROP TABLE IF EXISTS `user_05`;
CREATE TABLE `user_05` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_05
-- ----------------------------

-- ----------------------------
-- Table structure for user_06
-- ----------------------------
DROP TABLE IF EXISTS `user_06`;
CREATE TABLE `user_06` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_06
-- ----------------------------

-- ----------------------------
-- Table structure for user_07
-- ----------------------------
DROP TABLE IF EXISTS `user_07`;
CREATE TABLE `user_07` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `nickname` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_07
-- ----------------------------
