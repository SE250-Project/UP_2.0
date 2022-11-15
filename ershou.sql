/*
 Navicat Premium Data Transfer

 Source Server         : wang
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : ershou

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 17/05/2022 22:54:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ylrc_comment
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_comment`;
CREATE TABLE `ylrc_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `reply_to` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKd01gnchhuj06oumqxrikccc3r`(`goods_id`) USING BTREE,
  INDEX `FKswirics8hhydki5ff0emtmbii`(`student_id`) USING BTREE,
  CONSTRAINT `FKd01gnchhuj06oumqxrikccc3r` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKswirics8hhydki5ff0emtmbii` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_comment
-- ----------------------------
INSERT INTO `ylrc_comment` VALUES (18, '2022-03-20 15:12:37', '2022-03-20 15:12:37', '这个刚好是我需要的 学长可以卖给我吗？ 给你留言了。', NULL, 39, 11);
INSERT INTO `ylrc_comment` VALUES (19, '2022-03-20 15:23:13', '2022-03-20 15:23:13', '我想要这个电脑', NULL, 36, 11);
INSERT INTO `ylrc_comment` VALUES (22, '2022-04-24 10:03:19', '2022-04-24 10:03:19', '地方', NULL, 38, 13);

-- ----------------------------
-- Table structure for ylrc_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_database_bak`;
CREATE TABLE `ylrc_database_bak`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `filename` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `filepath` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_database_bak
-- ----------------------------
INSERT INTO `ylrc_database_bak` VALUES (1, '2022-03-22 00:59:58', '2022-03-22 00:59:58', 'db_boot_base_20220322005958.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (2, '2022-03-23 01:00:00', '2022-03-23 01:00:00', 'db_boot_base_20220323010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (3, '2022-03-24 01:00:00', '2022-03-24 01:00:00', 'db_boot_base_20220324010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (4, '2022-04-22 13:33:22', '2022-04-22 13:33:22', 'db_boot_base_20220422133321.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (5, '2022-04-23 01:00:00', '2022-04-23 01:00:00', 'db_boot_base_20220423010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (6, '2022-04-24 07:53:10', '2022-04-24 07:53:10', 'db_boot_base_20220424075309.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (7, '2022-04-24 14:45:21', '2022-04-24 14:45:21', 'db_boot_base_20220424144520.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (8, '2022-04-25 01:00:00', '2022-04-25 01:00:00', 'db_boot_base_20220425010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (9, '2022-04-26 01:00:00', '2022-04-26 01:00:00', 'db_boot_base_20220426010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (10, '2022-04-27 09:47:32', '2022-04-27 09:47:32', 'db_boot_base_20220427094732.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');
INSERT INTO `ylrc_database_bak` VALUES (11, '2022-05-09 01:00:00', '2022-05-09 01:00:00', 'db_boot_base_20220509010000.sql', 'C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup');

-- ----------------------------
-- Table structure for ylrc_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_friend_link`;
CREATE TABLE `ylrc_friend_link`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_friend_link
-- ----------------------------
INSERT INTO `ylrc_friend_link` VALUES (12, '2022-03-20 21:17:52', '2022-03-20 21:17:52', '百度一下', 0, 'www.baidu.com');

-- ----------------------------
-- Table structure for ylrc_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods`;
CREATE TABLE `ylrc_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `buy_price` float NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `photo` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `recommend` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `status` int(11) NOT NULL,
  `goods_category_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKjtyl6pmb9j4aj64sm54xi1hbi`(`goods_category_id`) USING BTREE,
  INDEX `FKf68a0a9u8u8hqckg0ycnjarv6`(`student_id`) USING BTREE,
  CONSTRAINT `FKf68a0a9u8u8hqckg0ycnjarv6` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKjtyl6pmb9j4aj64sm54xi1hbi` FOREIGN KEY (`goods_category_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_goods
-- ----------------------------
INSERT INTO `ylrc_goods` VALUES (36, '2022-03-20 15:05:32', '2022-05-07 09:15:21', 12888, '自己大学用的笔记本电脑， 陪伴了我四年， 专卖给有需要的学弟学妹。', 0, '笔记本电脑', '20220309/1646824511899.jpg', 0, 3000, 1, 9, 2, 14);
INSERT INTO `ylrc_goods` VALUES (38, '2022-03-20 15:07:46', '2022-05-06 23:06:35', 5999, 'iPhone手机，用了三年了，目前还是很给力流畅。', 0, 'iPhone手机', '20220309/1646824532384.jpg', 1, 2100, 1, 4, 2, 15);
INSERT INTO `ylrc_goods` VALUES (39, '2022-03-20 15:08:43', '2022-05-12 19:00:26', 100, '考研资料考研资料考研资料有需要的速度来看一下哈', 0, '考研资料', '20220309/1646824542159.jpg', 1, 9, 1, 44, 2, 23);
INSERT INTO `ylrc_goods` VALUES (42, '2022-05-06 22:59:27', '2022-05-12 19:04:13', 45, '一个基本没有使用的滑板，色彩鲜艳，没有损坏', 0, '滑板', '20220506/1651849336178.jpeg', 0, 77, 1, 55, 2, 19);

-- ----------------------------
-- Table structure for ylrc_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_goods_category`;
CREATE TABLE `ylrc_goods_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKos35mkmw4k5dvi4fi2govg2pa`(`parent_id`) USING BTREE,
  CONSTRAINT `FKos35mkmw4k5dvi4fi2govg2pa` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_goods_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_goods_category
-- ----------------------------
INSERT INTO `ylrc_goods_category` VALUES (1, '2022-03-20 20:20:05', '2022-03-20 21:35:15', '20200402/1585834512163.png', '手机', 0, NULL);
INSERT INTO `ylrc_goods_category` VALUES (4, '2022-03-20 20:26:45', '2022-03-20 21:35:54', '20200402/1585834542235.png', '智能机', 1, 1);
INSERT INTO `ylrc_goods_category` VALUES (5, '2022-03-20 21:13:04', '2022-03-20 21:36:24', '20200402/1585834572308.png', '手机配件', 2, 1);
INSERT INTO `ylrc_goods_category` VALUES (6, '2022-03-20 21:37:05', '2022-03-20 21:37:05', '20200402/1585834607924.png', '滑盖机', 3, 1);
INSERT INTO `ylrc_goods_category` VALUES (7, '2022-03-20 21:37:23', '2022-03-20 21:37:23', '20200402/1585834633735.png', '翻盖机', 4, 1);
INSERT INTO `ylrc_goods_category` VALUES (8, '2022-03-20 21:37:50', '2022-03-20 21:37:50', '20200402/1585834662625.png', '电脑', 5, NULL);
INSERT INTO `ylrc_goods_category` VALUES (9, '2022-03-20 21:38:08', '2022-03-20 21:38:08', '20200402/1585834679788.png', '笔记本', 6, 8);
INSERT INTO `ylrc_goods_category` VALUES (10, '2022-03-20 21:38:26', '2022-03-20 21:38:26', '20200402/1585834694895.png', '台式机', 7, 8);
INSERT INTO `ylrc_goods_category` VALUES (11, '2022-03-20 21:38:45', '2022-03-20 21:38:45', '20200402/1585834717184.png', '平板', 8, 8);
INSERT INTO `ylrc_goods_category` VALUES (15, '2022-03-20 18:46:54', '2022-03-20 19:07:07', '20200405/1586084764264.png', '影音娱乐', 9, NULL);
INSERT INTO `ylrc_goods_category` VALUES (16, '2022-03-20 19:06:56', '2022-03-20 19:07:20', '20200405/1586084805468.png', '耳机', 10, 15);
INSERT INTO `ylrc_goods_category` VALUES (17, '2022-03-20 19:07:45', '2022-03-20 19:07:45', '20200405/1586084854001.png', 'MP3/MP4', 11, 15);
INSERT INTO `ylrc_goods_category` VALUES (18, '2022-03-20 19:08:15', '2022-03-20 19:08:15', '20200405/1586084878657.png', '游戏机', 12, 15);
INSERT INTO `ylrc_goods_category` VALUES (19, '2022-03-20 19:08:44', '2022-03-20 19:08:44', '20200405/1586084911580.png', '键盘', 13, 15);
INSERT INTO `ylrc_goods_category` VALUES (20, '2022-03-20 19:09:04', '2022-03-20 19:09:04', '20200405/1586084936056.png', '鼠标', 14, 15);
INSERT INTO `ylrc_goods_category` VALUES (21, '2022-03-20 19:10:14', '2022-03-20 19:10:14', '20200405/1586085005899.png', '数码配件', 15, NULL);
INSERT INTO `ylrc_goods_category` VALUES (22, '2022-03-20 19:10:45', '2022-03-20 19:10:45', '20200405/1586085024716.png', '移动硬盘', 16, 21);
INSERT INTO `ylrc_goods_category` VALUES (23, '2022-03-20 19:11:08', '2022-03-20 19:11:08', '20200405/1586085052292.png', '相机', 17, 21);
INSERT INTO `ylrc_goods_category` VALUES (24, '2022-03-20 19:11:25', '2022-03-20 19:11:25', '20200405/1586085077518.png', '显示器', 18, 21);
INSERT INTO `ylrc_goods_category` VALUES (25, '2022-03-20 19:11:50', '2022-03-20 19:11:50', '20200405/1586085102042.png', '运动健身', 19, NULL);
INSERT INTO `ylrc_goods_category` VALUES (26, '2022-03-20 19:12:13', '2022-03-20 19:12:13', '20200405/1586085124703.png', '篮球', 20, 25);
INSERT INTO `ylrc_goods_category` VALUES (27, '2022-03-20 19:12:34', '2022-03-20 19:12:34', '20200405/1586085152812.png', '足球', 21, 25);
INSERT INTO `ylrc_goods_category` VALUES (28, '2022-03-20 19:12:53', '2022-03-20 19:12:53', '20200405/1586085164372.png', '羽毛球', 22, 25);
INSERT INTO `ylrc_goods_category` VALUES (29, '2022-03-20 19:13:11', '2022-03-20 19:13:11', '20200405/1586085182130.png', '球拍', 23, 25);
INSERT INTO `ylrc_goods_category` VALUES (30, '2022-03-20 19:13:50', '2022-03-20 19:13:50', '20200405/1586085217886.png', '衣物鞋帽', 24, NULL);
INSERT INTO `ylrc_goods_category` VALUES (31, '2022-03-20 19:14:15', '2022-03-20 19:14:15', '20200405/1586085239138.png', '上衣', 25, 30);
INSERT INTO `ylrc_goods_category` VALUES (32, '2022-03-20 19:14:30', '2022-03-20 19:14:30', '20200405/1586085262037.png', '裤子', 26, 30);
INSERT INTO `ylrc_goods_category` VALUES (33, '2022-03-20 19:14:48', '2022-03-20 19:14:48', '20200405/1586085278533.png', '背包', 27, 30);
INSERT INTO `ylrc_goods_category` VALUES (34, '2022-03-20 19:15:12', '2022-03-20 19:15:12', '20200405/1586085302412.png', '雨伞', 28, 30);
INSERT INTO `ylrc_goods_category` VALUES (35, '2022-03-20 19:15:29', '2022-03-20 19:15:29', '20200405/1586085319791.png', '鞋子', 29, 30);
INSERT INTO `ylrc_goods_category` VALUES (36, '2022-03-20 19:15:55', '2022-03-20 19:15:55', '20200405/1586085349204.png', '配饰', 30, 30);
INSERT INTO `ylrc_goods_category` VALUES (37, '2022-03-20 19:16:38', '2022-03-20 19:16:38', '20200405/1586085388834.png', '生活娱乐', 31, NULL);
INSERT INTO `ylrc_goods_category` VALUES (38, '2022-03-20 19:17:05', '2022-03-20 19:17:05', '20200405/1586085407122.png', '乐器', 32, 37);
INSERT INTO `ylrc_goods_category` VALUES (39, '2022-03-20 19:17:22', '2022-03-20 19:17:22', '20200405/1586085433434.png', '虚拟账号', 33, 37);
INSERT INTO `ylrc_goods_category` VALUES (40, '2022-03-20 19:17:39', '2022-03-20 19:17:39', '20200405/1586085449303.png', '会员卡', 34, 37);
INSERT INTO `ylrc_goods_category` VALUES (41, '2022-03-20 19:18:00', '2022-03-20 19:18:00', '20200405/1586085471766.png', '化妆品', 35, 37);
INSERT INTO `ylrc_goods_category` VALUES (42, '2022-03-20 19:18:31', '2022-03-20 19:18:31', '20200405/1586085499095.png', '图书教材', 36, NULL);
INSERT INTO `ylrc_goods_category` VALUES (43, '2022-03-20 19:18:49', '2022-03-20 19:18:49', '20200405/1586085520436.png', '教材', 37, 42);
INSERT INTO `ylrc_goods_category` VALUES (44, '2022-03-20 19:19:05', '2022-03-20 19:19:05', '20200405/1586085534371.png', '考研材料', 38, 42);
INSERT INTO `ylrc_goods_category` VALUES (45, '2022-03-20 19:19:24', '2022-03-20 19:19:24', '20200405/1586085556673.png', '课外书', 39, 42);
INSERT INTO `ylrc_goods_category` VALUES (46, '2022-03-20 19:19:54', '2022-03-20 19:19:54', '20200405/1586085585909.png', '交通出行', 40, NULL);
INSERT INTO `ylrc_goods_category` VALUES (47, '2022-03-20 19:20:18', '2022-03-20 19:20:18', '20200405/1586085604095.png', '自行车', 41, 46);
INSERT INTO `ylrc_goods_category` VALUES (48, '2022-03-20 19:20:35', '2022-03-20 19:20:35', '20200405/1586085624951.png', '电动车', 42, 46);
INSERT INTO `ylrc_goods_category` VALUES (49, '2022-03-20 19:21:01', '2022-03-20 19:21:01', '20200405/1586085652162.png', '交通卡', 43, 46);
INSERT INTO `ylrc_goods_category` VALUES (50, '2022-03-20 19:21:29', '2022-03-20 19:21:29', '20200405/1586085681117.png', '个人技能', 44, NULL);
INSERT INTO `ylrc_goods_category` VALUES (51, '2022-03-20 19:21:47', '2022-03-20 19:21:47', '20200405/1586085696883.png', '摄影', 45, 50);
INSERT INTO `ylrc_goods_category` VALUES (52, '2022-03-20 19:22:05', '2022-03-20 19:22:05', '20200405/1586085714915.png', '绘画', 46, 50);
INSERT INTO `ylrc_goods_category` VALUES (53, '2022-03-20 19:22:29', '2022-03-20 19:22:29', '20200405/1586085739125.png', '其他', 46, NULL);
INSERT INTO `ylrc_goods_category` VALUES (54, '2022-03-20 21:19:25', '2022-03-20 21:19:40', '20200411/1586611155253.png', '手表', 47, 21);
INSERT INTO `ylrc_goods_category` VALUES (55, '2022-03-20 22:31:58', '2022-03-20 22:32:08', '20200412/1586701902327.png', '其他小类', 48, 53);

-- ----------------------------
-- Table structure for ylrc_menu
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_menu`;
CREATE TABLE `ylrc_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `is_bitton` bit(1) NOT NULL,
  `is_show` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKsbtnjocfrq29e8taxdwo21gic`(`parent_id`) USING BTREE,
  CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_menu
-- ----------------------------
INSERT INTO `ylrc_menu` VALUES (2, '2022-03-20 14:26:03', '2022-03-20 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (3, '2022-03-20 16:58:55', '2022-03-20 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (5, '2022-03-20 17:04:44', '2022-03-20 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (7, '2022-03-20 17:07:43', '2022-03-20 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (8, '2022-03-20 18:28:48', '2022-03-20 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (9, '2022-03-20 18:30:00', '2022-03-20 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (10, '2022-03-20 12:12:00', '2022-03-20 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (11, '2022-03-20 12:12:36', '2022-03-20 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (12, '2022-03-20 12:13:19', '2022-03-20 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (13, '2022-03-20 12:14:52', '2022-03-20 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (14, '2022-03-20 12:15:22', '2022-03-20 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (15, '2022-03-20 17:18:14', '2022-03-20 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (16, '2022-03-20 17:19:01', '2022-03-20 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (19, '2022-03-20 11:24:36', '2022-03-20 11:26:00', '上传图片', '/admin/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `ylrc_menu` VALUES (20, '2022-03-20 14:09:35', '2022-03-20 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (21, '2022-03-20 14:11:39', '2022-03-20 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (22, '2022-03-20 14:12:57', '2022-03-20 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (23, '2022-03-20 14:46:40', '2022-03-20 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (24, '2022-03-20 14:48:07', '2022-03-20 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (25, '2022-03-20 14:49:03', '2022-03-20 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (26, '2022-03-20 19:36:20', '2022-03-20 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (27, '2022-03-20 20:35:09', '2022-03-20 20:35:09', '物品管理', '/admin/goods_category/list', 'mdi-dialpad', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (28, '2022-03-20 20:35:46', '2022-03-20 22:28:09', '分类管理', '/admin/goods_category/list', 'mdi-apps', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (29, '2022-03-20 20:36:27', '2022-03-20 22:30:39', '物品管理', '/admin/goods/list', 'mdi-cart', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (30, '2022-03-20 20:40:48', '2022-03-20 22:28:34', '添加', '/admin/goods_category/add', 'mdi-battery-positive', 0, 28, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (31, '2022-03-20 20:41:33', '2022-03-20 22:30:02', '编辑', 'edit(\'/admin/goods_category/edit\')', 'mdi-border-color', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (32, '2022-03-20 20:42:15', '2022-03-20 22:30:21', '删除', 'del(\'/admin/goods_category/delete\')', 'mdi-close', 0, 28, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (33, '2022-03-20 18:52:12', '2022-03-20 18:52:12', '上架', 'up(\'/admin/goods/up_down\')', 'mdi-arrow-up-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (34, '2022-03-20 18:52:55', '2022-03-20 18:52:55', '下架', 'down(\'/admin/goods/up_down\')', 'mdi-arrow-down-bold-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (35, '2022-03-20 18:54:10', '2022-03-20 19:17:48', '删除', 'del(\'/admin/goods/delete\')', 'mdi-close-box', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (36, '2022-03-20 19:06:49', '2022-03-20 19:06:49', '推荐', 'recommend(\'/admin/goods/recommend\')', 'mdi-thumb-up', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (37, '2022-03-20 19:07:45', '2022-03-20 19:07:45', '取消推荐', 'unrecommend(\'/admin/goods/recommend\')', 'mdi-thumb-down', 0, 29, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (38, '2022-03-20 19:32:16', '2022-03-20 19:32:16', '求购物品', '/admin/wanted_goods/list', 'mdi-ticket', 0, 27, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (39, '2022-03-20 19:32:55', '2022-03-20 19:59:53', '删除', 'del(\'/admin/wanted_goods/delete\')', 'mdi-close-box', 0, 38, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (40, '2022-03-20 20:02:04', '2022-03-20 20:02:04', '学生管理', '/admin/student/list', 'mdi-account-multiple', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (41, '2022-03-20 20:02:38', '2022-03-20 20:02:38', '学生列表', '/admin/student/list', 'mdi-account-multiple', 0, 40, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (42, '2022-03-20 20:06:28', '2022-03-20 20:06:28', '冻结', 'freeze(\'/admin/student/update_status\')', 'mdi-account-settings-variant', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (43, '2022-03-20 20:06:59', '2022-03-20 21:45:31', '激活', 'openStudent(\'/admin/student/update_status\')', 'mdi-account-key', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (44, '2022-03-20 20:07:33', '2022-03-20 20:07:33', '删除', 'del(\'/admin/student/delete\')', 'mdi-account-remove', 0, 41, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (45, '2022-03-20 21:52:57', '2022-03-20 21:52:57', '评论管理', '/admin/comment/list', 'mdi-comment-account', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (46, '2022-03-20 21:53:39', '2022-03-20 21:53:39', '评论列表', '/admin/comment/list', 'mdi-comment-multiple-outline', 0, 45, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (47, '2022-03-20 21:54:35', '2022-03-20 21:54:35', '删除', 'del(\'/admin/comment/delete\')', 'mdi-message-bulleted-off', 0, 46, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (48, '2022-03-20 19:28:48', '2022-03-20 19:28:48', '举报管理', '/admin/report/list', 'mdi-alert', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (49, '2022-03-20 19:30:31', '2022-03-20 19:30:31', '举报列表', '/admin/report/list', 'mdi-view-headline', 0, 48, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (50, '2022-03-20 19:31:09', '2022-03-20 19:31:09', '删除', 'del(\'/admin/report/delete\')', 'mdi-close-box', 0, 49, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (51, '2022-03-20 19:46:08', '2022-03-20 19:46:08', '新闻公告', '/admin/news/list', 'mdi-onenote', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (52, '2022-03-20 19:46:39', '2022-03-20 19:46:39', '公告列表', '/admin/news/list', 'mdi-book-open', 0, 51, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (53, '2022-03-20 19:48:01', '2022-03-20 19:48:01', '添加', '/admin/news/add', 'mdi-plus', 0, 52, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (54, '2022-03-20 19:48:46', '2022-03-20 19:48:46', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (55, '2022-03-20 19:49:37', '2022-03-20 19:49:37', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', 0, 52, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (56, '2022-03-20 14:25:58', '2022-03-20 14:25:58', '网站设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (57, '2022-03-20 14:27:31', '2022-03-20 14:27:31', '友情链接', '/admin/friend_link/list', 'mdi-vector-line', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (58, '2022-03-20 14:28:36', '2022-03-20 14:28:36', '添加', '/admin/friend_link/add', 'mdi-plus', 0, 57, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (59, '2022-03-20 14:29:17', '2022-03-20 15:38:53', '编辑', 'edit(\'/admin/friend_link/edit\')', 'mdi-border-color', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (60, '2022-03-20 14:29:45', '2022-03-20 14:29:45', '删除', 'del(\'/admin/friend_link/delete\')', 'mdi-close-box', 0, 57, b'1', b'1');
INSERT INTO `ylrc_menu` VALUES (61, '2022-03-20 16:26:45', '2022-03-20 16:26:45', '站点设置', '/admin/site_setting/setting', 'mdi-wrench', 0, 56, b'0', b'1');
INSERT INTO `ylrc_menu` VALUES (62, '2022-03-20 16:28:25', '2022-03-20 16:28:25', '提交修改', '/admin/site_setting/save_setting', 'mdi-marker-check', 0, 61, b'1', b'0');

-- ----------------------------
-- Table structure for ylrc_news
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_news`;
CREATE TABLE `ylrc_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(10024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_news
-- ----------------------------
INSERT INTO `ylrc_news` VALUES (2, '2022-03-20 21:29:49', '2022-05-06 23:25:14', '1.禁止和限制发布物品管理规则\r\n2.重复铺货商品管理规则\r\n3.支付方式不符商品管理规则\r\n4.商品价格、邮费不符商品管理规则\r\n5.信用炒作商品管理规则', 0, '校园二手市场发布商品规则', 11);
INSERT INTO `ylrc_news` VALUES (3, '2022-03-20 21:30:22', '2022-05-06 23:25:17', '注册时请填写详细的注册信息，学号为必填项。', 1, '校园二手市场账号注册规则', 6);

-- ----------------------------
-- Table structure for ylrc_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_operater_log`;
CREATE TABLE `ylrc_operater_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 593 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_operater_log
-- ----------------------------
INSERT INTO `ylrc_operater_log` VALUES (543, '2022-03-22 00:59:58', '2022-03-22 00:59:58', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220322005958.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (544, '2022-03-22 15:09:20', '2022-03-22 15:09:20', '用户【admin】于【2022-03-22 15:09:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (545, '2022-03-22 20:24:22', '2022-03-22 20:24:22', '用户【admin】于【2022-03-22 20:24:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (546, '2022-03-23 01:00:00', '2022-03-23 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220323010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (547, '2022-03-24 01:00:00', '2022-03-24 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220324010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (548, '2022-03-30 20:15:53', '2022-03-30 20:15:53', '用户【admin】于【2022-03-30 20:15:52】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (549, '2022-03-30 20:19:22', '2022-03-30 20:19:22', '修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642756504.png, logo2=20200418/1587201663687.png, qrcode=20210223/1614075844201.png, allRights=java]', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (550, '2022-03-30 20:20:32', '2022-03-30 20:20:32', '用户【admin】于【2022-03-30 20:20:31】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (551, '2022-03-30 20:21:30', '2022-03-30 20:21:30', '修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642886572.jpeg, logo2=20200418/1587201663687.png, qrcode=20210223/1614075844201.png, allRights=java]', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (552, '2022-03-30 20:28:39', '2022-03-30 20:28:39', '用户【admin】于【2022-03-30 20:28:38】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (553, '2022-03-30 21:34:01', '2022-03-30 21:34:01', '用户【admin】于【2022-03-30 21:34:01】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (554, '2022-03-30 22:12:29', '2022-03-30 22:12:29', '用户【admin】于【2022-03-30 22:12:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (555, '2022-04-03 16:53:00', '2022-04-03 16:53:00', '用户【admin】于【2022-04-03 16:52:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (556, '2022-04-11 18:06:29', '2022-04-11 18:06:29', '用户【admin】于【2022-04-11 18:06:29】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (557, '2022-04-11 18:08:48', '2022-04-11 18:08:48', '用户【admin】于【2022-04-11 18:08:47】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (558, '2022-04-14 17:11:36', '2022-04-14 17:11:36', '用户【admin】于【2022-04-14 17:11:35】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (559, '2022-04-14 17:12:12', '2022-04-14 17:12:12', '添加用户，用户名：123456', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (560, '2022-04-14 17:12:28', '2022-04-14 17:12:28', '用户【123456】于【2022-04-14 17:12:28】登录系统！', '123456');
INSERT INTO `ylrc_operater_log` VALUES (561, '2022-04-14 17:13:10', '2022-04-14 17:13:10', '添加用户，用户ID：2', '123456');
INSERT INTO `ylrc_operater_log` VALUES (562, '2022-04-14 17:13:35', '2022-04-14 17:13:35', '用户【admin】于【2022-04-14 17:13:34】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (563, '2022-04-21 20:02:39', '2022-04-21 20:02:39', '用户【admin】于【2022-04-21 20:02:38】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (564, '2022-04-22 13:33:22', '2022-04-22 13:33:22', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220422133321.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (565, '2022-04-22 16:54:22', '2022-04-22 16:54:22', '用户【admin】于【2022-04-22 16:54:22】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (566, '2022-04-22 16:58:31', '2022-04-22 16:58:31', '用户【admin】于【2022-04-22 16:58:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (567, '2022-04-23 00:40:20', '2022-04-23 00:40:20', '用户【admin】于【2022-04-23 00:40:20】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (568, '2022-04-23 01:00:00', '2022-04-23 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220423010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (569, '2022-04-24 02:12:57', '2022-04-24 02:12:57', '用户【admin】于【2022-04-24 02:12:57】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (570, '2022-04-24 04:32:22', '2022-04-24 04:32:22', '用户【admin】于【2022-04-24 04:32:21】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (571, '2022-04-24 07:45:49', '2022-04-24 07:45:49', '用户【admin】于【2022-04-24 07:45:48】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (572, '2022-04-24 07:53:10', '2022-04-24 07:53:10', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220424075309.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (573, '2022-04-24 09:52:51', '2022-04-24 09:52:51', '用户【admin】于【2022-04-24 09:52:50】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (574, '2022-04-24 14:45:22', '2022-04-24 14:45:22', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220424144520.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (575, '2022-04-25 01:00:00', '2022-04-25 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220425010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (576, '2022-04-26 01:00:00', '2022-04-26 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220426010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (577, '2022-04-26 18:11:18', '2022-04-26 18:11:18', '用户【admin】于【2022-04-26 18:11:17】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (578, '2022-04-27 05:08:25', '2022-04-27 05:08:25', '用户【admin】于【2022-04-27 05:08:24】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (579, '2022-04-27 09:47:33', '2022-04-27 09:47:33', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220427094732.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (580, '2022-05-06 05:55:27', '2022-05-06 05:55:27', '用户【admin】于【2022-05-06 05:55:26】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (581, '2022-05-06 22:32:13', '2022-05-06 22:32:13', '用户【admin】于【2022-05-06 22:32:12】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (582, '2022-05-06 22:57:06', '2022-05-06 22:57:06', '修改网站设置:SiteSetting [siteName=校园二手市场, siteUrl=www.ershou.com, logo1=20220330/1648642886572.jpeg, logo2=20200418/1587201663687.png, qrcode=20220506/1651849023376.jpeg, allRights=java]', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (583, '2022-05-07 00:18:18', '2022-05-07 00:18:18', '用户【admin】于【2022-05-07 00:18:18】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (584, '2022-05-07 08:49:31', '2022-05-07 08:49:31', '用户【admin】于【2022-05-07 08:49:30】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (585, '2022-05-07 08:51:14', '2022-05-07 08:51:14', '用户【admin】于【2022-05-07 08:51:14】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (586, '2022-05-07 10:47:04', '2022-05-07 10:47:04', '用户【admin】于【2022-05-07 10:47:03】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (587, '2022-05-08 22:09:32', '2022-05-08 22:09:32', '用户【admin】于【2022-05-08 22:09:31】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (588, '2022-05-09 01:00:00', '2022-05-09 01:00:00', '数据库成功备份，备份文件信息：DatabaseBak [filename=db_boot_base_20220509010000.sql, filepath=C:\\Users\\wangwang\\Desktop\\毕业设计\\campus-market\\src\\main\\resources\\backup]', '未知(获取登录用户失败)');
INSERT INTO `ylrc_operater_log` VALUES (589, '2022-05-09 04:45:00', '2022-05-09 04:45:00', '用户【admin】于【2022-05-09 04:44:59】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (590, '2022-05-10 16:58:20', '2022-05-10 16:58:20', '用户【admin】于【2022-05-10 16:58:19】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (591, '2022-05-11 21:40:08', '2022-05-11 21:40:08', '用户【admin】于【2022-05-11 21:40:07】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (592, '2022-05-12 18:56:54', '2022-05-12 18:56:54', '用户【admin】于【2022-05-12 18:56:54】登录系统！', 'admin');
INSERT INTO `ylrc_operater_log` VALUES (593, '2022-05-12 19:07:18', '2022-05-12 19:07:18', '用户【admin】于【2022-05-12 19:07:18】登录系统！', 'admin');

-- ----------------------------
-- Table structure for ylrc_report_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_report_goods`;
CREATE TABLE `ylrc_report_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK6g0s4688rq2bnty1u1ev1rgly`(`goods_id`) USING BTREE,
  INDEX `FKmr7s3q3jpq824h69f5ip9gleq`(`student_id`) USING BTREE,
  CONSTRAINT `FK6g0s4688rq2bnty1u1ev1rgly` FOREIGN KEY (`goods_id`) REFERENCES `ylrc_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKmr7s3q3jpq824h69f5ip9gleq` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_report_goods
-- ----------------------------
INSERT INTO `ylrc_report_goods` VALUES (3, '2022-04-24 10:03:15', '2022-04-24 10:03:15', '是', 38, 13);
INSERT INTO `ylrc_report_goods` VALUES (4, '2022-05-12 19:00:32', '2022-05-12 19:00:32', '不太好', 39, 2);

-- ----------------------------
-- Table structure for ylrc_role
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role`;
CREATE TABLE `ylrc_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role
-- ----------------------------
INSERT INTO `ylrc_role` VALUES (1, '2022-03-20 13:16:38', '2022-03-20 16:28:37', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `ylrc_role` VALUES (2, '2022-03-20 13:18:57', '2022-03-20 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);

-- ----------------------------
-- Table structure for ylrc_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_role_authorities`;
CREATE TABLE `ylrc_role_authorities`  (
  `role_id` bigint(20) NOT NULL,
  `authorities_id` bigint(20) NOT NULL,
  INDEX `FKhj7ap1o1cjrl7enr9arf5f2qp`(`authorities_id`) USING BTREE,
  INDEX `FKg3xdaexmr0x1qx8omhvjtk46d`(`role_id`) USING BTREE,
  CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `ylrc_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_role_authorities
-- ----------------------------
INSERT INTO `ylrc_role_authorities` VALUES (2, 2);
INSERT INTO `ylrc_role_authorities` VALUES (2, 3);
INSERT INTO `ylrc_role_authorities` VALUES (2, 5);
INSERT INTO `ylrc_role_authorities` VALUES (2, 7);
INSERT INTO `ylrc_role_authorities` VALUES (2, 11);
INSERT INTO `ylrc_role_authorities` VALUES (2, 13);
INSERT INTO `ylrc_role_authorities` VALUES (2, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 2);
INSERT INTO `ylrc_role_authorities` VALUES (1, 3);
INSERT INTO `ylrc_role_authorities` VALUES (1, 5);
INSERT INTO `ylrc_role_authorities` VALUES (1, 8);
INSERT INTO `ylrc_role_authorities` VALUES (1, 9);
INSERT INTO `ylrc_role_authorities` VALUES (1, 7);
INSERT INTO `ylrc_role_authorities` VALUES (1, 10);
INSERT INTO `ylrc_role_authorities` VALUES (1, 11);
INSERT INTO `ylrc_role_authorities` VALUES (1, 12);
INSERT INTO `ylrc_role_authorities` VALUES (1, 13);
INSERT INTO `ylrc_role_authorities` VALUES (1, 14);
INSERT INTO `ylrc_role_authorities` VALUES (1, 15);
INSERT INTO `ylrc_role_authorities` VALUES (1, 16);
INSERT INTO `ylrc_role_authorities` VALUES (1, 19);
INSERT INTO `ylrc_role_authorities` VALUES (1, 20);
INSERT INTO `ylrc_role_authorities` VALUES (1, 21);
INSERT INTO `ylrc_role_authorities` VALUES (1, 22);
INSERT INTO `ylrc_role_authorities` VALUES (1, 23);
INSERT INTO `ylrc_role_authorities` VALUES (1, 24);
INSERT INTO `ylrc_role_authorities` VALUES (1, 25);
INSERT INTO `ylrc_role_authorities` VALUES (1, 26);
INSERT INTO `ylrc_role_authorities` VALUES (1, 27);
INSERT INTO `ylrc_role_authorities` VALUES (1, 28);
INSERT INTO `ylrc_role_authorities` VALUES (1, 30);
INSERT INTO `ylrc_role_authorities` VALUES (1, 31);
INSERT INTO `ylrc_role_authorities` VALUES (1, 32);
INSERT INTO `ylrc_role_authorities` VALUES (1, 29);
INSERT INTO `ylrc_role_authorities` VALUES (1, 33);
INSERT INTO `ylrc_role_authorities` VALUES (1, 34);
INSERT INTO `ylrc_role_authorities` VALUES (1, 35);
INSERT INTO `ylrc_role_authorities` VALUES (1, 36);
INSERT INTO `ylrc_role_authorities` VALUES (1, 37);
INSERT INTO `ylrc_role_authorities` VALUES (1, 38);
INSERT INTO `ylrc_role_authorities` VALUES (1, 39);
INSERT INTO `ylrc_role_authorities` VALUES (1, 40);
INSERT INTO `ylrc_role_authorities` VALUES (1, 41);
INSERT INTO `ylrc_role_authorities` VALUES (1, 42);
INSERT INTO `ylrc_role_authorities` VALUES (1, 43);
INSERT INTO `ylrc_role_authorities` VALUES (1, 44);
INSERT INTO `ylrc_role_authorities` VALUES (1, 45);
INSERT INTO `ylrc_role_authorities` VALUES (1, 46);
INSERT INTO `ylrc_role_authorities` VALUES (1, 47);
INSERT INTO `ylrc_role_authorities` VALUES (1, 48);
INSERT INTO `ylrc_role_authorities` VALUES (1, 49);
INSERT INTO `ylrc_role_authorities` VALUES (1, 50);
INSERT INTO `ylrc_role_authorities` VALUES (1, 51);
INSERT INTO `ylrc_role_authorities` VALUES (1, 52);
INSERT INTO `ylrc_role_authorities` VALUES (1, 53);
INSERT INTO `ylrc_role_authorities` VALUES (1, 54);
INSERT INTO `ylrc_role_authorities` VALUES (1, 55);
INSERT INTO `ylrc_role_authorities` VALUES (1, 56);
INSERT INTO `ylrc_role_authorities` VALUES (1, 57);
INSERT INTO `ylrc_role_authorities` VALUES (1, 58);
INSERT INTO `ylrc_role_authorities` VALUES (1, 59);
INSERT INTO `ylrc_role_authorities` VALUES (1, 60);
INSERT INTO `ylrc_role_authorities` VALUES (1, 61);
INSERT INTO `ylrc_role_authorities` VALUES (1, 62);

-- ----------------------------
-- Table structure for ylrc_site_setting
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_site_setting`;
CREATE TABLE `ylrc_site_setting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `all_rights` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_1` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logo_2` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qrcode` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_site_setting
-- ----------------------------
INSERT INTO `ylrc_site_setting` VALUES (1, '2022-03-20 17:02:17', '2022-05-06 22:57:06', 'java', '20220330/1648642886572.jpeg', '20200418/1587201663687.png', '20220506/1651849023376.jpeg', '校园二手市场', 'www.ershou.com');

-- ----------------------------
-- Table structure for ylrc_student
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_student`;
CREATE TABLE `ylrc_student`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `academy` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sn` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_5se32pxcytmbwgepjrjrdmvjr`(`sn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_student
-- ----------------------------
INSERT INTO `ylrc_student` VALUES (2, '2022-03-20 12:52:02', '2022-05-06 22:53:02', '计算机科学与技术学院', '2018级软件工程', '13656565656', '张三', '11221232132', '新乡学院', '10000', '20200406/1586162585279.jpg', 1, '123456');
INSERT INTO `ylrc_student` VALUES (11, '2022-03-20 22:43:42', '2022-03-20 15:09:39', '通信', '大三', '18989999999', '李四', '123123', '新乡学院', '10001', NULL, 1, '123456');
INSERT INTO `ylrc_student` VALUES (12, '2022-03-30 21:20:56', '2022-04-24 09:45:43', NULL, NULL, NULL, NULL, '123456789', NULL, '123456', NULL, 1, '123456789');
INSERT INTO `ylrc_student` VALUES (13, '2022-04-24 09:57:01', '2022-04-24 10:02:48', '', '', '123456', '', '123456789', '', '0101', NULL, 1, '123456');
INSERT INTO `ylrc_student` VALUES (14, '2022-04-24 10:14:07', '2022-04-24 10:14:07', NULL, NULL, NULL, NULL, '12156', NULL, '0102', NULL, 1, '123456');

-- ----------------------------
-- Table structure for ylrc_user
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_user`;
CREATE TABLE `ylrc_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_pic` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_btsosjytrl4hu7fnm1intcpo8`(`username`) USING BTREE,
  INDEX `FKg09b8o67eu61st68rv6nk8npj`(`role_id`) USING BTREE,
  CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `ylrc_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_user
-- ----------------------------
INSERT INTO `ylrc_user` VALUES (1, '2022-03-20 19:18:53', '2022-05-06 23:11:08', '1111111@qq.com', '20220506/1651849865030.jpeg', '18989899999', '123456', 1, 1, 'admin', 1);

-- ----------------------------
-- Table structure for ylrc_wanted_goods
-- ----------------------------
DROP TABLE IF EXISTS `ylrc_wanted_goods`;
CREATE TABLE `ylrc_wanted_goods`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sell_price` float NOT NULL,
  `trade_place` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view_number` int(11) NOT NULL,
  `student_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKqvrfd43yhp11er38hkfcxi103`(`student_id`) USING BTREE,
  CONSTRAINT `FKqvrfd43yhp11er38hkfcxi103` FOREIGN KEY (`student_id`) REFERENCES `ylrc_student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ylrc_wanted_goods
-- ----------------------------
INSERT INTO `ylrc_wanted_goods` VALUES (8, '2022-03-20 15:10:32', '2022-03-20 15:11:20', '想买学长学姐的考研资料自己明年考研用。有相关资料的学长加我qq或者电话我把，感谢了。', '考研资料', 100, '宿舍1号楼', 0, 11);
INSERT INTO `ylrc_wanted_goods` VALUES (9, '2022-03-30 21:23:41', '2022-03-30 21:23:41', '一个99新的苹果ipad，基本没有使用痕迹。', '平板电脑', 5000, '河南', 0, 12);
INSERT INTO `ylrc_wanted_goods` VALUES (10, '2022-03-30 21:28:19', '2022-03-30 21:28:19', '一个99新的苹果平板电脑，无使用痕迹。', '平板电脑', 5000, '河南', 0, 12);
INSERT INTO `ylrc_wanted_goods` VALUES (11, '2022-03-30 21:32:13', '2022-03-30 21:32:13', '一个99新的苹果平板电脑，几乎没有使用痕迹。', '平板电脑', 5000, '河南', 0, 12);
INSERT INTO `ylrc_wanted_goods` VALUES (14, '2022-05-12 19:00:20', '2022-05-12 19:00:20', '一个基本全新无使用的手机，国际大厂制造。', '手机', 1000, '新乡学院', 0, 2);

SET FOREIGN_KEY_CHECKS = 1;
