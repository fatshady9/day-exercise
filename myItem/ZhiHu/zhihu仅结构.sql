/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : zhihu

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 21/10/2019 09:11:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agree
-- ----------------------------
DROP TABLE IF EXISTS `agree`;
CREATE TABLE `agree`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '赞同id',
  `answer_id` int(10) NOT NULL COMMENT '赞同的回答id',
  `user_id` int(10) NOT NULL COMMENT '赞同者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '赞同时间',
  `status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '状态(赞同 0，反对 1)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `赞同的回答id`(`answer_id`) USING BTREE,
  INDEX `赞同者id`(`user_id`) USING BTREE,
  CONSTRAINT `赞同的回答id` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `赞同者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `ques_id` int(255) NOT NULL COMMENT '回答的问题id',
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题名称',
  `user_id` int(10) NOT NULL COMMENT '回答者id',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答者昵称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答内容',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回答时间',
  `agree` int(10) NOT NULL DEFAULT 0 COMMENT '赞同数',
  `disagree` int(10) NOT NULL DEFAULT 0 COMMENT '不赞同数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `回答的问题id`(`ques_id`) USING BTREE,
  INDEX `回答者id`(`user_id`) USING BTREE,
  CONSTRAINT `回答的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `回答者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for answer_comment
-- ----------------------------
DROP TABLE IF EXISTS `answer_comment`;
CREATE TABLE `answer_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `user_id` int(10) NOT NULL COMMENT '评论者id',
  `answer_id` int(10) NOT NULL COMMENT '评论的回答id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回答者名称',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `评论者id`(`user_id`) USING BTREE,
  INDEX `评论的回答id`(`answer_id`) USING BTREE,
  CONSTRAINT `评论的回答id` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `评论者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ques_attention
-- ----------------------------
DROP TABLE IF EXISTS `ques_attention`;
CREATE TABLE `ques_attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `ques_id` int(10) NOT NULL COMMENT '关注的问题id',
  `user_id` int(10) NOT NULL COMMENT '关注者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '关注的时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `关注的问题id`(`ques_id`) USING BTREE,
  INDEX `关注问题者id`(`user_id`) USING BTREE,
  CONSTRAINT `关注的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `关注问题者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ques_comment
-- ----------------------------
DROP TABLE IF EXISTS `ques_comment`;
CREATE TABLE `ques_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论的id',
  `ques_id` int(10) NOT NULL COMMENT '评论的问题id',
  `user_id` int(10) NOT NULL COMMENT '评论者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `评论的问题id`(`ques_id`) USING BTREE,
  INDEX `评论问题者id`(`user_id`) USING BTREE,
  CONSTRAINT `评论的问题id` FOREIGN KEY (`ques_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `评论问题者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `question` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题名称',
  `discribe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题描述',
  `user_id` int(10) NOT NULL COMMENT '提问者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提问时间',
  `browe` int(16) NOT NULL DEFAULT 0 COMMENT '浏览次数',
  `answer` int(10) NOT NULL DEFAULT 0 COMMENT '回答数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `提问者id`(`user_id`) USING BTREE,
  CONSTRAINT `提问者id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户手机号/账号',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `sign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `bgpic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主页背景图片',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `browe` int(10) NOT NULL DEFAULT 0 COMMENT '主页浏览次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_attention
-- ----------------------------
DROP TABLE IF EXISTS `user_attention`;
CREATE TABLE `user_attention`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注id',
  `be_atten_id` int(10) NOT NULL COMMENT '被关注者id',
  `atten_id` int(10) NOT NULL COMMENT '关注者id',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `被关注者id`(`be_atten_id`) USING BTREE,
  INDEX `关注者id`(`atten_id`) USING BTREE,
  CONSTRAINT `关注者id` FOREIGN KEY (`atten_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `被关注者id` FOREIGN KEY (`be_atten_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
