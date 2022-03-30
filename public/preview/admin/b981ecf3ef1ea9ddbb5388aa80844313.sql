/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : schoolInfo

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 27/02/2022 01:41:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clock
-- ----------------------------
DROP TABLE IF EXISTS `clock`;
CREATE TABLE `clock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `locateId` int DEFAULT NULL,
  `isOutside` tinyint(1) DEFAULT NULL,
  `isTouch` tinyint(1) DEFAULT NULL,
  `reactionId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clock
-- ----------------------------
BEGIN;
INSERT INTO `clock` (`id`, `userId`, `desc`, `locateId`, `isOutside`, `isTouch`, `reactionId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, 1, '有点不舒服', 4, 1, 0, 1, '2022-02-27 00:52:26', '2022-02-27 00:52:26', NULL);
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '学校', '最高级部门', NULL, '2022-02-27 00:26:40', '2022-02-27 00:26:42', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '院系1', 'A comfort zone is a beautiful place, but nothing ever grows there. Always keep your eyes open. Keep ', 1, '2012-03-16 15:10:19', '2001-12-03 20:52:57', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '院系2', 'The On Startup feature allows you to control what tabs appear when you launch Navicat. Genius is an ', 1, '2022-02-15 04:45:47', '2012-06-07 08:55:38', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '院系3', 'Anyone who has ever made anything of importance was disciplined. The repository database can be an e', 1, '2017-05-04 01:45:36', '2021-10-11 21:15:08', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (5, '院系4', 'After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud an', 1, '2002-01-18 23:42:22', '2011-02-05 19:50:19', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (6, '院系5', 'All journeys have secret destinations of which the traveler is unaware. A query is used to extract d', 1, '2014-01-18 08:32:12', '2003-04-05 11:14:16', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (7, '生产部', 'Production', 4, '2010-06-26 22:38:09', '2005-02-20 06:03:44', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (8, '销售部', 'Sales', 4, '2003-02-04 04:33:29', '2002-12-28 15:51:56', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (9, '物流部', 'Logistics', 3, '2004-07-21 02:08:01', '2001-03-15 13:24:42', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (10, '行政管理部', 'Administrative & Management', 6, '2006-11-16 18:11:21', '2019-01-11 01:14:49', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (11, '物流部', 'Logistics', 3, '2004-09-21 04:12:50', '2001-07-19 14:00:34', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (12, '产品质量部', 'Product Quality', 2, '2008-03-29 06:55:30', '2018-10-04 22:12:26', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (13, '研究及开发部', 'Research & Development', 4, '2015-03-27 14:41:14', '2021-10-31 22:10:11', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (14, '市场部', 'Marketing', 5, '2009-02-23 09:29:25', '2010-11-20 00:03:00', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (15, '工程部', 'Engineering', 6, '2007-03-21 04:39:32', '2005-09-02 07:37:58', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (16, '工程部', 'Engineering', 5, '2007-08-18 03:50:08', '2020-05-17 00:45:14', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (17, '产品质量部', 'Product Quality', 2, '2008-03-19 07:38:10', '2007-07-08 00:43:21', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (18, '生产部', 'Production', 3, '2017-07-18 23:46:55', '2001-08-05 05:24:27', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (19, '人力资源部', 'Human resource', 3, '2014-08-09 15:01:08', '2016-07-15 01:38:12', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (20, '研究及开发部', 'Research & Development', 6, '2005-06-01 04:12:52', '2016-07-04 13:28:22', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (21, '行政管理部', 'Administrative & Management', 3, '2006-12-05 14:54:13', '2003-02-19 07:14:37', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (22, '研究及开发部', 'Research & Development', 6, '2004-04-19 10:37:18', '2012-04-28 17:05:23', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (23, '物流部', 'Logistics', 3, '2007-10-03 23:15:07', '2019-07-06 15:39:37', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (24, '公关部', 'Public Relations', 4, '2017-05-28 22:12:25', '2021-04-19 20:02:27', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (25, '生产部', 'Production', 3, '2005-03-05 05:11:49', '2021-08-24 13:23:22', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (26, '工程部', 'Engineering', 4, '2010-03-08 23:19:32', '2000-01-11 19:26:09', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (27, '销售部', 'Sales', 3, '2014-09-29 03:44:29', '2014-02-08 15:56:56', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (28, '研究及开发部', 'Research & Development', 2, '2018-03-11 21:44:15', '2021-05-31 13:18:00', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (29, '公关部', 'Public Relations', 6, '2012-08-25 22:58:28', '2009-05-24 07:42:48', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (30, '行政管理部', 'Administrative & Management', 5, '2016-09-12 02:06:41', '2020-02-11 23:54:21', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (31, '会计及金融部', 'Accounting & Finance', 5, '2003-05-25 11:58:46', '2012-01-19 11:33:22', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (32, '采购部', 'Purchasing', 4, '2015-08-28 01:32:16', '2013-02-26 20:37:30', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (33, '人力资源部', 'Human resource', 3, '2018-11-25 00:43:39', '2017-01-16 14:02:20', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (34, '行政管理部', 'Administrative & Management', 4, '2010-11-09 14:03:07', '2006-11-06 18:35:55', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (35, '产品质量部', 'Product Quality', 5, '2007-05-28 21:54:35', '2007-06-04 14:29:04', NULL);
INSERT INTO `dept` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (36, '信息技术支持部', 'Information Technology Support', 3, '2010-08-25 20:07:33', '2017-06-01 05:25:10', NULL);
COMMIT;

-- ----------------------------
-- Table structure for locate
-- ----------------------------
DROP TABLE IF EXISTS `locate`;
CREATE TABLE `locate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of locate
-- ----------------------------
BEGIN;
INSERT INTO `locate` (`id`, `name`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '中国', NULL, '2022-02-27 00:30:28', '2022-02-27 00:30:31', NULL);
INSERT INTO `locate` (`id`, `name`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '北京市', 1, '2022-02-27 00:31:21', '2022-02-27 00:31:23', NULL);
INSERT INTO `locate` (`id`, `name`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '广东省', 1, '2022-02-27 00:31:32', '2022-02-27 00:31:34', NULL);
INSERT INTO `locate` (`id`, `name`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '广州市', 3, '2022-02-27 00:31:43', '2022-02-27 00:31:46', NULL);
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `deptId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
BEGIN;
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '建筑师', 'Architect', '2011-12-20 03:20:01', '2019-09-20 05:05:31', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '制片人', 'Producer', '2007-10-04 18:41:37', '2013-11-06 19:00:45', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '运营经理', 'Operations manager', '2010-09-05 23:42:31', '2007-06-22 10:47:50', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '农夫', 'Farmer', '2002-03-28 09:25:32', '2001-01-24 22:44:14', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (5, '软件开发员', 'Software developer', '2013-05-17 21:08:24', '2010-04-02 00:18:31', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (6, '客户服务经理', 'Client services manager', '2008-11-22 11:58:12', '2009-01-26 00:04:59', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (7, '技术支援人员', 'Technical support', '2016-08-25 04:50:42', '2003-01-28 06:27:03', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (8, '图书馆管理员', 'Librarian', '2014-08-26 19:18:42', '2011-04-01 12:01:21', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (9, '社交媒体协调员', 'Social media coordinator', '2012-04-11 12:11:23', '2007-10-04 01:38:19', NULL);
INSERT INTO `position` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (10, '审计师', 'Auditor', '2015-11-26 23:46:19', '2000-02-13 20:04:06', NULL);
COMMIT;

-- ----------------------------
-- Table structure for reaction
-- ----------------------------
DROP TABLE IF EXISTS `reaction`;
CREATE TABLE `reaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reaction
-- ----------------------------
BEGIN;
INSERT INTO `reaction` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '正常', '2022-02-27 00:35:48', '2022-02-27 00:35:50', NULL);
INSERT INTO `reaction` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '疑似确诊', '2022-02-27 00:36:00', '2022-02-27 00:36:02', NULL);
INSERT INTO `reaction` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '确定确诊', '2022-02-27 00:36:12', '2022-02-27 00:36:14', NULL);
COMMIT;

