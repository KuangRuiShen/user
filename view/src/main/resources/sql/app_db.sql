/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-06-02 15:21:18
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
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for moneylog
-- ----------------------------
DROP TABLE IF EXISTS `moneylog`;
CREATE TABLE `moneylog` (
  `user_id` varchar(32) NOT NULL,
  `money` decimal(10,0) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `cid` varchar(32) DEFAULT NULL,
  `watch` int(2) DEFAULT '1',
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video_img
-- ----------------------------
DROP TABLE IF EXISTS `video_img`;
CREATE TABLE `video_img` (
  `vid` varchar(32) NOT NULL,
  `imgurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
