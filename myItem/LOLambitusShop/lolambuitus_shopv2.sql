/*
 Navicat Premium Data Transfer

 Source Server         : localhots
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : lolambitus_shop

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 24/11/2019 21:14:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` int(11) NOT NULL COMMENT '对应的用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市',
  `county` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区县',
  `tel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  `postalCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮编',
  `addressDetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `isDefault` tinyint(3) NOT NULL COMMENT '是否默认 0 不默认 1 默认',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, '张三', '江苏省', '宿迁市', '沭阳县', '13271366779', '223800', '常州西路，经贸学院...', 0);
INSERT INTO `address` VALUES (2, 1, '张三', '江苏省', '宿迁市', '沭阳县', '13271366779', '223800', '常州西路，经贸学院...', 0);
INSERT INTO `address` VALUES (3, 1, '叁仟', '山西省', '太原市', '小店区', '13658996779', '489657', '常洲路255号', 0);
INSERT INTO `address` VALUES (4, 1, '叁仟', '', '', '', '13658996779', '489657', '常洲路255号', 0);
INSERT INTO `address` VALUES (5, 1, 'haha', '北京市', '北京市', '东城区', '13671965544', '666946', '158', 0);
INSERT INTO `address` VALUES (6, 1, 'dasd', '澳门特别行政区', '澳门半岛', '澳门半岛', '13352667799', '666946', '38hao', 0);
INSERT INTO `address` VALUES (7, 1, 'dasd', '澳门特别行政区', '澳门半岛', '澳门半岛', '13352667799', '666946', '38hao', 0);
INSERT INTO `address` VALUES (8, 1, 'dasdsa', '天津市', '天津市', '和平区', '13399668559', '', '38haoqu', 0);
INSERT INTO `address` VALUES (9, 2, '小王', '天津市', '天津市', '和平区', '16696305586', '666748', '天津路58号', 1);
INSERT INTO `address` VALUES (10, 1, 'dasd', '河北省', '石家庄市', '长安区', '16698542542', '411303', '386号', 0);
INSERT INTO `address` VALUES (11, 1, 'dasd', '河北省', '石家庄市', '长安区', '16698542542', '411303', '386号', 0);
INSERT INTO `address` VALUES (12, 1, 'dsad', '北京市', '北京市', '东城区', '16696302518', '411303', '38hao', 0);
INSERT INTO `address` VALUES (13, 1, '刘某', '北京市', '北京市', '东城区', '13938968879', '411585', '399号', 0);
INSERT INTO `address` VALUES (14, 1, '三炮', '天津市', '天津市', '和平区', '18896962558', '411373', '3585号', 0);
INSERT INTO `address` VALUES (15, 1, '泽三炮', '天津市', '天津市', '和平区', '18896962558', '411596', '38号区', 0);
INSERT INTO `address` VALUES (16, 1, 'dsad', '天津市', '天津市', '河东区', '16696932586', '596838', '166hao', 0);
INSERT INTO `address` VALUES (17, 1, '笑笑', '江苏省', '南京市', '玄武区', '18728321232', '112233', '江苏', 0);
INSERT INTO `address` VALUES (18, 15, 'liuliu', '北京市', '北京市', '东城区', '13372366779', '666946', '333hao', 1);
INSERT INTO `address` VALUES (19, 6, '刘诗诗', '北京市', '北京市', '东城区', '13352527796', '333666', '188hao', 1);
INSERT INTO `address` VALUES (20, 1, '张三', '江苏省', '宿迁市', '沭阳县', '13271366779', '223800', '常州西路，经贸学院...', 0);
INSERT INTO `address` VALUES (21, 7, '十三幺', '北京市', '北京市', '东城区', '15893580580', '411303', '北京大街188号', 1);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员名称',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `goods_id` int(10) UNSIGNED NOT NULL COMMENT '商品id',
  `ischk` tinyint(11) NOT NULL COMMENT '是否选中 false未选中 true选中',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '购物车的用户id',
  `standards` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买的商品规格',
  `count` int(11) NOT NULL COMMENT '购买的商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (22, 12, 0, 4, '常规', 3);
INSERT INTO `cart` VALUES (23, 3, 0, 2, '常规', 3);
INSERT INTO `cart` VALUES (71, 6, 1, 7, '常规', 1);
INSERT INTO `cart` VALUES (72, 3, 1, 7, '常规', 1);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名',
  `property` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品拥有的属性',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `time` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品上架时间',
  `classify_id` int(10) NOT NULL COMMENT '商品分类id',
  `total_sale` int(10) NOT NULL COMMENT '商品销量',
  `inventory` tinyint(4) NOT NULL COMMENT '商品库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '2019手办纪念套装', '', 299.00, '2019-11-18', 1, 21, 19);
INSERT INTO `goods` VALUES (2, '海报全套', NULL, 59.00, '2019-10-10', 3, 95, 94);
INSERT INTO `goods` VALUES (3, '毛绒抱枕', NULL, 34.00, '2019-08-20', 2, 11, 32);
INSERT INTO `goods` VALUES (4, '限量T恤', NULL, 89.00, '2019-03-11', 3, 35, 99);
INSERT INTO `goods` VALUES (5, '水壶', NULL, 42.00, '2019-01-01', 6, 5, 9);
INSERT INTO `goods` VALUES (6, '幸运珠', NULL, 12.00, '2019-03-01', 7, 32, 111);
INSERT INTO `goods` VALUES (7, 'True Damage项链', NULL, 233.00, '2019-11-11', 7, 5, 96);
INSERT INTO `goods` VALUES (8, '海牛阿福 连体衣', NULL, 111.00, '2019-05-05', 3, 22, 39);
INSERT INTO `goods` VALUES (9, '灌篮高手球衣', NULL, 23.00, '2019-01-01', 3, 2, 12);
INSERT INTO `goods` VALUES (10, '海报', NULL, 22.00, '2019-09-09', 4, 12, 23);
INSERT INTO `goods` VALUES (11, '手机壳周边', NULL, 15.00, '2019-10-10', 5, 24, 120);
INSERT INTO `goods` VALUES (12, '周边笔记本', NULL, 23.00, '2019-10-10', 5, 35, 21);
INSERT INTO `goods` VALUES (13, 'LPL冰箱贴(环保版)', NULL, 155.00, '2019-01-01', 4, 11, 99);
INSERT INTO `goods` VALUES (14, '万圣节迷你手办套装', NULL, 200.00, '2019-01-01', 2, 20, 50);
INSERT INTO `goods` VALUES (15, 'True Damage 手链', NULL, 299.00, '2019-01-01', 8, 9, 120);
INSERT INTO `goods` VALUES (16, '盲僧塑料', NULL, 300.00, '1574527826', 2, 0, 20);
INSERT INTO `goods` VALUES (17, '海贼', NULL, 200.00, '1574528084', 2, 0, 30);
INSERT INTO `goods` VALUES (18, '额Q', NULL, 22.00, '1574593805', 8, 0, 22);
INSERT INTO `goods` VALUES (19, 'SDADA', NULL, 33.00, '1574593851', 6, 0, 22);

-- ----------------------------
-- Table structure for goods_attribute
-- ----------------------------
DROP TABLE IF EXISTS `goods_attribute`;
CREATE TABLE `goods_attribute`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性值id',
  `goods_id` int(11) NOT NULL COMMENT '对应商品id',
  `property_id` int(11) NOT NULL COMMENT '对应属性id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_classify
-- ----------------------------
DROP TABLE IF EXISTS `goods_classify`;
CREATE TABLE `goods_classify`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_classify
-- ----------------------------
INSERT INTO `goods_classify` VALUES (1, '分类');
INSERT INTO `goods_classify` VALUES (2, '雕塑手办');
INSERT INTO `goods_classify` VALUES (3, '毛绒玩具');
INSERT INTO `goods_classify` VALUES (4, '男女服饰');
INSERT INTO `goods_classify` VALUES (5, '海报艺术');
INSERT INTO `goods_classify` VALUES (6, 'LPL周边');
INSERT INTO `goods_classify` VALUES (7, '其他');
INSERT INTO `goods_classify` VALUES (8, '珠宝首饰');

-- ----------------------------
-- Table structure for goods_desc_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_desc_img`;
CREATE TABLE `goods_desc_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品描述图片id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品描述图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_desc_img
-- ----------------------------
INSERT INTO `goods_desc_img` VALUES (1, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114459_35368/0.jpg');
INSERT INTO `goods_desc_img` VALUES (2, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114500_10635/0.jpg');
INSERT INTO `goods_desc_img` VALUES (3, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114459_13923/0.jpg');
INSERT INTO `goods_desc_img` VALUES (4, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114501_82597/0.jpg');
INSERT INTO `goods_desc_img` VALUES (5, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114501_12487/0.jpg');
INSERT INTO `goods_desc_img` VALUES (6, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114503_19161/0.jpg');
INSERT INTO `goods_desc_img` VALUES (7, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114504_94301/0.jpg');
INSERT INTO `goods_desc_img` VALUES (8, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114506_34902/0.jpg');
INSERT INTO `goods_desc_img` VALUES (9, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911100715_12817/0.jpg');
INSERT INTO `goods_desc_img` VALUES (10, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114507_64256/0.jpg');
INSERT INTO `goods_desc_img` VALUES (11, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114508_84962/0.jpg');
INSERT INTO `goods_desc_img` VALUES (12, 1, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911114508_89451/0.jpg');
INSERT INTO `goods_desc_img` VALUES (13, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123520_99332/0.jpg');
INSERT INTO `goods_desc_img` VALUES (14, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123521_11768/0.jpg');
INSERT INTO `goods_desc_img` VALUES (15, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123522_20319/0.jpg');
INSERT INTO `goods_desc_img` VALUES (16, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123524_28704/0.jpg');
INSERT INTO `goods_desc_img` VALUES (17, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123527_55004/0.jpg');
INSERT INTO `goods_desc_img` VALUES (18, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123528_65269/0.jpg');
INSERT INTO `goods_desc_img` VALUES (19, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123531_12153/0.jpg');
INSERT INTO `goods_desc_img` VALUES (20, 2, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911123531_10008/0.jpg');
INSERT INTO `goods_desc_img` VALUES (21, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184751_12710/0.jpg');
INSERT INTO `goods_desc_img` VALUES (22, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184752_12528/0.jpg');
INSERT INTO `goods_desc_img` VALUES (23, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184752_12528/0.jpg');
INSERT INTO `goods_desc_img` VALUES (24, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184753_49941/0.jpg');
INSERT INTO `goods_desc_img` VALUES (25, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184755_10537/0.jpg');
INSERT INTO `goods_desc_img` VALUES (26, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184756_79406/0.jpg');
INSERT INTO `goods_desc_img` VALUES (27, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184756_14060/0.jpg');
INSERT INTO `goods_desc_img` VALUES (28, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184758_22184/0.jpg');
INSERT INTO `goods_desc_img` VALUES (29, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201812184759_37785/0.jpg');
INSERT INTO `goods_desc_img` VALUES (30, 3, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905213339_89506/0.jpg');
INSERT INTO `goods_desc_img` VALUES (31, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115013_21384/0.jpg');
INSERT INTO `goods_desc_img` VALUES (32, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115014_10134/0.jpg');
INSERT INTO `goods_desc_img` VALUES (33, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115014_10203/0.jpg');
INSERT INTO `goods_desc_img` VALUES (34, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115015_10238/0.jpg');
INSERT INTO `goods_desc_img` VALUES (35, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115015_13557/0.jpg');
INSERT INTO `goods_desc_img` VALUES (36, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115016_18258/0.jpg');
INSERT INTO `goods_desc_img` VALUES (37, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115019_36601/0.jpg');
INSERT INTO `goods_desc_img` VALUES (38, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115018_98195/0.jpg');
INSERT INTO `goods_desc_img` VALUES (39, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115019_75404/0.jpg');
INSERT INTO `goods_desc_img` VALUES (40, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115021_63246/0.jpg');
INSERT INTO `goods_desc_img` VALUES (41, 4, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911115021_13847/0.jpg');
INSERT INTO `goods_desc_img` VALUES (42, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004717_43038/0.gif');
INSERT INTO `goods_desc_img` VALUES (43, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004717_37102/0.gif');
INSERT INTO `goods_desc_img` VALUES (44, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004717_30908/0.gif');
INSERT INTO `goods_desc_img` VALUES (45, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004719_11962/0.gif');
INSERT INTO `goods_desc_img` VALUES (46, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004719_11528/0.gif');
INSERT INTO `goods_desc_img` VALUES (47, 5, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911004725_42452/0.gif');
INSERT INTO `goods_desc_img` VALUES (48, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175111_11740/0.jpg');
INSERT INTO `goods_desc_img` VALUES (49, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175112_11165/0.jpg');
INSERT INTO `goods_desc_img` VALUES (50, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175113_12295/0.jpg');
INSERT INTO `goods_desc_img` VALUES (51, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175114_11156/0.jpg');
INSERT INTO `goods_desc_img` VALUES (52, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175115_83757/0.jpg');
INSERT INTO `goods_desc_img` VALUES (53, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175115_77371/0.jpg');
INSERT INTO `goods_desc_img` VALUES (54, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175117_11833/0.jpg');
INSERT INTO `goods_desc_img` VALUES (55, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175117_27469/0.jpg');
INSERT INTO `goods_desc_img` VALUES (56, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175119_44028/0.jpg');
INSERT INTO `goods_desc_img` VALUES (57, 6, 'http://shp.qpic.cn/mall/0/goods_lolriotmall_201808175120_11856/0.jpg');
INSERT INTO `goods_desc_img` VALUES (58, 6, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905190142_12417/0.jpg');
INSERT INTO `goods_desc_img` VALUES (59, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153810_10075/0.jpg');
INSERT INTO `goods_desc_img` VALUES (60, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153810_13813/0.jpg');
INSERT INTO `goods_desc_img` VALUES (61, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153810_38274/0.jpg');
INSERT INTO `goods_desc_img` VALUES (62, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153811_63775/0.jpg');
INSERT INTO `goods_desc_img` VALUES (63, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153811_13421/0.jpg');
INSERT INTO `goods_desc_img` VALUES (64, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153812_12200/0.jpg');
INSERT INTO `goods_desc_img` VALUES (65, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153813_11161/0.jpg');
INSERT INTO `goods_desc_img` VALUES (66, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905224808_12835/0.jpg');
INSERT INTO `goods_desc_img` VALUES (67, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905224744_10894/0.jpg');
INSERT INTO `goods_desc_img` VALUES (68, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153815_16061/0.jpg');
INSERT INTO `goods_desc_img` VALUES (69, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153815_10607/0.jpg');
INSERT INTO `goods_desc_img` VALUES (70, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153816_26358/0.jpg');
INSERT INTO `goods_desc_img` VALUES (71, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153816_88159/0.jpg');
INSERT INTO `goods_desc_img` VALUES (72, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153817_90427/0.jpg');
INSERT INTO `goods_desc_img` VALUES (73, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153818_77018/0.jpg');
INSERT INTO `goods_desc_img` VALUES (74, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153819_71451/0.jpg');
INSERT INTO `goods_desc_img` VALUES (75, 7, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905153819_11740/0.jpg');
INSERT INTO `goods_desc_img` VALUES (76, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142146_38532/0.jpg');
INSERT INTO `goods_desc_img` VALUES (77, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142146_48757/0.jpg');
INSERT INTO `goods_desc_img` VALUES (78, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142146_13555/0.jpg');
INSERT INTO `goods_desc_img` VALUES (79, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142148_40192/0.jpg');
INSERT INTO `goods_desc_img` VALUES (80, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142148_48711/0.jpg');
INSERT INTO `goods_desc_img` VALUES (81, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142149_13441/0.jpg');
INSERT INTO `goods_desc_img` VALUES (82, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142149_33390/0.jpg');
INSERT INTO `goods_desc_img` VALUES (83, 8, 'http://shp.qpic.cn/mall/0/goods_lol_201808142150_13227/0.jpg');
INSERT INTO `goods_desc_img` VALUES (84, 8, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201905183730_50400/0.jpg');
INSERT INTO `goods_desc_img` VALUES (85, 9, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184932_51894.jpg');
INSERT INTO `goods_desc_img` VALUES (86, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184705_12697/0.jpg');
INSERT INTO `goods_desc_img` VALUES (87, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184705_69963/0.jpg');
INSERT INTO `goods_desc_img` VALUES (88, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184706_12743/0.jpg');
INSERT INTO `goods_desc_img` VALUES (89, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184707_13567/0.jpg');
INSERT INTO `goods_desc_img` VALUES (90, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184707_87527/0.jpg');
INSERT INTO `goods_desc_img` VALUES (91, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184708_11788/0.jpg');
INSERT INTO `goods_desc_img` VALUES (92, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184709_75798/0.jpg');
INSERT INTO `goods_desc_img` VALUES (93, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184709_40073/0.jpg');
INSERT INTO `goods_desc_img` VALUES (94, 9, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906184710_12863/0.jpg');
INSERT INTO `goods_desc_img` VALUES (95, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173128_81885.jpg');
INSERT INTO `goods_desc_img` VALUES (96, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173129_81084.jpg');
INSERT INTO `goods_desc_img` VALUES (97, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173129_68353.jpg');
INSERT INTO `goods_desc_img` VALUES (98, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173129_25315.jpg');
INSERT INTO `goods_desc_img` VALUES (99, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173129_15390.jpg');
INSERT INTO `goods_desc_img` VALUES (100, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173130_81857.jpg');
INSERT INTO `goods_desc_img` VALUES (101, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173130_73641.jpg');
INSERT INTO `goods_desc_img` VALUES (102, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173130_69136.jpg');
INSERT INTO `goods_desc_img` VALUES (103, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173130_49484.jpg');
INSERT INTO `goods_desc_img` VALUES (104, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173130_24301.jpg');
INSERT INTO `goods_desc_img` VALUES (105, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173131_48765.jpg');
INSERT INTO `goods_desc_img` VALUES (106, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173131_17007.jpg');
INSERT INTO `goods_desc_img` VALUES (107, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173131_48765.jpg');
INSERT INTO `goods_desc_img` VALUES (108, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173131_87641.jpg');
INSERT INTO `goods_desc_img` VALUES (109, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173132_61638.jpg');
INSERT INTO `goods_desc_img` VALUES (110, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173132_61638.jpg');
INSERT INTO `goods_desc_img` VALUES (111, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173132_16874.jpg');
INSERT INTO `goods_desc_img` VALUES (112, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173132_18803.jpg');
INSERT INTO `goods_desc_img` VALUES (113, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173132_26800.jpg');
INSERT INTO `goods_desc_img` VALUES (114, 10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173133_17113.jpg');
INSERT INTO `goods_desc_img` VALUES (115, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144648_14014/0.jpg');
INSERT INTO `goods_desc_img` VALUES (116, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144648_20693/0.jpg');
INSERT INTO `goods_desc_img` VALUES (117, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144648_64415/0.jpg');
INSERT INTO `goods_desc_img` VALUES (118, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144649_43450/0.jpg');
INSERT INTO `goods_desc_img` VALUES (119, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144650_38984/0.jpg');
INSERT INTO `goods_desc_img` VALUES (120, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144650_41860/0.jpg');
INSERT INTO `goods_desc_img` VALUES (121, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144651_17896/0.jpg');
INSERT INTO `goods_desc_img` VALUES (122, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144652_26787/0.jpg');
INSERT INTO `goods_desc_img` VALUES (123, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144651_11146/0.jpg');
INSERT INTO `goods_desc_img` VALUES (124, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144653_10739/0.jpg');
INSERT INTO `goods_desc_img` VALUES (125, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144653_12573/0.jpg');
INSERT INTO `goods_desc_img` VALUES (126, 11, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201906144653_79017/0.jpg');
INSERT INTO `goods_desc_img` VALUES (127, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151209_28487/0.jpg');
INSERT INTO `goods_desc_img` VALUES (128, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151209_95890/0.jpg');
INSERT INTO `goods_desc_img` VALUES (129, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151209_99872/0.jpg');
INSERT INTO `goods_desc_img` VALUES (130, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151210_12551/0.jpg');
INSERT INTO `goods_desc_img` VALUES (131, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151210_13486/0.jpg');
INSERT INTO `goods_desc_img` VALUES (132, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151210_67831/0.jpg');
INSERT INTO `goods_desc_img` VALUES (133, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151214_11820/0.jpg');
INSERT INTO `goods_desc_img` VALUES (134, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151214_83048/0.jpg');
INSERT INTO `goods_desc_img` VALUES (135, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151214_13403/0.jpg');
INSERT INTO `goods_desc_img` VALUES (136, 12, 'https://shp.qpic.cn/mall/0/goods_lol_201809151215_71590/0.jpg');
INSERT INTO `goods_desc_img` VALUES (137, 12, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201904174247_11312/0.jpg');
INSERT INTO `goods_desc_img` VALUES (138, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005815_43504/0.jpg');
INSERT INTO `goods_desc_img` VALUES (139, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005814_46596/0.jpg');
INSERT INTO `goods_desc_img` VALUES (140, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005815_12679/0.jpg');
INSERT INTO `goods_desc_img` VALUES (141, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005816_98269/0.jpg');
INSERT INTO `goods_desc_img` VALUES (142, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005816_30656/0.jpg');
INSERT INTO `goods_desc_img` VALUES (143, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005817_24739/0.jpg');
INSERT INTO `goods_desc_img` VALUES (144, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005818_99941/0.jpg');
INSERT INTO `goods_desc_img` VALUES (145, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005819_25882/0.jpg');
INSERT INTO `goods_desc_img` VALUES (146, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005820_95186/0.jpg');
INSERT INTO `goods_desc_img` VALUES (147, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005821_60766/0.jpg');
INSERT INTO `goods_desc_img` VALUES (148, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005822_95784/0.jpg');
INSERT INTO `goods_desc_img` VALUES (149, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005822_12924/0.jpg');
INSERT INTO `goods_desc_img` VALUES (150, 13, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201909005823_13345/0.jpg');
INSERT INTO `goods_desc_img` VALUES (151, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171423_94719/0.jpg');
INSERT INTO `goods_desc_img` VALUES (152, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171423_10235/0.jpg');
INSERT INTO `goods_desc_img` VALUES (153, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171425_18245/0.jpg');
INSERT INTO `goods_desc_img` VALUES (154, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171426_13711/0.jpg');
INSERT INTO `goods_desc_img` VALUES (155, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171426_98272/0.jpg');
INSERT INTO `goods_desc_img` VALUES (156, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171426_13867/0.jpg');
INSERT INTO `goods_desc_img` VALUES (157, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171427_12968/0.jpg');
INSERT INTO `goods_desc_img` VALUES (158, 14, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201910171428_27517/0.jpg');
INSERT INTO `goods_desc_img` VALUES (159, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111357_56897/0.jpg');
INSERT INTO `goods_desc_img` VALUES (160, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111357_26500/0.jpg');
INSERT INTO `goods_desc_img` VALUES (161, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111357_13392/0.jpg');
INSERT INTO `goods_desc_img` VALUES (162, 15, '');
INSERT INTO `goods_desc_img` VALUES (163, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111359_81322/0.jpg');
INSERT INTO `goods_desc_img` VALUES (164, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111359_45339/0.jpg');
INSERT INTO `goods_desc_img` VALUES (165, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111400_25406/0.jpg');
INSERT INTO `goods_desc_img` VALUES (166, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111401_10261/0.jpg');
INSERT INTO `goods_desc_img` VALUES (167, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111401_70508/0.jpg');
INSERT INTO `goods_desc_img` VALUES (168, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111401_35360/0.jpg');
INSERT INTO `goods_desc_img` VALUES (169, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111402_49491/0.jpg');
INSERT INTO `goods_desc_img` VALUES (170, 15, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201911111402_11608/0.jpg');
INSERT INTO `goods_desc_img` VALUES (171, 16, 'http://127.0.0.1:9999/api/v2/uploads/157452782535120191115132924_356996.jpg');
INSERT INTO `goods_desc_img` VALUES (172, 17, 'http://127.0.0.1:9999/api/v2/uploads/1574528082863default.png');
INSERT INTO `goods_desc_img` VALUES (173, 18, 'http://127.0.0.1:9999/api/v2/uploads/15745937955810.jpg');
INSERT INTO `goods_desc_img` VALUES (174, 18, 'http://127.0.0.1:9999/api/v2/uploads/157459379786420190611144021_93857.jpg');
INSERT INTO `goods_desc_img` VALUES (175, 19, 'http://127.0.0.1:9999/api/v2/uploads/157459383680520190611144021_93857.jpg');
INSERT INTO `goods_desc_img` VALUES (176, 19, 'http://127.0.0.1:9999/api/v2/uploads/15745938427450.jpg');

-- ----------------------------
-- Table structure for goods_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE `goods_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品图片id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片路径',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_img
-- ----------------------------
INSERT INTO `goods_img` VALUES (1, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg', 1);
INSERT INTO `goods_img` VALUES (2, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg', 2);
INSERT INTO `goods_img` VALUES (3, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg', 3);
INSERT INTO `goods_img` VALUES (4, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115036_73099.jpg', 4);
INSERT INTO `goods_img` VALUES (5, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104744_99712.jpg', 5);
INSERT INTO `goods_img` VALUES (6, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg', 6);
INSERT INTO `goods_img` VALUES (7, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg', 7);
INSERT INTO `goods_img` VALUES (8, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180821105814_49552.jpg', 8);
INSERT INTO `goods_img` VALUES (9, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184912_19449.jpg', 9);
INSERT INTO `goods_img` VALUES (10, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201803/20180323171330_76311.jpg', 10);
INSERT INTO `goods_img` VALUES (11, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg', 11);
INSERT INTO `goods_img` VALUES (12, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201809/20180930151620_86720.jpg', 12);
INSERT INTO `goods_img` VALUES (13, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114541_88452.jpg', 1);
INSERT INTO `goods_img` VALUES (14, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114543_96291.jpg', 1);
INSERT INTO `goods_img` VALUES (15, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114546_36447.jpg', 1);
INSERT INTO `goods_img` VALUES (16, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123609_73321.jpg', 2);
INSERT INTO `goods_img` VALUES (17, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123611_92336.jpg', 2);
INSERT INTO `goods_img` VALUES (18, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141340_82245.jpg', 3);
INSERT INTO `goods_img` VALUES (19, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141314_69443.jpg', 3);
INSERT INTO `goods_img` VALUES (20, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141322_62153.jpg', 3);
INSERT INTO `goods_img` VALUES (21, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141325_54528.jpg', 3);
INSERT INTO `goods_img` VALUES (22, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115101_29614.jpg', 4);
INSERT INTO `goods_img` VALUES (23, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115052_24232.jpg', 4);
INSERT INTO `goods_img` VALUES (25, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115147_61278.jpg', 4);
INSERT INTO `goods_img` VALUES (26, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104745_74026.jpg', 5);
INSERT INTO `goods_img` VALUES (27, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104747_30065.jpg', 5);
INSERT INTO `goods_img` VALUES (28, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104750_22755.jpg', 5);
INSERT INTO `goods_img` VALUES (29, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180810142842_50190.jpg', 6);
INSERT INTO `goods_img` VALUES (30, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180810142846_87885.jpg', 6);
INSERT INTO `goods_img` VALUES (31, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180807160456_98388.jpg', 6);
INSERT INTO `goods_img` VALUES (32, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180807160459_16332.jpg', 6);
INSERT INTO `goods_img` VALUES (33, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190509225949_50533.jpg', 7);
INSERT INTO `goods_img` VALUES (34, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153957_68543.jpg', 7);
INSERT INTO `goods_img` VALUES (35, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507154000_62138.jpg', 7);
INSERT INTO `goods_img` VALUES (36, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190509230001_35773.jpg', 7);
INSERT INTO `goods_img` VALUES (37, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180821105850_48074.jpg', 8);
INSERT INTO `goods_img` VALUES (38, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180821105853_95714.jpg', 8);
INSERT INTO `goods_img` VALUES (39, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180821105857_20435.jpg', 8);
INSERT INTO `goods_img` VALUES (40, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201808/20180821105900_38085.jpg', 8);
INSERT INTO `goods_img` VALUES (41, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184923_14422.jpg', 9);
INSERT INTO `goods_img` VALUES (42, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184925_10842.jpg', 9);
INSERT INTO `goods_img` VALUES (43, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184929_10577.jpg', 9);
INSERT INTO `goods_img` VALUES (44, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184932_51894.jpg', 9);
INSERT INTO `goods_img` VALUES (45, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201706/20170627181936_67566.jpg', 10);
INSERT INTO `goods_img` VALUES (46, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201706/20170627181939_82886.jpg', 10);
INSERT INTO `goods_img` VALUES (47, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201706/20170627181956_33073.jpg', 10);
INSERT INTO `goods_img` VALUES (48, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201707/20170713173133_17113.jpg', 11);
INSERT INTO `goods_img` VALUES (49, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154647_95468.jpg', 11);
INSERT INTO `goods_img` VALUES (50, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154647_95468.jpg', 11);
INSERT INTO `goods_img` VALUES (51, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154653_84950.jpg', 11);
INSERT INTO `goods_img` VALUES (52, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201809/20180930151623_89278.jpg', 12);
INSERT INTO `goods_img` VALUES (53, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201809/20180930151625_32873.jpg', 12);
INSERT INTO `goods_img` VALUES (54, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201809/20180930151627_67685.jpg', 12);
INSERT INTO `goods_img` VALUES (55, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201809/20180930151630_86505.jpg', 12);
INSERT INTO `goods_img` VALUES (56, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005357_33805.jpg', 13);
INSERT INTO `goods_img` VALUES (57, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005400_71425.jpg', 13);
INSERT INTO `goods_img` VALUES (58, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005403_21263.jpg', 13);
INSERT INTO `goods_img` VALUES (59, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005408_29807.jpg', 13);
INSERT INTO `goods_img` VALUES (60, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005410_96730.jpg', 13);
INSERT INTO `goods_img` VALUES (62, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201910/20191021171548_43053.jpg', 14);
INSERT INTO `goods_img` VALUES (63, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201910/20191021171552_66494.jpg', 14);
INSERT INTO `goods_img` VALUES (64, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201910/20191021171555_60210.jpg', 14);
INSERT INTO `goods_img` VALUES (65, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115625_25563.jpg', 15);
INSERT INTO `goods_img` VALUES (66, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115626_45079.jpg', 15);
INSERT INTO `goods_img` VALUES (67, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115628_78539.jpg', 15);
INSERT INTO `goods_img` VALUES (68, 'http://127.0.0.1:9999/api/v2/uploads/157452781994720191115190059_531554.jpg', 16);
INSERT INTO `goods_img` VALUES (69, 'http://127.0.0.1:9999/api/v2/uploads/157452807956620190523091735200547.jpg', 17);
INSERT INTO `goods_img` VALUES (70, 'http://127.0.0.1:9999/api/v2/uploads/157459379207720190611144036_78167.jpg', 18);
INSERT INTO `goods_img` VALUES (71, 'http://127.0.0.1:9999/api/v2/uploads/157459383413020190611144036_78167.jpg', 19);
INSERT INTO `goods_img` VALUES (72, 'http://127.0.0.1:9999/api/v2/uploads/15745938478980.jpg', 19);

-- ----------------------------
-- Table structure for goods_orders
-- ----------------------------
DROP TABLE IF EXISTS `goods_orders`;
CREATE TABLE `goods_orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id，关联user表中的id',
  `status` tinyint(255) NOT NULL COMMENT '订单的状态 0：未支付 1：已支付，代发货  2：已发货，待收货 3：已收货，待评价 4：订单完成 5：异常关闭',
  `addtime` int(11) NOT NULL COMMENT '下订单的时间戳',
  `order_sn` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单号',
  `shr_phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人电话',
  `shr_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人姓名',
  `shr_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省',
  `shr_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '市',
  `shr_area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `shr_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `shr_zipcode` int(10) NULL DEFAULT NULL COMMENT '邮政编码',
  `total_price` decimal(10, 2) NOT NULL COMMENT '总价',
  `post_order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发货的快递单号',
  `property` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '\r\n商品属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 179 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_orders
-- ----------------------------
INSERT INTO `goods_orders` VALUES (86, 1, 1, 1574472411, '15744724110745681', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 104.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (87, 1, 0, 1574491827, '15744918271618095920', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 111.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (88, 1, 0, 1574491859, '15744918592054232729', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 89.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (89, 1, 0, 1574492792, '15744927926357139604', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 314.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (90, 1, 0, 1574492795, '15744927956558388500', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 314.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (91, 1, 0, 1574493624, '15744936248428135301', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 358.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (92, 1, 1, 1574495522, '15744955222802848731', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 83.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (93, 1, 0, 1574497601, '15744976014332499242', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (94, 1, 0, 1574497680, '15744976803577942113', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (95, 1, 0, 1574497698, '15744976980996093012', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (96, 1, 0, 1574497711, '15744977117581673148', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (97, 1, 0, 1574497730, '1574497730278232258', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (98, 1, 0, 1574497733, '15744977334927174593', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (99, 1, 0, 1574497749, '15744977495478971695', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (100, 1, 1, 1574497784, '15744977842905305727', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (101, 1, 1, 1574497799, '15744977991855445549', '13271366779', '张三', '江苏省', '宿迁市', '沭阳县', '常州西路，经贸学院...', 223800, 93.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (102, 15, 0, 1574527114, '1574527114431588595', '13372366779', 'liuliu', '北京市', '北京市', '东城区', '333hao', 666946, 22.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (103, 15, 0, 1574527147, '15745271479846432046', '13372366779', 'liuliu', '北京市', '北京市', '东城区', '333hao', 666946, 22.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (104, 6, 0, 1574527379, '15745273797706679604', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 155.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (105, 6, 1, 1574527388, '15745273888778017021', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 155.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (106, 6, 4, 1574592955, '1574592955567951464', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 466.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (107, 6, 4, 1574593096, '15745930965577432095', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 42.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (108, 6, 1, 1574594388, '15745943880547873657', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 358.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (109, 6, 0, 1574594702, '1574594702742530672', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 200.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (110, 6, 0, 1574594975, '15745949753998466410', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (111, 6, 0, 1574595596, '15745955960564227283', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (112, 6, 0, 1574596015, '15745960158206735638', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (113, 6, 0, 1574596653, '15745966535718518273', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (114, 6, 0, 1574596764, '15745967641701348215', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (115, 6, 0, 1574596811, '15745968116844641293', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (116, 6, 0, 1574596849, '15745968491505381526', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (117, 6, 1, 1574596863, '15745968632041474388', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (118, 6, 0, 1574596866, '1574596866002317567', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (119, 6, 0, 1574596871, '15745968717193397422', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (120, 6, 0, 1574596874, '15745968748897059472', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (121, 6, 0, 1574596877, '1574596877663395878', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (122, 6, 0, 1574596880, '15745968807601325773', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (123, 6, 0, 1574596914, '15745969140084507160', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (124, 6, 0, 1574596918, '15745969189225590519', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (125, 6, 0, 1574596938, '15745969386363652112', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (126, 6, 0, 1574596958, '15745969588063937190', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (127, 6, 0, 1574597009, '15745970097103050951', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (128, 6, 0, 1574597055, '15745970551315863705', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (129, 6, 0, 1574597059, '15745970599391374185', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (130, 6, 0, 1574597062, '1574597062470210643', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (131, 6, 0, 1574597067, '15745970674182357058', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (132, 6, 0, 1574597070, '15745970701024011011', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (133, 6, 0, 1574597073, '15745970737597517163', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (134, 6, 0, 1574597078, '15745970782926018958', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (135, 6, 0, 1574597081, '15745970818736118696', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (136, 6, 0, 1574597085, '15745970850393068326', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (137, 6, 0, 1574597092, '15745970924652902721', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (138, 6, 0, 1574597137, '1574597137092205562', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (139, 6, 0, 1574597310, '15745973102418498854', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (140, 6, 0, 1574597313, '1574597313065621992', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (141, 6, 0, 1574597316, '15745973163339229685', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (142, 6, 0, 1574597318, '15745973188908961840', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (143, 6, 0, 1574598230, '15745982301616992252', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (144, 6, 0, 1574598257, '15745982574725715598', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (145, 6, 0, 1574598396, '15745983968218965052', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (146, 6, 0, 1574598406, '15745984061575261903', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (147, 6, 0, 1574598512, '15745985123573291991', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (148, 6, 0, 1574598516, '15745985169637161968', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (149, 6, 0, 1574598522, '15745985221352581820', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (150, 6, 1, 1574598611, '1574598611472323894', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (151, 6, 0, 1574598683, '15745986830399572745', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (152, 6, 1, 1574598896, '15745988966014796088', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (153, 6, 0, 1574599178, '15745991783877607849', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (154, 6, 0, 1574599235, '15745992354184818165', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (155, 6, 0, 1574599280, '15745992808676644797', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (156, 6, 0, 1574599350, '15745993506927418211', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (157, 6, 0, 1574599408, '15745994086919134562', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (158, 6, 0, 1574599585, '15745995854051635757', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (159, 6, 0, 1574599612, '15745996126989825761', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (160, 6, 0, 1574599634, '15745996340344347012', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (161, 6, 0, 1574599682, '15745996829475579081', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (162, 6, 0, 1574599695, '15745996956033293274', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (163, 6, 0, 1574599749, '15745997490032267802', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 233.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (164, 6, 0, 1574599800, '15745998009851442281', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (165, 6, 1, 1574599857, '15745998577137307671', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (166, 6, 1, 1574599900, '15745999007603940554', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (167, 6, 1, 1574599967, '15745999674061391132', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (168, 6, 1, 1574600004, '15746000045234112230', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (169, 6, 1, 1574600021, '15746000216025411451', '13352527796', '刘诗诗', '北京市', '北京市', '东城区', '188hao', 333666, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (170, 7, 0, 1574600292, '15746002926754883865', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (171, 7, 0, 1574600339, '15746003396448371391', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (172, 7, 0, 1574600365, '15746003657096515167', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (173, 7, 4, 1574600421, '15746004218523658446', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 12.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (174, 7, 4, 1574600582, '15746005820229205910', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 59.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (175, 7, 4, 1574600731, '15746007312616742509', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 42.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (176, 7, 0, 1574600767, '15746007675655304330', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 42.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (177, 7, 0, 1574600862, '15746008625971078232', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 34.00, NULL, '常规');
INSERT INTO `goods_orders` VALUES (178, 7, 4, 1574600899, '15746008991874208619', '15893580580', '十三幺', '北京市', '北京市', '东城区', '北京大街188号', 411303, 34.00, NULL, '常规');

-- ----------------------------
-- Table structure for goods_property
-- ----------------------------
DROP TABLE IF EXISTS `goods_property`;
CREATE TABLE `goods_property`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `property_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `goods_id` int(10) NOT NULL COMMENT '对应商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods_specific
-- ----------------------------
DROP TABLE IF EXISTS `goods_specific`;
CREATE TABLE `goods_specific`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品具体属性值的id',
  `goods_id` int(11) NOT NULL COMMENT '商品的id',
  `attribute_ids` int(255) NOT NULL COMMENT '单个商品多个属性值的id',
  `inventory` tinyint(255) NOT NULL COMMENT '库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_comment
-- ----------------------------
DROP TABLE IF EXISTS `order_comment`;
CREATE TABLE `order_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评价id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评价内容',
  `grade` int(1) NOT NULL COMMENT '评分',
  `time` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论时间',
  `user_id` int(255) NULL DEFAULT NULL COMMENT '与user表关联',
  `goods_id` int(255) NULL DEFAULT NULL COMMENT '与商品表关联',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_comment
-- ----------------------------
INSERT INTO `order_comment` VALUES (1, '还行', 4, '2019-10-11', 3, 1);
INSERT INTO `order_comment` VALUES (2, '不错', 5, '2019-11-11', 3, 2);
INSERT INTO `order_comment` VALUES (3, '还可以吧', 5, '2019-11-20', 1, 3);
INSERT INTO `order_comment` VALUES (4, '好看！', 5, '1574593046', 6, 7);
INSERT INTO `order_comment` VALUES (5, '还不赖', 5, '1574593139', 6, 5);
INSERT INTO `order_comment` VALUES (6, '商品还可以啊！', 5, '1574600485', 7, 6);
INSERT INTO `order_comment` VALUES (7, '小鸡哔哔！', 5, '1574600624', 7, 2);
INSERT INTO `order_comment` VALUES (8, '解释！', 5, '1574600827', 7, 5);
INSERT INTO `order_comment` VALUES (9, '软绵！', 5, '1574600930', 7, 3);

-- ----------------------------
-- Table structure for shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_goods`;
CREATE TABLE `shop_order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id，关联goods里面的id',
  `buy_count` int(11) NOT NULL COMMENT '购买数量 最多200',
  `order_id` int(11) NOT NULL COMMENT '订单id 关联goods_orders表中的id',
  `price` decimal(10, 2) NOT NULL COMMENT '购买的成交价格',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `goods_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_order_goods
-- ----------------------------
INSERT INTO `shop_order_goods` VALUES (1, 2, 4, 13, 510.00, 'K/DA 阿卡丽 中型雕塑', 'xxx');
INSERT INTO `shop_order_goods` VALUES (2, 2, 4, 14, 510.00, 'K/DA 阿卡丽 中型雕塑', 'xxx');
INSERT INTO `shop_order_goods` VALUES (3, 2, 4, 15, 510.00, 'K/DA 阿卡丽 中型雕塑', 'xxx');
INSERT INTO `shop_order_goods` VALUES (4, 2, 4, 18, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (5, 2, 4, 19, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (6, 2, 4, 20, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (7, 2, 4, 21, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (8, 2, 4, 22, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (9, 2, 4, 23, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (10, 2, 4, 24, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (11, 2, 4, 25, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (12, 2, 4, 26, 510.00, 'K/DA 阿卡丽 中型雕塑', '000');
INSERT INTO `shop_order_goods` VALUES (13, 2, 4, 27, 510.00, 'K/DA 阿卡丽 中型雕塑', '[object Object]');
INSERT INTO `shop_order_goods` VALUES (14, 2, 4, 48, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (15, 1, 200, 49, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (16, 2, 4, 49, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (17, 1, 1, 50, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (18, 2, 4, 50, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (19, 2, 1, 51, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (20, 3, 4, 51, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (21, 2, 1, 52, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (22, 3, 4, 52, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (23, 2, 1, 53, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (24, 3, 4, 53, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (25, 2, 1, 54, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (26, 3, 4, 54, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (27, 2, 1, 55, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (28, 3, 4, 55, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (29, 2, 1, 56, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (30, 3, 4, 56, 880.00, '2019 全球总决赛冠军纪念套装', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133333_664525.jpg');
INSERT INTO `shop_order_goods` VALUES (31, 2, 1, 57, 510.00, 'K/DA 阿卡丽 中型雕塑', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133301_327985.jpg');
INSERT INTO `shop_order_goods` VALUES (32, 1, 3, 58, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (33, 1, 3, 59, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (34, 1, 3, 60, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (35, 1, 3, 61, 0.01, '2019全球总决赛冠军皮肤周边短信预约', 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115133236_886570.jpg');
INSERT INTO `shop_order_goods` VALUES (36, 3, 3, 64, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (37, 3, 3, 65, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (38, 3, 3, 66, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (39, 11, 3, 67, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (40, 11, 3, 68, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (41, 1, 3, 69, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (42, 1, 2, 77, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (43, 3, 1, 77, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (44, 1, 2, 78, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (45, 3, 1, 78, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (46, 1, 2, 79, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (47, 3, 1, 79, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (48, 1, 2, 80, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (49, 3, 1, 80, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (50, 1, 2, 81, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (51, 3, 1, 81, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (52, 1, 2, 82, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (53, 3, 1, 82, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (54, 9, 1, 83, 23.00, '灌篮高手球衣', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184912_19449.jpg');
INSERT INTO `shop_order_goods` VALUES (55, 11, 1, 84, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (56, 9, 1, 84, 23.00, '灌篮高手球衣', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190604184912_19449.jpg');
INSERT INTO `shop_order_goods` VALUES (57, 2, 1, 85, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (58, 4, 1, 86, 89.00, '限量T恤', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115036_73099.jpg');
INSERT INTO `shop_order_goods` VALUES (59, 11, 1, 86, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (60, 4, 1, 87, 89.00, '限量T恤', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115036_73099.jpg');
INSERT INTO `shop_order_goods` VALUES (61, 10, 1, 87, 22.00, '海报', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201803/20180323171330_76311.jpg');
INSERT INTO `shop_order_goods` VALUES (62, 4, 1, 88, 89.00, '限量T恤', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110115036_73099.jpg');
INSERT INTO `shop_order_goods` VALUES (63, 1, 1, 89, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (64, 11, 1, 89, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (65, 1, 1, 90, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (66, 11, 1, 90, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (67, 2, 1, 91, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (68, 1, 1, 91, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (69, 3, 2, 92, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (70, 11, 1, 92, 15.00, '手机壳周边', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201906/20190611154639_76818.jpg');
INSERT INTO `shop_order_goods` VALUES (71, 2, 1, 93, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (72, 3, 1, 93, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (73, 2, 1, 94, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (74, 3, 1, 94, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (75, 2, 1, 95, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (76, 3, 1, 95, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (77, 2, 1, 96, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (78, 3, 1, 96, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (79, 2, 1, 97, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (80, 3, 1, 97, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (81, 2, 1, 98, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (82, 3, 1, 98, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (83, 2, 1, 99, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (84, 3, 1, 99, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (85, 2, 1, 100, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (86, 3, 1, 100, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (87, 2, 1, 101, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (88, 3, 1, 101, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (89, 10, 1, 102, 22.00, '海报', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201803/20180323171330_76311.jpg');
INSERT INTO `shop_order_goods` VALUES (90, 10, 1, 103, 22.00, '海报', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201803/20180323171330_76311.jpg');
INSERT INTO `shop_order_goods` VALUES (91, 13, 1, 104, 155.00, 'LPL冰箱贴(环保版)', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005357_33805.jpg');
INSERT INTO `shop_order_goods` VALUES (92, 13, 1, 105, 155.00, 'LPL冰箱贴(环保版)', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201909/20190928005357_33805.jpg');
INSERT INTO `shop_order_goods` VALUES (93, 7, 2, 106, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (94, 5, 1, 107, 42.00, '水壶', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104744_99712.jpg');
INSERT INTO `shop_order_goods` VALUES (95, 1, 1, 108, 299.00, '2019手办纪念套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110114539_25606.jpg');
INSERT INTO `shop_order_goods` VALUES (96, 2, 1, 108, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (97, 14, 1, 109, 200.00, '万圣节迷你手办套装', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201910/20191021171548_43053.jpg');
INSERT INTO `shop_order_goods` VALUES (98, 6, 1, 110, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (99, 6, 1, 111, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (100, 7, 1, 112, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (101, 7, 1, 113, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (102, 7, 1, 114, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (103, 7, 1, 115, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (104, 7, 1, 116, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (105, 7, 1, 117, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (106, 7, 1, 118, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (107, 7, 1, 119, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (108, 7, 1, 120, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (109, 7, 1, 121, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (110, 7, 1, 122, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (111, 7, 1, 123, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (112, 7, 1, 124, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (113, 7, 1, 125, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (114, 7, 1, 126, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (115, 7, 1, 127, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (116, 7, 1, 128, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (117, 7, 1, 129, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (118, 7, 1, 130, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (119, 7, 1, 131, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (120, 7, 1, 132, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (121, 7, 1, 133, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (122, 7, 1, 134, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (123, 7, 1, 135, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (124, 7, 1, 136, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (125, 7, 1, 137, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (126, 7, 1, 138, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (127, 7, 1, 139, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (128, 7, 1, 140, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (129, 7, 1, 141, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (130, 7, 1, 142, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (131, 7, 1, 143, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (132, 7, 1, 144, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (133, 7, 1, 145, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (134, 7, 1, 146, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (135, 7, 1, 147, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (136, 7, 1, 148, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (137, 7, 1, 149, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (138, 6, 1, 150, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (139, 6, 1, 151, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (140, 6, 1, 152, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (141, 6, 1, 153, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (142, 6, 1, 154, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (143, 6, 1, 155, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (144, 6, 1, 156, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (145, 6, 1, 157, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (146, 6, 1, 158, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (147, 6, 1, 159, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (148, 6, 1, 160, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (149, 7, 1, 161, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (150, 7, 1, 162, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (151, 7, 1, 163, 233.00, 'True Damage项链', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201905/20190507153943_70509.jpg');
INSERT INTO `shop_order_goods` VALUES (152, 6, 1, 164, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (153, 6, 1, 165, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (154, 6, 1, 166, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (155, 6, 1, 167, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (156, 6, 1, 168, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (157, 6, 1, 169, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (158, 6, 1, 170, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (159, 6, 1, 171, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (160, 6, 1, 172, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (161, 6, 1, 173, 12.00, '幸运珠', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201908/20190809105005_67420.jpg');
INSERT INTO `shop_order_goods` VALUES (162, 2, 1, 174, 59.00, '海报全套', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191110123608_26936.jpg');
INSERT INTO `shop_order_goods` VALUES (163, 5, 1, 175, 42.00, '水壶', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104744_99712.jpg');
INSERT INTO `shop_order_goods` VALUES (164, 5, 1, 176, 42.00, '水壶', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201911/20191115104744_99712.jpg');
INSERT INTO `shop_order_goods` VALUES (165, 3, 1, 177, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');
INSERT INTO `shop_order_goods` VALUES (166, 3, 1, 178, 34.00, '毛绒抱枕', 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201812/20181218141334_17925.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `sex` int(1) NULL DEFAULT NULL COMMENT '用户性别(0：男，1：女)',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `money` decimal(10, 0) NULL DEFAULT 5000 COMMENT '用户余额',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `paypsd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '51ae39e6785d68ca4a16cf75676989e6', 0, '18707055159', '2323@qq.com', 307, 'https://shp.qpic.cn/mall/0/goods_lolriotmall_201901174926_12762/0.jpg', '123456');
INSERT INTO `user` VALUES (2, 'admin1', '51ae39e6785d68ca4a16cf75676989e6', NULL, '13336696363', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'fat1', '51ae39e6785d68ca4a16cf75676989e6', NULL, '19823222222', '12345@qq.com', NULL, 'https://game.gtimg.cn/images/zb/x5/uploadImg/goods/201805/20180529202451_50972.jpg', NULL);
INSERT INTO `user` VALUES (4, 'admin', '51ae39e6785d68ca4a16cf75676989e6', NULL, '13336696361', '13336696316@qq.com', NULL, 'https://game.gtimg.cn/images/zb/comm/jcp.png', NULL);
INSERT INTO `user` VALUES (5, 'liumou', '51ae39e6785d68ca4a16cf75676989e6', NULL, '13323327166', NULL, NULL, 'https://game.gtimg.cn/images/zb/comm/jcp.png', NULL);
INSERT INTO `user` VALUES (6, '刘诗诗', '51ae39e6785d68ca4a16cf75676989e6', NULL, '13838777522', '791010421@qq.com', 3383, 'https://game.gtimg.cn/images/zb/comm/jcp.png', '526666');
INSERT INTO `user` VALUES (7, '小鸡哔哔', '51ae39e6785d68ca4a16cf75676989e6', 0, '15893580580', '15893580580@qq.com', 4777, 'https://game.gtimg.cn/images/zb/comm/jcp.png', '123456');

SET FOREIGN_KEY_CHECKS = 1;
