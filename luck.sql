/*
Navicat MySQL Data Transfer

Source Server         : 生产环境数据库
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : luck

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-01-20 15:17:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lk_grade`
-- ----------------------------
DROP TABLE IF EXISTS `lk_grade`;
CREATE TABLE `lk_grade` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lk_grade
-- ----------------------------
INSERT INTO `lk_grade` VALUES ('1', '一等奖', '2016-01-20 10:27:26', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_grade` VALUES ('2', '二等奖', '2016-01-20 10:27:34', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_grade` VALUES ('3', '三等奖', '2016-01-20 10:27:46', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for `lk_member`
-- ----------------------------
DROP TABLE IF EXISTS `lk_member`;
CREATE TABLE `lk_member` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name_real` varchar(20) NOT NULL DEFAULT '',
  `name_nick` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `email_check` tinyint(1) NOT NULL DEFAULT '0',
  `integral` int(20) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lk_member
-- ----------------------------
INSERT INTO `lk_member` VALUES ('1', 'ming', 'ming', '1121c92aa7d59e70ead86074e5500e8a', '13665119187', '723528197@qq.com', '1', '0', '1', '2015-03-03', '2015-12-23 14:51:03', '2015-12-25 13:13:51', '1');

-- ----------------------------
-- Table structure for `lk_user`
-- ----------------------------
DROP TABLE IF EXISTS `lk_user`;
CREATE TABLE `lk_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `grade` int(20) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lk_user
-- ----------------------------
INSERT INTO `lk_user` VALUES ('100', '测试0', '15949249913', '0', '2016-01-19 15:36:18', '2016-01-19 16:05:06', '1');
INSERT INTO `lk_user` VALUES ('101', '测试1', '13706193930', '0', '2016-01-19 15:37:15', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('102', '测试2', '13616183622', '0', '2016-01-19 15:38:31', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('103', '测试3', '13921178716', '1', '2016-01-19 15:38:41', '2016-01-20 13:18:07', '1');
INSERT INTO `lk_user` VALUES ('104', '测试4', '13961732611', '0', '2016-01-19 15:39:09', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('105', '测试5', '15261551221', '0', '2016-01-19 15:44:05', '2016-01-19 18:43:13', '1');
INSERT INTO `lk_user` VALUES ('106', '测试6', '18168923136', '0', '2016-01-19 15:44:13', '2016-01-19 18:12:13', '1');
INSERT INTO `lk_user` VALUES ('107', '测试7', '18915352813', '0', '2016-01-19 15:44:23', '2016-01-19 18:10:40', '1');
INSERT INTO `lk_user` VALUES ('108', '测试8', '13921278019', '0', '2016-01-19 15:44:41', '2016-01-19 18:41:37', '1');
INSERT INTO `lk_user` VALUES ('109', '测试9', '13961700133', '0', '2016-01-19 15:45:29', '2016-01-19 16:10:29', '1');
INSERT INTO `lk_user` VALUES ('110', '测试10', '13915279141', '0', '2016-01-19 15:45:47', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('111', '测试11', '13506178345', '0', '2016-01-19 15:45:50', '2016-01-19 18:11:09', '1');
INSERT INTO `lk_user` VALUES ('112', '测试12', '15895311436', '0', '2016-01-19 15:45:50', '2016-01-19 16:10:41', '1');
INSERT INTO `lk_user` VALUES ('113', '测试13', '13601482137', '0', '2016-01-19 15:46:08', '2016-01-19 18:54:57', '1');
INSERT INTO `lk_user` VALUES ('114', '测试14', '15961797195', '0', '2016-01-19 15:48:50', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('115', '测试15', '13665147298', '0', '2016-01-19 15:48:51', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('116', '测试16', '15961797392', '0', '2016-01-19 15:49:23', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('117', '测试17', '15345100427', '0', '2016-01-19 15:49:26', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('118', '测试18', '13382216111', '0', '2016-01-19 15:49:35', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('119', '测试19', '13814230191', '0', '2016-01-19 15:49:37', '2016-01-19 18:51:58', '1');
INSERT INTO `lk_user` VALUES ('120', '测试20', '13961775496', '0', '2016-01-19 15:50:30', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('121', '测试21', '18626323588', '0', '2016-01-19 15:51:01', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('122', '测试22', '15895311203', '0', '2016-01-19 15:51:08', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('123', '测试23', '18706187136', '0', '2016-01-19 15:51:52', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('124', '测试24', '15895311203', '0', '2016-01-19 15:52:13', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('125', '测试25', '18551051330', '0', '2016-01-19 15:52:18', '2016-01-19 18:07:45', '1');
INSERT INTO `lk_user` VALUES ('126', '测试26', '13585022221', '0', '2016-01-19 15:52:20', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('127', '测试27', '15961823264', '0', '2016-01-19 15:53:41', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('128', '测试28', '13915353393', '0', '2016-01-19 15:53:58', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('129', '测试29', '18512302469', '0', '2016-01-19 15:54:32', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('130', '测试30', '15251510578', '0', '2016-01-19 15:54:34', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('131', '测试31', '13812291116', '0', '2016-01-19 15:54:59', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('132', '测试32', '13771525250', '0', '2016-01-19 15:55:40', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('133', '测试33', '18051951380', '0', '2016-01-19 15:55:40', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('134', '测试34', '13861836439', '0', '2016-01-19 15:55:41', '2016-01-19 18:27:14', '1');
INSERT INTO `lk_user` VALUES ('135', '测试35', '13771573593', '0', '2016-01-19 15:56:18', '2016-01-19 16:10:35', '1');
INSERT INTO `lk_user` VALUES ('136', '测试36', '13812102194', '0', '2016-01-19 15:56:27', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('137', '测试37', '18261532218', '0', '2016-01-19 15:56:29', '2016-01-19 17:10:10', '1');
INSERT INTO `lk_user` VALUES ('138', '测试38', '18168927320', '0', '2016-01-19 15:57:31', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('139', '测试39', '13338772269', '0', '2016-01-19 15:58:26', '2016-01-19 18:13:38', '1');
INSERT INTO `lk_user` VALUES ('140', '测试40', '15852700105', '0', '2016-01-19 15:58:43', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('141', '测试41', '15052213327', '0', '2016-01-19 15:58:47', '2016-01-20 11:05:47', '1');
INSERT INTO `lk_user` VALUES ('142', '测试42', '13814208226', '0', '2016-01-19 15:58:55', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('143', '测试43', '13921297418', '0', '2016-01-19 15:58:55', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('144', '测试44', '15961707266', '0', '2016-01-19 15:59:01', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('145', '测试45', '17826616321', '0', '2016-01-19 15:59:31', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('146', '测试46', '18761523269', '0', '2016-01-19 15:59:50', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('147', '测试47', '17761979407', '0', '2016-01-19 16:00:00', '2016-01-19 18:13:03', '1');
INSERT INTO `lk_user` VALUES ('148', '测试48', '15852713236', '3', '2016-01-19 16:00:10', '2016-01-20 13:16:23', '1');
INSERT INTO `lk_user` VALUES ('149', '测试49', '13915226224', '0', '2016-01-19 16:00:22', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('150', '测试50', '13812239111', '0', '2016-01-19 16:00:28', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('151', '测试51', '18921502396', '0', '2016-01-19 16:00:40', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('152', '测试52', '13771153482', '0', '2016-01-19 16:00:45', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('153', '测试53', '18961864231', '0', '2016-01-19 16:00:50', '2016-01-19 18:10:05', '1');
INSERT INTO `lk_user` VALUES ('154', '测试54', '15261675365', '0', '2016-01-19 16:01:01', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('155', '测试55', '15061866418', '0', '2016-01-19 16:01:20', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('156', '测试56', '13665119281', '0', '2016-01-19 16:01:21', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('157', '测试57', '15205265300', '0', '2016-01-19 16:01:22', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('158', '测试58', '15861466492', '0', '2016-01-19 16:01:25', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('159', '测试59', '18051573329', '0', '2016-01-19 16:01:44', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('160', '测试60', '15152255426', '0', '2016-01-19 16:01:45', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('161', '测试61', '18861826381', '0', '2016-01-19 16:01:45', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('162', '测试62', '18051953482', '0', '2016-01-19 16:01:48', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('163', '测试63', '15961752495', '0', '2016-01-19 16:01:49', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('164', '测试64', '18051953470', '0', '2016-01-19 16:01:55', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('165', '测试65', '13400015296', '0', '2016-01-19 16:02:04', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('166', '测试66', '15722991433', '0', '2016-01-19 16:02:14', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('167', '测试67', '17805030296', '0', '2016-01-19 16:02:25', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('168', '测试68', '18068308493', '0', '2016-01-19 16:02:51', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('169', '测试69', '15061879207', '0', '2016-01-19 16:02:52', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('170', '测试70', '15852793465', '0', '2016-01-19 16:04:39', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('171', '测试71', '15949290218', '0', '2016-01-19 16:09:01', '2016-01-19 18:40:35', '1');
INSERT INTO `lk_user` VALUES ('172', '测试72', '13914198299', '0', '2016-01-19 16:09:25', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('173', '测试73', '13961871367', '0', '2016-01-19 16:13:47', '2016-01-19 18:14:11', '1');
INSERT INTO `lk_user` VALUES ('174', '测试74', '15806183454', '0', '2016-01-19 16:15:42', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('175', '测试75', '15861539418', '0', '2016-01-19 16:17:10', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('176', '测试76', '13665101427', '0', '2016-01-19 16:21:45', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('177', '测试77', '13665159250', '0', '2016-01-19 16:21:58', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('178', '测试78', '18651028337', '0', '2016-01-19 16:23:10', '2016-01-19 18:11:43', '1');
INSERT INTO `lk_user` VALUES ('179', '测试79', '18661291459', '0', '2016-01-19 16:23:55', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('180', '测试80', '15951514397', '0', '2016-01-19 16:24:57', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('181', '测试81', '15061804430', '0', '2016-01-19 16:27:57', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('182', '测试82', '15061802431', '0', '2016-01-19 16:28:03', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('183', '测试83', '15961786376', '0', '2016-01-19 16:30:54', '0000-00-00 00:00:00', '1');
INSERT INTO `lk_user` VALUES ('184', '测试84', '18762606368', '0', '2016-01-19 16:31:32', '0000-00-00 00:00:00', '1');
