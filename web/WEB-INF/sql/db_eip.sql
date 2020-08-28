/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : db_eip

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-08-28 15:35:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_college
-- ----------------------------
DROP TABLE IF EXISTS `tb_college`;
CREATE TABLE `tb_college` (
  `CId` int(11) NOT NULL AUTO_INCREMENT COMMENT '大学id',
  `CName` varchar(50) NOT NULL COMMENT '大学名',
  `CAddress` varchar(100) DEFAULT NULL COMMENT '大学地址',
  `CDescription` varchar(255) DEFAULT NULL COMMENT '大学描述',
  `CStuffs` int(11) DEFAULT NULL COMMENT '大学教职工数量',
  `CTeachers` int(11) DEFAULT NULL COMMENT '大学专职老师数量',
  `CCapacity` int(11) DEFAULT NULL COMMENT '大学学生总人数',
  `CCapacityYears` int(11) DEFAULT NULL COMMENT '大学每年招生人数',
  `CPointX` float DEFAULT NULL COMMENT '点坐标X',
  `CPointY` float DEFAULT NULL COMMENT '点坐标Y',
  PRIMARY KEY (`CId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_college
-- ----------------------------
INSERT INTO `tb_college` VALUES ('1', '英雄大学', '重庆市巴南区', '没有”个性“也要成为英雄！', '1200', '1000', '8000', '3000', '29.5157', '106.538');
INSERT INTO `tb_college` VALUES ('2', '夏目大学', '重庆沙坪坝区', '一起成为温柔的人吧', '1000', '880', '7500', '2800', '29.5122', '106.528');
INSERT INTO `tb_college` VALUES ('5', '哈利大学', '重庆市江北区', '哈利波特的继承人们', '1043', '812', '7300', '2600', '29.6134', '106.558');
INSERT INTO `tb_college` VALUES ('3', '辉夜大学', '重庆渝北区', '大小姐冲冲冲', '1180', '900', '7800', '3100', '29.7131', '106.612');
INSERT INTO `tb_college` VALUES ('4', '阴阳大学', '重庆市南岸区', '屯屯鼠养成大计', '1120', '920', '8100', '3200', '29.5431', '106.652');

-- ----------------------------
-- Table structure for tb_highschool
-- ----------------------------
DROP TABLE IF EXISTS `tb_highschool`;
CREATE TABLE `tb_highschool` (
  `HSId` int(11) NOT NULL AUTO_INCREMENT COMMENT '高中id',
  `HSName` varchar(50) NOT NULL COMMENT '高中名',
  `HSAddress` varchar(100) DEFAULT NULL COMMENT '高中地址',
  `HSDescription` varchar(255) DEFAULT NULL COMMENT '高中描述',
  `HSStuffs` int(11) DEFAULT NULL COMMENT '高中教职工数量',
  `HSTeachers` int(11) DEFAULT NULL COMMENT '高中专职老师数量',
  `HSCapacity` int(11) DEFAULT NULL COMMENT '高中学生总人数',
  `HSCapacityYears` int(11) DEFAULT NULL COMMENT '高中每年招生人数',
  `HSPointX` float DEFAULT NULL COMMENT '点坐标X',
  `HSPointY` float DEFAULT NULL COMMENT '点坐标Y',
  PRIMARY KEY (`HSId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_highschool
-- ----------------------------
INSERT INTO `tb_highschool` VALUES ('1', '巨人高中', '重庆市南岸区', '为兵长献上后颈', '480', '280', '3000', '1000', '29.5127', '106.558');
INSERT INTO `tb_highschool` VALUES ('2', '猎人高中', '重庆市渝中区', '要成为一颗很棒的苹果噢', '500', '310', '3100', '1100', '29.5427', '106.549');
INSERT INTO `tb_highschool` VALUES ('4', '玄策高中', '重庆市渝中区', '百里玄策冲冲冲', '529', '370', '3220', '1123', '29.5346', '106.513');
INSERT INTO `tb_highschool` VALUES ('3', '百里高中', '重庆市九龙坡区', '百里守约', '490', '300', '2800', '980', '29.5334', '106.536');

-- ----------------------------
-- Table structure for tb_kindergarten
-- ----------------------------
DROP TABLE IF EXISTS `tb_kindergarten`;
CREATE TABLE `tb_kindergarten` (
  `KId` int(11) NOT NULL AUTO_INCREMENT COMMENT '幼稚园ID',
  `KName` varchar(50) NOT NULL COMMENT '幼稚园名',
  `KAddress` varchar(100) DEFAULT NULL,
  `KDescription` varchar(255) DEFAULT NULL COMMENT '幼儿园描述',
  `KStuffs` int(11) DEFAULT NULL COMMENT '幼稚园教职工数量',
  `KTeachers` int(11) DEFAULT NULL COMMENT '幼稚园专职老师数量',
  `KCapacity` int(11) DEFAULT NULL COMMENT '幼稚园学生总人数',
  `KCapacityYears` int(11) DEFAULT NULL COMMENT '幼稚园每年招生人数',
  `KPointX` float DEFAULT NULL COMMENT '点坐标x',
  `KPointY` float DEFAULT NULL COMMENT '点坐标y',
  PRIMARY KEY (`KId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_kindergarten
-- ----------------------------
INSERT INTO `tb_kindergarten` VALUES ('2', '向日葵幼稚园', '重庆市巴南区', '幼儿园周边环境优雅，绿化率高，临近银湖，空气清新，依托着优美的自然环境和高品质的社区配套服务.', '50', '30', '600', '400', '29.4424', '106.544');
INSERT INTO `tb_kindergarten` VALUES ('3', '菠萝幼稚园', '重庆市巴南区', '幼儿园周边环境优雅，绿化率高，临近银湖，空气清新，依托着优美的自然环境和高品质的社区配套服务，为孩子们随时可以走出幼儿园去进行户外教学提供了安全、舒适的便利条件。', '66', '40', '610', '420', '29.4351', '106.545');
INSERT INTO `tb_kindergarten` VALUES ('5', '草莓幼稚园', '重庆市巴南区', '草莓冲冲冲', '68', '41', '700', '500', '29.4561', '106.524');
INSERT INTO `tb_kindergarten` VALUES ('4', 'kk幼稚园', '重庆市沙坪坝区', '幼儿园周边环境优雅，绿化率高，临近银湖，空气清新，依托着优美的自然环境和高品质的社区配套服务，为孩子们随时可以走出幼儿园去进行户外教学提供了安全、舒适的便利条件。', '70', '43', '670', '460', '29.4423', '106.412');

-- ----------------------------
-- Table structure for tb_middleschool
-- ----------------------------
DROP TABLE IF EXISTS `tb_middleschool`;
CREATE TABLE `tb_middleschool` (
  `MSId` int(11) NOT NULL AUTO_INCREMENT COMMENT '初中id',
  `MSName` varchar(50) NOT NULL COMMENT '初中名',
  `MSAddress` varchar(100) DEFAULT NULL COMMENT '初中地址',
  `MSDescription` varchar(255) DEFAULT NULL COMMENT '初中描述',
  `MSStuffs` int(11) DEFAULT NULL COMMENT '初中教职工数量',
  `MSTeachers` int(11) DEFAULT NULL COMMENT '初中专职老师数量',
  `MSCapacity` int(11) DEFAULT NULL COMMENT '初中学生总人数',
  `MSCapacityYears` int(11) DEFAULT NULL COMMENT '初中每年招生人数',
  `MSPointX` float DEFAULT NULL COMMENT '点坐标X',
  `MSPointY` float DEFAULT NULL COMMENT '点坐标Y',
  PRIMARY KEY (`MSId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_middleschool
-- ----------------------------
INSERT INTO `tb_middleschool` VALUES ('1', '海贼中学', '重庆市南岸区', '成为海贼王', '400', '200', '3000', '1500', '29.4437', '106.312');
INSERT INTO `tb_middleschool` VALUES ('2', '火影中学', '重庆市巴南区', '一起来做火影忍者', '480', '260', '3800', '1700', '29.5423', '106.531');
INSERT INTO `tb_middleschool` VALUES ('3', '光遇中学', '重庆市南岸区', '冥冥遇见', '420', '230', '3200', '1600', '29.4127', '106.361');
INSERT INTO `tb_middleschool` VALUES ('4', '江南中学', '重庆市巴南区', '江南百景，风景好', '460', '270', '3700', '1800', '29.4512', '106.238');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `qualify` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES ('24', 'lwl', '2020-08-25 10:41:00', '大学条例', '一些条例吧', '1');
INSERT INTO `tb_notice` VALUES ('18', 'lwl', '2020-08-24 05:11:00', '测试', '这是一条测试数据', '1');
INSERT INTO `tb_notice` VALUES ('1', 'lwl', '2020-08-24 05:09:00', '退钱', '退住宿费了嗷', '0');
INSERT INTO `tb_notice` VALUES ('20', 'lwl', '2020-08-24 05:36:00', '初中的一些条例', '初中的一些条例啊条例啊条例', '0');
INSERT INTO `tb_notice` VALUES ('2', 'lcq', '2020-08-24 02:00:00', '大学', '一条关于大学的公告', '1');
INSERT INTO `tb_notice` VALUES ('22', 'lwl', '2020-08-25 09:48:00', '幼稚园条例', '一段描述', '0');
INSERT INTO `tb_notice` VALUES ('19', 'lwl', '2020-08-25 09:48:00', '幼稚园的一些条例', '一些条例啊条例啊条例', '1');
INSERT INTO `tb_notice` VALUES ('21', 'lwl', '2020-08-25 08:50:00', '大学', 'ftty', '1');

-- ----------------------------
-- Table structure for tb_organization
-- ----------------------------
DROP TABLE IF EXISTS `tb_organization`;
CREATE TABLE `tb_organization` (
  `OId` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织id',
  `OCName` varchar(50) NOT NULL COMMENT '组织中文名',
  `OTBName` varchar(50) NOT NULL COMMENT '组织对应表名',
  PRIMARY KEY (`OId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_organization
-- ----------------------------
INSERT INTO `tb_organization` VALUES ('1', '幼稚园', 'tb_kindergarten');
INSERT INTO `tb_organization` VALUES ('2', '小学', 'tb_primaryschool');
INSERT INTO `tb_organization` VALUES ('3', '初中', 'tb_middleschool');
INSERT INTO `tb_organization` VALUES ('4', '高中', 'tb_highshool');
INSERT INTO `tb_organization` VALUES ('5', '大学', 'tb_college');

-- ----------------------------
-- Table structure for tb_primaryschool
-- ----------------------------
DROP TABLE IF EXISTS `tb_primaryschool`;
CREATE TABLE `tb_primaryschool` (
  `PSId` int(11) NOT NULL AUTO_INCREMENT COMMENT '小学id',
  `PSName` varchar(50) NOT NULL COMMENT '小学名',
  `PSAddress` varchar(100) DEFAULT NULL COMMENT '小学描述',
  `PSDescription` varchar(255) DEFAULT NULL,
  `PSStuffs` int(11) DEFAULT NULL COMMENT '小学教职工数量',
  `PSTeachers` int(11) DEFAULT NULL COMMENT '小学专职老师数量',
  `PSCapacity` int(11) DEFAULT NULL COMMENT '小学学生总人数',
  `PSCapacityYears` int(11) DEFAULT NULL COMMENT '小学每年招生人数',
  `PSPointX` float DEFAULT NULL COMMENT '点坐标X',
  `PSPointY` float DEFAULT NULL COMMENT '点坐标Y',
  PRIMARY KEY (`PSId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_primaryschool
-- ----------------------------
INSERT INTO `tb_primaryschool` VALUES ('1', '冰帝小学', '重庆市沙坪坝区', '冰帝小学很厉害啊', '240', '180', '2500', '480', '29.5447', '106.312');
INSERT INTO `tb_primaryschool` VALUES ('2', '妖尾小学', '重庆市巴南区', '妖尾小学，立志于打造一个魔法世界，这里出了很多优秀的学生，比如纳兹、格雷、露西等等等等。', '270', '200', '2700', '520', '29.4234', '106.515');
INSERT INTO `tb_primaryschool` VALUES ('3', '文峰小学', '重庆市沙坪坝区', '文峰塔下，绿树成荫', '260', '193', '2683', '517', '29.5435', '106.321');
INSERT INTO `tb_primaryschool` VALUES ('4', '萤草小学', '重庆市巴南区', '一个可可爱爱的小学', '264', '183', '2410', '500', '29.4462', '106.562');
INSERT INTO `tb_primaryschool` VALUES ('5', '文文小学', '重庆市璧山区', '一段描述', '300', '210', '2832', '550', '29.6435', '106.321');

-- ----------------------------
-- Table structure for tb_survey
-- ----------------------------
DROP TABLE IF EXISTS `tb_survey`;
CREATE TABLE `tb_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Q1` int(11) DEFAULT '0',
  `Q2` int(11) DEFAULT '0',
  `Q3` int(11) DEFAULT '0',
  `Q4` int(11) DEFAULT '0',
  `Q5` int(11) DEFAULT '0',
  `Q6` int(11) DEFAULT '0',
  `Q7` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_survey
-- ----------------------------
INSERT INTO `tb_survey` VALUES ('1', '1', '1', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('2', '1', '0', '0', '1', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('3', '0', '0', '1', '1', '0', '1', '0');
INSERT INTO `tb_survey` VALUES ('4', '0', '0', '0', '0', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('5', '0', '0', '1', '1', '1', '1', '0');
INSERT INTO `tb_survey` VALUES ('6', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `tb_survey` VALUES ('7', '1', '1', '1', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('8', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('9', '1', '1', '0', '0', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('10', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('11', '0', '0', '0', '0', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('12', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('13', '1', '1', '1', '1', '1', '0', '0');
INSERT INTO `tb_survey` VALUES ('14', '1', '1', '1', '1', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('15', '1', '1', '1', '0', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('16', '1', '1', '0', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('17', '1', '0', '1', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('18', '1', '0', '1', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('19', '1', '0', '0', '1', '0', '0', '1');
INSERT INTO `tb_survey` VALUES ('20', '0', '1', '1', '1', '1', '1', '0');
INSERT INTO `tb_survey` VALUES ('21', '1', '0', '0', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('22', '1', '0', '1', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('23', '0', '0', '0', '1', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('24', '1', '1', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('25', '1', '1', '1', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('26', '1', '1', '1', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('27', '1', '0', '1', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('28', '1', '0', '0', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('29', '1', '1', '0', '1', '1', '1', '0');
INSERT INTO `tb_survey` VALUES ('30', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('31', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('32', '1', '1', '0', '0', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('33', '1', '0', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('34', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('35', '1', '0', '0', '0', '1', '1', '1');
INSERT INTO `tb_survey` VALUES ('36', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('37', '1', '1', '1', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('38', '1', '0', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('39', '1', '0', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('40', '1', '0', '0', '0', '1', '0', '1');
INSERT INTO `tb_survey` VALUES ('41', '0', '1', '0', '1', '0', '0', '1');
INSERT INTO `tb_survey` VALUES ('42', '1', '1', '1', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('43', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('44', '1', '0', '0', '0', '0', '1', '1');
INSERT INTO `tb_survey` VALUES ('45', '1', '0', '1', '1', '0', '1', '1');

-- ----------------------------
-- Table structure for tb_sysmanager
-- ----------------------------
DROP TABLE IF EXISTS `tb_sysmanager`;
CREATE TABLE `tb_sysmanager` (
  `SMId` int(11) NOT NULL AUTO_INCREMENT,
  `SMName` varchar(20) NOT NULL,
  `SMPwd` varchar(50) NOT NULL,
  PRIMARY KEY (`SMId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sysmanager
-- ----------------------------
INSERT INTO `tb_sysmanager` VALUES ('1', 'david', '123456');
INSERT INTO `tb_sysmanager` VALUES ('2', 'Ylq', '123456');
INSERT INTO `tb_sysmanager` VALUES ('3', 'lwl', '123456');

-- ----------------------------
-- Table structure for tb_sysuser
-- ----------------------------
DROP TABLE IF EXISTS `tb_sysuser`;
CREATE TABLE `tb_sysuser` (
  `SUId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `SUName` varchar(20) NOT NULL COMMENT '用户名',
  `SUPwd` varchar(50) NOT NULL COMMENT '用户密码',
  `SUMail` varchar(20) DEFAULT NULL COMMENT '用户邮件',
  `SUTel` varchar(20) DEFAULT NULL COMMENT '电话',
  `SUQuestion` varchar(255) DEFAULT NULL COMMENT '密保问题',
  `SUAnswer` varchar(255) DEFAULT NULL COMMENT '密保答案',
  `SUImage` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `SUChar` varchar(50) DEFAULT NULL COMMENT '角色',
  `SUQualify` int(11) NOT NULL DEFAULT '0' COMMENT '是否被禁用',
  `SUVerify` int(11) NOT NULL DEFAULT '0' COMMENT '角色是否被确定',
  PRIMARY KEY (`SUId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sysuser
-- ----------------------------
INSERT INTO `tb_sysuser` VALUES ('1', 'ddd', '123456', '810122753@qq.com', '18182281436', '您宠物的名字是？', 'dudu', '6af20589c07f49c385290b2825df41c1.JPG', '普通用户', '0', '1');
INSERT INTO `tb_sysuser` VALUES ('2', 'lwl', '123456', '810122753@qq.com', '18182281436', '您父亲的名字是？', '大刘', 'd693eb1d6cb24d2ca4a175d0c094454b.jpg', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('3', 'lcq', '123456', '810122753@qq.com', '18182281436', '您母亲的名字是？', '大李', '6af20589c07f49c385290b2825df41c1.JPG', '民办教育个人', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('4', 'nnn', '123456', '810122753@qq.com', '18182281436', '您父亲的名字是？', '嘟嘟', '6af20589c07f49c385290b2825df41c1.JPG', '普通用户', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('5', 'xnj', '123', '810122753@qq.com', '13368060616', '您母亲的名字是？', '知道', '6af20589c07f49c385290b2825df41c1.JPG', '普通用户', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('6', 'lwl1', '123456', '810122753@qq.com', '13523564223', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '1', '1');
INSERT INTO `tb_sysuser` VALUES ('7', 'lwl2', '123456', '810122753@qq.com', '18182281436', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('8', 'lwl3', '123456', '810122753@qq.com', '13523564223', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('9', 'lwl4', '123456', '810122753@qq.com', '13523564223', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('10', 'lwl5', '123456', '810122753@qq.com', '13523564223', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('11', 'lwl6', '123456', '810122753@qq.com', '13523564223', '您父亲的名字是？', '大刘', '6af20589c07f49c385290b2825df41c1.JPG', '专家', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('13', 'nnn7', '123456', '810122753@qq.com', '18182281436', '您母亲的名字是？', '不知道', '6af20589c07f49c385290b2825df41c1.JPG', '民办教育个人', '0', '0');
INSERT INTO `tb_sysuser` VALUES ('14', 'rrr', '1111', '810122753@qq.com', '18182281430', '您父亲的名字是？', '不知道', '6af20589c07f49c385290b2825df41c1.JPG', '民办教育个人', '0', '0');

-- ----------------------------
-- Table structure for tb_tipoff
-- ----------------------------
DROP TABLE IF EXISTS `tb_tipoff`;
CREATE TABLE `tb_tipoff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `qualify` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_tipoff
-- ----------------------------
INSERT INTO `tb_tipoff` VALUES ('2', '向日葵幼稚园', '重庆市渝北区', '太可爱了', '1');
INSERT INTO `tb_tipoff` VALUES ('3', '冰帝小学', '重庆市南岸区', '名字太拽了', '1');
INSERT INTO `tb_tipoff` VALUES ('5', '海贼中学', '重庆市南岸区', '教育出来的小朋友都是海盗', '1');
INSERT INTO `tb_tipoff` VALUES ('9', '火影中学', '重庆市巴南区', '学生太暴力了', '1');
INSERT INTO `tb_tipoff` VALUES ('18', '巨人高中', '重庆市南岸区', '食堂太难吃了', '1');
INSERT INTO `tb_tipoff` VALUES ('25', '巨人高中', '重庆市南岸区', '没见到兵长', '1');
INSERT INTO `tb_tipoff` VALUES ('23', '阴阳大学', '重庆市南岸区', '我没有肝了', '0');
