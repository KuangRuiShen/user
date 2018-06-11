/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50639
Source Host           : 127.0.0.1:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-06-11 14:58:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `remark` text,
  `imgurl` varchar(500) DEFAULT NULL,
  `px` varchar(100) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `code_id` int(5) NOT NULL,
  PRIMARY KEY (`id`,`name`,`type`,`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('1', '主页', 'page', '1');
INSERT INTO `code` VALUES ('2', 'vip', 'page', '2');
INSERT INTO `code` VALUES ('3', '试看区', 'page', '3');
INSERT INTO `code` VALUES ('4', '等级一', 'level', '1');
INSERT INTO `code` VALUES ('5', '等级二', 'level', '2');
INSERT INTO `code` VALUES ('6', '等级三', 'level', '3');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for login_user
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('25', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'dfsfw32');

-- ----------------------------
-- Table structure for moneylog
-- ----------------------------
DROP TABLE IF EXISTS `moneylog`;
CREATE TABLE `moneylog` (
  `user_id` varchar(32) NOT NULL,
  `money` decimal(10,0) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneylog
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for star
-- ----------------------------
DROP TABLE IF EXISTS `star`;
CREATE TABLE `star` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `px` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of star
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `creat_time` varchar(20) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `remark` longtext,
  `px` int(5) DEFAULT '1',
  `imgurl` varchar(100) DEFAULT NULL,
  `videourl` varchar(100) DEFAULT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `watch` int(2) DEFAULT '1',
  `sid` varchar(32) DEFAULT NULL COMMENT '明星',
  `level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------

-- ----------------------------
-- Table structure for video_cid
-- ----------------------------
DROP TABLE IF EXISTS `video_cid`;
CREATE TABLE `video_cid` (
  `vid` varchar(32) NOT NULL,
  `cid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_cid
-- ----------------------------

-- ----------------------------
-- Table structure for video_img
-- ----------------------------
DROP TABLE IF EXISTS `video_img`;
CREATE TABLE `video_img` (
  `vid` varchar(32) NOT NULL,
  `imgurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_img
-- ----------------------------
