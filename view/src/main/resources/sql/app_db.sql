/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50639
Source Host           : 127.0.0.1:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-05-31 09:23:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  `px` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('12313', '1312312', 'sdfasf2', null, '333');
INSERT INTO `category` VALUES ('412412', '4124124', '4124', null, '222');
INSERT INTO `category` VALUES ('4124124', '123123', '13123', null, '3');

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
INSERT INTO `user` VALUES ('0903290b0d904df898f6d12ca746ec67', 'aaa', '2018-05-25 16:55:34', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('1a8635e24618483f9008331961cc15eb', 'aaa', '2018-05-25 17:08:34', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('20abc9848c25462598922d1ebabb19d1', 'aaa', '2018-05-25 16:58:47', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('2b7d4536f7cf4fa7914eab56bca9ca88', 'aaa', '2018-05-25 17:06:10', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('3f647fb9daff43cab78381c49cacf32a', 'aaa', '2018-05-25 16:56:57', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('64340bc7a8764250a26cf0ffa02d61eb', 'baba', '2018-05-25 17:22:30', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('6567b274a60c4ec29f9197d70653ecab', 'aaa', '2018-05-25 17:14:22', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('689cccbb3437439f80565eefb62f7fe5', 'aaa', '2018-05-25 17:00:19', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('7c2648416fac451cb0bedaa4707e9300', 'aaa', '2018-05-25 16:55:29', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('7fc65c5b84234e1a925a79c88e2f8696', 'baba', '2018-05-25 17:18:51', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('9b297b173abc4268bc59912cabc7a682', 'aaa', '2018-05-25 16:56:22', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('dddd', 'aa', '2017-10-25 15:10:10', 'dd', 'dd', '');
INSERT INTO `user` VALUES ('e1a4171a1cea47c0aaf07d6958c69569', 'aaa', '2018-05-25 17:16:31', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('ecbe89f9e4184394bb41fee4995f34d2', 'aaa', '2018-05-25 17:10:08', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('f03a10a950c54e3891f188de63dc692e', 'aaa', '2018-05-25 17:05:16', 'dffsdf', 'fsafasdf', '0');
INSERT INTO `user` VALUES ('f7fde9c7f8af4360bbd9d83d0390fdd3', 'baba', '2018-05-25 17:23:31', 'dffsdf', 'fsafasdf', '0');
