/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50639
Source Host           : 127.0.0.1:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-06-14 14:58:07
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
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `code_id` int(5) NOT NULL,
  PRIMARY KEY (`name`,`type`,`code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('vip', 'page', '2');
INSERT INTO `code` VALUES ('主页', 'page', '1');
INSERT INTO `code` VALUES ('普通用户', 'level', '0');
INSERT INTO `code` VALUES ('等级一', 'level', '1');
INSERT INTO `code` VALUES ('等级三', 'level', '3');
INSERT INTO `code` VALUES ('等级二', 'level', '2');
INSERT INTO `code` VALUES ('管理员', 'level', '100');
INSERT INTO `code` VALUES ('试看区', 'page', '3');

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
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `total_fee` int(20) DEFAULT NULL,
  `trade_no` varchar(20) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `trade_type` varchar(16) DEFAULT NULL,
  `user_id` varchar(32) NOT NULL,
  `result` varchar(2) NOT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '交易单号',
  PRIMARY KEY (`trade_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1', '1528957604243', 'VIP充值', 'WX', '7929e800985c4d749c75212af0188300', '0', '2018-06-14 14:26:44', null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of star
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `recharge_time` datetime DEFAULT NULL,
  `valid_time` datetime DEFAULT NULL,
  `role_id` varchar(32) NOT NULL,
  `invite_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5673409fbd4a45d187ebd27b6f86bdf1', '2018-06-13 20:32:27', '2018-06-14 20:32:27', '100', null, '2018-06-13 20:32:27');
INSERT INTO `user` VALUES ('7336df85761d4a8785d5cb28450de7e7', '2018-06-13 09:23:31', '2018-06-14 09:23:31', '100', null, null);
INSERT INTO `user` VALUES ('7929e800985c4d749c75212af0188300', '2018-06-13 20:45:34', '2018-06-14 20:45:34', '0', '5673409fbd4a45d187ebd27b6f86bdf1', '2018-06-13 20:45:34');

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
