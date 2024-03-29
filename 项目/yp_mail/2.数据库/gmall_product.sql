/*
Navicat MySQL Data Transfer

Source Server         : 192.168.200.129
Source Server Version : 50735
Source Host           : 192.168.200.129:3306
Source Database       : gmall_product

Target Server Type    : MYSQL
Target Server Version : 50735
File Encoding         : 65001

Date: 2021-10-19 16:59:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_attr_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_attr_info`;
CREATE TABLE `base_attr_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `attr_name` varchar(100) NOT NULL COMMENT '属性名称',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类id',
  `category_level` int(11) DEFAULT NULL COMMENT '分类层级',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='属性表';

-- ----------------------------
-- Records of base_attr_info
-- ----------------------------
INSERT INTO `base_attr_info` VALUES ('23', '运行内存', '61', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('24', '机身内存', '61', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('25', '处理器', '285', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('26', '屏幕尺寸', '285', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('37', '分类', '1', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('45', '产地', '371', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('46', '运行内存', '63', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('65', '品牌', '65', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('66', '屏幕尺寸', '285', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('67', '系列', '285', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('70', '品牌', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('71', '品牌', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('72', '功率', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('73', '像素', '178', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('74', '传感器尺寸', '178', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('76', '镜头', '178', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('81', '机身内存', '63', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('83', '价格', '100', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('84', '价格', '100', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('85', '价格', '100', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('86', '价格', '102', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('87', '价格', '841', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('88', '昂贵价格', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('89', '哈哈', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('90', '价格', '930', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('91', '价格', '598', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('92', '价格', '598', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('93', '价格', '598', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('94', '价格', '598', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('95', '价格', '997', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('96', '屏幕尺寸', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('97', '分辨率', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('98', '观看距离', '86', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('99', '画幅', '180', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('103', '面料', '233', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('104', '12312', '286', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('105', '品牌', '62', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('106', '手机系统', '2', '1', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('107', '手机品牌', '13', '2', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('108', '香水彩妆', '477', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('109', '面部护肤', '477', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_info` VALUES ('110', '功效', '477', '3', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');

-- ----------------------------
-- Table structure for `base_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `base_attr_value`;
CREATE TABLE `base_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `value_name` varchar(100) NOT NULL COMMENT '属性值名称',
  `attr_id` bigint(20) DEFAULT NULL COMMENT '属性id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='属性值表';

-- ----------------------------
-- Records of base_attr_value
-- ----------------------------
INSERT INTO `base_attr_value` VALUES ('1', '红色', '18', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('2', '白色', '18', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('3', '红色', '19', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('4', '白色', '19', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('5', '华为', '20', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('6', '联想', '20', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('7', 'X5', '21', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('8', 'X6', '21', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('9', 'X7', '21', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('10', '3.0', '22', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('11', '4.0', '22', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('12', '5.0', '22', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('13', '3G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('14', '4G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('19', 'i3', '25', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('20', 'i5', '25', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('21', '13.3', '26', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('22', '14.0', '26', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('32', 'Java', '37', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('33', 'C#', '37', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('34', 'JavaScript', '37', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('35', '123123', '38', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('36', '222222', '38', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('37', '红色', '39', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('38', '白色', '39', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('39', '红色', '40', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('40', '白色', '40', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('41', '南非', '41', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('64', '16G', '46', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('69', '10', '57', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('71', '10', '59', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('72', '10', '60', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('73', '10', '61', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('78', '国内', '65', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('79', '南非', '65', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('80', '32G', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('81', '64G', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('82', '128G', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('83', '8G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('84', '14', '66', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('85', '15.6', '66', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('86', '神州', '67', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('87', '微软', '67', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('89', '3434', '68', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('90', '5.0', '69', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('91', '5.6', '69', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('93', '国内', '70', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('94', '国外', '70', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('95', '国内', '71', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('96', '国外', '71', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('97', '100W', '72', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('99', '2000万', '73', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('100', '3000万', '73', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('101', '1英寸', '74', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('102', '2.3英寸', '74', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('115', '1000G', '81', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('120', '12G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('121', '5.5', '82', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('122', '6.5', '82', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('123', '123', '83', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('124', '123', '85', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('125', '123', '84', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('126', '234', '83', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('128', '234', '84', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('129', '2000', '86', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('130', '4000', '86', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('132', '2000', '87', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('133', '88888', '87', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('135', '200', '88', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('136', '123', '89', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('139', '2000', '90', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('140', '2000', '91', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('141', '3000', '91', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('143', '400', '95', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('144', '70-75', '96', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('145', '75以上', '96', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('146', '8K超高清', '97', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('147', '4K超高清', '97', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('148', '12K超高清', '97', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('149', '3.5m', '98', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('150', '3m', '98', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('151', 'APS-C画幅全画', '99', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('152', '全画幅', '99', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('162', '棉', '103', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('163', '麻', '103', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('164', '200W', '72', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('165', '2000', '88', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('166', '256G', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('167', '512G', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('168', '1T', '24', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('169', '6G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('170', '128G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('171', '256G', '23', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('172', '国内', '105', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('174', '国外', '105', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('175', '苹果手机', '106', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('176', '安卓手机', '106', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('177', '小米', '107', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('178', '华为', '107', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_attr_value` VALUES ('179', '苹果', '107', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');

-- ----------------------------
-- Table structure for `base_category_trademark`
-- ----------------------------
DROP TABLE IF EXISTS `base_category_trademark`;
CREATE TABLE `base_category_trademark` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category3_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '三级级分类id',
  `trademark_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '品牌id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='三级分类表';

-- ----------------------------
-- Records of base_category_trademark
-- ----------------------------
INSERT INTO `base_category_trademark` VALUES ('1', '61', '1', '2021-08-20 15:22:50', '2021-08-20 15:23:14', '1');
INSERT INTO `base_category_trademark` VALUES ('2', '61', '2', '2021-08-20 15:22:50', '2021-08-25 19:11:47', '1');
INSERT INTO `base_category_trademark` VALUES ('3', '61', '3', '2021-08-20 15:22:50', '2021-08-23 17:47:06', '1');
INSERT INTO `base_category_trademark` VALUES ('4', '61', '1', '2021-08-20 15:23:27', '2021-08-20 15:34:36', '1');
INSERT INTO `base_category_trademark` VALUES ('5', '61', '1', '2021-08-23 17:47:49', '2021-08-23 17:47:49', '0');
INSERT INTO `base_category_trademark` VALUES ('6', '62', '1', '2021-08-23 17:48:00', '2021-08-23 17:48:00', '0');
INSERT INTO `base_category_trademark` VALUES ('7', '62', '2', '2021-08-23 17:48:00', '2021-08-25 19:11:58', '1');
INSERT INTO `base_category_trademark` VALUES ('8', '61', '2', '2021-08-25 19:11:52', '2021-08-25 19:12:25', '1');
INSERT INTO `base_category_trademark` VALUES ('9', '61', '3', '2021-08-25 19:11:52', '2021-08-25 19:11:52', '0');
INSERT INTO `base_category_trademark` VALUES ('10', '61', '2', '2021-09-10 03:43:46', '2021-09-10 03:44:04', '1');
INSERT INTO `base_category_trademark` VALUES ('11', '61', '2', '2021-09-10 03:46:41', '2021-09-10 03:46:41', '0');

-- ----------------------------
-- Table structure for `base_category1`
-- ----------------------------
DROP TABLE IF EXISTS `base_category1`;
CREATE TABLE `base_category1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(10) NOT NULL COMMENT '分类名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='一级分类表';

-- ----------------------------
-- Records of base_category1
-- ----------------------------
INSERT INTO `base_category1` VALUES ('1', '图书、音像、电子书刊', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('2', '手机', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('3', '家用电器', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('4', '数码', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('5', '家居家装', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('6', '电脑办公', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('7', '厨具', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('8', '个护化妆', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('9', '服饰内衣', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('10', '钟表', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('11', '鞋靴', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('12', '母婴', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('13', '礼品箱包', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('14', '食品饮料、保健食品', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');
INSERT INTO `base_category1` VALUES ('15', '珠宝', '2021-08-13 15:18:40', '2021-08-13 15:18:40', '0');


-- ----------------------------
-- Table structure for `base_category2`
-- ----------------------------
DROP TABLE IF EXISTS `base_category2`;
CREATE TABLE `base_category2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) NOT NULL COMMENT '二级分类名称',
  `category1_id` bigint(20) DEFAULT NULL COMMENT '一级分类编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='二级分类表';

-- ----------------------------
-- Records of base_category2
-- ----------------------------
INSERT INTO `base_category2` VALUES ('1', '电子书刊', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('2', '音像', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('3', '英文原版', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('4', '文艺', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('5', '少儿', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('6', '人文社科', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('7', '经管励志', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('8', '生活', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('9', '科技', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('10', '教育', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('11', '港台图书', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('12', '其他', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('13', '手机通讯', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('14', '运营商', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('15', '手机配件', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('16', '大 家 电', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('17', '厨卫大电', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('18', '厨房小电', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('19', '生活电器', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('20', '个护健康', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('21', '五金家装', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('22', '摄影摄像', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('23', '数码配件', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('24', '智能设备', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('25', '影音娱乐', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('26', '电子教育', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('27', '虚拟商品', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('28', '家纺', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('29', '灯具', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('30', '生活日用', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('31', '家装软饰', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('32', '宠物生活', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('33', '电脑整机', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('34', '电脑配件', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('35', '外设产品', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('36', '游戏设备', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('37', '网络产品', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('38', '办公设备', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('39', '文具/耗材', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('40', '服务产品', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('41', '烹饪锅具', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('42', '刀剪菜板', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('43', '厨房配件', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('44', '水具酒具', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('45', '餐具', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('46', '酒店用品', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('47', '茶具/咖啡具', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('48', '清洁用品', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('49', '面部护肤', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('50', '身体护理', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('51', '口腔护理', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('52', '女性护理', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('53', '洗发护发', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('54', '香水彩妆', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('55', '女装', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('56', '男装', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('57', '内衣', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('58', '洗衣服务', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('59', '服饰配件', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('60', '钟表', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('61', '流行男鞋', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('62', '时尚女鞋', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('63', '奶粉', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('64', '营养辅食', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('65', '尿裤湿巾', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('66', '喂养用品', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('67', '洗护用品', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('68', '童车童床', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('69', '寝居服饰', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('70', '妈妈专区', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('71', '童装童鞋', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('72', '安全座椅', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('73', '潮流女包', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('74', '精品男包', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('75', '功能箱包', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('76', '礼品', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('77', '奢侈品', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('78', '婚庆', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('79', '进口食品', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('80', '地方特产', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('81', '休闲食品', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('82', '粮油调味', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('83', '饮料冲调', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('84', '食品礼券', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('85', '茗茶', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('86', '时尚饰品', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('87', '黄金', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('88', 'K金饰品', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('89', '金银投资', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('90', '银饰', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('91', '钻石', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('92', '翡翠玉石', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('93', '水晶玛瑙', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('94', '彩宝', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('95', '铂金', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('96', '木手串/把件', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('97', '珍珠', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('98', '维修保养', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('99', '车载电器', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('100', '美容清洗', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('101', '汽车装饰', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('102', '安全自驾', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('103', '汽车服务', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('104', '赛事改装', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('105', '运动鞋包', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('106', '运动服饰', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('107', '骑行运动', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('108', '垂钓用品', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('109', '游泳用品', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('110', '户外鞋服', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('111', '户外装备', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('112', '健身训练', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('113', '体育用品', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('114', '网络言情', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('115', '口罩', null, '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('116', '口罩', null, '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('117', '口罩', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('118', '防护服', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('119', '洗手液', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('123', 'jjj', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('124', 'jjj', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('125', 'string', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category2` VALUES ('126', 'string', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');

-- ----------------------------
-- Table structure for `base_category3`
-- ----------------------------
DROP TABLE IF EXISTS `base_category3`;
CREATE TABLE `base_category3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) NOT NULL COMMENT '三级分类名称',
  `category2_id` bigint(20) DEFAULT NULL COMMENT '二级分类编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='三级分类表';

-- ----------------------------
-- Records of base_category3
-- ----------------------------
INSERT INTO `base_category3` VALUES ('1', '电子书', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('2', '网络原创', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('3', '数字杂志', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('4', '多媒体图书', '1', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('5', '音乐', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('6', '影视', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('7', '教育音像', '2', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('8', '少儿', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('9', '商务投资', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('10', '英语学习与考试', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('11', '文学', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('12', '传记', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('13', '励志', '3', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('14', '小说', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('15', '文学', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('16', '青春文学', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('17', '传记', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('18', '艺术', '4', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('19', '少儿', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('20', '0-2岁', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('21', '3-6岁', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('22', '7-10岁', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('23', '11-14岁', '5', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('24', '历史', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('25', '哲学', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('26', '国学', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('27', '政治/军事', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('28', '法律', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('29', '人文社科', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('30', '心理学', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('31', '文化', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('32', '社会科学', '6', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('33', '经济', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('34', '金融与投资', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('35', '管理', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('36', '励志与成功', '7', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('37', '生活', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('38', '健身与保健', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('39', '家庭与育儿', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('40', '旅游', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('41', '烹饪美食', '8', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('42', '工业技术', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('43', '科普读物', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('44', '建筑', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('45', '医学', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('46', '科学与自然', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('47', '计算机与互联网', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('48', '电子通信', '9', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('49', '中小学教辅', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('50', '教育与考试', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('51', '外语学习', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('52', '大中专教材', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('53', '字典词典', '10', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('54', '艺术/设计/收藏', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('55', '经济管理', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('56', '文化/学术', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('57', '少儿', '11', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('58', '工具书', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('59', '杂志/期刊', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('60', '套装书', '12', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('61', '手机', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('62', '对讲机', '13', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('63', '合约机', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('64', '选号中心', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('65', '装宽带', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('66', '办套餐', '14', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('67', '移动电源', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('68', '电池/移动电源', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('69', '蓝牙耳机', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('70', '充电器/数据线', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('71', '苹果周边', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('72', '手机耳机', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('73', '手机贴膜', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('74', '手机存储卡', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('75', '充电器', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('76', '数据线', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('77', '手机保护套', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('78', '车载配件', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('79', 'iPhone 配件', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('80', '手机电池', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('81', '创意配件', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('82', '便携/无线音响', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('83', '手机饰品', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('84', '拍照配件', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('85', '手机支架', '15', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('86', '平板电视', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('87', '空调', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('88', '冰箱', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('89', '洗衣机', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('90', '家庭影院', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('91', 'DVD/电视盒子', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('92', '迷你音响', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('93', '冷柜/冰吧', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('94', '家电配件', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('95', '功放', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('96', '回音壁/Soundbar', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('97', 'Hi-Fi专区', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('98', '电视盒子', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('99', '酒柜', '16', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('100', '燃气灶', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('101', '油烟机', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('102', '热水器', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('103', '消毒柜', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('104', '洗碗机', '17', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('105', '料理机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('106', '榨汁机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('107', '电饭煲', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('108', '电压力锅', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('109', '豆浆机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('110', '咖啡机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('111', '微波炉', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('112', '电烤箱', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('113', '电磁炉', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('114', '面包机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('115', '煮蛋器', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('116', '酸奶机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('117', '电炖锅', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('118', '电水壶/热水瓶', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('119', '电饼铛', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('120', '多用途锅', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('121', '电烧烤炉', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('122', '果蔬解毒机', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('123', '其它厨房电器', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('124', '养生壶/煎药壶', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('125', '电热饭盒', '18', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('126', '取暖电器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('127', '净化器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('128', '加湿器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('129', '扫地机器人', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('130', '吸尘器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('131', '挂烫机/熨斗', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('132', '插座', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('133', '电话机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('134', '清洁机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('135', '除湿机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('136', '干衣机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('137', '收录/音机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('138', '电风扇', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('139', '冷风扇', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('140', '其它生活电器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('141', '生活电器配件', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('142', '净水器', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('143', '饮水机', '19', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('144', '剃须刀', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('145', '剃/脱毛器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('146', '口腔护理', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('147', '电吹风', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('148', '美容器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('149', '理发器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('150', '卷/直发器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('151', '按摩椅', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('152', '按摩器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('153', '足浴盆', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('154', '血压计', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('155', '电子秤/厨房秤', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('156', '血糖仪', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('157', '体温计', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('158', '其它健康电器', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('159', '计步器/脂肪检测仪', '20', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('160', '电动工具', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('161', '手动工具', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('162', '仪器仪表', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('163', '浴霸/排气扇', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('164', '灯具', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('165', 'LED灯', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('166', '洁身器', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('167', '水槽', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('168', '龙头', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('169', '淋浴花洒', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('170', '厨卫五金', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('171', '家具五金', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('172', '门铃', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('173', '电气开关', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('174', '插座', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('175', '电工电料', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('176', '监控安防', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('177', '电线/线缆', '21', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('178', '数码相机', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('179', '单电/微单相机', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('180', '单反相机', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('181', '摄像机', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('182', '拍立得', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('183', '运动相机', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('184', '镜头', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('185', '户外器材', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('186', '影棚器材', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('187', '冲印服务', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('188', '数码相框', '22', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('189', '存储卡', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('190', '读卡器', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('191', '滤镜', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('192', '闪光灯/手柄', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('193', '相机包', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('194', '三脚架/云台', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('195', '相机清洁/贴膜', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('196', '机身附件', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('197', '镜头附件', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('198', '电池/充电器', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('199', '移动电源', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('200', '数码支架', '23', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('201', '智能手环', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('202', '智能手表', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('203', '智能眼镜', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('204', '运动跟踪器', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('205', '健康监测', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('206', '智能配饰', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('207', '智能家居', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('208', '体感车', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('209', '其他配件', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('210', '智能机器人', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('211', '无人机', '24', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('212', 'MP3/MP4', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('213', '智能设备', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('214', '耳机/耳麦', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('215', '便携/无线音箱', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('216', '音箱/音响', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('217', '高清播放器', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('218', '收音机', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('219', 'MP3/MP4配件', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('220', '麦克风', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('221', '专业音频', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('222', '苹果配件', '25', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('223', '学生平板', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('224', '点读机/笔', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('225', '早教益智', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('226', '录音笔', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('227', '电纸书', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('228', '电子词典', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('229', '复读机', '26', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('230', '延保服务', '27', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('231', '杀毒软件', '27', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('232', '积分商品', '27', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('233', '桌布/罩件', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('234', '地毯地垫', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('235', '沙发垫套/椅垫', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('236', '床品套件', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('237', '被子', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('238', '枕芯', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('239', '床单被罩', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('240', '毯子', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('241', '床垫/床褥', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('242', '蚊帐', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('243', '抱枕靠垫', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('244', '毛巾浴巾', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('245', '电热毯', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('246', '窗帘/窗纱', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('247', '布艺软饰', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('248', '凉席', '28', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('249', '台灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('250', '节能灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('251', '装饰灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('252', '落地灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('253', '应急灯/手电', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('254', 'LED灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('255', '吸顶灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('256', '五金电器', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('257', '筒灯射灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('258', '吊灯', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('259', '氛围照明', '29', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('260', '保暖防护', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('261', '收纳用品', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('262', '雨伞雨具', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('263', '浴室用品', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('264', '缝纫/针织用品', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('265', '洗晒/熨烫', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('266', '净化除味', '30', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('267', '相框/照片墙', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('268', '装饰字画', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('269', '节庆饰品', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('270', '手工/十字绣', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('271', '装饰摆件', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('272', '帘艺隔断', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('273', '墙贴/装饰贴', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('274', '钟饰', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('275', '花瓶花艺', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('276', '香薰蜡烛', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('277', '创意家居', '31', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('278', '宠物主粮', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('279', '宠物零食', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('280', '医疗保健', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('281', '家居日用', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('282', '宠物玩具', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('283', '出行装备', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('284', '洗护美容', '32', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('285', '笔记本', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('286', '超极本', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('287', '游戏本', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('288', '平板电脑', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('289', '平板电脑配件', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('290', '台式机', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('291', '服务器/工作站', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('292', '笔记本配件', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('293', '一体机', '33', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('294', 'CPU', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('295', '主板', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('296', '显卡', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('297', '硬盘', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('298', 'SSD固态硬盘', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('299', '内存', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('300', '机箱', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('301', '电源', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('302', '显示器', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('303', '刻录机/光驱', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('304', '散热器', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('305', '声卡/扩展卡', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('306', '装机配件', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('307', '组装电脑', '34', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('308', '移动硬盘', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('309', 'U盘', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('310', '鼠标', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('311', '键盘', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('312', '鼠标垫', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('313', '摄像头', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('314', '手写板', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('315', '硬盘盒', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('316', '插座', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('317', '线缆', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('318', 'UPS电源', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('319', '电脑工具', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('320', '游戏设备', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('321', '电玩', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('322', '电脑清洁', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('323', '网络仪表仪器', '35', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('324', '游戏机', '36', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('325', '游戏耳机', '36', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('326', '手柄/方向盘', '36', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('327', '游戏软件', '36', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('328', '游戏周边', '36', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('329', '路由器', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('330', '网卡', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('331', '交换机', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('332', '网络存储', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('333', '4G/3G上网', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('334', '网络盒子', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('335', '网络配件', '37', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('336', '投影机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('337', '投影配件', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('338', '多功能一体机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('339', '打印机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('340', '传真设备', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('341', '验钞/点钞机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('342', '扫描设备', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('343', '复合机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('344', '碎纸机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('345', '考勤机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('346', '收款/POS机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('347', '会议音频视频', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('348', '保险柜', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('349', '装订/封装机', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('350', '安防监控', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('351', '办公家具', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('352', '白板', '38', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('353', '硒鼓/墨粉', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('354', '墨盒', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('355', '色带', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('356', '纸类', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('357', '办公文具', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('358', '学生文具', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('359', '财会用品', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('360', '文件管理', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('361', '本册/便签', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('362', '计算器', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('363', '笔类', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('364', '画具画材', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('365', '刻录碟片/附件', '39', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('366', '上门安装', '40', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('367', '延保服务', '40', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('368', '维修保养', '40', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('369', '电脑软件', '40', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('370', '京东服务', '40', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('371', '炒锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('372', '煎锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('373', '压力锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('374', '蒸锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('375', '汤锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('376', '奶锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('377', '锅具套装', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('378', '煲类', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('379', '水壶', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('380', '火锅', '41', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('381', '菜刀', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('382', '剪刀', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('383', '刀具套装', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('384', '砧板', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('385', '瓜果刀/刨', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('386', '多功能刀', '42', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('387', '保鲜盒', '43', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('388', '烘焙/烧烤', '43', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('389', '饭盒/提锅', '43', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('390', '储物/置物架', '43', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('391', '厨房DIY/小工具', '43', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('392', '塑料杯', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('393', '运动水壶', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('394', '玻璃杯', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('395', '陶瓷/马克杯', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('396', '保温杯', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('397', '保温壶', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('398', '酒杯/酒具', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('399', '杯具套装', '44', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('400', '餐具套装', '45', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('401', '碗/碟/盘', '45', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('402', '筷勺/刀叉', '45', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('403', '一次性用品', '45', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('404', '果盘/果篮', '45', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('405', '自助餐炉', '46', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('406', '酒店餐具', '46', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('407', '酒店水具', '46', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('408', '整套茶具', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('409', '茶杯', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('410', '茶壶', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('411', '茶盘茶托', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('412', '茶叶罐', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('413', '茶具配件', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('414', '茶宠摆件', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('415', '咖啡具', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('416', '其他', '47', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('417', '纸品湿巾', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('418', '衣物清洁', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('419', '清洁工具', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('420', '驱虫用品', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('421', '家庭清洁', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('422', '皮具护理', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('423', '一次性用品', '48', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('424', '洁面', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('425', '乳液面霜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('426', '面膜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('427', '剃须', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('428', '套装', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('429', '精华', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('430', '眼霜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('431', '卸妆', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('432', '防晒', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('433', '防晒隔离', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('434', 'T区护理', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('435', '眼部护理', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('436', '精华露', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('437', '爽肤水', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('438', '沐浴', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('439', '润肤', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('440', '颈部', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('441', '手足', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('442', '纤体塑形', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('443', '美胸', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('444', '套装', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('445', '精油', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('446', '洗发护发', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('447', '染发/造型', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('448', '香薰精油', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('449', '磨砂/浴盐', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('450', '手工/香皂', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('451', '洗发', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('452', '护发', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('453', '染发', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('454', '磨砂膏', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('455', '香皂', '50', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('456', '牙膏/牙粉', '51', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('457', '牙刷/牙线', '51', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('458', '漱口水', '51', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('459', '套装', '51', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('460', '卫生巾', '52', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('461', '卫生护垫', '52', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('462', '私密护理', '52', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('463', '脱毛膏', '52', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('464', '其他', '52', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('465', '洗发', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('466', '护发', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('467', '染发', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('468', '造型', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('469', '假发', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('470', '套装', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('471', '美发工具', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('472', '脸部护理', '53', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('473', '香水', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('474', '底妆', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('475', '腮红', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('476', '眼影', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('477', '唇部', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('478', '美甲', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('479', '眼线', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('480', '美妆工具', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('481', '套装', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('482', '防晒隔离', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('483', '卸妆', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('484', '眉笔', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('485', '睫毛膏', '54', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('486', 'T恤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('487', '衬衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('488', '针织衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('489', '雪纺衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('490', '卫衣', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('491', '马甲', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('492', '连衣裙', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('493', '半身裙', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('494', '牛仔裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('495', '休闲裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('496', '打底裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('497', '正装裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('498', '小西装', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('499', '短外套', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('500', '风衣', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('501', '毛呢大衣', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('502', '真皮皮衣', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('503', '棉服', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('504', '羽绒服', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('505', '大码女装', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('506', '中老年女装', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('507', '婚纱', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('508', '打底衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('509', '旗袍/唐装', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('510', '加绒裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('511', '吊带/背心', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('512', '羊绒衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('513', '短裤', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('514', '皮草', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('515', '礼服', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('516', '仿皮皮衣', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('517', '羊毛衫', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('518', '设计师/潮牌', '55', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('519', '衬衫', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('520', 'T恤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('521', 'POLO衫', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('522', '针织衫', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('523', '羊绒衫', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('524', '卫衣', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('525', '马甲/背心', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('526', '夹克', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('527', '风衣', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('528', '毛呢大衣', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('529', '仿皮皮衣', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('530', '西服', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('531', '棉服', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('532', '羽绒服', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('533', '牛仔裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('534', '休闲裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('535', '西裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('536', '西服套装', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('537', '大码男装', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('538', '中老年男装', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('539', '唐装/中山装', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('540', '工装', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('541', '真皮皮衣', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('542', '加绒裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('543', '卫裤/运动裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('544', '短裤', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('545', '设计师/潮牌', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('546', '羊毛衫', '56', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('547', '文胸', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('548', '女式内裤', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('549', '男式内裤', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('550', '睡衣/家居服', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('551', '塑身美体', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('552', '泳衣', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('553', '吊带/背心', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('554', '抹胸', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('555', '连裤袜/丝袜', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('556', '美腿袜', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('557', '商务男袜', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('558', '保暖内衣', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('559', '情侣睡衣', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('560', '文胸套装', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('561', '少女文胸', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('562', '休闲棉袜', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('563', '大码内衣', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('564', '内衣配件', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('565', '打底裤袜', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('566', '打底衫', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('567', '秋衣秋裤', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('568', '情趣内衣', '57', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('569', '服装洗护', '58', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('570', '太阳镜', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('571', '光学镜架/镜片', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('572', '围巾/手套/帽子套装', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('573', '袖扣', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('574', '棒球帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('575', '毛线帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('576', '遮阳帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('577', '老花镜', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('578', '装饰眼镜', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('579', '防辐射眼镜', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('580', '游泳镜', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('581', '女士丝巾/围巾/披肩', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('582', '男士丝巾/围巾', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('583', '鸭舌帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('584', '贝雷帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('585', '礼帽', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('586', '真皮手套', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('587', '毛线手套', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('588', '防晒手套', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('589', '男士腰带/礼盒', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('590', '女士腰带/礼盒', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('591', '钥匙扣', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('592', '遮阳伞/雨伞', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('593', '口罩', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('594', '耳罩/耳包', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('595', '假领', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('596', '毛线/布面料', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('597', '领带/领结/领带夹', '59', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('598', '男表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('599', '瑞表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('600', '女表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('601', '国表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('602', '日韩表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('603', '欧美表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('604', '德表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('605', '儿童手表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('606', '智能手表', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('607', '闹钟', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('608', '座钟挂钟', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('609', '钟表配件', '60', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('610', '商务休闲鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('611', '正装鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('612', '休闲鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('613', '凉鞋/沙滩鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('614', '男靴', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('615', '功能鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('616', '拖鞋/人字拖', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('617', '雨鞋/雨靴', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('618', '传统布鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('619', '鞋配件', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('620', '帆布鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('621', '增高鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('622', '工装鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('623', '定制鞋', '61', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('624', '高跟鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('625', '单鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('626', '休闲鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('627', '凉鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('628', '女靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('629', '雪地靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('630', '拖鞋/人字拖', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('631', '踝靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('632', '筒靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('633', '帆布鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('634', '雨鞋/雨靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('635', '妈妈鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('636', '鞋配件', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('637', '特色鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('638', '鱼嘴鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('639', '布鞋/绣花鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('640', '马丁靴', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('641', '坡跟鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('642', '松糕鞋', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('643', '内增高', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('644', '防水台', '62', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('645', '婴幼奶粉', '63', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('646', '孕妈奶粉', '63', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('647', '益生菌/初乳', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('648', '米粉/菜粉', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('649', '果泥/果汁', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('650', 'DHA', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('651', '宝宝零食', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('652', '钙铁锌/维生素', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('653', '清火/开胃', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('654', '面条/粥', '64', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('655', '婴儿尿裤', '65', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('656', '拉拉裤', '65', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('657', '婴儿湿巾', '65', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('658', '成人尿裤', '65', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('659', '奶瓶奶嘴', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('660', '吸奶器', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('661', '暖奶消毒', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('662', '儿童餐具', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('663', '水壶/水杯', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('664', '牙胶安抚', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('665', '围兜/防溅衣', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('666', '辅食料理机', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('667', '食物存储', '66', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('668', '宝宝护肤', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('669', '洗发沐浴', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('670', '奶瓶清洗', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('671', '驱蚊防晒', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('672', '理发器', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('673', '洗澡用具', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('674', '婴儿口腔清洁', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('675', '洗衣液/皂', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('676', '日常护理', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('677', '座便器', '67', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('678', '婴儿推车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('679', '餐椅摇椅', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('680', '婴儿床', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('681', '学步车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('682', '三轮车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('683', '自行车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('684', '电动车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('685', '扭扭车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('686', '滑板车', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('687', '婴儿床垫', '68', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('688', '婴儿外出服', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('689', '婴儿内衣', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('690', '婴儿礼盒', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('691', '婴儿鞋帽袜', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('692', '安全防护', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('693', '家居床品', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('694', '睡袋/抱被', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('695', '爬行垫', '69', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('696', '妈咪包/背婴带', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('697', '产后塑身', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('698', '文胸/内裤', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('699', '防辐射服', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('700', '孕妈装', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('701', '孕期营养', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('702', '孕妇护肤', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('703', '待产护理', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('704', '月子装', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('705', '防溢乳垫', '70', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('706', '套装', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('707', '上衣', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('708', '裤子', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('709', '裙子', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('710', '内衣/家居服', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('711', '羽绒服/棉服', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('712', '亲子装', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('713', '儿童配饰', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('714', '礼服/演出服', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('715', '运动鞋', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('716', '皮鞋/帆布鞋', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('717', '靴子', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('718', '凉鞋', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('719', '功能鞋', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('720', '户外/运动服', '71', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('721', '提篮式', '72', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('722', '安全座椅', '72', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('723', '增高垫', '72', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('724', '钱包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('725', '手拿包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('726', '单肩包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('727', '双肩包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('728', '手提包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('729', '斜挎包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('730', '钥匙包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('731', '卡包/零钱包', '73', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('732', '男士钱包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('733', '男士手包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('734', '卡包名片夹', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('735', '商务公文包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('736', '双肩包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('737', '单肩/斜挎包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('738', '钥匙包', '74', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('739', '电脑包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('740', '拉杆箱', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('741', '旅行包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('742', '旅行配件', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('743', '休闲运动包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('744', '拉杆包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('745', '登山包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('746', '妈咪包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('747', '书包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('748', '相机包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('749', '腰包/胸包', '75', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('750', '火机烟具', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('751', '礼品文具', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('752', '军刀军具', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('753', '收藏品', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('754', '工艺礼品', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('755', '创意礼品', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('756', '礼盒礼券', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('757', '鲜花绿植', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('758', '婚庆节庆', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('759', '京东卡', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('760', '美妆礼品', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('761', '礼品定制', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('762', '京东福卡', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('763', '古董文玩', '76', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('764', '箱包', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('765', '钱包', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('766', '服饰', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('767', '腰带', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('768', '太阳镜/眼镜框', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('769', '配件', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('770', '鞋靴', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('771', '饰品', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('772', '名品腕表', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('773', '高档化妆品', '77', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('774', '婚嫁首饰', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('775', '婚纱摄影', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('776', '婚纱礼服', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('777', '婚庆服务', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('778', '婚庆礼品/用品', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('779', '婚宴', '78', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('780', '饼干蛋糕', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('781', '糖果/巧克力', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('782', '休闲零食', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('783', '冲调饮品', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('784', '粮油调味', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('785', '牛奶', '79', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('786', '其他特产', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('787', '新疆', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('788', '北京', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('789', '山西', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('790', '内蒙古', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('791', '福建', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('792', '湖南', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('793', '四川', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('794', '云南', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('795', '东北', '80', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('796', '休闲零食', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('797', '坚果炒货', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('798', '肉干肉脯', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('799', '蜜饯果干', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('800', '糖果/巧克力', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('801', '饼干蛋糕', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('802', '无糖食品', '81', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('803', '米面杂粮', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('804', '食用油', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('805', '调味品', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('806', '南北干货', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('807', '方便食品', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('808', '有机食品', '82', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('809', '饮用水', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('810', '饮料', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('811', '牛奶乳品', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('812', '咖啡/奶茶', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('813', '冲饮谷物', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('814', '蜂蜜/柚子茶', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('815', '成人奶粉', '83', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('816', '月饼', '84', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('817', '大闸蟹', '84', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('818', '粽子', '84', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('819', '卡券', '84', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('820', '铁观音', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('821', '普洱', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('822', '龙井', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('823', '绿茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('824', '红茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('825', '乌龙茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('826', '花草茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('827', '花果茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('828', '养生茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('829', '黑茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('830', '白茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('831', '其它茶', '85', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('832', '项链', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('833', '手链/脚链', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('834', '戒指', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('835', '耳饰', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('836', '毛衣链', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('837', '发饰/发卡', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('838', '胸针', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('839', '饰品配件', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('840', '婚庆饰品', '86', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('841', '黄金吊坠', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('842', '黄金项链', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('843', '黄金转运珠', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('844', '黄金手镯/手链/脚链', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('845', '黄金耳饰', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('846', '黄金戒指', '87', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('847', 'K金吊坠', '88', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('848', 'K金项链', '88', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('849', 'K金手镯/手链/脚链', '88', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('850', 'K金戒指', '88', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('851', 'K金耳饰', '88', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('852', '投资金', '89', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('853', '投资银', '89', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('854', '投资收藏', '89', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('855', '银吊坠/项链', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('856', '银手镯/手链/脚链', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('857', '银戒指', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('858', '银耳饰', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('859', '足银手镯', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('860', '宝宝银饰', '90', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('861', '裸钻', '91', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('862', '钻戒', '91', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('863', '钻石项链/吊坠', '91', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('864', '钻石耳饰', '91', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('865', '钻石手镯/手链', '91', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('866', '项链/吊坠', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('867', '手镯/手串', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('868', '戒指', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('869', '耳饰', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('870', '挂件/摆件/把件', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('871', '玉石孤品', '92', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('872', '项链/吊坠', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('873', '耳饰', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('874', '手镯/手链/脚链', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('875', '戒指', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('876', '头饰/胸针', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('877', '摆件/挂件', '93', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('878', '琥珀/蜜蜡', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('879', '碧玺', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('880', '红宝石/蓝宝石', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('881', '坦桑石', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('882', '珊瑚', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('883', '祖母绿', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('884', '葡萄石', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('885', '其他天然宝石', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('886', '项链/吊坠', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('887', '耳饰', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('888', '手镯/手链', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('889', '戒指', '94', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('890', '铂金项链/吊坠', '95', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('891', '铂金手镯/手链/脚链', '95', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('892', '铂金戒指', '95', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('893', '铂金耳饰', '95', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('894', '小叶紫檀', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('895', '黄花梨', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('896', '沉香木', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('897', '金丝楠', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('898', '菩提', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('899', '其他', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('900', '橄榄核/核桃', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('901', '檀香', '96', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('902', '珍珠项链', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('903', '珍珠吊坠', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('904', '珍珠耳饰', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('905', '珍珠手链', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('906', '珍珠戒指', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('907', '珍珠胸针', '97', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('908', '机油', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('909', '正时皮带', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('910', '添加剂', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('911', '汽车喇叭', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('912', '防冻液', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('913', '汽车玻璃', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('914', '滤清器', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('915', '火花塞', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('916', '减震器', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('917', '柴机油/辅助油', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('918', '雨刷', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('919', '车灯', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('920', '后视镜', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('921', '轮胎', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('922', '轮毂', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('923', '刹车片/盘', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('924', '维修配件', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('925', '蓄电池', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('926', '底盘装甲/护板', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('927', '贴膜', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('928', '汽修工具', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('929', '改装配件', '98', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('930', '导航仪', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('931', '安全预警仪', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('932', '行车记录仪', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('933', '倒车雷达', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('934', '蓝牙设备', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('935', '车载影音', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('936', '净化器', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('937', '电源', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('938', '智能驾驶', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('939', '车载电台', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('940', '车载电器配件', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('941', '吸尘器', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('942', '智能车机', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('943', '冰箱', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('944', '汽车音响', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('945', '车载生活电器', '99', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('946', '车蜡', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('947', '补漆笔', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('948', '玻璃水', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('949', '清洁剂', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('950', '洗车工具', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('951', '镀晶镀膜', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('952', '打蜡机', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('953', '洗车配件', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('954', '洗车机', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('955', '洗车水枪', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('956', '毛巾掸子', '100', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('957', '脚垫', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('958', '座垫', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('959', '座套', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('960', '后备箱垫', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('961', '头枕腰靠', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('962', '方向盘套', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('963', '香水', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('964', '空气净化', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('965', '挂件摆件', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('966', '功能小件', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('967', '车身装饰件', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('968', '车衣', '101', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('969', '安全座椅', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('970', '胎压监测', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('971', '防盗设备', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('972', '应急救援', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('973', '保温箱', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('974', '地锁', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('975', '摩托车', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('976', '充气泵', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('977', '储物箱', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('978', '自驾野营', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('979', '摩托车装备', '102', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('980', '清洗美容', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('981', '功能升级', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('982', '保养维修', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('983', '油卡充值', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('984', '车险', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('985', '加油卡', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('986', 'ETC', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('987', '驾驶培训', '103', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('988', '赛事服装', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('989', '赛事用品', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('990', '制动系统', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('991', '悬挂系统', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('992', '进气系统', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('993', '排气系统', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('994', '电子管理', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('995', '车身强化', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('996', '赛事座椅', '104', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('997', '跑步鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('998', '休闲鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('999', '篮球鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1000', '板鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1001', '帆布鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1002', '足球鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1003', '乒羽网鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1004', '专项运动鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1005', '训练鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1006', '拖鞋', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1007', '运动包', '105', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1008', '羽绒服', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1009', '棉服', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1010', '运动裤', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1011', '夹克/风衣', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1012', '卫衣/套头衫', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1013', 'T恤', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1014', '套装', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1015', '乒羽网服', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1016', '健身服', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1017', '运动背心', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1018', '毛衫/线衫', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1019', '运动配饰', '106', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1020', '折叠车', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1021', '山地车/公路车', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1022', '电动车', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1023', '其他整车', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1024', '骑行服', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1025', '骑行装备', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1026', '平衡车', '107', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1027', '鱼竿鱼线', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1028', '浮漂鱼饵', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1029', '钓鱼桌椅', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1030', '钓鱼配件', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1031', '钓箱鱼包', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1032', '其它', '108', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1033', '泳镜', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1034', '泳帽', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1035', '游泳包防水包', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1036', '女士泳衣', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1037', '男士泳衣', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1038', '比基尼', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1039', '其它', '109', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1040', '冲锋衣裤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1041', '速干衣裤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1042', '滑雪服', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1043', '羽绒服/棉服', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1044', '休闲衣裤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1045', '抓绒衣裤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1046', '软壳衣裤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1047', 'T恤', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1048', '户外风衣', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1049', '功能内衣', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1050', '军迷服饰', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1051', '登山鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1052', '雪地靴', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1053', '徒步鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1054', '越野跑鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1055', '休闲鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1056', '工装鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1057', '溯溪鞋', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1058', '沙滩/凉拖', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1059', '户外袜', '110', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1060', '帐篷/垫子', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1061', '睡袋/吊床', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1062', '登山攀岩', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1063', '户外配饰', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1064', '背包', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1065', '户外照明', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1066', '户外仪表', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1067', '户外工具', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1068', '望远镜', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1069', '旅游用品', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1070', '便携桌椅床', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1071', '野餐烧烤', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1072', '军迷用品', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1073', '救援装备', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1074', '滑雪装备', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1075', '极限户外', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1076', '冲浪潜水', '111', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1077', '综合训练器', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1078', '其他大型器械', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1079', '哑铃', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1080', '仰卧板/收腹机', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1081', '其他中小型器材', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1082', '瑜伽舞蹈', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1083', '甩脂机', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1084', '踏步机', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1085', '武术搏击', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1086', '健身车/动感单车', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1087', '跑步机', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1088', '运动护具', '112', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1089', '羽毛球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1090', '乒乓球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1091', '篮球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1092', '足球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1093', '网球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1094', '排球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1095', '高尔夫', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1096', '台球', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1097', '棋牌麻将', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1098', '轮滑滑板', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1099', '其他', '113', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1102', '面膜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1103', '面膜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1104', '面膜', '49', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1107', '蓝月亮', '119', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1109', '青蛙王子', '119', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1111', '杀菌', '117', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_category3` VALUES ('1113', '滴露消毒酒精', '122', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');

-- ----------------------------
-- Table structure for `base_sale_attr`
-- ----------------------------
DROP TABLE IF EXISTS `base_sale_attr`;
CREATE TABLE `base_sale_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) NOT NULL COMMENT '销售属性名称',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='基本销售属性表';

-- ----------------------------
-- Records of base_sale_attr
-- ----------------------------
INSERT INTO `base_sale_attr` VALUES ('1', '颜色', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_sale_attr` VALUES ('2', '版本', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_sale_attr` VALUES ('3', '尺码', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');

-- ----------------------------
-- Table structure for `base_trademark`
-- ----------------------------
DROP TABLE IF EXISTS `base_trademark`;
CREATE TABLE `base_trademark` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tm_name` varchar(100) NOT NULL COMMENT '属性值',
  `logo_url` varchar(200) DEFAULT NULL COMMENT '品牌logo的图片路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='品牌表';

-- ----------------------------
-- Records of base_trademark
-- ----------------------------
INSERT INTO `base_trademark` VALUES ('1', '小米', 'http://47.93.148.192:8080/group1/M00/01/71/rBHu8mEQpLiAP5NOAAAFtscZn_s397.png', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_trademark` VALUES ('2', '苹果', 'http://47.93.148.192:8080/group1/M00/01/71/rBHu8mEQpOuAXIroAAA8KOpezoQ651.png', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_trademark` VALUES ('3', '华为', 'http://47.93.148.192:8080/group1/M00/01/71/rBHu8mEQpUuAVioLAAGXnmYhX7M923.jpg', '2021-08-13 15:18:41', '2021-08-13 15:18:41', '0');
INSERT INTO `base_trademark` VALUES ('4', '三星', '/static/default.jpg', '2021-09-08 06:53:27', '2021-09-08 06:54:30', '1');
INSERT INTO `base_trademark` VALUES ('5', 'AA', 'http://47.93.148.192:9000/gmall/16312563680039569579c-dc7b-438d-9012-7f6a69532a66', '2021-09-10 05:54:46', '2021-09-10 05:54:46', '0');
INSERT INTO `base_trademark` VALUES ('6', 'TT', 'http://192.168.200.129:9000/gmall/1631257139730ec6718d7-2ed2-46e5-8f5a-9af4b1e7a505', '2021-09-10 06:59:00', '2021-09-10 06:59:00', '0');

-- ----------------------------
-- Table structure for `sku_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `sku_attr_value`;
CREATE TABLE `sku_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `attr_id` bigint(20) DEFAULT NULL COMMENT '属性id（冗余)',
  `value_id` bigint(20) DEFAULT NULL COMMENT '属性值id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT 'skuid',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='sku平台属性值关联表';

-- ----------------------------
-- Records of sku_attr_value
-- ----------------------------
INSERT INTO `sku_attr_value` VALUES ('1', '106', '176', '17', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_attr_value` VALUES ('2', '107', '177', '17', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_attr_value` VALUES ('3', '23', '169', '17', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_attr_value` VALUES ('4', '24', '81', '17', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_attr_value` VALUES ('5', '106', '176', '18', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_attr_value` VALUES ('6', '107', '177', '18', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_attr_value` VALUES ('7', '23', '169', '18', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_attr_value` VALUES ('8', '24', '81', '18', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_attr_value` VALUES ('9', '106', '176', '19', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_attr_value` VALUES ('10', '107', '178', '19', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_attr_value` VALUES ('11', '23', '83', '19', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_attr_value` VALUES ('12', '24', '82', '19', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_attr_value` VALUES ('13', '106', '176', '20', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_attr_value` VALUES ('14', '107', '178', '20', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_attr_value` VALUES ('15', '23', '83', '20', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_attr_value` VALUES ('16', '24', '166', '20', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');

-- ----------------------------
-- Table structure for `sku_image`
-- ----------------------------
DROP TABLE IF EXISTS `sku_image`;
CREATE TABLE `sku_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `img_name` varchar(200) DEFAULT NULL COMMENT '图片名称（冗余）',
  `img_url` varchar(300) DEFAULT NULL COMMENT '图片路径(冗余)',
  `spu_img_id` bigint(20) DEFAULT NULL COMMENT '商品图片id',
  `is_default` varchar(4000) DEFAULT NULL COMMENT '是否默认',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='库存单元图片表';

-- ----------------------------
-- Records of sku_image
-- ----------------------------
INSERT INTO `sku_image` VALUES ('1', '17', '3.png', 'http://192.168.200.129:9000/gmall/16312611444555176295f-fe9b-4fdc-bf07-6890f8a09312', '5501', '0', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_image` VALUES ('2', '17', '2.png', 'http://192.168.200.129:9000/gmall/16312611444523300df05-283e-49e4-a0db-8a9f531ff03e', '5500', '0', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_image` VALUES ('3', '17', '5.png', 'http://192.168.200.129:9000/gmall/1631261144461b20e316d-4449-47d0-a75b-0155e78c54ea', '5502', '0', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_image` VALUES ('4', '17', '4.png', 'http://192.168.200.129:9000/gmall/1631261144461c65be79f-58ae-435c-b9c1-7e78eb7df51d', '5503', '0', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_image` VALUES ('5', '17', '1.png', 'http://192.168.200.129:9000/gmall/1631261144465503bb216-7816-4d9c-a557-84880e014419', '5504', '1', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_image` VALUES ('6', '18', '2.png', 'http://192.168.200.129:9000/gmall/16312611376378540f7b4-6e88-4402-8f10-0ad546b75449', '5495', '1', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_image` VALUES ('7', '18', '1.png', 'http://192.168.200.129:9000/gmall/16312611376375ca9ee1b-aee7-4a6d-908b-c0e783e75d85', '5496', '0', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_image` VALUES ('8', '18', '5.png', 'http://192.168.200.129:9000/gmall/1631261137637b6a6fff2-9364-49ce-b85f-4e06d01d3f8a', '5497', '0', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_image` VALUES ('9', '18', '3.png', 'http://192.168.200.129:9000/gmall/1631261137637dd6dd408-adbd-45df-b9c2-aac5f3a6b0a8', '5498', '0', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_image` VALUES ('10', '18', '4.png', 'http://192.168.200.129:9000/gmall/163126113763724b8c4c5-358b-4d77-be2d-6e36c7e26275', '5499', '0', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_image` VALUES ('11', '19', '2.png', 'http://192.168.200.129:9000/gmall/16312615558957415ddd3-0101-497e-9c30-455d266c2f8f', '5510', '0', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_image` VALUES ('12', '19', '1.png', 'http://192.168.200.129:9000/gmall/163126155589457a8f47e-3486-402a-8747-60c511357daf', '5511', '1', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_image` VALUES ('13', '19', '5.png', 'http://192.168.200.129:9000/gmall/163126155590574b89db7-7e5e-44f9-a99b-aa0c0d0d5339', '5512', '0', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_image` VALUES ('14', '19', '4.png', 'http://192.168.200.129:9000/gmall/163126155592746cd1af2-6b3d-4b28-b90f-2c1c71adcadb', '5513', '0', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_image` VALUES ('15', '19', '3.png', 'http://192.168.200.129:9000/gmall/16312615559302505ae65-42be-4ae5-8d98-0e3ce7ec2501', '5514', '0', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_image` VALUES ('16', '20', '2.png', 'http://192.168.200.129:9000/gmall/16312615558957415ddd3-0101-497e-9c30-455d266c2f8f', '5510', '0', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_image` VALUES ('17', '20', '1.png', 'http://192.168.200.129:9000/gmall/163126155589457a8f47e-3486-402a-8747-60c511357daf', '5511', '1', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_image` VALUES ('18', '20', '5.png', 'http://192.168.200.129:9000/gmall/163126155590574b89db7-7e5e-44f9-a99b-aa0c0d0d5339', '5512', '0', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_image` VALUES ('19', '20', '4.png', 'http://192.168.200.129:9000/gmall/163126155592746cd1af2-6b3d-4b28-b90f-2c1c71adcadb', '5513', '0', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_image` VALUES ('20', '20', '3.png', 'http://192.168.200.129:9000/gmall/16312615559302505ae65-42be-4ae5-8d98-0e3ce7ec2501', '5514', '0', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');

-- ----------------------------
-- Table structure for `sku_info`
-- ----------------------------
DROP TABLE IF EXISTS `sku_info`;
CREATE TABLE `sku_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '库存id(itemID)',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `sku_name` varchar(200) DEFAULT NULL COMMENT 'sku名称',
  `sku_desc` varchar(2000) DEFAULT NULL COMMENT '商品规格描述',
  `weight` decimal(10,2) DEFAULT NULL COMMENT '重量',
  `tm_id` bigint(20) DEFAULT NULL COMMENT '品牌(冗余)',
  `category3_id` bigint(20) DEFAULT NULL COMMENT '三级分类id（冗余)',
  `sku_default_img` varchar(300) DEFAULT NULL COMMENT '默认显示图片(冗余)',
  `is_sale` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否销售（1：是 0：否）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='库存单元表';

-- ----------------------------
-- Records of sku_info
-- ----------------------------
INSERT INTO `sku_info` VALUES ('17', '6', '1399', '小米CC9 多功能NFC全网通4G手机 仙女渐变色 6+64G', null, '0.66', '1', '61', 'http://192.168.200.129:9000/gmall/1631261144465503bb216-7816-4d9c-a557-84880e014419', '1', '2021-09-11 04:11:48', '2021-09-27 06:58:51', '0');
INSERT INTO `sku_info` VALUES ('18', '6', '1349', '小米CC9 多功能NFC全网通4G手机 深蓝星球（蓝色） 6+64G', '不错，很好，good！nice！', '0.88', '1', '61', 'http://192.168.200.129:9000/gmall/16312611376378540f7b4-6e88-4402-8f10-0ad546b75449', '1', '2021-09-11 04:16:20', '2021-09-27 06:58:50', '0');
INSERT INTO `sku_info` VALUES ('19', '7', '3333', '荣耀（HONOR） 荣耀V30 V30Pro 5G手机 麒麟990芯片 V30pro 幻夜星河 全网通(8+128G)', 'very good!', '0.88', '3', '61', 'http://192.168.200.129:9000/gmall/163126155589457a8f47e-3486-402a-8747-60c511357daf', '1', '2021-09-11 04:19:06', '2021-09-27 06:58:49', '0');
INSERT INTO `sku_info` VALUES ('20', '7', '4499', '荣耀（HONOR） 荣耀V30 V30Pro 5G手机 麒麟990芯片 V30pro 幻夜星河 全网通(8+256G)', '还好。', '0.89', '3', '61', 'http://192.168.200.129:9000/gmall/163126155589457a8f47e-3486-402a-8747-60c511357daf', '1', '2021-09-11 04:20:20', '2021-09-27 06:58:49', '0');

-- ----------------------------
-- Table structure for `sku_sale_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `sku_sale_attr_value`;
CREATE TABLE `sku_sale_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sku_id` bigint(20) DEFAULT NULL COMMENT '库存单元id',
  `spu_id` int(11) DEFAULT NULL COMMENT 'spu_id(冗余)',
  `sale_attr_value_id` bigint(20) DEFAULT NULL COMMENT '销售属性值id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='sku销售属性值';

-- ----------------------------
-- Records of sku_sale_attr_value
-- ----------------------------
INSERT INTO `sku_sale_attr_value` VALUES ('1', '17', '6', '3717', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('2', '17', '6', '3718', '2021-09-11 04:11:48', '2021-09-11 04:11:48', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('3', '18', '6', '3716', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('4', '18', '6', '3718', '2021-09-11 04:16:20', '2021-09-11 04:16:20', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('5', '19', '7', '3721', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('6', '19', '7', '3722', '2021-09-11 04:19:06', '2021-09-11 04:19:06', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('7', '20', '7', '3721', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');
INSERT INTO `sku_sale_attr_value` VALUES ('8', '20', '7', '3723', '2021-09-11 04:20:20', '2021-09-11 04:20:20', '0');

-- ----------------------------
-- Table structure for `spu_image`
-- ----------------------------
DROP TABLE IF EXISTS `spu_image`;
CREATE TABLE `spu_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `img_name` varchar(200) DEFAULT NULL COMMENT '图片名称',
  `img_url` varchar(300) DEFAULT NULL COMMENT '图片路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5515 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品图片表';

-- ----------------------------
-- Records of spu_image
-- ----------------------------
INSERT INTO `spu_image` VALUES ('5495', '6', '2.png', 'http://192.168.200.129:9000/gmall/16312611376378540f7b4-6e88-4402-8f10-0ad546b75449', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5496', '6', '1.png', 'http://192.168.200.129:9000/gmall/16312611376375ca9ee1b-aee7-4a6d-908b-c0e783e75d85', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5497', '6', '5.png', 'http://192.168.200.129:9000/gmall/1631261137637b6a6fff2-9364-49ce-b85f-4e06d01d3f8a', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5498', '6', '3.png', 'http://192.168.200.129:9000/gmall/1631261137637dd6dd408-adbd-45df-b9c2-aac5f3a6b0a8', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5499', '6', '4.png', 'http://192.168.200.129:9000/gmall/163126113763724b8c4c5-358b-4d77-be2d-6e36c7e26275', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5500', '6', '2.png', 'http://192.168.200.129:9000/gmall/16312611444523300df05-283e-49e4-a0db-8a9f531ff03e', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5501', '6', '3.png', 'http://192.168.200.129:9000/gmall/16312611444555176295f-fe9b-4fdc-bf07-6890f8a09312', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5502', '6', '5.png', 'http://192.168.200.129:9000/gmall/1631261144461b20e316d-4449-47d0-a75b-0155e78c54ea', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5503', '6', '4.png', 'http://192.168.200.129:9000/gmall/1631261144461c65be79f-58ae-435c-b9c1-7e78eb7df51d', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5504', '6', '1.png', 'http://192.168.200.129:9000/gmall/1631261144465503bb216-7816-4d9c-a557-84880e014419', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_image` VALUES ('5505', '7', '3.png', 'http://192.168.200.129:9000/gmall/16312615504056fe98cc3-82c1-4a7f-8286-0af62210e733', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5506', '7', '4.png', 'http://192.168.200.129:9000/gmall/1631261550413b6985989-b5df-410e-91ee-e03095b72608', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5507', '7', '1.png', 'http://192.168.200.129:9000/gmall/1631261550410be4a17bc-7d6c-456f-8857-28a9a454fb87', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5508', '7', '2.png', 'http://192.168.200.129:9000/gmall/16312615504135f0c4006-76df-4f38-91de-ec4ba02a9158', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5509', '7', '5.png', 'http://192.168.200.129:9000/gmall/163126155041686eb4aae-efaa-42a4-9da6-d06e85db0a66', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5510', '7', '2.png', 'http://192.168.200.129:9000/gmall/16312615558957415ddd3-0101-497e-9c30-455d266c2f8f', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5511', '7', '1.png', 'http://192.168.200.129:9000/gmall/163126155589457a8f47e-3486-402a-8747-60c511357daf', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5512', '7', '5.png', 'http://192.168.200.129:9000/gmall/163126155590574b89db7-7e5e-44f9-a99b-aa0c0d0d5339', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5513', '7', '4.png', 'http://192.168.200.129:9000/gmall/163126155592746cd1af2-6b3d-4b28-b90f-2c1c71adcadb', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_image` VALUES ('5514', '7', '3.png', 'http://192.168.200.129:9000/gmall/16312615559302505ae65-42be-4ae5-8d98-0e3ce7ec2501', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');

-- ----------------------------
-- Table structure for `spu_info`
-- ----------------------------
DROP TABLE IF EXISTS `spu_info`;
CREATE TABLE `spu_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `spu_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '商品描述(后台简述）',
  `category3_id` bigint(20) DEFAULT NULL COMMENT '三级分类id',
  `tm_id` bigint(20) DEFAULT NULL COMMENT '品牌id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品表';

-- ----------------------------
-- Records of spu_info
-- ----------------------------
INSERT INTO `spu_info` VALUES ('6', '小米手机 CC9', '不错，很好，good，nice，perfect.', '61', '1', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_info` VALUES ('7', '荣耀V30 PRO', '不错，很好，good, perfect.', '61', '3', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');

-- ----------------------------
-- Table structure for `spu_poster`
-- ----------------------------
DROP TABLE IF EXISTS `spu_poster`;
CREATE TABLE `spu_poster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `img_name` varchar(200) DEFAULT NULL COMMENT '文件名称',
  `img_url` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品海报表';

-- ----------------------------
-- Records of spu_poster
-- ----------------------------
INSERT INTO `spu_poster` VALUES ('1', '1', '4.jpg', 'http://47.93.148.192:8080/group1/M00/00/02/rBHu8l-rgJqARA19AAFuZ18W_ks439.jpg', '2021-08-16 14:42:12', '2021-08-25 18:36:54', '0');
INSERT INTO `spu_poster` VALUES ('2', '1', '123.jpg', 'http://47.93.148.192:8080/group1/M00/00/01/rBHu8l-rfvmAHpFuAACTenfIJWo734.jpg', '2021-08-16 14:42:12', '2021-08-25 18:37:00', '0');
INSERT INTO `spu_poster` VALUES ('3', '6', 'm1.png', 'http://192.168.200.129:9000/gmall/1631261232951f289be39-863e-4c06-9a39-27eebc75c10b', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_poster` VALUES ('4', '6', 'm2.png', 'http://192.168.200.129:9000/gmall/1631261234949584ae930-b5b5-44e1-bf65-26b6c39f5cb4', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_poster` VALUES ('5', '7', 'h1.jpg', 'http://192.168.200.129:9000/gmall/1631261721037f5c22e33-2bfc-40d1-846c-679cb0254391', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_poster` VALUES ('6', '7', 'h2.jpg', 'http://192.168.200.129:9000/gmall/1631261722923e8ee56bc-759f-495a-b313-5132be2337b4', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');

-- ----------------------------
-- Table structure for `spu_sale_attr`
-- ----------------------------
DROP TABLE IF EXISTS `spu_sale_attr`;
CREATE TABLE `spu_sale_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号(业务中无关联)',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `base_sale_attr_id` bigint(20) DEFAULT NULL COMMENT '销售属性id',
  `sale_attr_name` varchar(20) DEFAULT NULL COMMENT '销售属性名称(冗余)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5208 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='spu销售属性';

-- ----------------------------
-- Records of spu_sale_attr
-- ----------------------------
INSERT INTO `spu_sale_attr` VALUES ('5204', '6', '1', '颜色', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr` VALUES ('5205', '6', '2', '版本', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr` VALUES ('5206', '7', '1', '颜色', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_sale_attr` VALUES ('5207', '7', '2', '版本', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');

-- ----------------------------
-- Table structure for `spu_sale_attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `spu_sale_attr_value`;
CREATE TABLE `spu_sale_attr_value` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '销售属性值编号',
  `spu_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `base_sale_attr_id` bigint(20) DEFAULT NULL COMMENT '销售属性id',
  `sale_attr_value_name` varchar(20) DEFAULT NULL COMMENT '销售属性值名称',
  `sale_attr_name` varchar(20) DEFAULT NULL COMMENT '销售属性名称(冗余)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3724 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='spu销售属性值';

-- ----------------------------
-- Records of spu_sale_attr_value
-- ----------------------------
INSERT INTO `spu_sale_attr_value` VALUES ('3716', '6', '1', '深蓝星球', '颜色', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3717', '6', '1', '仙女渐变色', '颜色', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3718', '6', '2', '6G+64G', '版本', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3719', '6', '2', '6G+128G', '版本', '2021-09-10 08:07:22', '2021-09-10 08:07:22', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3720', '7', '1', '冰岛幻境', '颜色', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3721', '7', '1', '幻夜星河', '颜色', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3722', '7', '2', '8G+128G', '版本', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');
INSERT INTO `spu_sale_attr_value` VALUES ('3723', '7', '2', '8G+256G', '版本', '2021-09-10 08:15:27', '2021-09-10 08:15:27', '0');

-- ----------------------------
-- View structure for `base_category_view`
-- ----------------------------
DROP VIEW IF EXISTS `base_category_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `base_category_view` AS select `base_category3`.`id` AS `id`,`base_category1`.`id` AS `category1_id`,`base_category1`.`name` AS `category1_name`,`base_category2`.`id` AS `category2_id`,`base_category2`.`name` AS `category2_name`,`base_category3`.`id` AS `category3_id`,`base_category3`.`name` AS `category3_name` from ((`base_category1` join `base_category2` on((`base_category1`.`id` = `base_category2`.`category1_id`))) join `base_category3` on((`base_category2`.`id` = `base_category3`.`category2_id`))) ;

-- ----------------------------
-- View structure for `v_category`
-- ----------------------------
DROP VIEW IF EXISTS `v_category`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_category` AS select `c3`.`id` AS `id`,`c1`.`id` AS `category1Id`,`c1`.`name` AS `category1Name`,`c2`.`id` AS `category2Id`,`c2`.`name` AS `category2Name`,`c3`.`id` AS `category3Id`,`c3`.`name` AS `category3Name` from ((`base_category1` `c1` join `base_category2` `c2` on((`c1`.`id` = `c2`.`category1_id`))) join `base_category3` `c3` on((`c2`.`id` = `c3`.`category2_id`))) ;
