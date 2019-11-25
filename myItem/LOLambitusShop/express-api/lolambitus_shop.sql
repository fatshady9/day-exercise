/*
 Navicat Premium Data Transfer

 Source Server         : liyong
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 127.0.0.1:3306
 Source Schema         : lolambitus_shop

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 22/11/2019 16:15:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL COMMENT '地址id',
  `user_id` int(11) NOT NULL COMMENT '对应的用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收件人',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市',
  `county` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `tel` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号码',
  `postalCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邮编',
  `addressDetail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `isDefault` tinyint(3) NOT NULL COMMENT '是否默认 0 不默认 1 默认',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员名称',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (4, 'admin', '123456');
INSERT INTO `admin` VALUES (5, 'LiYong', '51ae39e6785d68ca4a16cf75676989e6');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `goods_id` int(10) UNSIGNED NOT NULL COMMENT '商品id',
  `ischk` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否选中 0未选中 1选中',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '购物车的用户id',
  `standards` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购买的商品规格',
  `count` int(11) NOT NULL COMMENT '购买的商品数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名',
  `property` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品拥有的属性',
  `price` decimal(10, 2) NOT NULL COMMENT '商品价格',
  `time` int(10) NOT NULL COMMENT '商品上架时间',
  `classify_id` int(10) NOT NULL COMMENT '商品分类id',
  `total_sale` int(10) NOT NULL COMMENT '商品销量',
  `inventory` int(10) NOT NULL COMMENT '商品库存',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '万圣节峡谷传说胸针套装', '', 108.00, 1574062106, 1, 0, 200);
INSERT INTO `goods` VALUES (2, '万圣节峡谷传说胸针套装', '中', 108.00, 1574062387, 1, 0, 200);
INSERT INTO `goods` VALUES (4, '万圣节峡谷传说胸针套装', '中', 108.00, 1574062436, 1, 0, 200);
INSERT INTO `goods` VALUES (5, '提莫法棒', '白板装备', 3.00, 1574085502, 2, 0, 2);
INSERT INTO `goods` VALUES (7, '无极之道', '白金装备', 3.00, 1574085670, 3, 0, 2);
INSERT INTO `goods` VALUES (11, '齐天大圣', '大闹天宫', 188.00, 1574154426, 2, 0, 1888);
INSERT INTO `goods` VALUES (12, '全球总决赛纪念套装', '黑色', 333.00, 1574167565, 5, 0, 200);
INSERT INTO `goods` VALUES (13, '风之哀伤', 'eqweq', 444.00, 1574167855, 3, 0, 44);
INSERT INTO `goods` VALUES (14, '剑圣', 'wwrw', 312.00, 1574168703, 2, 0, 222);
INSERT INTO `goods` VALUES (15, '狂龙', 'fsdf', 343.00, 1574168794, 3, 0, 42);
INSERT INTO `goods` VALUES (16, '刘硕沙雕', 'qwee', 1.00, 1574171141, 2, 0, 200);
INSERT INTO `goods` VALUES (17, '刘硕智障', 'eq', 333.00, 1574171266, 2, 0, 32);
INSERT INTO `goods` VALUES (18, '你什么意思', 'dsda', 322.00, 1574171327, 2, 0, 32);
INSERT INTO `goods` VALUES (19, 'qwe', 'eqe', 33.00, 1574171366, 3, 0, 3);
INSERT INTO `goods` VALUES (20, 'adadad', '423', 33.00, 1574171611, 3, 0, 3);
INSERT INTO `goods` VALUES (21, 'ad', 'ad', 3.00, 1574172096, 2, 0, 2);
INSERT INTO `goods` VALUES (22, '1', '1', 1.00, 1574172407, 2, 0, 1);
INSERT INTO `goods` VALUES (23, '4', '4', 4.00, 1574172489, 2, 0, 4);
INSERT INTO `goods` VALUES (24, '4', '5', 5.00, 1574172536, 3, 0, 5);
INSERT INTO `goods` VALUES (25, 'E', '4', 4.00, 1574172666, 3, 0, 4);
INSERT INTO `goods` VALUES (26, '4', '4', 4.00, 1574172752, 2, 0, 4);
INSERT INTO `goods` VALUES (27, '4', '4', 4.00, 1574172834, 2, 0, 4);
INSERT INTO `goods` VALUES (28, '4', '4', 4.00, 1574172864, 4, 0, 4);
INSERT INTO `goods` VALUES (29, '4', '4', 4.00, 1574173073, 2, 0, 4);
INSERT INTO `goods` VALUES (30, '4', '4', 4.00, 1574173120, 2, 0, 4);
INSERT INTO `goods` VALUES (31, '4', '4', 4.00, 1574173160, 2, 0, 4);
INSERT INTO `goods` VALUES (32, '的委屈恶气', 'eeq', 33.00, 1574173310, 3, 0, 33);
INSERT INTO `goods` VALUES (33, 'weqwe', 'eq', 33.00, 1574173367, 3, 0, 33);
INSERT INTO `goods` VALUES (34, '答案', 'da', 33.00, 1574210381, 3, 0, 33);
INSERT INTO `goods` VALUES (35, 'FPX队服', '白色', 2222.00, 1574211012, 5, 0, 200);
INSERT INTO `goods` VALUES (36, '阿斯达对', 'eqwe', 33.00, 1574211325, 2, 0, 22);
INSERT INTO `goods` VALUES (37, 'dad', 'eqe', 33.00, 1574211804, 2, 0, 22);
INSERT INTO `goods` VALUES (38, 'adsad', 'dwe', 33.00, 1574211950, 3, 0, 3);
INSERT INTO `goods` VALUES (39, 'eqwe', 'da', 33.00, 1574212009, 2, 0, 3);
INSERT INTO `goods` VALUES (40, 'ada', '32', 33.00, 1574212198, 2, 0, 3);
INSERT INTO `goods` VALUES (41, '0', '-', 9.00, 1574212339, 2, 0, 9);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attribute
-- ----------------------------
INSERT INTO `goods_attribute` VALUES (1, 1, 1, '白色');
INSERT INTO `goods_attribute` VALUES (2, 1, 2, 'M');

-- ----------------------------
-- Table structure for goods_classify
-- ----------------------------
DROP TABLE IF EXISTS `goods_classify`;
CREATE TABLE `goods_classify`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_classify
-- ----------------------------
INSERT INTO `goods_classify` VALUES (1, '雕塑手办');
INSERT INTO `goods_classify` VALUES (2, '毛绒玩偶');
INSERT INTO `goods_classify` VALUES (3, '男女服饰');
INSERT INTO `goods_classify` VALUES (4, '海报艺术');
INSERT INTO `goods_classify` VALUES (5, 'LPL专区');

-- ----------------------------
-- Table structure for goods_desc_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_desc_img`;
CREATE TABLE `goods_desc_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品描述图片id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品描述图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_desc_img
-- ----------------------------
INSERT INTO `goods_desc_img` VALUES (13, 40, 'http://127.0.0.1:9999/api/v2/uploads/v2-3d1b8c32b2c682a9bb8f91f67e65470c_hd.jpg');
INSERT INTO `goods_desc_img` VALUES (14, 40, 'http://127.0.0.1:9999/api/v2/uploads/v2-3a6a41fb9dec4c74d8f1697d55c9df99_hd.jpg');
INSERT INTO `goods_desc_img` VALUES (15, 41, 'http://127.0.0.1:9999/api/v2/uploads/v2-3a6a41fb9dec4c74d8f1697d55c9df99_hd.jpg');

-- ----------------------------
-- Table structure for goods_img
-- ----------------------------
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE `goods_img`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品图片id',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片路径',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_img
-- ----------------------------
INSERT INTO `goods_img` VALUES (18, 'http://127.0.0.1:9999/api/v2/uploads/hai.jpg', 40);
INSERT INTO `goods_img` VALUES (19, 'http://127.0.0.1:9999/api/v2/uploads/v2-03b2ab767ed97cae340b60533bc6cb34_hd.jpg', 41);

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
  `shr_zipcode` int(10) NOT NULL COMMENT '邮政编码',
  `total_price` decimal(10, 2) NOT NULL COMMENT '总价',
  `post_order_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发货的快递单号',
  `property` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '\r\n商品属性',
  `checkbox` tinyint(255) NULL DEFAULT NULL COMMENT '复选框选中的状态 0为不选中 1为选中',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_orders
-- ----------------------------
INSERT INTO `goods_orders` VALUES (1, 1, 0, 1234567890, '12345678900987654321', '12345678900', '朱碧莹', '菜单', '额企鹅', '大地', '我的诸国', 433433, 4242.00, '321422242434', '大大', NULL);
INSERT INTO `goods_orders` VALUES (2, 2, 1, 1574171141, '22227777777238475867', '17775617596', '李勇', '湖南', '衡阳', '金门', '解放路南湖校区B栋333', 431241, 1368.00, '232142342321', '颜色', NULL);
INSERT INTO `goods_orders` VALUES (3, 2, 1, 1574171141, '22227777777238475867', '17775617596', '薛佳昊', '山西', '太原', '后端', '解放路南湖校区B栋333', 431241, 1368.00, '232142342321', '颜色', NULL);
INSERT INTO `goods_orders` VALUES (5, 1, 4, 1574171141, '22227777777238475867', '17775617596', '薛佳昊', '山西', '太原', '后端', '解放路南湖校区B栋333', 431241, 1368.00, '232142342321', '颜色', NULL);
INSERT INTO `goods_orders` VALUES (6, 1, 2, 1574171141, '22227777777238475867', '17775617596', '薛佳昊', '山西', '太原', '后端', '解放路南湖校区B栋333', 431241, 1368.00, '232142342321', '颜色', NULL);

-- ----------------------------
-- Table structure for goods_property
-- ----------------------------
DROP TABLE IF EXISTS `goods_property`;
CREATE TABLE `goods_property`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `property_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性名称',
  `goods_id` int(10) NOT NULL COMMENT '对应商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_property
-- ----------------------------
INSERT INTO `goods_property` VALUES (1, '颜色', 1);
INSERT INTO `goods_property` VALUES (2, '尺码', 1);

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
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_goods`;
CREATE TABLE `shop_order_goods`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品id，关联goods里面的id',
  `buy_count` tinyint(255) NOT NULL COMMENT '购买数量 最多200',
  `order_id` int(11) NOT NULL COMMENT '订单id 关联goods_orders表中的id',
  `price` decimal(10, 2) NOT NULL COMMENT '购买的成交价格',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品名称',
  `goods_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_order_goods
-- ----------------------------
INSERT INTO `shop_order_goods` VALUES (1, 2, 22, 1, 233.00, '狂龙', 'http://127.0.0.1:9999/api/v2/uploads/v2-3d1b8c32b2c682a9bb8f91f67e65470c_hd.jpg');
INSERT INTO `shop_order_goods` VALUES (2, 3, 23, 1, 434.00, '的方式发送', 'http://127.0.0.1:9999/api/v2/uploads/v2-3a6a41fb9dec4c74d8f1697d55c9df99_hd.jpg');
INSERT INTO `shop_order_goods` VALUES (3, 4, 22, 2, 313.00, '万圣节峡谷传说胸针套装', 'http://127.0.0.1:9999/api/v2/uploads/hai.jpg');

-- ----------------------------
-- Table structure for shop_swipe_images
-- ----------------------------
DROP TABLE IF EXISTS `shop_swipe_images`;
CREATE TABLE `shop_swipe_images`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '轮播图图片id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '轮播图图片路径',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '点击图片跳转的路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_swipe_images
-- ----------------------------
INSERT INTO `shop_swipe_images` VALUES (1, 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115132924_356996.jpg', 'www.baidu.com');
INSERT INTO `shop_swipe_images` VALUES (2, 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191115190059_531554.jpg', 'https://imgcps.jd.com/ling/100008348542/5omL5py66LSt5a6e5oOg/5aSH6LSn6LaF5YC8/p-5bd8253082acdd181d02f9f7/8a4e2b21/590x470.jpg');
INSERT INTO `shop_swipe_images` VALUES (3, 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191114182749_239207.jpg', 'https://img14.360buyimg.com/pop/s590x470_jfs/t1/63300/35/14867/87070/5dc141dfEc1f20b4d/596fdf5c79db1499.jpg.webp');
INSERT INTO `shop_swipe_images` VALUES (4, 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191106100045_579949.jpg', 'https://img10.360buyimg.com/da/s590x470_jfs/t1/48209/36/15100/78559/5dbf9cc3Ee250f2da/da56a844473bedde.jpg.webp');
INSERT INTO `shop_swipe_images` VALUES (5, 'https://game.gtimg.cn/images/daojushop/zb/ad/201911/20191106102513_902144.jpg', 'https://img30.360buyimg.com/pop/s590x470_jfs/t1/80566/4/13176/86618/5da96c44Ed4028be7/e66342866c6befe6.jpg.webp');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户密码',
  `sex` int(1) NULL DEFAULT NULL COMMENT '用户性别(0：男，1：女)',
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户手机号',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `money` decimal(10, 0) UNSIGNED NULL DEFAULT 1000 COMMENT '用户余额',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '大大', '1223331', 1, '12345678908', '31313ee', 333, 'fsfsfsfsfsf');
INSERT INTO `user` VALUES (2, '刘硕', '123456', 0, '17775637658', 'eqe333', 4423, 'fsfffsf313');
INSERT INTO `user` VALUES (3, 'admin', '51ae39e6785d68ca4a16cf75676989e6', NULL, '13336696363', NULL, NULL, 'https://game.gtimg.cn/images/zb/comm/jcp.png');

SET FOREIGN_KEY_CHECKS = 1;