-- ----------------------------
-- Table structure for research
-- ----------------------------
DROP TABLE IF EXISTS `research`;
CREATE TABLE `research` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `researchStatusId` int DEFAULT NULL,
  `researchCategoryId` int DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of research
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for researchCategory
-- ----------------------------
DROP TABLE IF EXISTS `researchCategory`;
CREATE TABLE `researchCategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `parentId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of researchCategory
-- ----------------------------
BEGIN;
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '所有科研成果', NULL, NULL, '2022-02-27 00:32:19', '2022-02-27 00:32:21', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '论文', NULL, 1, '2022-02-27 00:33:08', '2022-02-27 00:33:10', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '著作(含教材)', NULL, 1, '2022-02-27 00:33:31', '2022-02-27 00:33:33', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '研究报告', NULL, 1, '2022-02-27 00:33:50', '2022-02-27 00:33:52', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (5, '科研获奖', NULL, 1, '2022-02-27 00:34:00', '2022-02-27 00:34:05', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (6, '学术活动', NULL, 1, '2022-02-27 00:34:20', '2022-02-27 00:34:22', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (7, '专利', NULL, 1, '2022-02-27 00:34:29', '2022-02-27 00:34:32', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (8, '权威核心刊物', NULL, 2, '2022-02-27 00:35:00', '2022-02-27 00:35:02', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (9, 'SCI/EI检索刊物', NULL, 2, '2022-02-27 00:35:22', '2022-02-27 00:35:26', NULL);
INSERT INTO `researchCategory` (`id`, `name`, `desc`, `parentId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (10, '国家级', NULL, 3, '2022-02-27 01:22:41', '2022-02-27 01:22:41', NULL);
COMMIT;

-- ----------------------------
-- Table structure for researchStatus
-- ----------------------------
DROP TABLE IF EXISTS `researchStatus`;
CREATE TABLE `researchStatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of researchStatus
-- ----------------------------
BEGIN;
INSERT INTO `researchStatus` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, '申请资金', NULL, '2022-02-27 01:19:11', '2022-02-27 01:19:11', NULL);
INSERT INTO `researchStatus` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '待开始', NULL, '2022-02-27 01:19:18', '2022-02-27 01:19:27', NULL);
INSERT INTO `researchStatus` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '进行中', NULL, '2022-02-27 01:19:22', '2022-02-27 01:19:22', NULL);
INSERT INTO `researchStatus` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '已结束', NULL, '2022-02-27 01:19:34', '2022-02-27 01:19:34', NULL);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, 'admin', '学校管理员', '2006-08-31 16:46:35', '2019-12-28 01:24:47', NULL);
INSERT INTO `role` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, 'collegeManager', '二级学院管理员', '2010-08-31 02:17:36', '2010-05-30 22:17:46', NULL);
INSERT INTO `role` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, 'deptManager', '部门管理员', '2013-11-22 15:42:47', '2008-05-17 23:39:28', NULL);
INSERT INTO `role` (`id`, `name`, `desc`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, 'teacher', '普通教职员工', '2001-06-07 20:04:22', '2006-07-10 16:25:13', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `roleId` int DEFAULT NULL,
  `positionId` int DEFAULT NULL,
  `deptId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (1, 'admin', 'admin', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 20, '2022-02-27 00:15:15', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'admin', 1, 1, 1, '2022-02-27 00:15:49', '2022-02-27 00:15:52', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (2, '徐嘉伦', 'jialunxu', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 27, '2017-12-30 21:06:01', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'Import Wizard allows you to import data to tables/collections from CSV, TXT, XML, DBF and more.', 3, 7, 27, '2012-02-18 09:37:15', '2016-04-11 09:18:14', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (3, '黎安琪', 'lianqi220', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 34, '2017-01-15 04:07:02', 0, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'A query is used to extract data from the database in a readable format according to the user\'s reque', 1, 10, 17, '2010-11-21 00:57:15', '2010-09-17 09:33:35', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (4, '石杰宏', 'sji9', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 26, '2001-05-31 21:00:43', 0, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'Success consists of going from failure to failure without loss of enthusiasm.', 1, 9, 3, '2012-02-23 16:15:23', '2005-12-24 21:10:58', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (5, '姚詩涵', 'yao6', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 53, '2018-09-09 21:17:22', 0, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'If your Internet Service Provider (ISP) does not provide direct access to its server, Secure Tunneli', 2, 3, 32, '2002-10-16 03:50:45', '2004-08-10 00:27:22', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (6, '唐岚', 'lanta', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 41, '2001-07-30 20:04:04', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'After comparing data, the window shows the number of records that will be inserted, updated or delet', 4, 9, 18, '2004-07-24 00:53:38', '2012-04-01 18:36:38', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (7, '袁璐', 'ylu', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 66, '2004-03-17 19:56:42', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'In the Objects tab, you can use the List List, Detail Detail and ER Diagram ER Diagram buttons to ch', 2, 9, 35, '2005-12-06 03:44:46', '2015-09-28 01:15:03', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (8, '徐晓明', 'xiaoming47', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 35, '2011-02-15 23:44:09', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'Monitored servers include MySQL, MariaDB and SQL Server, and compatible with cloud databases like Am', 3, 7, 11, '2018-02-07 14:52:03', '2010-01-21 22:29:30', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (9, '赵岚', 'lanz13', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 44, '2000-08-28 13:14:46', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'The Synchronize to Database function will give you a full picture of all database differences.', 2, 4, 20, '2005-08-28 09:44:26', '2020-11-28 15:35:16', NULL);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `age`, `birthday`, `sex`, `avatar`, `desc`, `roleId`, `positionId`, `deptId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES (10, '叶致远', 'zhiye', 'Jp0PfG+pPXEYmcPtj4pOrBRxlAy4/ZKWIpTVfwVPPxiihovTDk3kitdGtvcSRJ2IZHLG+zKE3gb1mUzbJKhYPTvPx6cc1Gp6vn0o2yhoAf6dnu6R04rDylnZvtgA9PxA0lE9TjeFfUDmlXHvnLlXYdd0sEUJYo0/1ubgvNdAtw4=', 24, '2006-09-30 14:33:35', 1, 'http://localhost:10086/upload/icon_default_avatar.jpg', 'To successfully establish a new connection to local/remote server - no matter via SSL, SSH or HTTP, ', 4, 6, 9, '2019-08-02 11:49:57', '2009-08-05 22:04:45', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
