/*
 Navicat Premium Data Transfer

 Source Server         : WQL
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : managementsystem

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 09/02/2021 16:48:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(255) NOT NULL COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for bm
-- ----------------------------
DROP TABLE IF EXISTS `bm`;
CREATE TABLE `bm`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bm
-- ----------------------------
INSERT INTO `bm` VALUES (1, '安保部');
INSERT INTO `bm` VALUES (2, '市场部');
INSERT INTO `bm` VALUES (3, '法务部');
INSERT INTO `bm` VALUES (4, '研发部');
INSERT INTO `bm` VALUES (5, '人力资源部');
INSERT INTO `bm` VALUES (6, '财务部');
INSERT INTO `bm` VALUES (7, '行政部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bmid` int(255) NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(255) NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '王清霖', 4, '男', 100, '110', '三界之外');
INSERT INTO `employee` VALUES (2, '法外狂徒张三。。', 5, '男', 20, '15526446827', '北京市南城区');
INSERT INTO `employee` VALUES (3, '李四', 2, '男', 23, '19923154651', '广州市白云区');
INSERT INTO `employee` VALUES (4, '王五', 7, '男', 32, '19945612312', '广州市番禺区');
INSERT INTO `employee` VALUES (5, '李诚', 6, '男', 21, '15562315464', '广州市越秀区');
INSERT INTO `employee` VALUES (6, '唐三', 7, '男', 18, '16456123356', '斗罗大陆');
INSERT INTO `employee` VALUES (7, '萧炎', 4, '男', 19, '14652321245', '斗破苍穹');
INSERT INTO `employee` VALUES (8, '张蔓', 5, '女', 43, '13245645478', '长沙市雨花区');
INSERT INTO `employee` VALUES (9, '张狂2', 1, '男', 32, '15462545618', '长沙市天心区');
INSERT INTO `employee` VALUES (10, '路桥', 2, '女', 31, '17854346456', '北京市南城区');
INSERT INTO `employee` VALUES (13, '王二麻子', 3, '男', 28, '1745659564', '益阳市高新区');

SET FOREIGN_KEY_CHECKS = 1;
