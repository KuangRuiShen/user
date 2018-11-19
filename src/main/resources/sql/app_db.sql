/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : app_db

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-11-20 00:11:33
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
INSERT INTO `category` VALUES ('0f2cef70b35542648f5dfd21e5b13432', '1', null, 'http://128.14.132.134/upload/img/20181009190904811.JPG', '1', '3');
INSERT INTO `category` VALUES ('2a89d4f34e744d74bc166dc3e6e4682d', '童颜巨乳', null, 'http://128.14.132.134/upload/img/20181003215506829.jpg', '1', '1');
INSERT INTO `category` VALUES ('3a889912a85b43a2aacdcb329c982c9f', '亚洲无码', null, 'http://128.14.132.134/upload/img/20181003215440705.jpg', '1', '1');
INSERT INTO `category` VALUES ('554fd4123d7b4caab4f7bf3e260f6ddf', 'VIP', '频道推荐图片', 'http://128.14.132.134/upload/img/20181009193200253.jpg', '1', '2');
INSERT INTO `category` VALUES ('76a1d8e3eaae4045b6ca89bd55b944a6', '人妻熟女', null, 'http://128.14.132.134/upload/img/20181003215419982.jpg', '1', '1');
INSERT INTO `category` VALUES ('8352cbfa4d764d579b1fec218dcc4c47', '偷拍自拍', null, 'http://128.14.132.134/upload/img/2018100321530667.jpg', '1', '1');
INSERT INTO `category` VALUES ('866f81641611440e9855403d09f113c8', '当红女优', null, 'http://128.14.132.134/upload/img/20181003214940974.jpg', '1', '1');
INSERT INTO `category` VALUES ('8a277dc45e994220abda8bab125935f6', '制服诱惑', null, 'http://128.14.132.134/upload/img/20181003215710534.jpg', '1', '1');
INSERT INTO `category` VALUES ('99bcb0b9295043a595548d9db22d6266', '网红直播', null, 'http://128.14.132.134/upload/img/20181003215151904.jpg', '1', '1');
INSERT INTO `category` VALUES ('a9c969fba6bd4f36889e5704e682d527', '我在首页显示', null, 'http://128.14.132.134/upload/img/20181009185302797.png', '1', '4');
INSERT INTO `category` VALUES ('bc53f9074b5442bf862cdb03f5bd79d8', '人气排行', null, 'http://128.14.132.134/upload/img/20181003214806908.jpg', '1', '1');
INSERT INTO `category` VALUES ('eda68b624aa94526aadc649485b98320', '热播', '热播', null, '1', '4');

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
INSERT INTO `code` VALUES ('首页热播', 'page', '4');

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
-- ----------------------------
INSERT INTO `code_meal` VALUES ('2', '100');
INSERT INTO `code_meal` VALUES ('3', '100');
INSERT INTO `code_meal` VALUES ('4', '100');
INSERT INTO `code_meal` VALUES ('5', '100');
INSERT INTO `code_meal` VALUES ('1', '2800');

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
INSERT INTO `code_text` VALUES ('1', '黄金');
INSERT INTO `code_text` VALUES ('2', '铂金');
INSERT INTO `code_text` VALUES ('3', '钻石');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
  `id` varchar(32) NOT NULL,
  `file_size` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `local_name` varchar(200) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_info
-- ----------------------------
INSERT INTO `file_info` VALUES ('a0df0756f3cc4fb3b00c28724ccf7cf5', '3762652', '1.apk', '/api/file/apk/a0df0756f3cc4fb3b00c28724ccf7cf5', '1542120091676.apk', '2018-11-13');
INSERT INTO `file_info` VALUES ('a81dcae7c91b4c548c8a9e46bd18a929', '45', '新建文本文档.txt', '/api/file/apk/a81dcae7c91b4c548c8a9e46bd18a929', '1542119939852.txt', '2018-11-13');
INSERT INTO `file_info` VALUES ('adfc45ef51314e35958fb375e8e93368', '74817', 'app_db.sql', '/api/file/apk/adfc45ef51314e35958fb375e8e93368', '1542119904747.sql', '2018-11-13');

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of label
-- ----------------------------

-- ----------------------------
-- Table structure for login_user
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `people` int(10) DEFAULT NULL,
  `remark` varchar(5000) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `fileId` varchar(32) DEFAULT NULL,
  `num` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_user
-- ----------------------------
INSERT INTO `login_user` VALUES ('25', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', null, 'dfsfw32', null, null, '11');
INSERT INTO `login_user` VALUES ('34', 'krs', '7dd500eaf83f4a59499b36b7e85adab5', '4', '1', '11', '11', 'a0df0756f3cc4fb3b00c28724ccf7cf5', null);
INSERT INTO `login_user` VALUES ('35', 'kuang', '7dd500eaf83f4a59499b36b7e85adab5', '111', '1', '11', '1', null, null);
INSERT INTO `login_user` VALUES ('40', 'kuang1', '7dd500eaf83f4a59499b36b7e85adab5', '9', '1', '11', '1', null, null);

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
  `end_time` varchar(20) DEFAULT NULL,
  `type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menoy_info
-- ----------------------------
INSERT INTO `menoy_info` VALUES ('100', '2018061402404023', 'sss', '2018-11-13 17:26:01', '1539076783350', '2018-11-13 17:26:01', '1');
INSERT INTO `menoy_info` VALUES ('200', '20180614024040231', 'aa', '2018-11-13 17:26:01', '1539146106636', '2018-11-13 17:26:01', '1');

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
INSERT INTO `pay_info` VALUES ('cbd4f10f115673f0e76d223168bf99d3', 'gxtttooo', 'http://weixin.9xen12.cn/platform/pay/unifiedorder/video');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES ('22', '波多野结衣', null, 'http://128.14.132.134/upload/img/2018100321263899.jpg', '1');
INSERT INTO `star` VALUES ('23', '冲田杏梨', null, 'http://128.14.132.134/upload/img/20181003214607404.jpg', '1');
INSERT INTO `star` VALUES ('24', '麻生希', null, 'http://128.14.132.134/upload/img/20181003212750829.jpg', '1');
INSERT INTO `star` VALUES ('25', '吉尺明步', null, 'http://128.14.132.134/upload/img/20181003212842923.jpg', '1');
INSERT INTO `star` VALUES ('26', '大桥未久', null, 'http://128.14.132.134/upload/img/20181003213028618.jpg', '1');
INSERT INTO `star` VALUES ('27', '苍井空', null, 'http://128.14.132.134/upload/img/20181003213825975.jpg', '1');
INSERT INTO `star` VALUES ('28', '佐佐木希', null, 'http://128.14.132.134/upload/img/2018100321310148.jpg', '1');
INSERT INTO `star` VALUES ('29', '上亚原衣', null, 'http://128.14.132.134/upload/img/20181003213227621.jpg', '1');
INSERT INTO `star` VALUES ('30', '随机', '随机', null, '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL,
  `recharge_time` datetime NOT NULL,
  `valid_time` datetime DEFAULT NULL,
  `role_id` varchar(32) NOT NULL,
  `invite_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '2018-10-09 18:56:09', '2018-10-10 18:56:09', '0', '4', '2018-10-09 18:56:09', null, null, null);
