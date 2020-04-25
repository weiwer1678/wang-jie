/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : django_test13

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-04-14 04:49:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
`id`  int NOT NULL AUTO_INCREMENT ,
`Cname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `Cname` (`Cname`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=11

;

-- ----------------------------
-- Records of t_category
-- ----------------------------
BEGIN;
INSERT INTO `t_category` VALUES ('7', 'IT'), ('10', '其他'), ('8', '艺术'), ('6', '金融'), ('9', '餐饮');
COMMIT;

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
`id`  int NOT NULL AUTO_INCREMENT ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`desc`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`content`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`category_id`  int NOT NULL ,
`place_id`  int NOT NULL ,
`work_id`  int NOT NULL ,
`company`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`category_id`) REFERENCES `t_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`place_id`) REFERENCES `t_place` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`work_id`) REFERENCES `t_work` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
UNIQUE INDEX `title` (`title`) USING BTREE ,
INDEX `t_job_category_id_f8a21dca_fk_t_category_id` (`category_id`) USING BTREE ,
INDEX `t_job_place_id_400b6106_fk_t_place_id` (`place_id`) USING BTREE ,
INDEX `t_job_work_id_88b3b31b_fk_t_work_id` (`work_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=9

;

-- ----------------------------
-- Records of t_job
-- ----------------------------
BEGIN;
INSERT INTO `t_job` VALUES ('1', '厨师', 'xxxx', 'xxxxx', '9', '1', '1', '鬼知道'), ('2', 'python程序员', 'xxxx', 'xxx', '7', '2', '1', '鬼知道'), ('3', 'web前端设计师', 'xxxx', 'xxx', '7', '3', '1', '鬼知道'), ('4', '银行证券师', 'xxx', 'xxx', '6', '4', '2', '鬼知道'), ('5', 'MySQL 开发', 'xxx', 'xxxx', '7', '5', '1', '鬼知道'), ('6', 'java程序员', 'xxxx', 'xxxxx', '7', '6', '1', '鬼知道'), ('7', 'UI设计', 'xxxx', 'xxxxx', '8', '7', '2', '鬼知道'), ('8', '酒店大堂经理', 'xxxxx', '<p>{% extends &#39;post.html&#39; %} {% load myfliter %} {% block title %}详情页面{% endblock %} {% block left %}</p>\r\n\r\n<div>\r\n<div>\r\n<div><a class=\"article-category-link\" href=\"#\" target=\"_blank\">{{job.company}}</a></div>\r\n</div>\r\n\r\n<div>\r\n<h1>{{job.title}}<img alt=\"\" src=\"/media/upload/2020/04/12/zgtfss.jpg\" style=\"height:752px; width:1024px\" /></h1>\r\n\r\n<div>\r\n<h2>职位要求</h2>\r\n{{job.desc}}\r\n\r\n<hr /> {{job.content | md | safe }}</div>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n\r\n<p>{% endblock %}</p>', '10', '1', '2', '上海大酒店');
COMMIT;

-- ----------------------------
-- Table structure for t_place
-- ----------------------------
DROP TABLE IF EXISTS `t_place`;
CREATE TABLE `t_place` (
`id`  int NOT NULL AUTO_INCREMENT ,
`Pname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `Pname` (`Pname`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=8

;

-- ----------------------------
-- Records of t_place
-- ----------------------------
BEGIN;
INSERT INTO `t_place` VALUES ('1', '上海'), ('3', '北京'), ('2', '安徽'), ('7', '广州'), ('4', '江苏'), ('6', '河南'), ('5', '深圳');
COMMIT;

-- ----------------------------
-- Table structure for t_work
-- ----------------------------
DROP TABLE IF EXISTS `t_work`;
CREATE TABLE `t_work` (
`id`  int NOT NULL AUTO_INCREMENT ,
`Wname`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
PRIMARY KEY (`id`),
UNIQUE INDEX `Wname` (`Wname`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of t_work
-- ----------------------------
BEGIN;
INSERT INTO `t_work` VALUES ('1', '全职工'), ('2', '兼职工');
COMMIT;

-- ----------------------------
-- Auto increment value for t_category
-- ----------------------------
ALTER TABLE `t_category` AUTO_INCREMENT=11;

-- ----------------------------
-- Auto increment value for t_job
-- ----------------------------
ALTER TABLE `t_job` AUTO_INCREMENT=9;

-- ----------------------------
-- Auto increment value for t_place
-- ----------------------------
ALTER TABLE `t_place` AUTO_INCREMENT=8;

-- ----------------------------
-- Auto increment value for t_work
-- ----------------------------
ALTER TABLE `t_work` AUTO_INCREMENT=3;
