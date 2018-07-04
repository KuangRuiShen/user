/*
Navicat MySQL Data Transfer

Source Server         : 101.132.170.212
Source Server Version : 50560
Source Host           : 101.132.170.212:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-06-29 09:43:58
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
INSERT INTO `code` VALUES ('等级五', 'level', '5');
INSERT INTO `code` VALUES ('等级四', 'level', '4');
INSERT INTO `code` VALUES ('管理员', 'level', '100');
INSERT INTO `code` VALUES ('试看区', 'page', '3');

-- ----------------------------
-- Table structure for code_meal
-- ----------------------------
DROP TABLE IF EXISTS `code_meal`;
CREATE TABLE `code_meal` (
  `code_id` varchar(32) DEFAULT NULL,
  `one` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_meal
-- ---------------------------

-- ----------------------------
-- Table structure for code_text
-- ----------------------------
DROP TABLE IF EXISTS `code_text`;
CREATE TABLE `code_text` (
  `code_id` varchar(32) DEFAULT NULL,
  `text` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of code_text
-- ----------------------------
INSERT INTO `code_text` VALUES ('1', '周');
INSERT INTO `code_text` VALUES ('2', '月');
INSERT INTO `code_text` VALUES ('3', '季');
INSERT INTO `code_text` VALUES ('4', '年');
INSERT INTO `code_text` VALUES ('5', '永久');

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- -----------------------------
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
-- Table structure for menoy_info
-- ----------------------------
DROP TABLE IF EXISTS `menoy_info`;
CREATE TABLE `menoy_info` (
  `total_fee` int(20) DEFAULT NULL,
  `trade_no` varchar(20) DEFAULT NULL,
  `mch_id` varchar(16) DEFAULT NULL,
  `payment_time` varchar(20) DEFAULT NULL,
  `out_trade_no` varchar(32) NOT NULL DEFAULT '' COMMENT '交易单号',
  `end_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for pay_info
-- ----------------------------
DROP TABLE IF EXISTS `pay_info`;
CREATE TABLE `pay_info` (
  `key` varchar(32) DEFAULT NULL,
  `mch_id` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_info
-- ----------------------------
INSERT INTO `pay_info` VALUES ('cbd4f10f115673f0e76d223168bf99d3', 'gxtttooo', 'http://weixin.n1lm.cn/platform/pay/unifiedorder/video');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


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
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:10:50', '陈国栋', '15622193100');
INSERT INTO `user` VALUES ('2', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:20:50', '张天梁', '15622193200');
INSERT INTO `user` VALUES ('3', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:30:50', '李嘉晨', '15622193300');
INSERT INTO `user` VALUES ('4', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:40:50', '大哥的测试号', '15622193400');
INSERT INTO `user` VALUES ('5', '2018-06-14 17:26:59', '2018-06-15 17:26:59', '100', null, null, '胡珊珊', '15622193500');
INSERT INTO `user` VALUES ('6', '2018-06-14 22:24:26', '2018-06-15 22:24:26', '5', null, '2018-06-14 22:24:26', '刘继', '1562219600');
INSERT INTO `user` VALUES ('7', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:50:50', '周魉', '1562219700');

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `user_id` varchar(32) NOT NULL,
  `out_trade_no` varchar(32) NOT NULL,
  `total_fee` int(10) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `trade_type` varchar(10) NOT NULL,
  `start_time` varchar(32) DEFAULT NULL,
  `result` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `time` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
-- Table structure for video_img
-- ----------------------------
DROP TABLE IF EXISTS `video_img`;
CREATE TABLE `video_img` (
  `vid` varchar(32) NOT NULL,
  `imgurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