INSERT INTO `user` VALUES ('0323aa70e2dc4a4f9e85278b53393faa', '2018-10-28 22:35:47', '2018-10-29 22:35:47', '0', '4', '2018-10-28 22:35:47', null, null, null);
INSERT INTO `user` VALUES ('0e11626855714901a97f1f2a44005e48', '2018-10-22 16:31:24', '2018-10-23 16:31:24', '0', '2', '2018-10-22 16:31:24', null, null, null);
INSERT INTO `user` VALUES ('0e326037bd1d4feb93cf7854cdfe5266', '2018-10-15 10:05:36', '2018-10-16 10:05:36', '0', '1', '2018-10-15 10:05:36', null, null, null);
INSERT INTO `user` VALUES ('1', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-13 09:10:50', '管理员1', '1', '管理员1电话');
INSERT INTO `user` VALUES ('10', '2018-10-08 18:47:03', '2018-10-09 18:47:03', '100', null, '2018-10-08 18:47:03', '管理员10', '1', '管理员10电话');
INSERT INTO `user` VALUES ('11', '2018-10-08 18:46:13', '2018-10-09 18:46:13', '100', null, '2018-10-08 18:46:13', '管理员11', '1', '管理员11电话');
INSERT INTO `user` VALUES ('111', '2018-11-16 00:50:30', '2018-11-17 00:50:30', '100', '1', '2018-11-16 00:50:30', '1111', '2', '111');
INSERT INTO `user` VALUES ('12', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-19 09:50:50', '管理员12', '1', '管理员12电话');
INSERT INTO `user` VALUES ('13', '2018-10-08 18:47:01', '2018-10-09 18:47:01', '100', null, '2018-10-08 18:47:01', '管理员13', '1', '管理员13电话');
INSERT INTO `user` VALUES ('14', '2018-10-08 18:46:58', '2018-10-09 18:46:58', '100', null, '2018-10-08 18:46:58', '管理员14', '1', '管理员14电话');
INSERT INTO `user` VALUES ('15', '2018-10-09 10:44:31', '2018-10-10 10:44:31', '100', null, '2018-10-09 10:44:31', '管理员15', '1', '管理员15电话');
INSERT INTO `user` VALUES ('191197be72de46f581643d3341d483f5', '2018-10-17 10:35:08', '2018-10-18 10:35:08', '0', '1', '2018-10-17 10:35:08', null, null, null);
INSERT INTO `user` VALUES ('2', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-14 09:20:50', '管理员2', '1', '管理员2电话');
INSERT INTO `user` VALUES ('215e14639be54336b419660fe9fe4f40', '2018-10-28 22:49:24', '2018-10-29 22:49:24', '0', '4', '2018-10-28 22:49:24', null, null, null);
INSERT INTO `user` VALUES ('221cbfa156c94d06b60ac49adca5526a', '2018-11-04 22:48:10', '2018-11-05 22:48:10', '0', '4', '2018-11-04 22:48:10', null, null, null);
INSERT INTO `user` VALUES ('2276b1d65e0f4fffb08d292b1eda87c0', '2018-11-04 22:45:32', '2018-11-05 22:45:32', '0', '4', '2018-11-04 22:45:32', null, null, null);
INSERT INTO `user` VALUES ('3', '2018-10-08 18:47:00', '2018-10-09 18:47:00', '100', null, '2018-10-08 18:47:00', '管理员3', '1', '管理员3电话');
INSERT INTO `user` VALUES ('3359f1d5c1f642699afcd6b9b4b4255e', '2018-10-09 17:00:26', '2018-10-10 17:00:26', '0', '4', '2018-10-09 17:00:26', null, null, null);
INSERT INTO `user` VALUES ('3941fba9c2ad4eff90c02dbf53124c97', '2018-11-02 19:56:14', '2018-11-03 19:56:14', '0', '4', '2018-11-02 19:56:14', null, null, null);
INSERT INTO `user` VALUES ('3cbd8abed5af40e3bff9213915b90487', '2018-10-28 22:49:24', '2018-10-29 22:49:24', '0', '4', '2018-10-28 22:49:24', null, null, null);
INSERT INTO `user` VALUES ('4', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:30:50', '管理员4', '1', '管理员4电话');
INSERT INTO `user` VALUES ('4120931c56ad442aa2561a0e8bc12b13', '2018-11-02 20:10:21', '2018-11-03 20:10:21', '0', '4', '2018-11-02 20:10:21', null, null, null);
INSERT INTO `user` VALUES ('425c30b6aab24749975d329478249fca', '2018-10-27 00:41:10', '2018-10-28 00:41:10', '0', '4', '2018-10-27 00:41:10', null, null, null);
INSERT INTO `user` VALUES ('461de09883604f2eb6fcbd0679cb31ea', '2018-10-22 16:32:05', '2018-10-23 16:32:05', '0', '1', '2018-10-22 16:32:05', null, null, null);
INSERT INTO `user` VALUES ('4a42b553c5b640c0a2b1dbfa63fb1f3c', '2018-10-11 17:24:30', '2018-10-12 17:24:30', '0', '4', '2018-10-11 17:24:30', null, null, null);
INSERT INTO `user` VALUES ('5', '2018-10-08 18:46:07', '2018-10-09 18:46:07', '100', null, '2018-10-08 18:46:07', '管理员5', '1', '管理员5电话');
INSERT INTO `user` VALUES ('533e32211d594ad5b05de914cf5c4942', '2018-10-12 16:37:51', '2018-10-13 16:37:51', '0', '4', '2018-10-12 16:37:51', null, null, null);
INSERT INTO `user` VALUES ('6', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-16 09:40:50', '管理员6', '1', '管理员6电话');
INSERT INTO `user` VALUES ('6392ac9e1cd64101b3838c12da14d7be', '2018-10-18 08:50:14', '2018-10-19 08:50:14', '0', '1', '2018-10-18 08:50:14', null, null, null);
INSERT INTO `user` VALUES ('66b1fa199575452f836ad0630fc0a704', '2018-10-28 22:35:10', '2018-10-29 22:35:10', '0', '4', '2018-10-28 22:35:10', null, null, null);
INSERT INTO `user` VALUES ('7', '2018-10-08 18:47:04', '2018-10-09 18:47:04', '100', null, '2018-10-08 18:47:04', '管理员7', '1', '管理员7电话');
INSERT INTO `user` VALUES ('7780c5465289464db6c0fa1d9f5d0911', '2018-10-15 10:04:57', '2018-10-16 10:04:57', '0', '1', '2018-10-15 10:04:57', null, null, null);
INSERT INTO `user` VALUES ('7c827d5a26a848e6841d69622617216a', '2018-11-04 22:48:09', '2018-11-05 22:48:09', '0', '4', '2018-11-04 22:48:09', null, null, null);
INSERT INTO `user` VALUES ('8', '2018-06-14 17:26:59', '2018-06-15 17:26:59', '100', null, '2018-06-17 01:41:04', '管理员8', '1', '管理员8电话');
INSERT INTO `user` VALUES ('8980ba77204e43c68c3d3d999aa7db7d', '2018-11-02 19:52:41', '2018-11-03 19:52:41', '0', '4', '2018-11-02 19:52:41', null, null, null);
INSERT INTO `user` VALUES ('8c1d6075761040d99235126f263d9ab8', '2018-10-29 02:32:12', '2018-10-30 02:32:12', '0', '4', '2018-10-29 02:32:12', null, null, null);
INSERT INTO `user` VALUES ('8c493dc69c8a4c7a86a7e63b04527aab', '2018-11-01 22:07:39', '2018-11-02 22:07:39', '0', '4', '2018-11-01 22:07:39', null, null, null);
INSERT INTO `user` VALUES ('9', '2018-06-14 22:24:26', '2018-06-15 22:24:26', '100', null, '2018-06-18 22:24:26', '管理员9', '1', '管理员9电话');
INSERT INTO `user` VALUES ('96c0dbc3371a4f9fa1062b9289b71b31', '2018-10-30 05:31:20', '2018-10-31 05:31:20', '0', '4', '2018-10-30 05:31:20', null, null, null);
INSERT INTO `user` VALUES ('9cbaecb6cfaa4f31938a0ed7af7421a8', '2018-10-28 23:53:00', '2018-10-29 23:53:00', '0', '4', '2018-10-28 23:53:00', null, null, null);
INSERT INTO `user` VALUES ('9e946d8ba0b1405dab6b364c6af98b85', '2018-10-22 15:46:57', '2018-10-23 15:46:57', '0', '1', '2018-10-22 15:46:57', null, null, null);
INSERT INTO `user` VALUES ('a5e2d4d7e5a94f4ca9dc44a9ed477a66', '2018-11-02 20:01:21', '2018-11-03 20:01:21', '0', '4', '2018-11-02 20:01:21', null, null, null);
INSERT INTO `user` VALUES ('d06a20fdab764f4dbdf881e3408e6b9f', '2018-10-09 16:19:10', '2018-10-10 16:19:10', '0', '4', '2018-10-09 16:19:10', null, null, null);
INSERT INTO `user` VALUES ('d1502ad000574a06837c2bca2f5491b5', '2018-10-10 15:43:29', '2018-10-11 15:43:29', '0', '4', '2018-10-10 15:43:29', null, null, null);
INSERT INTO `user` VALUES ('ddec86e553304fce9d196de03a1a89b1', '2018-10-28 23:52:26', '2018-10-29 23:52:26', '0', '4', '2018-10-28 23:52:26', null, null, null);
INSERT INTO `user` VALUES ('dfb90de5c6af49ba805f6d87c2aa59f6', '2018-11-04 22:45:32', '2018-11-05 22:45:32', '0', '4', '2018-11-04 22:45:32', null, null, null);
INSERT INTO `user` VALUES ('e4e904a1a7604144b6c1201ae5e5daee', '2018-10-28 23:49:57', '2018-10-29 23:49:57', '0', '4', '2018-10-28 23:49:57', null, null, null);
INSERT INTO `user` VALUES ('f338c7c038a7428e8414d100167cf5d7', '2018-10-12 11:16:32', '2018-10-13 11:16:32', '0', '4', '2018-10-12 11:16:32', null, null, null);
INSERT INTO `user` VALUES ('f4fe3f0f9ee04803a97c1185d7c410ca', '2018-10-29 00:16:11', '2018-10-30 00:16:11', '0', '4', '2018-10-29 00:16:11', null, null, null);
INSERT INTO `user` VALUES ('ffef28d0de0049be8aa7119f1c7b4c90', '2018-10-16 10:49:26', '2018-10-17 10:49:26', '0', '4', '2018-10-16 10:49:26', null, null, null);

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
  `role_id` varchar(10) DEFAULT NULL,
  `result` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_order
-- ----------------------------
INSERT INTO `user_order` VALUES ('3359f1d5c1f642699afcd6b9b4b4255e', '1539076783350', '100', 'VIP充值', 'WX', '2018-10-09 17:19:43', '1', '0');
INSERT INTO `user_order` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '1539146106636', '2800', 'VIP充值', 'WX', '2018-10-10 12:35:06', '1', '0');
INSERT INTO `user_order` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '1539146474530', '2800', 'VIP充值', 'ALI', '2018-10-10 12:41:14', '1', '0');
INSERT INTO `user_order` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '1539162245634', '2800', 'VIP充值', 'ALI', '2018-10-10 17:04:05', '1', '0');
INSERT INTO `user_order` VALUES ('f338c7c038a7428e8414d100167cf5d7', '1539314362847', '2800', 'VIP充值', 'WX', '2018-10-12 11:19:22', '1', '0');
INSERT INTO `user_order` VALUES ('f338c7c038a7428e8414d100167cf5d7', '1539315297824', '2800', 'VIP充值', 'ALI', '2018-10-12 11:34:57', '1', '0');
INSERT INTO `user_order` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '1539593264888', '2800', 'VIP充值', 'WX', '2018-10-15 16:47:44', '1', '0');
INSERT INTO `user_order` VALUES ('6392ac9e1cd64101b3838c12da14d7be', '1539824157083', '2800', 'VIP充值', 'WX', '2018-10-18 08:55:57', '1', '0');
INSERT INTO `user_order` VALUES ('02bfcf9324d94e3a99ee1ec53dcf4bd2', '1539833075533', '2800', 'VIP充值', 'ALI', '2018-10-18 11:24:35', '1', '0');
INSERT INTO `user_order` VALUES ('9e946d8ba0b1405dab6b364c6af98b85', '1540194503492', '2800', 'VIP充值', 'WX', '2018-10-22 15:48:23', '1', '0');
INSERT INTO `user_order` VALUES ('f338c7c038a7428e8414d100167cf5d7', '1540398696946', '2800', 'VIP充值', 'WX', '2018-10-25 00:31:36', '1', '0');
INSERT INTO `user_order` VALUES ('425c30b6aab24749975d329478249fca', '1540572404613', '2800', 'VIP充值', 'WX', '2018-10-27 00:46:44', '1', '0');
INSERT INTO `user_order` VALUES ('3359f1d5c1f642699afcd6b9b4b4255e', '1540726843818', '2800', 'VIP充值', 'WX', '2018-10-28 19:40:43', '1', '0');

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
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('005eef973caf4722a32ebd7d87c7dee3', ' 白金せりか', '', '1', 'http://128.14.132.134/upload/img/20181009214937185.jpg', 'http://128.14.132.134/upload/video/3535644853eb03e89b25eca05b418cbf.mp4', '蓝光', '1', '28', '0', '1');
INSERT INTO `video` VALUES ('0230fb3fd10447d08900f7490cded374', '天真爛漫少女を独り占め～', '', '1', 'http://128.14.132.134/upload/img/20181010142821113.jpg', 'http://128.14.132.134/upload/video/15290651d0bed54a9da31c7aab2c64ee.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('072a4739944e47f5acf486f29e49323f', '童貞狩り ～家庭教師の', '', '1', 'http://128.14.132.134/upload/img/20181009174847164.jpg', 'http://128.14.132.134/upload/video/b1b0fec86dfcfabf42c4486395ef41e4.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('0d53209d351640cbaa295da64dbda950', 'caribpr-high', '', '1', 'http://128.14.132.134/upload/img/2018100919274833.JPG', 'http://128.14.132.134/upload/video/0d53209d351640cbaa295da64dbda950.mp4', '蓝光', '28', '30', '0', '1');
INSERT INTO `video` VALUES ('0e2ff012c5dd4da39f9ea09dceedc510', ' 禁欲解放日に溺れさせて-米倉のあ', '', '1', 'http://128.14.132.134/upload/img/20181010221450107.jpg', 'http://128.14.132.134/upload/video/a8bee3f2fee07a6d1fc2f0438b1f477c.mp4', 'HD', '1', '22', '0', '1');
INSERT INTO `video` VALUES ('12bc214f4de445579dfb2e143f0f7f85', '872-FHD', '', '1', 'http://128.14.132.134/upload/img/20181009204005602.JPG', 'http://128.14.132.134/upload/video/708ebe6704857fc2f8ee32f669f949ca.mp4', 'HD', '27', '30', '0', '1');
INSERT INTO `video` VALUES ('17e547cdf3524696910be4296a82576b', 'シタくてシタくて来ちゃいました', '', '1', 'http://128.14.132.134/upload/img/20181010130503687.jpg', 'http://128.14.132.134/upload/video/546e8aa364506a7096c87861f4da0d77.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('1c0fc27adbdf4139a25b4b9dbb6849ee', 'gachi797-HD', '', '1', 'http://128.14.132.134/upload/img/20181010232015872.jpg', 'http://128.14.132.134/upload/video/afb76e9a32fdcdef078edcc84e179fd8.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('1eb009d467cb4b419171759335e156c7', '極上泡姫物語 小泉真希', '', '1', 'http://128.14.132.134/upload/img/20181009212037190.jpg', 'http://128.14.132.134/upload/video/14a9f7a7d326e31718cb011c44e284a1.mp4', '蓝光', '2', '26', '0', '1');
INSERT INTO `video` VALUES ('29108f8f80bf4d789f8f31dc8af6f3c7', 'HJJHGUY', '', '1', 'http://128.14.132.134/upload/img/20181010231612509.jpg', 'http://128.14.132.134/upload/video/5b107d15fc391600057f8b729cf7b13c.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('2f3e5a1919c54dfc94b54a4ce0175b58', '超高級ソープ嬢を癒してあげよう', '', '1', 'http://128.14.132.134/upload/img/20181017012808395.jpg', 'http://128.14.132.134/upload/video/edaf29225628f67522acd13767d48981.mp4', '蓝光', '2', '27', '0', '1');
INSERT INTO `video` VALUES ('2fd2d143248947c5b3f4b6692eb26690', '白瀬ここね', '', '1', 'http://128.14.132.134/upload/img/20181009191607849.jpg', 'http://128.14.132.134/upload/video/f3ddda1f8ca8b4c27dfbb9d33c5f8aa3.mp4', '蓝光', '6', '30', '1', '1');
INSERT INTO `video` VALUES ('30ccb93a79414415bf49a67c1e88e577', '性感美女麻仓美娜', '', '1', 'http://128.14.132.134/upload/img/20181010132427436.jpg', 'http://128.14.132.134/upload/video/5f883dda7483e1de6a2d633addb9290b.mp4', 'HD', '1', '28', '0', '1');
INSERT INTO `video` VALUES ('321fe22f527940eeb6f8c26efa24b413', '愛の絆を築きまSHOW', '', '1', 'http://128.14.132.134/upload/img/20181010141355398.jpg', 'http://128.14.132.134/upload/video/8b1295c72b95313b1bc1e2cdbfb010d8.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('389e3e0a144143af89083db319d6262e', 'いくつものムチャ振りにも超マン圧で神対応～', '', '1', 'http://128.14.132.134/upload/img/20181010222902875.jpg', 'http://128.14.132.134/upload/video/1f22584812cf38e5847d5265503afc22.mp4', 'HD', '1', '29', '0', '1');
INSERT INTO `video` VALUES ('3b07e54448af46d287933fd72f86761e', '色白爆乳のメルヘンちゃんとＳＥＸしましたけど', '', '1', 'http://128.14.132.134/upload/img/20181010230652512.jpg', 'http://128.14.132.134/upload/video/fcb464fbaba6f4696f183ade5634f101.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('3b4e96815d004300b2b8b2b92728abd2', '連続潮吹 受精覚悟連続中出 3P勃起', '', '1', 'http://128.14.132.134/upload/img/20181009210821342.jpg', 'http://128.14.132.134/upload/video/9883107a405defdaef7247c1fe82a5ec.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('3d7675cad003401a9f224dd613a0eea3', 'KSLKLJS', '', '1', 'http://128.14.132.134/upload/img/2018100921411986.jpg', 'http://128.14.132.134/upload/video/373fa64bb81abd56c551e740100a7864.mp4', '蓝光', '1', '28', '0', '1');
INSERT INTO `video` VALUES ('40de4da02f114deead2442b0a6742ae4', 'ノーブラ奥さん 仲間あずみ', '', '1', 'http://128.14.132.134/upload/img/20181010141912665.jpg', 'http://128.14.132.134/upload/video/e17752fb8ab34496b8e40f4ed4dd4f3b.mp4', '蓝光', '1', '22', '0', '1');
INSERT INTO `video` VALUES ('42d6473420e245ac936b1be401056c3a', '性感-水元恵梨香', '', '1', 'http://128.14.132.134/upload/img/20181010233706646.jpg', 'http://128.14.132.134/upload/video/302b41cb0126a22cce73c663b5a7f997.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('477de711042d4cd897b7eacd601eef3f', '潮吹 suhiua', '', '1', 'http://128.14.132.134/upload/img/20181016001901986.jpg', 'http://128.14.132.134/upload/video/7e599aedd9aabb639159c72b914526f4.mp4', '蓝光', '2', '29', '0', '1');
INSERT INTO `video` VALUES ('48538a762c0940b28f72d6052a962dff', '新娘初夜', '', '1', 'http://128.14.132.134/upload/img/20181010233213667.jpg', 'http://128.14.132.134/upload/video/5e9b97432ecb0e065c418da92acb50cf.mp4', 'HD', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('49fc56e649df404d80906ef1d6935dac', '淫狂乱行-真白愛梨', '', '1', 'http://128.14.132.134/upload/img/20181010221113980.jpg', 'http://128.14.132.134/upload/video/772f292c29f3c39df2186f6074b19dd6.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('4d9ba56a4ea740df8a5371b5ac781147', 'スカイエンジェル 180 パート 2', '', '1', 'http://128.14.132.134/upload/img/20181010131338121.jpg', 'http://128.14.132.134/upload/video/0c0ab374d54070c23474425eb733a9fd.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('5440e7577d6e4717bd6772c404d94eef', 'YUWYQ', '', '1', 'http://128.14.132.134/upload/img/20181010232506855.jpg', 'http://128.14.132.134/upload/video/a8ecf69ce2290965460919739fe79740.mp4', 'HD', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('57f51716ca8b40ffb167d18817651eba', '全裸家政婦～熟れたカラダで貴方をお掃除', '', '1', 'http://128.14.132.134/upload/img/20181010222539476.jpg', 'http://128.14.132.134/upload/video/03067a3ef877b4afa7bfd8b1d778710b.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('59511e8b9fd4431fb9953c9b6c2f20f6', '259LUXU', '', '1', 'http://128.14.132.134/upload/img/2018101023023131.jpg', 'http://128.14.132.134/upload/video/470b00fcc0f8bc6e4063cbe9258f2487.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('5daec445fa7845039b140814b2a66ae5', 'FHDKJLK', '', '1', 'http://128.14.132.134/upload/img/20181009200949837.jpg', 'http://128.14.132.134/upload/video/bbc79ed990cead74ad4ae8c235a35edc.mp4', '蓝光', '26', '30', '0', '1');
INSERT INTO `video` VALUES ('5dd338d61d65404b8bd7c19c2ce80da4', '872-FHD', '', '1', 'http://128.14.132.134/upload/img/20181016001459121.jpg', 'http://128.14.132.134/upload/video/0929e6b3e7314816a193c098041e7e7c.mp4', '蓝光', '2', '26', '0', '1');
INSERT INTO `video` VALUES ('5e14fa033c4d4ab199b511966a82e930', '青山茉利奈 ', '', '1', 'http://128.14.132.134/upload/img/20181009193844919.jpg', 'http://128.14.132.134/upload/video/0c4a41dea65098b7ca28d05b9fe02044.mp4', '蓝光', '1', '28', '0', '1');
INSERT INTO `video` VALUES ('5fe4389be0174533bd45b2e5cd4669fe', '3p公司同事', '', '1', 'http://128.14.132.134/upload/img/20181010235140273.jpg', 'http://128.14.132.134/upload/video/d274a88b75de4344b1fd1b66388fdac3.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('60570af020614a548bebca4234faa626', 'JKJKJHSDJA', '', '1', 'http://128.14.132.134/upload/img/20181009214002765.jpg', 'http://128.14.132.134/upload/video/1136e7d1e435152a0ce4c9949edd9e4a.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('62d8c3d1d12040e8a0267f8a314beadf', '美人セフレとホテルで-真行寺あゆむ', '', '1', 'http://128.14.132.134/upload/img/20181010220822421.jpg', 'http://128.14.132.134/upload/video/a83d37044549dd0316acc9c209f22238.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('64d3c921f4324f78b84ee560f176a04b', '100215_380-caribpr', '', '1', 'http://128.14.132.134/upload/img/20181010231312406.jpg', 'http://128.14.132.134/upload/video/3718bf88921e5242c65e651a4478d0fb.mp4', 'HD', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('6a8f1e83999448fc8b3a36738dcfed34', '甲斐ミハルが僕のお嫁さん', '', '1', 'http://128.14.132.134/upload/img/20181010221847637.jpg', 'http://128.14.132.134/upload/video/4372e84655c3ed63afc4f116a2a50ae5.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('6ae983fb9c3f4f859b2191c20ca0ff52', 'うまのり痴女逆夜這い', '', '1', 'http://128.14.132.134/upload/img/20181017012606827.jpg', 'http://128.14.132.134/upload/video/215dba09cb2cf8f876428188584deae3.mp4', '蓝光', '2', '27', '0', '1');
INSERT INTO `video` VALUES ('6e20cc13afa34ff98844f8bae934047d', '娘倶楽部_Two_川井まゆ', '', '1', 'http://128.14.132.134/upload/img/20181009202735397.jpg', 'http://128.14.132.134/upload/video/8fbf18ad19b456ba2632a2982ec7cb88.mp4', '蓝光', '28', '30', '0', '1');
INSERT INTO `video` VALUES ('70c515fc6a39488888f36370f1039d53', '極上風俗嬢の美爆乳～', '', '1', 'http://128.14.132.134/upload/img/20181009213739180.jpg', 'http://128.14.132.134/upload/video/d205410b3ba106677b860929ba50087c.mp4', '蓝光', '1', '25', '0', '1');
INSERT INTO `video` VALUES ('71ebbe1a048742cf92555c8e7c759337', '心跳時刻～JK小動物系女子', '', '1', 'http://128.14.132.134/upload/img/20181010230144158.jpg', 'http://128.14.132.134/upload/video/c25ac68bbcde24b030d9ef5f0d42fcec.mp4', 'HD', '1', '24', '0', '1');
INSERT INTO `video` VALUES ('78c742629f064256969b4785cc11badd', 'heyzo_hd_0737', '', '1', 'http://128.14.132.134/upload/img/20181009185435204.jpg', 'http://128.14.132.134/upload/video/65bd30859fe50944f5db88b7554af0c7.mp4', '蓝光', '1', '25', '0', '1');
INSERT INTO `video` VALUES ('7a4a19a856ee40fc8e94c6d8b9a99889', 'たお礼にしゃぶらせて下さい！ 水島にな', '', '1', 'http://128.14.132.134/upload/img/20181017012907275.jpg', 'http://128.14.132.134/upload/video/21490e05c4a5ccd58704ccb74eb8b0fb.mp4', '蓝光', '1', '23', '0', '1');
INSERT INTO `video` VALUES ('80c23d3a0e2a47378d68f72efa9c941c', '視界侵入～保坂えりEri', '', '1', 'http://128.14.132.134/upload/img/20181009205317326.jpg', 'http://128.14.132.134/upload/video/6b45a07823713ab7de48662c87da7a43.mp4', '蓝光', '27', '30', '0', '1');
INSERT INTO `video` VALUES ('82710c2672a6441d944c7726cd74b7fd', '純粋な上目使いで甘える人妻にフル勃起', '', '1', 'http://128.14.132.134/upload/img/20181010224250124.jpg', 'http://128.14.132.134/upload/video/84407c089b6828e5dc382abb3eccd48c.mp4', 'HD', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('84babf96f36f444f9afd333054eb1262', '在家和哥哥做爱', '', '1', 'http://128.14.132.134/upload/img/20181010234317719.jpg', 'http://128.14.132.134/upload/video/3624a2b63ae88d34dee7b0ce0b6581cd.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('873cd458213b453f8dd2739855cb3a6c', '学生中出', '', '1', 'http://128.14.132.134/upload/img/20181010232616811.jpg', 'http://128.14.132.134/upload/video/c541a3e414985e1814b329c85fa74d6d.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('896e76628e4a41bcb742f8c56e055d7b', 'FSDFAFALKML', '', '1', 'http://128.14.132.134/upload/img/20181010231442434.jpg', 'http://128.14.132.134/upload/video/05a5d7a9d89078b5a15396ba5380837c.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('8e662b219bab42ee82e86f989599d0a1', '連続潮吹 受精覚悟', '', '1', 'http://128.14.132.134/upload/img/20181009190952145.jpg', 'http://128.14.132.134/upload/video/c4055cd7c5ecea1e66b3a82fa2536e13.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('9074827ee3c94272b827bb9cdd4f3103', 'ダイナマイト 折原ほのか', '', '1', 'http://128.14.132.134/upload/img/20181010132635880.jpg', 'http://128.14.132.134/upload/video/9d543e3303bab558e247fe9d6db217ee.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('90e20d562cb74bf8b1ca390157d28d69', '洗練された大人', '', '1', 'http://128.14.132.134/upload/img/20181009215650703.jpg', 'http://128.14.132.134/upload/video/ee299b94796df7d473f5ad05209588d4.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('98e9480955c94cda8f99d997a46b9751', ' AV界の至宝 橘ひなたHinata', '', '1', 'http://128.14.132.134/upload/img/20181017020457608.jpg', 'http://128.14.132.134/upload/video/949a70fdfce6b9eb27e9f7afc3ae7708.mp4', '蓝光', '6', '30', '1', '1');
INSERT INTO `video` VALUES ('9bdf34ccd6204ae6930ecc43d08a5d51', ' 高橋佳織 长发漂亮女孩134连发彻底凌辱', '', '1', 'http://128.14.132.134/upload/img/20181010142240828.jpg', 'http://128.14.132.134/upload/video/14d8eea4db4a561af86b722eb2ddd126.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('9da3cd580a36410cb3ac42a33ebea065', '過失乳 ～テーラー編～', '', '1', 'http://128.14.132.134/upload/img/20181010140627999.jpg', 'http://128.14.132.134/upload/video/572a6ea2e61ceebee4bec7e64bad771c.mp4', 'HD', '1', '25', '0', '1');
INSERT INTO `video` VALUES ('a208fb6764814e1e9577684e352d120e', '膀胱内射', '', '1', 'http://128.14.132.134/upload/img/2018101600201859.jpg', 'http://128.14.132.134/upload/video/21bd18051803fcaa54e22dd1ff76eb2b.mp4', '蓝光', '2', '29', '0', '1');
INSERT INTO `video` VALUES ('aa1f196db18b4d3ebdf7ad27e1cf343c', '美女家教', '', '1', 'http://128.14.132.134/upload/img/20181010234148920.jpg', 'http://128.14.132.134/upload/video/e3b445d03d1e3370b45cbebf3d101d65.mp4', '蓝光', '2', '27', '0', '1');
INSERT INTO `video` VALUES ('ab7606ce72f649c2892b0e7ad4cfe3da', '麻生希', '', '1', 'http://128.14.132.134/upload/img/20181016001733796.jpg', 'http://128.14.132.134/upload/video/45a1d074dcb17166db3cef0c2e0ca364.mp4', '蓝光', '2', '24', '0', '1');
INSERT INTO `video` VALUES ('abbd428fc0364839841caf743d9b6898', 'リアの神テクを我慢できたら生中出し', '', '1', 'http://128.14.132.134/upload/img/20181010222056285.jpg', 'http://128.14.132.134/upload/video/92b2cfda1dc998ea8c541d93e75fc8ec.mp4', '蓝光', '1', '25', '0', '1');
INSERT INTO `video` VALUES ('ac208dc1dc2d4fff855b3869ee245d03', 'KJLASJ96', '', '1', 'http://128.14.132.134/upload/img/20181010232236528.JPG', 'http://128.14.132.134/upload/video/2330a8eee6d4d68401a32e36552bf954.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('ad68b4d715134c199d84407049b82079', '帰宅途中の美人OLをナンパしました～', '', '1', 'http://128.14.132.134/upload/img/2018101023001660.jpg', 'http://128.14.132.134/upload/video/a5f5a8cc0b63536f1657c15720ed8029.mp4', 'HD', '1', '29', '0', '1');
INSERT INTO `video` VALUES ('ae3a4360171947f0865ee08cb47ddcc7', 'ーティダイナマイト 愛乃まほろ', '', '1', 'http://128.14.132.134/upload/img/20181010140151359.jpg', 'http://128.14.132.134/upload/video/b91e9ff58ee26e3c39e91d6c48c0ad6f.mp4', 'HD', '1', '24', '0', '1');
INSERT INTO `video` VALUES ('ae5c04a8443d4ea093d4111a49e78871', '邻家妹妹', '', '1', 'http://128.14.132.134/upload/img/20181010233540281.jpg', 'http://128.14.132.134/upload/video/dcde79378dcf7fb819a1c6d9f2cc0dde.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('ae889203b4f749bda91a3f281bce2f22', '巨乳小妹妹', '', '1', 'http://128.14.132.134/upload/img/2018101023342131.jpg', 'http://128.14.132.134/upload/video/50ee504c23b8db5cb9ede2d1174e6fdd.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('aeecdd12d4044ab682e5b8d59129cf86', '即時聊天手淫-色白美乳', '', '1', 'http://128.14.132.134/upload/img/20181010235400744.jpg', 'http://128.14.132.134/upload/video/674c12e736be1b2efd476a07ffb4b3f3.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('b18cee0905b645ddba20a337117597ed', ' 巨根入侵 美咲結衣', '', '1', 'http://128.14.132.134/upload/img/20181010223206958.jpg', 'http://128.14.132.134/upload/video/ff8d5e7921b1f4fcedd6f9579b5769c8.mp4', 'HD', '1', '23', '0', '1');
INSERT INTO `video` VALUES ('b39409f90c5e49c6a505758a422ff709', 'グラマラス 愛葵いちか', '', '1', 'http://128.14.132.134/upload/img/20181010223428897.jpg', 'http://128.14.132.134/upload/video/bbc7a6c37a1b64fdb256d42e44a0b779.mp4', '蓝光', '1', '29', '0', '1');
INSERT INTO `video` VALUES ('b524aa25b645465bbd8f52f15dd47679', 'CAPPV-090716_694-FHD', '', '1', 'http://128.14.132.134/upload/img/20181010231038558.jpg', 'http://128.14.132.134/upload/video/3f20415bd15cceafeeb377363914293f.mp4', 'HD', '1', '26', '0', '1');
INSERT INTO `video` VALUES ('b52ad9e9574e42e68c59a429fd855940', '俺を癒してくれる最高の彼女', '', '1', 'http://128.14.132.134/upload/img/20181010134011129.jpg', 'http://128.14.132.134/upload/video/bd8efde960bad29a6f08661258e3e5f5.mp4', 'HD', '1', '28', '0', '1');
INSERT INTO `video` VALUES ('b63ad46eb0ad41cfa17bb069ec4db5fd', '巨乳素人', '', '1', 'http://128.14.132.134/upload/img/20181010233803610.jpg', 'http://128.14.132.134/upload/video/7f114156ffbe6566f516a9e7b1a234ce.mp4', '蓝光', '2', '26', '0', '1');
INSERT INTO `video` VALUES ('b76bc03422af455aaede1be35117e9c9', '寝取られ相手は義理の父 - 北山かんな', '', '1', 'http://128.14.132.134/upload/img/20181010222322428.jpg', 'http://128.14.132.134/upload/video/9e5c4d250c38dc6868e78add1e4f2949.mp4', 'HD', '1', '29', '0', '1');
INSERT INTO `video` VALUES ('bf070696a132436886f3a8793ade73b7', '恍惚~门铃响~生島涼', '', '1', 'http://128.14.132.134/upload/img/20181009211149737.jpg', 'http://128.14.132.134/upload/video/3c1307665a2dc53cbfebd15b4f314a45.mp4', 'HD', '1', '27', '0', '1');
INSERT INTO `video` VALUES ('c81848af78cb4aa890034a7febd37008', '波多野结衣', '', '1', 'http://128.14.132.134/upload/img/20181016001105464.jpg!960.jpg', 'http://128.14.132.134/upload/video/e1855925feb84ef6a709f6e92bffe9f6.mp4', '蓝光', '2', '22', '0', '1');
INSERT INTO `video` VALUES ('d0138236c2704c8f878bc901c32638f5', 'ＳＥＸしましたけど', '', '1', 'http://128.14.132.134/upload/img/2018101023091141.jpg', 'http://128.14.132.134/upload/video/5688a425cde565ec3becf2759263ea6a.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('d061c7755a7d4edca3a6d500ca666aab', '娘倶楽部', '', '1', 'http://128.14.132.134/upload/img/20181009220030105.jpg', 'http://128.14.132.134/upload/video/d061c7755a7d4edca3a6d500ca666aab.mp4', '蓝光', '28', '30', '0', '1');
INSERT INTO `video` VALUES ('d3661f359e6a4abfa58e4774acb5d8cf', 'M痴女 真白愛梨', '', '1', 'http://128.14.132.134/upload/img/20181010234519683.jpg', 'http://128.14.132.134/upload/video/11354b55c4bd0f2ec337454b6a019409.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('d3bca2b34df34793b01bd866ab635994', '白石真琴引退ドッキリS', '', '1', 'http://128.14.132.134/upload/img/20181010235622301.jpg', 'http://128.14.132.134/upload/video/447c8f3c4de00277c4d73654dcf4b6d8.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('d72db65e01a74c128589f58ce9f9c85c', '吞精', '', '1', 'http://128.14.132.134/upload/img/20181010233942538.jpg', 'http://128.14.132.134/upload/video/45b289ab376ca96b481404bf83ef1c0f.mp4', '蓝光', '2', '30', '0', '1');
INSERT INTO `video` VALUES ('dc83cb819dd64fd3a46ee82739bcda22', '極上名媛婦人', '', '1', 'http://128.14.132.134/upload/img/2018101015450126.jpg', 'http://128.14.132.134/upload/video/dc83cb819dd64fd3a46ee82739bcda22.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('e206ddd143674c0d9862c8a526153977', '真希ちゃんの部屋へおじゃましまぁ～す', '', '1', 'http://128.14.132.134/upload/img/20181010224023816.jpg', 'http://128.14.132.134/upload/video/5c54c2b3ebecfe4e0eb73811bb77cf5f.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('e46ad18f98244f04807479a37e662b30', '電マで大潮吹きの好き者２５歳ＯＬさん', '', '1', 'http://128.14.132.134/upload/img/20181010224945319.jpg', 'http://128.14.132.134/upload/video/8c6c62927de9a899a626cc8a5ce6e3a4.mp4', '蓝光', '2', '28', '0', '1');
INSERT INTO `video` VALUES ('e579c34854ef481c94fdbfd222a20fc1', '学生潮吹 ', '', '1', 'http://128.14.132.134/upload/img/20181010232058437.jpg', 'http://128.14.132.134/upload/video/3c1b307ae09843ff8b6eebdcd2f1add1.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('e62fa46aa8204370a5de75193832d3df', '谷間で圧死したい～西川りおん', '', '1', 'http://128.14.132.134/upload/img/20181010231907205.jpg', 'http://128.14.132.134/upload/video/5a227af07016ce46937c8dd7bc7f296f.mp4', '蓝光', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('e746a953ad6d4a07a02baeb923bc31e3', ' 双葉みお', '', '1', 'http://128.14.132.134/upload/img/2018100917381283.jpg', 'http://128.14.132.134/upload/video/d5b320ab55d7aadef139072994f2c7f9.mp4', '蓝光', '1', '24', '0', '1');
INSERT INTO `video` VALUES ('e75a9f8dbe8946199b551c3042d172cc', 'ゃんとＳＥＸしましたけど', '', '1', 'http://128.14.132.134/upload/img/20181010230823800.jpg', 'http://128.14.132.134/upload/video/d4f23229ef679c5250ae6f8ed19a5f8d.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('e7c579ed88a64ac4b0300c6f1ce8aa6d', ' 白瀬ここね', '', '1', 'http://128.14.132.134/upload/img/20181009215247505.jpg', 'http://128.14.132.134/upload/video/5633cb3b8d1d980c39ade0058c9e3672.mp4', 'HD', '1', '30', '0', '1');
INSERT INTO `video` VALUES ('ea1de45f920a413f8ed5b7a2a82ab25d', '僕の彼女が鈴森汐那', '', '1', 'http://128.14.132.134/upload/img/2018101023033056.jpg', 'http://128.14.132.134/upload/video/1df19e60f592a22cab915ea4ccd9925e.mp4', 'HD', '1', '23', '0', '1');
INSERT INTO `video` VALUES ('eb1551f978ef4f20a5c26132803fb545', ' 時間よ止まれ ナース編', '', '1', 'http://128.14.132.134/upload/img/201810101329582.jpg', 'http://128.14.132.134/upload/video/2980cc9720edbfabfa45e46e09ec226c.mp4', '蓝光', '1', '23', '0', '1');
INSERT INTO `video` VALUES ('f8143f011ef84e88b583b3f22272c297', '女優逆襲體驗還是童子身的小男生d', '', '1', 'http://128.14.132.134/upload/img/20181016000842620.jpg', 'http://128.14.132.134/upload/video/874d2d470a8e3d47dc155d147165be6e.mp4', '蓝光', '1', '22', '0', '1');
INSERT INTO `video` VALUES ('f8987e0f9c314257ab7bd72b125b4a63', '我慢できないスレンダー美人～', '', '1', 'http://128.14.132.134/upload/img/20181010223756875.jpg', 'http://128.14.132.134/upload/video/fef1f22d9e0b8532d1b526b15ed8a7e2.mp4', 'HD', '1', '30', '0', '1');

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
INSERT INTO `video_cid` VALUES ('e746a953ad6d4a07a02baeb923bc31e3', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('3b4e96815d004300b2b8b2b92728abd2', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('8e662b219bab42ee82e86f989599d0a1', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('70c515fc6a39488888f36370f1039d53', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('70c515fc6a39488888f36370f1039d53', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('70c515fc6a39488888f36370f1039d53', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('60570af020614a548bebca4234faa626', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('60570af020614a548bebca4234faa626', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('6e20cc13afa34ff98844f8bae934047d', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('80c23d3a0e2a47378d68f72efa9c941c', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('12bc214f4de445579dfb2e143f0f7f85', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('0d53209d351640cbaa295da64dbda950', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('3d7675cad003401a9f224dd613a0eea3', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('90e20d562cb74bf8b1ca390157d28d69', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('90e20d562cb74bf8b1ca390157d28d69', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('90e20d562cb74bf8b1ca390157d28d69', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('d061c7755a7d4edca3a6d500ca666aab', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('17e547cdf3524696910be4296a82576b', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('17e547cdf3524696910be4296a82576b', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('17e547cdf3524696910be4296a82576b', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('4d9ba56a4ea740df8a5371b5ac781147', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('4d9ba56a4ea740df8a5371b5ac781147', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('321fe22f527940eeb6f8c26efa24b413', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('321fe22f527940eeb6f8c26efa24b413', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('321fe22f527940eeb6f8c26efa24b413', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('321fe22f527940eeb6f8c26efa24b413', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('321fe22f527940eeb6f8c26efa24b413', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('9bdf34ccd6204ae6930ecc43d08a5d51', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('0230fb3fd10447d08900f7490cded374', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('dc83cb819dd64fd3a46ee82739bcda22', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('dc83cb819dd64fd3a46ee82739bcda22', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('2fd2d143248947c5b3f4b6692eb26690', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('62d8c3d1d12040e8a0267f8a314beadf', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('005eef973caf4722a32ebd7d87c7dee3', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('49fc56e649df404d80906ef1d6935dac', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('ae3a4360171947f0865ee08cb47ddcc7', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('ae3a4360171947f0865ee08cb47ddcc7', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('9074827ee3c94272b827bb9cdd4f3103', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('9074827ee3c94272b827bb9cdd4f3103', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('6a8f1e83999448fc8b3a36738dcfed34', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('abbd428fc0364839841caf743d9b6898', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('abbd428fc0364839841caf743d9b6898', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('b76bc03422af455aaede1be35117e9c9', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('57f51716ca8b40ffb167d18817651eba', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('57f51716ca8b40ffb167d18817651eba', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('389e3e0a144143af89083db319d6262e', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('389e3e0a144143af89083db319d6262e', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('eb1551f978ef4f20a5c26132803fb545', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('b18cee0905b645ddba20a337117597ed', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('b39409f90c5e49c6a505758a422ff709', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('f8987e0f9c314257ab7bd72b125b4a63', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('e206ddd143674c0d9862c8a526153977', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('e206ddd143674c0d9862c8a526153977', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('82710c2672a6441d944c7726cd74b7fd', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('e46ad18f98244f04807479a37e662b30', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('5daec445fa7845039b140814b2a66ae5', 'eda68b624aa94526aadc649485b98320');
INSERT INTO `video_cid` VALUES ('5daec445fa7845039b140814b2a66ae5', 'a9c969fba6bd4f36889e5704e682d527');
INSERT INTO `video_cid` VALUES ('ad68b4d715134c199d84407049b82079', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('71ebbe1a048742cf92555c8e7c759337', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('59511e8b9fd4431fb9953c9b6c2f20f6', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('ea1de45f920a413f8ed5b7a2a82ab25d', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('3b07e54448af46d287933fd72f86761e', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('3b07e54448af46d287933fd72f86761e', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('e75a9f8dbe8946199b551c3042d172cc', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('d0138236c2704c8f878bc901c32638f5', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('64d3c921f4324f78b84ee560f176a04b', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('896e76628e4a41bcb742f8c56e055d7b', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('29108f8f80bf4d789f8f31dc8af6f3c7', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('e62fa46aa8204370a5de75193832d3df', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('1c0fc27adbdf4139a25b4b9dbb6849ee', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('e579c34854ef481c94fdbfd222a20fc1', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('e579c34854ef481c94fdbfd222a20fc1', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('ac208dc1dc2d4fff855b3869ee245d03', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('5440e7577d6e4717bd6772c404d94eef', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('873cd458213b453f8dd2739855cb3a6c', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('48538a762c0940b28f72d6052a962dff', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('48538a762c0940b28f72d6052a962dff', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('ae5c04a8443d4ea093d4111a49e78871', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('42d6473420e245ac936b1be401056c3a', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('d72db65e01a74c128589f58ce9f9c85c', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('84babf96f36f444f9afd333054eb1262', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('84babf96f36f444f9afd333054eb1262', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('d3661f359e6a4abfa58e4774acb5d8cf', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('ae889203b4f749bda91a3f281bce2f22', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('ae889203b4f749bda91a3f281bce2f22', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('5fe4389be0174533bd45b2e5cd4669fe', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('aeecdd12d4044ab682e5b8d59129cf86', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('aeecdd12d4044ab682e5b8d59129cf86', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('d3bca2b34df34793b01bd866ab635994', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('d3bca2b34df34793b01bd866ab635994', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('d3bca2b34df34793b01bd866ab635994', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('f8143f011ef84e88b583b3f22272c297', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('c81848af78cb4aa890034a7febd37008', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('5dd338d61d65404b8bd7c19c2ce80da4', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('ab7606ce72f649c2892b0e7ad4cfe3da', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('477de711042d4cd897b7eacd601eef3f', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('a208fb6764814e1e9577684e352d120e', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('6ae983fb9c3f4f859b2191c20ca0ff52', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('2f3e5a1919c54dfc94b54a4ce0175b58', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('7a4a19a856ee40fc8e94c6d8b9a99889', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('b524aa25b645465bbd8f52f15dd47679', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('b524aa25b645465bbd8f52f15dd47679', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('e7c579ed88a64ac4b0300c6f1ce8aa6d', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('072a4739944e47f5acf486f29e49323f', '76a1d8e3eaae4045b6ca89bd55b944a6');
INSERT INTO `video_cid` VALUES ('40de4da02f114deead2442b0a6742ae4', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('40de4da02f114deead2442b0a6742ae4', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('0e2ff012c5dd4da39f9ea09dceedc510', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('5e14fa033c4d4ab199b511966a82e930', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('30ccb93a79414415bf49a67c1e88e577', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('30ccb93a79414415bf49a67c1e88e577', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('30ccb93a79414415bf49a67c1e88e577', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('30ccb93a79414415bf49a67c1e88e577', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('b52ad9e9574e42e68c59a429fd855940', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('b52ad9e9574e42e68c59a429fd855940', '99bcb0b9295043a595548d9db22d6266');
INSERT INTO `video_cid` VALUES ('b52ad9e9574e42e68c59a429fd855940', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('b52ad9e9574e42e68c59a429fd855940', '2a89d4f34e744d74bc166dc3e6e4682d');
INSERT INTO `video_cid` VALUES ('b52ad9e9574e42e68c59a429fd855940', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('aa1f196db18b4d3ebdf7ad27e1cf343c', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('aa1f196db18b4d3ebdf7ad27e1cf343c', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('9da3cd580a36410cb3ac42a33ebea065', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('9da3cd580a36410cb3ac42a33ebea065', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('9da3cd580a36410cb3ac42a33ebea065', '8352cbfa4d764d579b1fec218dcc4c47');
INSERT INTO `video_cid` VALUES ('9da3cd580a36410cb3ac42a33ebea065', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('b63ad46eb0ad41cfa17bb069ec4db5fd', '554fd4123d7b4caab4f7bf3e260f6ddf');
INSERT INTO `video_cid` VALUES ('b63ad46eb0ad41cfa17bb069ec4db5fd', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('b63ad46eb0ad41cfa17bb069ec4db5fd', 'bc53f9074b5442bf862cdb03f5bd79d8');
INSERT INTO `video_cid` VALUES ('1eb009d467cb4b419171759335e156c7', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('78c742629f064256969b4785cc11badd', '866f81641611440e9855403d09f113c8');
INSERT INTO `video_cid` VALUES ('78c742629f064256969b4785cc11badd', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('98e9480955c94cda8f99d997a46b9751', '8a277dc45e994220abda8bab125935f6');
INSERT INTO `video_cid` VALUES ('bf070696a132436886f3a8793ade73b7', '3a889912a85b43a2aacdcb329c982c9f');
INSERT INTO `video_cid` VALUES ('bf070696a132436886f3a8793ade73b7', '866f81641611440e9855403d09f113c8');

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
INSERT INTO `video_img` VALUES ('005eef973caf4722a32ebd7d87c7dee3', 'http://128.14.132.134/upload/img/20181010230537775.jpg');

-- ----------------------------
-- Table structure for video_label
-- ----------------------------
DROP TABLE IF EXISTS `video_label`;
CREATE TABLE `video_label` (
  `vid` varchar(32) NOT NULL,
  `lid` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_label
-- ----------------------------

-- ----------------------------
-- Table structure for video_upload
-- ----------------------------
DROP TABLE IF EXISTS `video_upload`;
CREATE TABLE `video_upload` (
  `id` varchar(32) NOT NULL,
  `videourl` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_upload
-- ----------------------------
INSERT INTO `video_upload` VALUES ('9a7b5ef0ebfe449d99b86f50b816181b', 'http://128.14.132.134/upload/video/9a7b5ef0ebfe449d99b86f50b816181b.mp4');
INSERT INTO `video_upload` VALUES ('d5b320ab55d7aadef139072994f2c7f9', 'http://128.14.132.134/upload/video/d5b320ab55d7aadef139072994f2c7f9.mp4');
INSERT INTO `video_upload` VALUES ('5f53c8b06808da2a031f299a1c84b2e0', 'http://128.14.132.134/upload/video/5f53c8b06808da2a031f299a1c84b2e0.mp4');
INSERT INTO `video_upload` VALUES ('b1b0fec86dfcfabf42c4486395ef41e4', 'http://128.14.132.134/upload/video/b1b0fec86dfcfabf42c4486395ef41e4.mp4');
INSERT INTO `video_upload` VALUES ('a29fc93919519127fc4ba7f9a6dc7de2', 'http://128.14.132.134/upload/video/a29fc93919519127fc4ba7f9a6dc7de2.mp4');
INSERT INTO `video_upload` VALUES ('98fdadab39379f056bb42a6b3ae5d6c3', 'http://128.14.132.134/upload/video/98fdadab39379f056bb42a6b3ae5d6c3.mp4');
INSERT INTO `video_upload` VALUES ('28fe1cf4f9849d36f3097a1d1c011107', 'http://128.14.132.134/upload/video/28fe1cf4f9849d36f3097a1d1c011107.mp4');
INSERT INTO `video_upload` VALUES ('65bd30859fe50944f5db88b7554af0c7', 'http://128.14.132.134/upload/video/65bd30859fe50944f5db88b7554af0c7.mp4');
INSERT INTO `video_upload` VALUES ('fc7495ad261dd60249da26bdb470e461', 'http://128.14.132.134/upload/video/fc7495ad261dd60249da26bdb470e461.mp4');
INSERT INTO `video_upload` VALUES ('9e3db013a23b759584aaebc06586d229', 'http://128.14.132.134/upload/video/9e3db013a23b759584aaebc06586d229.mp4');
INSERT INTO `video_upload` VALUES ('c4055cd7c5ecea1e66b3a82fa2536e13', 'http://128.14.132.134/upload/video/c4055cd7c5ecea1e66b3a82fa2536e13.mp4');
INSERT INTO `video_upload` VALUES ('f3ddda1f8ca8b4c27dfbb9d33c5f8aa3', 'http://128.14.132.134/upload/video/f3ddda1f8ca8b4c27dfbb9d33c5f8aa3.mp4');
INSERT INTO `video_upload` VALUES ('0d53209d351640cbaa295da64dbda950', 'http://128.14.132.134/upload/video/0d53209d351640cbaa295da64dbda950.mp4');
INSERT INTO `video_upload` VALUES ('0c4a41dea65098b7ca28d05b9fe02044', 'http://128.14.132.134/upload/video/0c4a41dea65098b7ca28d05b9fe02044.mp4');
INSERT INTO `video_upload` VALUES ('bbc79ed990cead74ad4ae8c235a35edc', 'http://128.14.132.134/upload/video/bbc79ed990cead74ad4ae8c235a35edc.mp4');
INSERT INTO `video_upload` VALUES ('8fbf18ad19b456ba2632a2982ec7cb88', 'http://128.14.132.134/upload/video/8fbf18ad19b456ba2632a2982ec7cb88.mp4');
INSERT INTO `video_upload` VALUES ('708ebe6704857fc2f8ee32f669f949ca', 'http://128.14.132.134/upload/video/708ebe6704857fc2f8ee32f669f949ca.mp4');
INSERT INTO `video_upload` VALUES ('6b45a07823713ab7de48662c87da7a43', 'http://128.14.132.134/upload/video/6b45a07823713ab7de48662c87da7a43.mp4');
INSERT INTO `video_upload` VALUES ('9883107a405defdaef7247c1fe82a5ec', 'http://128.14.132.134/upload/video/9883107a405defdaef7247c1fe82a5ec.mp4');
INSERT INTO `video_upload` VALUES ('3c1307665a2dc53cbfebd15b4f314a45', 'http://128.14.132.134/upload/video/3c1307665a2dc53cbfebd15b4f314a45.mp4');
INSERT INTO `video_upload` VALUES ('14a9f7a7d326e31718cb011c44e284a1', 'http://128.14.132.134/upload/video/14a9f7a7d326e31718cb011c44e284a1.mp4');
INSERT INTO `video_upload` VALUES ('d205410b3ba106677b860929ba50087c', 'http://128.14.132.134/upload/video/d205410b3ba106677b860929ba50087c.mp4');
INSERT INTO `video_upload` VALUES ('1136e7d1e435152a0ce4c9949edd9e4a', 'http://128.14.132.134/upload/video/1136e7d1e435152a0ce4c9949edd9e4a.mp4');
INSERT INTO `video_upload` VALUES ('373fa64bb81abd56c551e740100a7864', 'http://128.14.132.134/upload/video/373fa64bb81abd56c551e740100a7864.mp4');
INSERT INTO `video_upload` VALUES ('3535644853eb03e89b25eca05b418cbf', 'http://128.14.132.134/upload/video/3535644853eb03e89b25eca05b418cbf.mp4');
INSERT INTO `video_upload` VALUES ('5633cb3b8d1d980c39ade0058c9e3672', 'http://128.14.132.134/upload/video/5633cb3b8d1d980c39ade0058c9e3672.mp4');
INSERT INTO `video_upload` VALUES ('ee299b94796df7d473f5ad05209588d4', 'http://128.14.132.134/upload/video/ee299b94796df7d473f5ad05209588d4.mp4');
INSERT INTO `video_upload` VALUES ('d061c7755a7d4edca3a6d500ca666aab', 'http://128.14.132.134/upload/video/d061c7755a7d4edca3a6d500ca666aab.mp4');
INSERT INTO `video_upload` VALUES ('546e8aa364506a7096c87861f4da0d77', 'http://128.14.132.134/upload/video/546e8aa364506a7096c87861f4da0d77.mp4');
INSERT INTO `video_upload` VALUES ('0c0ab374d54070c23474425eb733a9fd', 'http://128.14.132.134/upload/video/0c0ab374d54070c23474425eb733a9fd.mp4');
INSERT INTO `video_upload` VALUES ('5f883dda7483e1de6a2d633addb9290b', 'http://128.14.132.134/upload/video/5f883dda7483e1de6a2d633addb9290b.mp4');
INSERT INTO `video_upload` VALUES ('9d543e3303bab558e247fe9d6db217ee', 'http://128.14.132.134/upload/video/9d543e3303bab558e247fe9d6db217ee.mp4');
INSERT INTO `video_upload` VALUES ('2980cc9720edbfabfa45e46e09ec226c', 'http://128.14.132.134/upload/video/2980cc9720edbfabfa45e46e09ec226c.mp4');
INSERT INTO `video_upload` VALUES ('bd8efde960bad29a6f08661258e3e5f5', 'http://128.14.132.134/upload/video/bd8efde960bad29a6f08661258e3e5f5.mp4');
INSERT INTO `video_upload` VALUES ('b91e9ff58ee26e3c39e91d6c48c0ad6f', 'http://128.14.132.134/upload/video/b91e9ff58ee26e3c39e91d6c48c0ad6f.mp4');
INSERT INTO `video_upload` VALUES ('572a6ea2e61ceebee4bec7e64bad771c', 'http://128.14.132.134/upload/video/572a6ea2e61ceebee4bec7e64bad771c.mp4');
INSERT INTO `video_upload` VALUES ('8b1295c72b95313b1bc1e2cdbfb010d8', 'http://128.14.132.134/upload/video/8b1295c72b95313b1bc1e2cdbfb010d8.mp4');
INSERT INTO `video_upload` VALUES ('e17752fb8ab34496b8e40f4ed4dd4f3b', 'http://128.14.132.134/upload/video/e17752fb8ab34496b8e40f4ed4dd4f3b.mp4');
INSERT INTO `video_upload` VALUES ('14d8eea4db4a561af86b722eb2ddd126', 'http://128.14.132.134/upload/video/14d8eea4db4a561af86b722eb2ddd126.mp4');
INSERT INTO `video_upload` VALUES ('15290651d0bed54a9da31c7aab2c64ee', 'http://128.14.132.134/upload/video/15290651d0bed54a9da31c7aab2c64ee.mp4');
INSERT INTO `video_upload` VALUES ('dc83cb819dd64fd3a46ee82739bcda22', 'http://128.14.132.134/upload/video/dc83cb819dd64fd3a46ee82739bcda22.mp4');
INSERT INTO `video_upload` VALUES ('a83d37044549dd0316acc9c209f22238', 'http://128.14.132.134/upload/video/a83d37044549dd0316acc9c209f22238.mp4');
INSERT INTO `video_upload` VALUES ('772f292c29f3c39df2186f6074b19dd6', 'http://128.14.132.134/upload/video/772f292c29f3c39df2186f6074b19dd6.mp4');
INSERT INTO `video_upload` VALUES ('a8bee3f2fee07a6d1fc2f0438b1f477c', 'http://128.14.132.134/upload/video/a8bee3f2fee07a6d1fc2f0438b1f477c.mp4');
INSERT INTO `video_upload` VALUES ('4372e84655c3ed63afc4f116a2a50ae5', 'http://128.14.132.134/upload/video/4372e84655c3ed63afc4f116a2a50ae5.mp4');
INSERT INTO `video_upload` VALUES ('92b2cfda1dc998ea8c541d93e75fc8ec', 'http://128.14.132.134/upload/video/92b2cfda1dc998ea8c541d93e75fc8ec.mp4');
INSERT INTO `video_upload` VALUES ('9e5c4d250c38dc6868e78add1e4f2949', 'http://128.14.132.134/upload/video/9e5c4d250c38dc6868e78add1e4f2949.mp4');
INSERT INTO `video_upload` VALUES ('03067a3ef877b4afa7bfd8b1d778710b', 'http://128.14.132.134/upload/video/03067a3ef877b4afa7bfd8b1d778710b.mp4');
INSERT INTO `video_upload` VALUES ('1f22584812cf38e5847d5265503afc22', 'http://128.14.132.134/upload/video/1f22584812cf38e5847d5265503afc22.mp4');
INSERT INTO `video_upload` VALUES ('ff8d5e7921b1f4fcedd6f9579b5769c8', 'http://128.14.132.134/upload/video/ff8d5e7921b1f4fcedd6f9579b5769c8.mp4');
INSERT INTO `video_upload` VALUES ('bbc7a6c37a1b64fdb256d42e44a0b779', 'http://128.14.132.134/upload/video/bbc7a6c37a1b64fdb256d42e44a0b779.mp4');
INSERT INTO `video_upload` VALUES ('fef1f22d9e0b8532d1b526b15ed8a7e2', 'http://128.14.132.134/upload/video/fef1f22d9e0b8532d1b526b15ed8a7e2.mp4');
INSERT INTO `video_upload` VALUES ('5c54c2b3ebecfe4e0eb73811bb77cf5f', 'http://128.14.132.134/upload/video/5c54c2b3ebecfe4e0eb73811bb77cf5f.mp4');
INSERT INTO `video_upload` VALUES ('84407c089b6828e5dc382abb3eccd48c', 'http://128.14.132.134/upload/video/84407c089b6828e5dc382abb3eccd48c.mp4');
INSERT INTO `video_upload` VALUES ('8c6c62927de9a899a626cc8a5ce6e3a4', 'http://128.14.132.134/upload/video/8c6c62927de9a899a626cc8a5ce6e3a4.mp4');
INSERT INTO `video_upload` VALUES ('a5f5a8cc0b63536f1657c15720ed8029', 'http://128.14.132.134/upload/video/a5f5a8cc0b63536f1657c15720ed8029.mp4');
INSERT INTO `video_upload` VALUES ('c25ac68bbcde24b030d9ef5f0d42fcec', 'http://128.14.132.134/upload/video/c25ac68bbcde24b030d9ef5f0d42fcec.mp4');
INSERT INTO `video_upload` VALUES ('470b00fcc0f8bc6e4063cbe9258f2487', 'http://128.14.132.134/upload/video/470b00fcc0f8bc6e4063cbe9258f2487.mp4');
INSERT INTO `video_upload` VALUES ('1df19e60f592a22cab915ea4ccd9925e', 'http://128.14.132.134/upload/video/1df19e60f592a22cab915ea4ccd9925e.mp4');
INSERT INTO `video_upload` VALUES ('fcb464fbaba6f4696f183ade5634f101', 'http://128.14.132.134/upload/video/fcb464fbaba6f4696f183ade5634f101.mp4');
INSERT INTO `video_upload` VALUES ('d4f23229ef679c5250ae6f8ed19a5f8d', 'http://128.14.132.134/upload/video/d4f23229ef679c5250ae6f8ed19a5f8d.mp4');
INSERT INTO `video_upload` VALUES ('5688a425cde565ec3becf2759263ea6a', 'http://128.14.132.134/upload/video/5688a425cde565ec3becf2759263ea6a.mp4');
INSERT INTO `video_upload` VALUES ('3f20415bd15cceafeeb377363914293f', 'http://128.14.132.134/upload/video/3f20415bd15cceafeeb377363914293f.mp4');
INSERT INTO `video_upload` VALUES ('3718bf88921e5242c65e651a4478d0fb', 'http://128.14.132.134/upload/video/3718bf88921e5242c65e651a4478d0fb.mp4');
INSERT INTO `video_upload` VALUES ('05a5d7a9d89078b5a15396ba5380837c', 'http://128.14.132.134/upload/video/05a5d7a9d89078b5a15396ba5380837c.mp4');
INSERT INTO `video_upload` VALUES ('5b107d15fc391600057f8b729cf7b13c', 'http://128.14.132.134/upload/video/5b107d15fc391600057f8b729cf7b13c.mp4');
INSERT INTO `video_upload` VALUES ('5a227af07016ce46937c8dd7bc7f296f', 'http://128.14.132.134/upload/video/5a227af07016ce46937c8dd7bc7f296f.mp4');
INSERT INTO `video_upload` VALUES ('afb76e9a32fdcdef078edcc84e179fd8', 'http://128.14.132.134/upload/video/afb76e9a32fdcdef078edcc84e179fd8.mp4');
INSERT INTO `video_upload` VALUES ('3c1b307ae09843ff8b6eebdcd2f1add1', 'http://128.14.132.134/upload/video/3c1b307ae09843ff8b6eebdcd2f1add1.mp4');
INSERT INTO `video_upload` VALUES ('2330a8eee6d4d68401a32e36552bf954', 'http://128.14.132.134/upload/video/2330a8eee6d4d68401a32e36552bf954.mp4');
INSERT INTO `video_upload` VALUES ('a8ecf69ce2290965460919739fe79740', 'http://128.14.132.134/upload/video/a8ecf69ce2290965460919739fe79740.mp4');
INSERT INTO `video_upload` VALUES ('c541a3e414985e1814b329c85fa74d6d', 'http://128.14.132.134/upload/video/c541a3e414985e1814b329c85fa74d6d.mp4');
INSERT INTO `video_upload` VALUES ('5e9b97432ecb0e065c418da92acb50cf', 'http://128.14.132.134/upload/video/5e9b97432ecb0e065c418da92acb50cf.mp4');
INSERT INTO `video_upload` VALUES ('50ee504c23b8db5cb9ede2d1174e6fdd', 'http://128.14.132.134/upload/video/50ee504c23b8db5cb9ede2d1174e6fdd.mp4');
INSERT INTO `video_upload` VALUES ('dcde79378dcf7fb819a1c6d9f2cc0dde', 'http://128.14.132.134/upload/video/dcde79378dcf7fb819a1c6d9f2cc0dde.mp4');
INSERT INTO `video_upload` VALUES ('302b41cb0126a22cce73c663b5a7f997', 'http://128.14.132.134/upload/video/302b41cb0126a22cce73c663b5a7f997.mp4');
INSERT INTO `video_upload` VALUES ('7f114156ffbe6566f516a9e7b1a234ce', 'http://128.14.132.134/upload/video/7f114156ffbe6566f516a9e7b1a234ce.mp4');
INSERT INTO `video_upload` VALUES ('45b289ab376ca96b481404bf83ef1c0f', 'http://128.14.132.134/upload/video/45b289ab376ca96b481404bf83ef1c0f.mp4');
INSERT INTO `video_upload` VALUES ('e3b445d03d1e3370b45cbebf3d101d65', 'http://128.14.132.134/upload/video/e3b445d03d1e3370b45cbebf3d101d65.mp4');
INSERT INTO `video_upload` VALUES ('3624a2b63ae88d34dee7b0ce0b6581cd', 'http://128.14.132.134/upload/video/3624a2b63ae88d34dee7b0ce0b6581cd.mp4');
INSERT INTO `video_upload` VALUES ('11354b55c4bd0f2ec337454b6a019409', 'http://128.14.132.134/upload/video/11354b55c4bd0f2ec337454b6a019409.mp4');
INSERT INTO `video_upload` VALUES ('d274a88b75de4344b1fd1b66388fdac3', 'http://128.14.132.134/upload/video/d274a88b75de4344b1fd1b66388fdac3.mp4');
INSERT INTO `video_upload` VALUES ('674c12e736be1b2efd476a07ffb4b3f3', 'http://128.14.132.134/upload/video/674c12e736be1b2efd476a07ffb4b3f3.mp4');
INSERT INTO `video_upload` VALUES ('447c8f3c4de00277c4d73654dcf4b6d8', 'http://128.14.132.134/upload/video/447c8f3c4de00277c4d73654dcf4b6d8.mp4');
INSERT INTO `video_upload` VALUES ('874d2d470a8e3d47dc155d147165be6e', 'http://128.14.132.134/upload/video/874d2d470a8e3d47dc155d147165be6e.mp4');
INSERT INTO `video_upload` VALUES ('e1855925feb84ef6a709f6e92bffe9f6', 'http://128.14.132.134/upload/video/e1855925feb84ef6a709f6e92bffe9f6.mp4');
INSERT INTO `video_upload` VALUES ('0929e6b3e7314816a193c098041e7e7c', 'http://128.14.132.134/upload/video/0929e6b3e7314816a193c098041e7e7c.mp4');
INSERT INTO `video_upload` VALUES ('45a1d074dcb17166db3cef0c2e0ca364', 'http://128.14.132.134/upload/video/45a1d074dcb17166db3cef0c2e0ca364.mp4');
INSERT INTO `video_upload` VALUES ('7e599aedd9aabb639159c72b914526f4', 'http://128.14.132.134/upload/video/7e599aedd9aabb639159c72b914526f4.mp4');
INSERT INTO `video_upload` VALUES ('21bd18051803fcaa54e22dd1ff76eb2b', 'http://128.14.132.134/upload/video/21bd18051803fcaa54e22dd1ff76eb2b.mp4');
INSERT INTO `video_upload` VALUES ('c15b408f1ae8f14f35b2b7d084dd93ba', 'http://128.14.132.134/upload/video/c15b408f1ae8f14f35b2b7d084dd93ba.mp4');
INSERT INTO `video_upload` VALUES ('215dba09cb2cf8f876428188584deae3', 'http://128.14.132.134/upload/video/215dba09cb2cf8f876428188584deae3.mp4');
INSERT INTO `video_upload` VALUES ('edaf29225628f67522acd13767d48981', 'http://128.14.132.134/upload/video/edaf29225628f67522acd13767d48981.mp4');
INSERT INTO `video_upload` VALUES ('21490e05c4a5ccd58704ccb74eb8b0fb', 'http://128.14.132.134/upload/video/21490e05c4a5ccd58704ccb74eb8b0fb.mp4');
INSERT INTO `video_upload` VALUES ('949a70fdfce6b9eb27e9f7afc3ae7708', 'http://128.14.132.134/upload/video/949a70fdfce6b9eb27e9f7afc3ae7708.mp4');

-- ----------------------------
-- Table structure for welcome
-- ----------------------------
DROP TABLE IF EXISTS `welcome`;
CREATE TABLE `welcome` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(200) NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `px` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of welcome
-- ----------------------------
INSERT INTO `welcome` VALUES ('4', 'http://128.14.132.134/upload/img/20181010115852649.png', 'https://static.zifeiyucoco.com/h5/package/guji-release-1.0.5-cpa.apk', '1');
