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
INSERT INTO `category` VALUES ('29d36981b9204689abadddc09a878070', 'NBA', '美国职业篮球联赛', 'http://101.132.170.212/upload/img/20180614101629254.png', '1', '3');
INSERT INTO `category` VALUES ('3d446ee20e434745ae0c48364e3a0780', '运动', '极限运动', 'http://101.132.170.212/upload/img/20180614101622419.png', '1', '3');
INSERT INTO `category` VALUES ('479eaaadcb0f4fdf8033c568c0eae871', '励志', '激励人的励志故事', 'http://101.132.170.212/upload/img/2018061410161535.png', '1', '2');
INSERT INTO `category` VALUES ('5411c8f5991a4e15939ee645302ab6f4', 'KD逆袭霸气广告', '杜兰特', 'http://101.132.170.212/upload/img/20180614101530276.png', '2', '3');
INSERT INTO `category` VALUES ('55019040ae9e4ced9f195d6084586c56', '热舞', '激情热舞', 'http://101.132.170.212/upload/img/20180614101743528.png', '3', '2');
INSERT INTO `category` VALUES ('71b0f8ff76c544dc8964eec38baf6ba1', '德鲁大叔', '球场上千万别跟大爷打球  惹不起', 'http://101.132.170.212/upload/img/20180614101522318.png', '2', '1');
INSERT INTO `category` VALUES ('7878c6031d60477095e12e7316fe842b', '世界杯', '俄罗斯世界杯', 'http://101.132.170.212/upload/img/20180620103416346.png', '1', '1');
INSERT INTO `category` VALUES ('7b51c9c02dcb47478ec8df3b1e3c3f5b', '小黄人集锦（vip区）', '小黄人集锦', 'http://101.132.170.212/upload/img/20180620130310559.png', '2', '2');
INSERT INTO `category` VALUES ('82cb1d388c774a4fa1254b1045fb14c7', '韦德励志大师', '大师源于勤奋', 'http://101.132.170.212/upload/img/20180614101715177.jpg', '3', '3');
INSERT INTO `category` VALUES ('9c69214dfdfb494cbe23617628991dd9', '篮球励志', '小男孩篮球梦', 'http://101.132.170.212/upload/img/20180614101609875.png', '1', '2');
INSERT INTO `category` VALUES ('9db5b157ab4440ceab35543d4687bef4', '詹姆斯集锦', '詹姆斯高光集锦', 'http://101.132.170.212/upload/img/20180614132900779.png', '1', '1');
INSERT INTO `category` VALUES ('a9209d3c776446c5afeb930e18b6b05d', '搞笑', '搞笑视频分类', 'http://101.132.170.212/upload/img/20180614230948376.png', '4', '3');
INSERT INTO `category` VALUES ('a9a11b139af243779e8d49fe300e6db5', '动画', '好莱坞动画', 'http://101.132.170.212/upload/img/20180614101554848.png', '1', '1');
INSERT INTO `category` VALUES ('b4bc1aeec8134794bde70ba58e447bb3', '历史', '中国古代历史', 'http://101.132.170.212/upload/img/20180614101546457.png', '1', '1');
INSERT INTO `category` VALUES ('b633553aa32f46f4af7c9debf7ea1204', 'C罗集锦', 'C罗集锦C罗集锦', 'http://101.132.170.212/upload/img/20180620104039658.png', '1', '2');
INSERT INTO `category` VALUES ('ee9059cf82344ed985d2a9bb2b821fd0', '创意', '所有的创意视频', 'http://101.132.170.212/upload/img/20180614101537640.png', '1', '1');
INSERT INTO `category` VALUES ('f1dc41ce727f4387a7f322cbd7fa4fe5', '网红', 'papi酱papi酱', 'http://101.132.170.212/upload/img/20180615080437179.png', '3', '1');
INSERT INTO `category` VALUES ('f228ef13c5b648f495447e1f3fd51800', '内马尔集锦', '内马尔集锦内马尔集锦', 'http://101.132.170.212/upload/img/20180620104527947.png', '1', '3');

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
-- ----------------------------
INSERT INTO `code_meal` VALUES ('1', '1');
INSERT INTO `code_meal` VALUES ('4', '2');
INSERT INTO `code_meal` VALUES ('5', '2');
INSERT INTO `code_meal` VALUES ('2', '1');
INSERT INTO `code_meal` VALUES ('3', '1');

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

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', '电音少女', '奥特曼为什么不直接发大招。要等怪兽快挂了才发？神回复：你斗地主直接扔炸弹啊？', '管理员', 'http://101.132.170.212/upload/img/20180614095218415.png');
INSERT INTO `comment` VALUES ('3', '帽子戏法', '明天就是七夕节，你还是一个人吗？ \n神回复：难道我还会变成一只狗吗？', '普通用户', 'http://101.132.170.212/upload/img/20180614095139129.png');
INSERT INTO `comment` VALUES ('4', '短发女孩', '一句话证明你很寂寞。神回复：这句话有一共六十九笔。', '管理员', 'http://101.132.170.212/upload/img/20180614095300562.png');
INSERT INTO `comment` VALUES ('5', '寂寞的香烟', '寂寞和孤独的区别是什么？神回复：寂寞是别人不想搭理你，孤独是你不想搭理别人。', '普通用户', 'http://101.132.170.212/upload/img/20180614095508406.png');
INSERT INTO `comment` VALUES ('6', '耍酷杰杰', '本人女，为什么我和我男朋友拥抱的时候，能够强烈感受到彼此的心跳?是因为我们爱的深，心相连?\n神回复：不，因为你平胸。', '管理员', 'http://101.132.170.212/upload/img/20180614095517600.png');
INSERT INTO `comment` VALUES ('7', 'popo哥', '上司要我们提供了生日信息，我估计是要根据星座来安排工作方向了，我是狮子座，你们觉得我会被安排干什么？ 神回复：在门口拿着一只球趴着。', '普通用户', 'http://101.132.170.212/upload/img/20180614095525658.png');
INSERT INTO `comment` VALUES ('8', '呆萌女', '深夜，如果有一个恶人把刀架在你脖子上说：“给你一分钟，你可以打给任何一个人，除了父母，让他来接你，不许说多余的话，如果他同意来，我就放了你，如果不愿意来，我就杀了你。”你会打给谁？\n\n神回复：“您好，我要1个巨无霸，1份麦乐鸡，1包大薯，1杯可乐” ', '管理员', 'http://101.132.170.212/upload/img/20180614095712957.png');
INSERT INTO `comment` VALUES ('9', 'pass特', '一学生，成绩年年倒数第一，常与人打架，按领导要求要给学生好一点的期末评语，该怎么写啊？神回复：该生成绩稳定，动手能力强。', '普通用户', 'http://101.132.170.212/upload/img/20180614095719846.png');
INSERT INTO `comment` VALUES ('10', '三口中本', '为什么平胸妹子一般都是吃货？\n神回复：穷胸极饿！', '普通用户', 'http://101.132.170.212/upload/img/20180614095727346.png');
INSERT INTO `comment` VALUES ('11', '焰志', '你为什么不谈恋爱？神回复：小仙女和凡人谈恋爱会触犯仙条的。', '普通用户', 'http://101.132.170.212/upload/img/20180614095734250.png');
INSERT INTO `comment` VALUES ('14', '大叔', '掌柜态度很专业热情，有问必答，回复也很快，我问了不少问题，他都不觉得烦，都会认真回答我，这点我向掌柜表示由衷的敬意，这样的好掌柜可不多。', '普通用户', 'http://101.132.170.212/upload/img/2018061410073124.png');
INSERT INTO `comment` VALUES ('15', '街球爷爷', '“认识你很高兴”\n“你高兴的太早了”', '普通用户', 'http://101.132.170.212/upload/img/20180614100721391.png');
INSERT INTO `comment` VALUES ('16', '韦大爷', '“你在干嘛?”“玩手机。”“不睡觉玩什么手机!”iPhone”', '普通用户', 'http://101.132.170.212/upload/img/2018061410071158.png');
INSERT INTO `comment` VALUES ('17', '地表音速', '地表音速肌肉强大地表音速肌肉强大地表音速肌肉强大', '普通用户', 'http://101.132.170.212/upload/img/20180614100656890.png');
INSERT INTO `comment` VALUES ('18', '篮球小字', '篮球小字暴利扣篮篮球小字暴利扣篮篮球小字暴利扣篮', '普通用户', 'http://101.132.170.212/upload/img/20180614100645823.png');
INSERT INTO `comment` VALUES ('19', '车展摩托', '“要不办张卡吧 洗头做发型都有优惠”不用了 我想让你多赚点”。', '管理员', 'http://101.132.170.212/upload/img/20180614100632896.png');
INSERT INTO `comment` VALUES ('20', '肖茹', '法官：你为什么要印假钞？犯人：因为我不会印真钞...', '普通用户', 'http://101.132.170.212/upload/img/20180614100623339.png');
INSERT INTO `comment` VALUES ('21', '我说默认', '默认用户评论默认用户评论默认用户评论', '普通用户', null);
INSERT INTO `comment` VALUES ('22', '神评君', '甲：你觉得我们合适吗？乙：“ 我百搭 ”', '普通用户', 'http://101.132.170.212/upload/img/20180614100613110.png');
INSERT INTO `comment` VALUES ('23', '斯蒂芬', '历史老师：你为什么交白卷？学生：因为我不想篡改历史...', '普通用户', 'http://101.132.170.212/upload/img/20180614100603498.png');
INSERT INTO `comment` VALUES ('24', '飞过海', '质量非常好,与卖家描述的完全一致,非常满意,真的很喜欢,完全超出期望值,发货速度非常快,包装非常仔细、严实,物流公司服务态度很好,运送速度很快,很满意', '普通用户', 'http://101.132.170.212/upload/img/2018061410082438.png');
INSERT INTO `comment` VALUES ('25', '李世民', '李世民就是唐太宗怕了吧', '普通用户', 'http://101.132.170.212/upload/img/20180614100852175.png');
INSERT INTO `comment` VALUES ('26', '莫生气', '怎样控制住自己不发脾气？\n- 如果你是对的，你没必要发脾气；如果你是错的，你没资格发脾气。', '普通用户', 'http://101.132.170.212/upload/img/20180615101612345.png');
INSERT INTO `comment` VALUES ('27', '交友达人', '交朋友的标准是什么？\n出世的智者，\n入世的强者，\n或者正常而阳光的普通人。', '普通用户', 'http://101.132.170.212/upload/img/20180615101600126.png');
INSERT INTO `comment` VALUES ('28', '夏木', '做哪些事情可以提升生活品质？\n定期扔东西。', '普通用户', 'http://101.132.170.212/upload/img/20180615101549181.png');
INSERT INTO `comment` VALUES ('29', '知呼', '把学费拿来念书还是环游世界更合适？为什么？\n在没有充分的知识作为前提的情况下，\n即使行了万里路，\n也不过是邮差而已。', '普通用户', 'http://101.132.170.212/upload/img/20180615101538307.png');

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
-- Records of menoy_info
-- ----------------------------
INSERT INTO `menoy_info` VALUES ('1', '2018062202689936', 'gxtttooo', '2018-06-22 23:38:14', '1529681318761', '2018-06-22 23:38:14');
INSERT INTO `menoy_info` VALUES ('1', '2018062202706211', 'gxtttooo', '2018-06-22 23:53:30', '1529681318761', '2018-06-22 23:53:30');
INSERT INTO `menoy_info` VALUES ('1', '2018062302028652', 'gxtttooo', '2018-06-23 00:29:23', '1529681318761', '2018-06-23 00:29:23');
INSERT INTO `menoy_info` VALUES ('1', '2018062302029237', 'gxtttooo', '2018-06-23 00:29:54', '1529681318761', '2018-06-23 00:29:54');
INSERT INTO `menoy_info` VALUES ('1', '2018062302295764', 'gxtttooo', '2018-06-23 12:20:01', '1529681318761', '2018-06-23 12:20:01');
INSERT INTO `menoy_info` VALUES ('1', '2018062302314234', 'gxtttooo', '2018-06-23 12:56:49', '1529729856699', '2018-06-23 12:56:49');
INSERT INTO `menoy_info` VALUES ('1', '2018062302351111', 'gxtttooo', '2018-06-23 13:49:10', '1529732993230', '2018-06-23 13:50:05');
INSERT INTO `menoy_info` VALUES ('1', '2018062602367274', 'gxtttooo', '2018-06-26 15:21:47', '1529997751589', '2018-06-26 15:22:48');
INSERT INTO `menoy_info` VALUES ('1', '2018062602367467', 'gxtttooo', '2018-06-26 15:23:43', '1529997869199', '2018-06-26 15:24:43');
INSERT INTO `menoy_info` VALUES ('1', '2018062602367872', 'gxtttooo', '2018-06-26 15:28:19', '1529998148121', '2018-06-26 15:29:20');
INSERT INTO `menoy_info` VALUES ('1', '2018062602368106', 'gxtttooo', '2018-06-26 15:30:45', '1529998297355', '2018-06-26 15:31:46');
INSERT INTO `menoy_info` VALUES ('1', '2018062602368293', 'gxtttooo', '2018-06-26 15:32:35', '1529998407309', '2018-06-26 15:33:35');
INSERT INTO `menoy_info` VALUES ('1', '2018062602372856', 'gxtttooo', '2018-06-26 16:28:02', '1530001727652', '2018-06-26 16:29:03');
INSERT INTO `menoy_info` VALUES ('1', '2018062800594823', 'gxtttooo', '2018-06-28 20:38:42', '1530189436168', '2018-06-28 20:38:50');
INSERT INTO `menoy_info` VALUES ('1', '2018062800595473', 'gxtttooo', '2018-06-28 20:39:55', '1530189564996', '2018-06-28 20:40:02');
INSERT INTO `menoy_info` VALUES ('1', '2018062800596082', 'gxtttooo', '2018-06-28 20:40:58', '1530189615699', '2018-06-28 20:41:05');
INSERT INTO `menoy_info` VALUES ('1', '2018062800596584', 'gxtttooo', '2018-06-28 20:41:58', '1530189693402', '2018-06-28 20:42:05');
INSERT INTO `menoy_info` VALUES ('1', '2018062800596975', 'gxtttooo', '2018-06-28 20:42:42', '1530189739105', '2018-06-28 20:42:49');
INSERT INTO `menoy_info` VALUES ('2', '2018062800598023', 'gxtttooo', '2018-06-28 20:44:46', '1530189840949', '2018-06-28 20:44:53');
INSERT INTO `menoy_info` VALUES ('2', '2018062800599481', 'gxtttooo', '2018-06-28 20:47:23', '1530190007715', '2018-06-28 20:47:31');
INSERT INTO `menoy_info` VALUES ('2', '2018062900217250', 'gxtttooo', '2018-06-29 08:05:47', '1530230726544', '2018-06-29 08:05:55');

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
-- Records of star
-- ----------------------------
INSERT INTO `star` VALUES ('3', '詹姆斯', '小皇帝詹皇', 'http://101.132.170.212/upload/img/20180614102252260.png', '1');
INSERT INTO `star` VALUES ('4', '欧文', '德鲁大叔', 'http://101.132.170.212/upload/img/20180614102223900.png', '3');
INSERT INTO `star` VALUES ('7', '杜兰特', '死神杜兰特', 'http://101.132.170.212/upload/img/20180614102230913.png', '2');
INSERT INTO `star` VALUES ('8', '舞娘', '舞蹈教学', 'http://101.132.170.212/upload/img/20180614102159672.png', '5');
INSERT INTO `star` VALUES ('9', '韦德', '闪电侠', 'http://101.132.170.212/upload/img/20180614102211609.png', '4');
INSERT INTO `star` VALUES ('10', '唐太宗', '盛唐皇帝', 'http://101.132.170.212/upload/img/20180614102245582.png', '1');
INSERT INTO `star` VALUES ('11', '秦始皇', '秦始皇统一六国，征服蛮夷', 'http://101.132.170.212/upload/img/20180614102217421.png', '3');
INSERT INTO `star` VALUES ('12', '菲尔普斯', '8枚奥运金牌', 'http://101.132.170.212/upload/img/20180614102237318.png', '1');
INSERT INTO `star` VALUES ('13', '蘑菇头', '网红香菇头', 'http://101.132.170.212/upload/img/20180615074726654.png', '3');
INSERT INTO `star` VALUES ('14', '民间艺人', '民间的翻纸游戏', 'http://101.132.170.212/upload/img/2018061507523263.png', '4');
INSERT INTO `star` VALUES ('15', '网红', '网红明星papi', 'http://101.132.170.212/upload/img/20180615080154318.png', '3');
INSERT INTO `star` VALUES ('16', 'papi酱', 'papi酱papi酱', 'http://101.132.170.212/upload/img/20180615080614592.png', '3');
INSERT INTO `star` VALUES ('17', '梅西', '我是梅西，现在慌的一逼', 'http://101.132.170.212/upload/img/20180620103437348.png', '1');
INSERT INTO `star` VALUES ('18', 'C罗', '牛逼的C罗', 'http://101.132.170.212/upload/img/20180620103958510.png', '1');
INSERT INTO `star` VALUES ('19', '内马尔', '洗剪吹发型', 'http://101.132.170.212/upload/img/20180620104453241.png', '1');
INSERT INTO `star` VALUES ('20', '小黄人', '小黄人', 'http://101.132.170.212/upload/img/20180620130519676.png', '4');
INSERT INTO `star` VALUES ('21', '喜羊羊', '喜羊羊喜羊羊', 'http://101.132.170.212/upload/img/20180620130822406.png', '1');

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
INSERT INTO `user` VALUES ('033a5ee5bd6543f6b1adf17f37772a67', '2018-06-28 11:15:44', '2018-06-29 11:15:44', '0', '3', '2018-06-28 11:15:44', null, null);
INSERT INTO `user` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '2018-06-29 08:05:55', '2019-06-29 08:05:55', '4', '3', '2018-06-28 22:16:14', null, null);
INSERT INTO `user` VALUES ('1', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:10:50', '陈国栋', '15622193100');
INSERT INTO `user` VALUES ('15e414f8703944e88f3271bc822b74b2', '2018-06-28 20:42:49', '2018-07-05 20:42:49', '1', '3', '2018-06-28 17:50:50', null, null);
INSERT INTO `user` VALUES ('2', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:20:50', '张天梁', '15622193200');
INSERT INTO `user` VALUES ('2027039e494b4b15b3e4885985104278', '2018-06-23 13:50:05', '2018-07-23 13:50:05', '3', '4', '2018-06-21 16:27:01', null, null);
INSERT INTO `user` VALUES ('26cc9fa6d6ea4f4c9cc842553b109739', '2018-06-20 13:50:00', '2018-06-21 13:50:00', '0', '3', '2018-06-20 13:00:26', null, null);
INSERT INTO `user` VALUES ('2b78b2b6455a4ea7bc703603fd985301', '2018-06-20 08:28:12', '2018-06-21 08:28:12', '0', '3', '2018-06-20 08:28:12', null, null);
INSERT INTO `user` VALUES ('3', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:30:50', '李嘉晨', '15622193300');
INSERT INTO `user` VALUES ('306bd274a0c247f1a8af884fae8b608a', '2018-06-20 14:47:41', '2018-06-21 14:47:41', '0', '3', '2018-06-20 14:47:41', null, null);
INSERT INTO `user` VALUES ('34311ede564941e494d8c6709ed21933', '2018-06-20 10:02:17', '2018-06-21 10:02:17', '0', '3', '2018-06-20 10:02:17', null, null);
INSERT INTO `user` VALUES ('3e5b2d5dba8d4093a12d3a3974fb245d', '2018-06-26 16:29:03', '2018-07-26 16:29:03', '2', '4', '2018-06-26 15:33:13', null, null);
INSERT INTO `user` VALUES ('4', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:40:50', '大哥的测试号', '15622193400');
INSERT INTO `user` VALUES ('4f52a4357f084e50ab4d6dcf7c8b3370', '2018-06-15 11:16:13', '2018-06-16 11:16:13', '0', '1', '2018-06-15 11:16:13', null, null);
INSERT INTO `user` VALUES ('529c4a20b2de4c8e89f5a34aa132d8e4', '2018-06-28 20:47:31', '2023-06-28 20:47:31', '5', '3', '2018-06-28 20:43:50', null, null);
INSERT INTO `user` VALUES ('550b9ab3f89b428f9f4aa32c764609bb', '2018-06-21 09:03:44', '2018-07-21 09:03:44', '2', '3', '2018-06-21 08:57:41', null, null);
INSERT INTO `user` VALUES ('5f61c209bdbc455cb75df631637f1e79', '2018-06-20 10:02:46', '2018-06-21 10:02:46', '0', '3', '2018-06-20 10:02:46', null, null);
INSERT INTO `user` VALUES ('6520e50e1acb47a7ba763b3cb68d6cec', '2018-06-19 15:58:24', '2018-06-20 15:58:24', '0', '3', '2018-06-19 15:58:24', null, null);
INSERT INTO `user` VALUES ('6fe7cf22447f4299b30a126d575d96f6', '2018-06-15 11:32:46', '2018-06-16 11:32:46', '0', '3', '2018-06-15 11:32:46', null, null);
INSERT INTO `user` VALUES ('715831636ca44c498ed154b540a8b341', '2018-06-28 17:24:26', '2018-06-29 17:24:26', '0', '3', '2018-06-28 17:24:26', null, null);
INSERT INTO `user` VALUES ('7336df85761d4a8785d5cb28450de7e7', '2018-06-14 17:26:59', '2018-06-15 17:26:59', '100', null, null, '胡珊珊', '15622193500');
INSERT INTO `user` VALUES ('734ceddbf65348cbb8b0f6ceafd7558e', '2018-06-21 12:30:16', '2018-06-22 12:30:16', '0', '3', '2018-06-21 11:40:13', null, null);
INSERT INTO `user` VALUES ('7e0d7fd571154291885d9b82ec8ce9e9', '2018-06-28 11:16:09', '2018-06-29 11:16:09', '0', '3', '2018-06-28 11:16:09', null, null);
INSERT INTO `user` VALUES ('7fcd282f73d74fe5a3d9b7570744cddf', '2018-06-20 12:35:51', '2018-07-20 12:35:51', '2', '3', '2018-06-20 12:35:03', null, null);
INSERT INTO `user` VALUES ('8d774bb85b644b998d8170f033ca96a5', '2018-06-20 11:57:11', '2018-06-21 11:57:11', '0', '3', '2018-06-20 11:57:11', null, null);
INSERT INTO `user` VALUES ('97d413b0a297441a918beafd4eeb4b07', '2018-06-20 13:51:29', '2018-06-21 13:51:29', '0', '3', '2018-06-20 13:51:29', null, null);
INSERT INTO `user` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '2018-06-14 22:24:26', '2018-06-15 22:24:26', '5', null, '2018-06-14 22:24:26', '刘继', '1562219600');
INSERT INTO `user` VALUES ('9b9f17af190e4df19b1f77298129cd21', '2018-06-15 10:41:03', '2018-06-16 10:41:03', '0', '9d5f2aca3d484fa7885a6bfcff9f253b', '2018-06-15 10:33:20', null, null);
INSERT INTO `user` VALUES ('9d2ba83fcc204e22ba922cbbb709ade8', '2018-06-20 11:41:07', '2018-07-20 11:41:07', '2', '3', '2018-06-20 11:30:42', null, null);
INSERT INTO `user` VALUES ('9d5f2aca3d484fa7885a6bfcff9f253b', '2018-06-15 10:08:10', '2018-06-16 10:08:10', '100', null, '2018-06-15 09:50:50', '周魉', '1562219700');
INSERT INTO `user` VALUES ('b25e375e67b34bb188a0aa404a8e0425', '2018-06-21 16:27:44', '2018-07-21 16:27:44', '2', '3', '2018-06-20 18:20:40', null, null);
INSERT INTO `user` VALUES ('b6940b5adb4f489f864c461913c295d7', '2018-06-26 15:31:46', '2018-07-26 15:31:46', '4', '3', '2018-06-26 15:18:24', null, null);
INSERT INTO `user` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '2018-06-28 11:18:15', '2018-06-29 11:18:15', '0', '3', '2018-06-28 11:18:15', null, null);
INSERT INTO `user` VALUES ('bc0de338f3124b98a6e3d7ae4e78f299', '2018-06-21 15:39:44', '2018-07-21 15:39:44', '2', '3', '2018-06-21 15:35:03', null, null);
INSERT INTO `user` VALUES ('c816a4152cf74a3da26370b81e5c6483', '2018-06-20 10:04:07', '2018-06-21 10:04:07', '0', '3', '2018-06-20 10:04:07', null, null);
INSERT INTO `user` VALUES ('d5d181919d9141789ac0f7b1d9bb50da', '2018-06-23 00:30:48', '2018-07-23 00:30:48', '2', '4', '2018-06-22 10:58:25', null, null);
INSERT INTO `user` VALUES ('dc01d5c5fe6643098f6cc0cae934d3c5', '2018-06-20 12:14:53', '2019-06-20 12:14:53', '3', '3', '2018-06-20 12:02:51', null, null);
INSERT INTO `user` VALUES ('e8e394b4832b4171bc1fe4b500abe7e4', '2018-06-20 11:47:20', '2018-06-21 11:47:20', '0', '3', '2018-06-20 11:47:20', null, null);
INSERT INTO `user` VALUES ('eb3d011573884eca8d0348d230419474', '2018-06-22 18:50:55', '2018-06-23 18:50:55', '100', null, '2018-06-22 18:50:54', null, null);
INSERT INTO `user` VALUES ('f514003f73834951ba79068e41c0f6bd', '2018-06-20 11:19:23', '2018-07-20 11:19:23', '1', '3', '2018-06-20 11:10:21', null, null);

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
-- Records of user_order
-- ----------------------------
INSERT INTO `user_order` VALUES ('aaaaaaaaaaa', '1529660099929', '1', 'aaa', 'WX', '2018-06-22 17:34:59', '0');
INSERT INTO `user_order` VALUES ('d5d181919d9141789ac0f7b1d9bb50da', '1529681318761', '1', 'aaa', 'WX', '2018-06-22 23:28:38', '0');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529729814339', '1', 'VIP充值', 'WX', '2018-06-23 12:56:54', '0');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529729827527', '1', 'VIP充值', 'ALI', '2018-06-23 12:57:07', '0');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529729856699', '1', 'VIP充值', 'WX', '2018-06-23 12:57:36', '1');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529731097548', '1', 'VIP充值', 'WX', '2018-06-23 13:18:17', '0');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529731119777', '1', 'VIP充值', 'WX', '2018-06-23 13:18:39', '1');
INSERT INTO `user_order` VALUES ('2027039e494b4b15b3e4885985104278', '1529732993230', '1', 'VIP充值', 'WX', '2018-06-23 13:49:53', '1');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976286199', '1', 'VIP充值', 'WX', '2018-06-26 09:24:46', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976405464', '1', 'VIP充值', 'ALI', '2018-06-26 09:26:45', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976418730', '1', 'VIP充值', 'WX', '2018-06-26 09:26:58', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976440933', '1', 'VIP充值', 'WX', '2018-06-26 09:27:20', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976476043', '1', 'VIP充值', 'WX', '2018-06-26 09:27:56', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529976490964', '1', 'VIP充值', 'WX', '2018-06-26 09:28:10', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529977027402', '1', 'VIP充值', 'WX', '2018-06-26 09:37:07', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1529977064543', '1', 'VIP充值', 'WX', '2018-06-26 09:37:44', '0');
INSERT INTO `user_order` VALUES ('b6940b5adb4f489f864c461913c295d7', '1529997751589', '1', 'VIP充值', 'WX', '2018-06-26 15:22:31', '1');
INSERT INTO `user_order` VALUES ('b6940b5adb4f489f864c461913c295d7', '1529997869199', '1', 'VIP充值', 'ALI', '2018-06-26 15:24:29', '1');
INSERT INTO `user_order` VALUES ('b6940b5adb4f489f864c461913c295d7', '1529998148121', '1', 'VIP充值', 'WX', '2018-06-26 15:29:08', '1');
INSERT INTO `user_order` VALUES ('b6940b5adb4f489f864c461913c295d7', '1529998297355', '1', 'VIP充值', 'WX', '2018-06-26 15:31:37', '1');
INSERT INTO `user_order` VALUES ('3e5b2d5dba8d4093a12d3a3974fb245d', '1529998407309', '1', 'VIP充值', 'WX', '2018-06-26 15:33:27', '1');
INSERT INTO `user_order` VALUES ('3e5b2d5dba8d4093a12d3a3974fb245d', '1530001727652', '1', 'VIP充值', 'WX', '2018-06-26 16:28:47', '1');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530108566214', '1', 'VIP充值', 'WX', '2018-06-27 22:09:26', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530108583621', '1', 'VIP充值', 'WX', '2018-06-27 22:09:43', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530153175183', '1', 'VIP充值', 'WX', '2018-06-28 10:32:55', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530154265246', '2', 'VIP充值', 'WX', '2018-06-28 10:51:05', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530154286355', '2', 'VIP充值', 'ALI', '2018-06-28 10:51:26', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530154789574', '2', 'VIP充值', 'WX', '2018-06-28 10:59:49', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155012824', '2', 'VIP充值', 'WX', '2018-06-28 11:03:32', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155037308', '2', 'VIP充值', 'WX', '2018-06-28 11:03:57', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155097058', '2', 'VIP充值', 'WX', '2018-06-28 11:04:57', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155179496', '2', 'VIP充值', 'WX', '2018-06-28 11:06:19', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155291855', '2', 'VIP充值', 'ALI', '2018-06-28 11:08:11', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155307761', '2', 'VIP充值', 'WX', '2018-06-28 11:08:27', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155356386', '2', 'VIP充值', 'WX', '2018-06-28 11:09:16', '0');
INSERT INTO `user_order` VALUES ('97dffec878cb4a7d9201ace8e1cee94b', '1530155380605', '2', 'VIP充值', 'WX', '2018-06-28 11:09:40', '0');
INSERT INTO `user_order` VALUES ('7e0d7fd571154291885d9b82ec8ce9e9', '1530155799864', '1', 'VIP充值', 'WX', '2018-06-28 11:16:39', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530156285402', '1', 'VIP充值', 'WX', '2018-06-28 11:24:45', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530156330043', '1', 'VIP充值', 'ALI', '2018-06-28 11:25:30', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530156368480', '1', 'VIP充值', 'WX', '2018-06-28 11:26:08', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530156782068', '1', 'VIP充值', 'WX', '2018-06-28 11:33:02', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530156814777', '2', 'VIP充值', 'ALI', '2018-06-28 11:33:34', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530157207824', '2', 'VIP充值', 'WX', '2018-06-28 11:40:07', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530157610996', '1', 'VIP充值', 'WX', '2018-06-28 11:46:50', '0');
INSERT INTO `user_order` VALUES ('d5d181919d9141789ac0f7b1d9bb50da', '1530157626918', '1', 'aaa', 'WX', '2018-06-28 11:47:06', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530157628746', '1', 'VIP充值', 'ALI', '2018-06-28 11:47:08', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530159382934', '1', 'VIP充值', 'WX', '2018-06-28 12:16:22', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530159395871', '1', 'VIP充值', 'WX', '2018-06-28 12:16:35', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530165146574', '1', 'VIP充值', 'WX', '2018-06-28 13:52:26', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530169959386', '1', 'VIP充值', 'WX', '2018-06-28 15:12:39', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530170871558', '2', 'VIP充值', 'WX', '2018-06-28 15:27:51', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530174869965', '1', 'VIP充值', 'WX', '2018-06-28 16:34:29', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530174880449', '1', 'VIP充值', 'WX', '2018-06-28 16:34:40', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530175295778', '2', 'VIP充值', 'ALI', '2018-06-28 16:41:35', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530175417371', '2', 'VIP充值', 'WX', '2018-06-28 16:43:37', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530177543402', '1', 'VIP充值', 'WX', '2018-06-28 17:19:03', '0');
INSERT INTO `user_order` VALUES ('b9dc7d9ca7de4f65bae9338c04faaa6e', '1530177551011', '1', 'VIP充值', 'WX', '2018-06-28 17:19:11', '0');
INSERT INTO `user_order` VALUES ('715831636ca44c498ed154b540a8b341', '1530178014589', '1', 'VIP充值', 'WX', '2018-06-28 17:26:54', '0');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530180905808', '1', 'VIP充值', 'WX', '2018-06-28 18:15:05', '0');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189423949', '1', 'VIP充值', 'WX', '2018-06-28 20:37:03', '0');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189436168', '1', 'VIP充值', 'WX', '2018-06-28 20:37:16', '1');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189564996', '1', 'VIP充值', 'ALI', '2018-06-28 20:39:24', '1');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189615699', '1', 'VIP充值', 'WX', '2018-06-28 20:40:15', '1');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189693402', '1', 'VIP充值', 'WX', '2018-06-28 20:41:33', '1');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189739105', '1', 'VIP充值', 'WX', '2018-06-28 20:42:19', '1');
INSERT INTO `user_order` VALUES ('15e414f8703944e88f3271bc822b74b2', '1530189780355', '2', 'VIP充值', 'WX', '2018-06-28 20:43:00', '0');
INSERT INTO `user_order` VALUES ('529c4a20b2de4c8e89f5a34aa132d8e4', '1530189840949', '2', 'VIP充值', 'WX', '2018-06-28 20:44:00', '1');
INSERT INTO `user_order` VALUES ('529c4a20b2de4c8e89f5a34aa132d8e4', '1530189928949', '2', 'VIP充值', 'WX', '2018-06-28 20:45:28', '0');
INSERT INTO `user_order` VALUES ('529c4a20b2de4c8e89f5a34aa132d8e4', '1530190007715', '2', 'VIP充值', 'WX', '2018-06-28 20:46:47', '1');
INSERT INTO `user_order` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '1530195396980', '2', 'VIP充值', 'WX', '2018-06-28 22:16:36', '0');
INSERT INTO `user_order` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '1530195405652', '1', 'VIP充值', 'WX', '2018-06-28 22:16:45', '0');
INSERT INTO `user_order` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '1530230436824', '1', 'VIP充值', 'WX', '2018-06-29 08:00:36', '0');
INSERT INTO `user_order` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '1530230445090', '1', 'VIP充值', 'WX', '2018-06-29 08:00:45', '0');
INSERT INTO `user_order` VALUES ('09afd734ba89438eb7bdd0c339e01f74', '1530230726544', '2', 'VIP充值', 'WX', '2018-06-29 08:05:26', '1');
INSERT INTO `user_order` VALUES ('715831636ca44c498ed154b540a8b341', '1530236403574', '1', 'VIP充值', 'WX', '2018-06-29 09:40:03', '0');

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
INSERT INTO `video` VALUES ('1404a99af22f4d76b333b2da6de49cc9', '但丁篮球梦', '', '2', 'http://101.132.170.212/upload/img/2018060912560949.jpg', 'http://101.132.170.212/upload/video/1404a99af22f4d76b333b2da6de49cc9.mp4', '蓝光', '1', '3', '1', null);
INSERT INTO `video` VALUES ('15cd4b4b696c40158aa17c0450349676', '詹姆斯(等级二视频)', '<p>詹姆斯(等级二视频)</p>', '1', 'http://101.132.170.212/upload/img/20180620122831856.png', 'http://101.132.170.212/upload/video/15cd4b4b696c40158aa17c0450349676.mp4', '蓝光', '1', '3', '2', null);
INSERT INTO `video` VALUES ('233c3fe80418463a92d3708293378a61', '梅西阿根廷', '', '1', 'http://101.132.170.212/upload/img/20180620103526661.png', 'http://101.132.170.212/upload/video/233c3fe80418463a92d3708293378a61.mp4', '蓝光', '1', '17', '0', null);
INSERT INTO `video` VALUES ('23e004e01d5442ff8fb696b17e927016', '詹姆斯（等级三视频）', '<p>詹姆斯（等级三视频）</p>', '1', 'http://101.132.170.212/upload/img/20180620123008832.png', 'http://101.132.170.212/upload/video/23e004e01d5442ff8fb696b17e927016.mp4', 'HD', '1', '3', '3', null);
INSERT INTO `video` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', '老九门看球（等级四视频）', '', '1', 'http://101.132.170.212/upload/img/2018062809541035.png', 'http://101.132.170.212/upload/video/25d0f839b4cd4b8abe6532c13954fb7f.mp4', 'HD', '1', '15', '4', '1');
INSERT INTO `video` VALUES ('2c618e8597c344ecb9f36628750334f8', '小黄人（等级一视频）', '', '4', 'http://101.132.170.212/upload/img/20180620130528327.png', 'http://101.132.170.212/upload/video/2c618e8597c344ecb9f36628750334f8.mp4', '蓝光', '1', '20', '1', null);
INSERT INTO `video` VALUES ('2fbbfbdfe01c424f840e822d7057dd29', '唐太宗登基', '', '1', 'http://101.132.170.212/upload/img/20180614102905990.png', 'http://101.132.170.212/upload/video/2fbbfbdfe01c424f840e822d7057dd29.mp4', 'HD', '1', '10', '1', null);
INSERT INTO `video` VALUES ('4556319b99f44f81905f2780209ec459', '钢杆舞蹈', '<p>热舞明星<br></p>', '1', 'http://101.132.170.212/upload/img/20180609133252399.png', 'http://101.132.170.212/upload/video/4556319b99f44f81905f2780209ec459.mp4', '蓝光', '1', '8', '2', null);
INSERT INTO `video` VALUES ('468c7195de8d4aa195e92311004121bd', 'papi酱', '<p>papi酱</p><p>papi酱</p><p>papi酱</p>', '2', 'http://101.132.170.212/upload/img/20180615080623427.png', 'http://101.132.170.212/upload/video/468c7195de8d4aa195e92311004121bd.mp4', 'HD', '1', '16', '3', null);
INSERT INTO `video` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'KD霸气广告', '', '2', 'http://101.132.170.212/upload/img/20180614103437884.png', 'http://101.132.170.212/upload/video/490371dd8b3442efbac6ce7f9f9f0311.mp4', 'HD', '1', '7', '1', null);
INSERT INTO `video` VALUES ('560e9df634fa49f18291655243b05fba', '美女看球（等级五视频）', '', '1', 'http://101.132.170.212/upload/img/20180628095138431.png', 'http://101.132.170.212/upload/video/560e9df634fa49f18291655243b05fba.mp4', '蓝光', '1', '15', '5', '1');
INSERT INTO `video` VALUES ('6a4de0e725974b0ebaa79feb5df4a056', '民间翻纸', '<p>高手在民间<br></p>', '2', 'http://101.132.170.212/upload/img/20180615075353699.png', 'http://101.132.170.212/upload/video/6a4de0e725974b0ebaa79feb5df4a056.mp4', '蓝光', '1', '14', '2', null);
INSERT INTO `video` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', '菲尔普斯夺冠', '', '3', 'http://101.132.170.212/upload/img/2018061410361534.png', 'http://101.132.170.212/upload/video/6ac5e40009f647bea7fe6e29ca2be03c.mp4', '蓝光', '1', '12', '1', null);
INSERT INTO `video` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'C罗(等级二视频)', '<p>C罗(等级2视频)</p><p>C罗(等级2视频)</p>', '2', 'http://101.132.170.212/upload/img/20180620124920312.png', 'http://101.132.170.212/upload/video/6ba4b534d55a4b37ac3cb0a5a2855a51.mp4', '蓝光', '1', '18', '2', null);
INSERT INTO `video` VALUES ('8173efc6f04040fe9fb1613a4912a023', '詹姆斯集锦', '', '1', 'http://101.132.170.212/upload/img/20180614132650749.png', 'http://101.132.170.212/upload/video/8173efc6f04040fe9fb1613a4912a023.mp4', 'HD', '1', '3', '1', null);
INSERT INTO `video` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', '梅西(等级三视频)', '<p>梅西(等级三视频)</p><p>梅西(等级三视频)</p>', '2', 'http://101.132.170.212/upload/img/2018062012531994.png', 'http://101.132.170.212/upload/video/8af0e438a4cf4173a14305d5dfd3745d.mp4', 'HD', '1', '17', '3', null);
INSERT INTO `video` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', '秦始皇', '', '1', 'http://101.132.170.212/upload/img/20180614103519882.png', 'http://101.132.170.212/upload/video/8bf3ffa4d43d447aa25808ea8c6bab56.mp4', '蓝光', '1', '11', '1', null);
INSERT INTO `video` VALUES ('b14d55d79c1a45c38dc9ff2bf45ac504', 'C罗进球', '', '1', 'http://101.132.170.212/upload/img/20180620104104639.png', 'http://101.132.170.212/upload/video/b14d55d79c1a45c38dc9ff2bf45ac504.mp4', 'HD', '1', '18', '0', null);
INSERT INTO `video` VALUES ('b3471ffb73e5435180b14cad87a0327e', 'C罗(等级三视频)', '<p>C罗(等级三视频)</p><p>C罗(等级三视频)</p>', '1', 'http://101.132.170.212/upload/img/20180620124618959.png', 'http://101.132.170.212/upload/video/b3471ffb73e5435180b14cad87a0327e.mp4', '蓝光', '1', '18', '3', null);
INSERT INTO `video` VALUES ('b9463d336013458f8e5b711fb4589d89', '德鲁大叔打球', '', '3', 'http://101.132.170.212/upload/img/20180614103629396.png', 'http://101.132.170.212/upload/video/b9463d336013458f8e5b711fb4589d89.mp4', '蓝光', '1', '4', '1', null);
INSERT INTO `video` VALUES ('c3f0c860cc8448cba32eb652a26f138c', '守门的猫', '<p>这只猫去世界杯肯定是最佳守门员<br></p>', '2', 'http://101.132.170.212/upload/img/20180615074802861.png', 'http://101.132.170.212/upload/video/c3f0c860cc8448cba32eb652a26f138c.mp4', '蓝光', '2', '13', '2', null);
INSERT INTO `video` VALUES ('d020831260604f058508e51aff921aec', '梅西(等级二视频)', '<p>梅西(等级二视频)</p>', '3', 'http://101.132.170.212/upload/img/20180620125532249.png', 'http://101.132.170.212/upload/video/d020831260604f058508e51aff921aec.mp4', '蓝光', '1', '17', '2', null);
INSERT INTO `video` VALUES ('da361b9f46d34fce8e22b87cd08821e4', '喜洋洋与灰太狼', '', '1', 'http://101.132.170.212/upload/img/20180620130924138.png', 'http://101.132.170.212/upload/video/da361b9f46d34fce8e22b87cd08821e4.mp4', '蓝光', '1', '21', '0', null);
INSERT INTO `video` VALUES ('f93742c70a984d22a360508e585de221', '梅西(等级一视频)', '<p>梅西(等级一视频)</p>', '4', 'http://101.132.170.212/upload/img/20180620125709213.png', 'http://101.132.170.212/upload/video/f93742c70a984d22a360508e585de221.mp4', 'HD', '1', '17', '1', null);
INSERT INTO `video` VALUES ('fbe6ac06932549f4bc7b780296640fb6', '内马尔进球', '', '1', 'http://101.132.170.212/upload/img/2018062010461266.png', 'http://101.132.170.212/upload/video/fbe6ac06932549f4bc7b780296640fb6.mp4', 'HD', '1', '19', '0', null);

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
INSERT INTO `video_cid` VALUES ('78be2cfdec734ccda8e70bca6ffb4656', '37560a8921d244139c6a0a1c9cdd1e5e');
INSERT INTO `video_cid` VALUES ('78be2cfdec734ccda8e70bca6ffb4656', 'fa0f74643494436c9c5d241e472397bd');
INSERT INTO `video_cid` VALUES ('1404a99af22f4d76b333b2da6de49cc9', '479eaaadcb0f4fdf8033c568c0eae871');
INSERT INTO `video_cid` VALUES ('2fbbfbdfe01c424f840e822d7057dd29', 'ee9059cf82344ed985d2a9bb2b821fd0');
INSERT INTO `video_cid` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', '29d36981b9204689abadddc09a878070');
INSERT INTO `video_cid` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', 'b4bc1aeec8134794bde70ba58e447bb3');
INSERT INTO `video_cid` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', '3d446ee20e434745ae0c48364e3a0780');
INSERT INTO `video_cid` VALUES ('b9463d336013458f8e5b711fb4589d89', '29d36981b9204689abadddc09a878070');
INSERT INTO `video_cid` VALUES ('b9463d336013458f8e5b711fb4589d89', '71b0f8ff76c544dc8964eec38baf6ba1');
INSERT INTO `video_cid` VALUES ('8173efc6f04040fe9fb1613a4912a023', '9db5b157ab4440ceab35543d4687bef4');
INSERT INTO `video_cid` VALUES ('8173efc6f04040fe9fb1613a4912a023', '29d36981b9204689abadddc09a878070');
INSERT INTO `video_cid` VALUES ('c3f0c860cc8448cba32eb652a26f138c', 'a9209d3c776446c5afeb930e18b6b05d');
INSERT INTO `video_cid` VALUES ('4556319b99f44f81905f2780209ec459', '55019040ae9e4ced9f195d6084586c56');
INSERT INTO `video_cid` VALUES ('6a4de0e725974b0ebaa79feb5df4a056', 'ee9059cf82344ed985d2a9bb2b821fd0');
INSERT INTO `video_cid` VALUES ('468c7195de8d4aa195e92311004121bd', 'f1dc41ce727f4387a7f322cbd7fa4fe5');
INSERT INTO `video_cid` VALUES ('233c3fe80418463a92d3708293378a61', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('b14d55d79c1a45c38dc9ff2bf45ac504', 'b633553aa32f46f4af7c9debf7ea1204');
INSERT INTO `video_cid` VALUES ('fbe6ac06932549f4bc7b780296640fb6', 'f228ef13c5b648f495447e1f3fd51800');
INSERT INTO `video_cid` VALUES ('15cd4b4b696c40158aa17c0450349676', '9db5b157ab4440ceab35543d4687bef4');
INSERT INTO `video_cid` VALUES ('23e004e01d5442ff8fb696b17e927016', '9db5b157ab4440ceab35543d4687bef4');
INSERT INTO `video_cid` VALUES ('b3471ffb73e5435180b14cad87a0327e', 'b633553aa32f46f4af7c9debf7ea1204');
INSERT INTO `video_cid` VALUES ('b3471ffb73e5435180b14cad87a0327e', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'b633553aa32f46f4af7c9debf7ea1204');
INSERT INTO `video_cid` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', '3d446ee20e434745ae0c48364e3a0780');
INSERT INTO `video_cid` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('d020831260604f058508e51aff921aec', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('d020831260604f058508e51aff921aec', '3d446ee20e434745ae0c48364e3a0780');
INSERT INTO `video_cid` VALUES ('f93742c70a984d22a360508e585de221', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('f93742c70a984d22a360508e585de221', '3d446ee20e434745ae0c48364e3a0780');
INSERT INTO `video_cid` VALUES ('2c618e8597c344ecb9f36628750334f8', '7b51c9c02dcb47478ec8df3b1e3c3f5b');
INSERT INTO `video_cid` VALUES ('2c618e8597c344ecb9f36628750334f8', 'a9a11b139af243779e8d49fe300e6db5');
INSERT INTO `video_cid` VALUES ('da361b9f46d34fce8e22b87cd08821e4', 'a9a11b139af243779e8d49fe300e6db5');
INSERT INTO `video_cid` VALUES ('da361b9f46d34fce8e22b87cd08821e4', '7b51c9c02dcb47478ec8df3b1e3c3f5b');
INSERT INTO `video_cid` VALUES ('560e9df634fa49f18291655243b05fba', '7878c6031d60477095e12e7316fe842b');
INSERT INTO `video_cid` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', '7878c6031d60477095e12e7316fe842b');

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
INSERT INTO `video_img` VALUES ('b9463d336013458f8e5b711fb4589d89', 'http://101.132.170.212/upload/img/20180609131747161.png');
INSERT INTO `video_img` VALUES ('b9463d336013458f8e5b711fb4589d89', 'http://101.132.170.212/upload/img/20180609131750659.png');
INSERT INTO `video_img` VALUES ('b9463d336013458f8e5b711fb4589d89', 'http://101.132.170.212/upload/img/20180609131756386.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/2018060913353639.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/20180609133540831.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/20180609133543690.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/20180609133552442.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/20180609133559568.png');
INSERT INTO `video_img` VALUES ('4556319b99f44f81905f2780209ec459', 'http://101.132.170.212/upload/img/20180609133624645.png');
INSERT INTO `video_img` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'http://101.132.170.212/upload/img/20180609211848208.png');
INSERT INTO `video_img` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'http://101.132.170.212/upload/img/2018060921185143.png');
INSERT INTO `video_img` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'http://101.132.170.212/upload/img/20180609211853113.png');
INSERT INTO `video_img` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'http://101.132.170.212/upload/img/20180609211857351.png');
INSERT INTO `video_img` VALUES ('490371dd8b3442efbac6ce7f9f9f0311', 'http://101.132.170.212/upload/img/20180609211859400.png');
INSERT INTO `video_img` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', 'http://101.132.170.212/upload/img/20180611102943660.png');
INSERT INTO `video_img` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', 'http://101.132.170.212/upload/img/20180611102954640.png');
INSERT INTO `video_img` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', 'http://101.132.170.212/upload/img/20180611103008644.png');
INSERT INTO `video_img` VALUES ('8bf3ffa4d43d447aa25808ea8c6bab56', 'http://101.132.170.212/upload/img/20180611103018187.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/20180614103716603.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/20180614103720146.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/20180614103723740.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/20180614103727983.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/20180614103729381.png');
INSERT INTO `video_img` VALUES ('6ac5e40009f647bea7fe6e29ca2be03c', 'http://101.132.170.212/upload/img/2018061410373041.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/2018061410331733.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/20180614103317995.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/20180614103741372.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/20180614103743307.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/20180614103746772.png');
INSERT INTO `video_img` VALUES ('8173efc6f04040fe9fb1613a4912a023', 'http://101.132.170.212/upload/img/20180614103748121.png');
INSERT INTO `video_img` VALUES ('2fbbfbdfe01c424f840e822d7057dd29', 'http://101.132.170.212/upload/img/20180614103833336.png');
INSERT INTO `video_img` VALUES ('2fbbfbdfe01c424f840e822d7057dd29', 'http://101.132.170.212/upload/img/20180614103836380.png');
INSERT INTO `video_img` VALUES ('2fbbfbdfe01c424f840e822d7057dd29', 'http://101.132.170.212/upload/img/20180614103837316.png');
INSERT INTO `video_img` VALUES ('1404a99af22f4d76b333b2da6de49cc9', 'http://101.132.170.212/upload/img/20180614103858460.png');
INSERT INTO `video_img` VALUES ('1404a99af22f4d76b333b2da6de49cc9', 'http://101.132.170.212/upload/img/20180614103900103.png');
INSERT INTO `video_img` VALUES ('1404a99af22f4d76b333b2da6de49cc9', 'http://101.132.170.212/upload/img/20180614103906279.png');
INSERT INTO `video_img` VALUES ('c3f0c860cc8448cba32eb652a26f138c', 'http://101.132.170.212/upload/img/20180615074939915.png');
INSERT INTO `video_img` VALUES ('c3f0c860cc8448cba32eb652a26f138c', 'http://101.132.170.212/upload/img/20180615074939634.png');
INSERT INTO `video_img` VALUES ('c3f0c860cc8448cba32eb652a26f138c', 'http://101.132.170.212/upload/img/20180615074939916.png');
INSERT INTO `video_img` VALUES ('6a4de0e725974b0ebaa79feb5df4a056', 'http://101.132.170.212/upload/img/20180615075500441.png');
INSERT INTO `video_img` VALUES ('6a4de0e725974b0ebaa79feb5df4a056', 'http://101.132.170.212/upload/img/20180615075505859.png');
INSERT INTO `video_img` VALUES ('6a4de0e725974b0ebaa79feb5df4a056', 'http://101.132.170.212/upload/img/20180615075509925.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/20180615080709492.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/20180615080710872.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/20180615080709294.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/20180615080710774.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/2018061508071045.png');
INSERT INTO `video_img` VALUES ('468c7195de8d4aa195e92311004121bd', 'http://101.132.170.212/upload/img/2018061508071034.png');
INSERT INTO `video_img` VALUES ('233c3fe80418463a92d3708293378a61', 'http://101.132.170.212/upload/img/2018062010361318.png');
INSERT INTO `video_img` VALUES ('233c3fe80418463a92d3708293378a61', 'http://101.132.170.212/upload/img/20180620103615355.png');
INSERT INTO `video_img` VALUES ('233c3fe80418463a92d3708293378a61', 'http://101.132.170.212/upload/img/20180620103617344.png');
INSERT INTO `video_img` VALUES ('b14d55d79c1a45c38dc9ff2bf45ac504', 'http://101.132.170.212/upload/img/20180620104147891.png');
INSERT INTO `video_img` VALUES ('b14d55d79c1a45c38dc9ff2bf45ac504', 'http://101.132.170.212/upload/img/20180620104149496.png');
INSERT INTO `video_img` VALUES ('b14d55d79c1a45c38dc9ff2bf45ac504', 'http://101.132.170.212/upload/img/20180620104151579.png');
INSERT INTO `video_img` VALUES ('fbe6ac06932549f4bc7b780296640fb6', 'http://101.132.170.212/upload/img/20180620104649667.png');
INSERT INTO `video_img` VALUES ('fbe6ac06932549f4bc7b780296640fb6', 'http://101.132.170.212/upload/img/20180620104651185.png');
INSERT INTO `video_img` VALUES ('fbe6ac06932549f4bc7b780296640fb6', 'http://101.132.170.212/upload/img/20180620104653601.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122911982.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122915714.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122917234.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122919758.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122920283.png');
INSERT INTO `video_img` VALUES ('15cd4b4b696c40158aa17c0450349676', 'http://101.132.170.212/upload/img/20180620122922665.png');
INSERT INTO `video_img` VALUES ('23e004e01d5442ff8fb696b17e927016', 'http://101.132.170.212/upload/img/20180620123046505.png');
INSERT INTO `video_img` VALUES ('23e004e01d5442ff8fb696b17e927016', 'http://101.132.170.212/upload/img/20180620123048552.png');
INSERT INTO `video_img` VALUES ('23e004e01d5442ff8fb696b17e927016', 'http://101.132.170.212/upload/img/20180620123050135.png');
INSERT INTO `video_img` VALUES ('b3471ffb73e5435180b14cad87a0327e', 'http://101.132.170.212/upload/img/20180620124718819.png');
INSERT INTO `video_img` VALUES ('b3471ffb73e5435180b14cad87a0327e', 'http://101.132.170.212/upload/img/20180620124720220.png');
INSERT INTO `video_img` VALUES ('b3471ffb73e5435180b14cad87a0327e', 'http://101.132.170.212/upload/img/20180620124722380.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125038375.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125040230.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125042176.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125046965.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125048549.png');
INSERT INTO `video_img` VALUES ('6ba4b534d55a4b37ac3cb0a5a2855a51', 'http://101.132.170.212/upload/img/20180620125054293.png');
INSERT INTO `video_img` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', 'http://101.132.170.212/upload/img/20180620125433295.png');
INSERT INTO `video_img` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', 'http://101.132.170.212/upload/img/20180620125435661.png');
INSERT INTO `video_img` VALUES ('8af0e438a4cf4173a14305d5dfd3745d', 'http://101.132.170.212/upload/img/20180620125437852.png');
INSERT INTO `video_img` VALUES ('d020831260604f058508e51aff921aec', 'http://101.132.170.212/upload/img/20180620125616219.png');
INSERT INTO `video_img` VALUES ('d020831260604f058508e51aff921aec', 'http://101.132.170.212/upload/img/20180620125618390.png');
INSERT INTO `video_img` VALUES ('d020831260604f058508e51aff921aec', 'http://101.132.170.212/upload/img/20180620125622677.png');
INSERT INTO `video_img` VALUES ('f93742c70a984d22a360508e585de221', 'http://101.132.170.212/upload/img/20180620125755661.png');
INSERT INTO `video_img` VALUES ('f93742c70a984d22a360508e585de221', 'http://101.132.170.212/upload/img/2018062012575796.png');
INSERT INTO `video_img` VALUES ('f93742c70a984d22a360508e585de221', 'http://101.132.170.212/upload/img/20180620125801120.png');
INSERT INTO `video_img` VALUES ('2c618e8597c344ecb9f36628750334f8', 'http://101.132.170.212/upload/img/20180620130609870.png');
INSERT INTO `video_img` VALUES ('2c618e8597c344ecb9f36628750334f8', 'http://101.132.170.212/upload/img/20180620130611534.png');
INSERT INTO `video_img` VALUES ('2c618e8597c344ecb9f36628750334f8', 'http://101.132.170.212/upload/img/20180620130614645.png');
INSERT INTO `video_img` VALUES ('da361b9f46d34fce8e22b87cd08821e4', 'http://101.132.170.212/upload/img/20180620131039463.png');
INSERT INTO `video_img` VALUES ('da361b9f46d34fce8e22b87cd08821e4', 'http://101.132.170.212/upload/img/20180620131041974.png');
INSERT INTO `video_img` VALUES ('da361b9f46d34fce8e22b87cd08821e4', 'http://101.132.170.212/upload/img/20180620131043111.png');
INSERT INTO `video_img` VALUES ('560e9df634fa49f18291655243b05fba', 'http://101.132.170.212/upload/img/20180628095247601.png');
INSERT INTO `video_img` VALUES ('560e9df634fa49f18291655243b05fba', 'http://101.132.170.212/upload/img/20180628095251883.png');
INSERT INTO `video_img` VALUES ('560e9df634fa49f18291655243b05fba', 'http://101.132.170.212/upload/img/20180628095253560.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/20180628095505176.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/20180628095507244.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/20180628095509318.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/20180628095511498.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/2018062809551343.png');
INSERT INTO `video_img` VALUES ('25d0f839b4cd4b8abe6532c13954fb7f', 'http://101.132.170.212/upload/img/20180628095515657.png');
