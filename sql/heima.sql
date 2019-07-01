/*
Navicat MySQL Data Transfer

Source Server         : wuhan32
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : heima

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-06-30 21:05:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for callerskill
-- ----------------------------
DROP TABLE IF EXISTS `callerskill`;
CREATE TABLE `callerskill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callerName` varchar(255) NOT NULL,
  `callerImg` varchar(255) NOT NULL,
  `bigImg` varchar(255) NOT NULL,
  `locked` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `otherInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of callerskill
-- ----------------------------
INSERT INTO `callerskill` VALUES ('1', '惩击', './images/80104.jpg', './images/80104-big.jpg', 'LV.1解锁', '30秒CD：对身边的野怪和小兵造成真实伤害并眩晕1秒', '1');
INSERT INTO `callerskill` VALUES ('2', '终结', './images/80108.jpg', './images/80108-big.jpg', 'LV.3解锁', '90秒CD：立即对身边敌军英雄造成其已损失生命值14%的真实伤害', '2');
INSERT INTO `callerskill` VALUES ('3', '狂暴', './images/80110.jpg', './images/80110-big.jpg', 'LV.5解锁', '60秒CD：增加攻击速度60%，并增加物理攻击力10%持续5秒', '3');
INSERT INTO `callerskill` VALUES ('4', '疾跑', './images/80109.jpg', './images/80109-big.jpg', 'LV.7解锁', '100秒CD：增加30%移动速度持续10秒', '2');
INSERT INTO `callerskill` VALUES ('5', '治疗术', './images/80102.jpg', './images/80102-big.jpg', 'LV.9解锁', '120秒CD：回复自己与附近队友15%生命值，提高附近友军移动速度15%持续2秒', '3');
INSERT INTO `callerskill` VALUES ('6', '干扰', './images/80105.jpg', './images/80105-big.jpg', 'LV.11解锁', '60秒CD：沉默机关持续5秒', '3');
INSERT INTO `callerskill` VALUES ('7', '晕眩', './images/80103.jpg', './images/80103-big.jpg', 'LV.13解锁', '90秒CD：晕眩身边所有敌人0.75秒，并附带持续1秒的减速效果', '1');
INSERT INTO `callerskill` VALUES ('8', '净化', './images/80107.jpg', './images/80107-big.jpg', 'LV.15解锁', '120秒CD：解除自身所有负面和控制效果并免疫控制持续1.5秒', '1');
INSERT INTO `callerskill` VALUES ('9', '弱化', './images/80121.jpg', './images/80121-big.jpg', 'LV.17解锁', '90秒CD：减少身边敌人伤害输出50%持续3秒。', '2');
INSERT INTO `callerskill` VALUES ('10', '闪现', './images/80115.jpg', './images/80115-big.jpg', 'LV.19解锁', '120秒CD：向指定方向位移一段距离', '3');

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_num` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '男',
  `tel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_info
-- ----------------------------
INSERT INTO `stu_info` VALUES ('1', '9527', '陈伟', '12', '男', '110');
INSERT INTO `stu_info` VALUES ('2', '9528', '胡禄', '30', '女', '114');
INSERT INTO `stu_info` VALUES ('3', '9529', '鲍坤', '80', '男', '18866666666');
INSERT INTO `stu_info` VALUES ('6', '9530', '王哈哈', '19', '男', '13955556666');
INSERT INTO `stu_info` VALUES ('7', '9531', '海绵宝宝', '22', '女', '1761234421');
INSERT INTO `stu_info` VALUES ('8', '9532', '刘某', '11', '男', '15577889900');
INSERT INTO `stu_info` VALUES ('9', '9533', 'php', '20', '男', '18822009933');
