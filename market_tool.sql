/*
 Navicat Premium Dump SQL

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80404 (8.4.4)
 Source Host           : localhost:3306
 Source Schema         : market_tool

 Target Server Type    : MySQL
 Target Server Version : 80404 (8.4.4)
 File Encoding         : 65001

 Date: 10/02/2025 15:35:21
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `item_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_name` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `item_now_price` int NULL DEFAULT NULL,
  `item_amount` int NULL DEFAULT NULL,
  `item_formula` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `item_type` int NULL DEFAULT NULL,
  `item_type2` int NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE,
  UNIQUE INDEX `item_id_UNIQUE`(`item_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '小树枝', 16, 21, '', 4, 1);
INSERT INTO `item` VALUES (2, '硬木藤蔓', 24, 45, NULL, 4, 1);
INSERT INTO `item` VALUES (3, '树脂', 24, 53, NULL, 4, 1);
INSERT INTO `item` VALUES (4, '木心', 34, 34, NULL, 4, 1);
INSERT INTO `item` VALUES (5, '小枝芽', 20, 43, NULL, 4, 1);
INSERT INTO `item` VALUES (6, '老柏木', 40, 23, NULL, 4, 1);
INSERT INTO `item` VALUES (7, '柏树叶', 62, 39, NULL, 4, 1);
INSERT INTO `item` VALUES (8, '龟裂韧皮', 38, 1, NULL, 4, 1);
INSERT INTO `item` VALUES (9, '树油', 40, 70, NULL, 4, 1);
INSERT INTO `item` VALUES (10, '黄杨木', 11, 73, NULL, 4, 1);
INSERT INTO `item` VALUES (11, '阔树叶', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (12, '老橡木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (13, '铁桦残根', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (14, '红杉木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (15, '杉叶', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (16, '楠木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (17, '松果', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (18, '榆树叶', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (19, '榆树皮', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (20, '樟木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (21, '樟树叶', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (22, '草木灰', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (23, '白桦木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (24, '桦树皮', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (25, '桐树', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (26, '桐油', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (27, '梧桐木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (28, '梧桐花', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (29, '桃木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (30, '桃花', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (31, '红珊瑚', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (32, '气泡珊瑚', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (33, '胡桃木', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (34, '胡桃叶', 0, 0, NULL, 4, 1);
INSERT INTO `item` VALUES (35, '铁矿', 38, 44, NULL, 4, 2);
INSERT INTO `item` VALUES (36, '燧石', 32, 15, NULL, 4, 2);
INSERT INTO `item` VALUES (37, '锡矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (38, '硫黄', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (39, '硝石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (40, '铝矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (41, '蓝晶石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (42, '孔雀石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (43, '铜矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (44, '硅晶矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (45, '方铅矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (46, '银矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (47, '深红银矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (48, '金矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (49, '稀土矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (50, '水银', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (51, '尖晶石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (52, '锥纹石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (53, '黄铁矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (54, '火山岩', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (55, '斑铜矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (56, '火山灰', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (57, '磷矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (58, '磷灰石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (59, '白铅矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (60, '重晶石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (61, '锰矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (62, '莹石', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (63, '锌矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (64, '菱锌矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (65, '镍矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (66, '热液矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (67, '镁矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (68, '菱镁矿', 0, 0, NULL, 4, 2);
INSERT INTO `item` VALUES (69, '植物根茎', 23, 28, NULL, 4, 3);
INSERT INTO `item` VALUES (70, '麻茎杆', 23, 22, NULL, 4, 3);
INSERT INTO `item` VALUES (71, '麻茎皮', 35, 25, NULL, 4, 3);
INSERT INTO `item` VALUES (72, '麻籽', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (73, '亚麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (74, '亚麻花瓣', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (75, '红麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (76, '黄麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (77, '黄麻杆', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (78, '剑麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (79, '海麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (80, '红麻皮', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (81, '苎麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (82, '苎麻皮', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (83, '蛇麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (84, '青麻茎', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (85, '罗布麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (86, '白麻茎', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (87, '升麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (88, '升麻茎', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (89, '荨麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (90, '荨麻茎', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (91, '山油麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (92, '油麻籽', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (93, '蕉麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (94, '蕉麻茎', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (95, '汉麻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (96, '汉麻秆芯', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (97, '巨藻叶', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (98, '巨藻气囊', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (99, '苘麻', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (100, '苘麻子', 0, 0, NULL, 4, 3);
INSERT INTO `item` VALUES (101, '骨头', 42, 10, NULL, 4, 4);
INSERT INTO `item` VALUES (102, '兽皮', 37, 11, NULL, 4, 4);
INSERT INTO `item` VALUES (103, '爪子', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (104, '兽筋', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (105, '油脂', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (106, '兽角', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (107, '硬甲皮', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (108, '兽牙', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (109, '兽毛', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (110, '兽血', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (111, '硬甲尾', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (112, '珍珠', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (113, '禽羽', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (114, '兽蹄', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (115, '兽脊', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (116, '兽尾', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (117, '背鳍', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (118, '鳞片', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (119, '兽茸', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (120, '骨刺', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (121, '灰兔毛', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (122, '触手', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (123, '软壳', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (124, '硬甲钳', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (125, '白兔毛', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (126, '触角', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (127, '兽腺', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (128, '倒刺', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (129, '尖牙', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (130, '吸盘', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (131, '墨囊', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (132, '绒毛', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (133, '胸骨', 0, 0, NULL, 4, 4);
INSERT INTO `item` VALUES (134, '生铁', 93, 19, NULL, 4, 5);
INSERT INTO `item` VALUES (135, '六角钉', 215, 40, NULL, 4, 5);
INSERT INTO `item` VALUES (136, '黑火药', 100, 7, NULL, 4, 5);
INSERT INTO `item` VALUES (137, '粗布条', 80, 10, NULL, 4, 5);
INSERT INTO `item` VALUES (138, '铁铸件', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (139, '螺钉', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (140, '布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (141, '塑料', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (142, '硬铝合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (143, '无烟火药', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (144, '尼龙布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (145, '钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (146, '钢管', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (147, '涤纶布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (148, '皮革', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (149, '弹簧', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (150, '工程塑料', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (151, '呢绒布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (152, '缝纫线', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (153, '武器零件', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (154, '钛合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (155, '纤维布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (156, '玻璃钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (157, '汞齐', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (158, '低温钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (159, '法兰绒', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (160, '无机硅胶', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (161, '高温合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (162, '锦纶布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (163, '中碳钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (164, '混纺材料', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (165, '混凝土', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (166, '软磁合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (167, '专用铸铁', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (168, '平纹布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (169, '纳米纤维', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (170, '刚性陶瓷', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (171, '电阻合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (172, '碳素精钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (173, '涂层布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (174, '静电纺丝', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (175, '钢塑复合管', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (176, '非晶合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (177, '耐候钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (178, '珊瑚绒', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (179, '仿生甲片', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (180, '金属线材', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (181, '锰硅合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (182, '球扁钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (183, '蕉麻布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (184, '高锰合金管', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (185, '莱卡纤维', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (186, '锌铝合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (187, '结构钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (188, '汉麻布', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (189, '记忆合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (190, '乙纶纤维', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (191, '镍钛合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (192, '高硅钢', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (193, '海藻绵', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (194, '太阳能板', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (195, '高分子纤维', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (196, '镁合金', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (197, '航空板材', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (198, '蜂窝绒', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (199, '织物涂层', 0, 0, NULL, 4, 5);
INSERT INTO `item` VALUES (200, '全钢框架', 0, 0, NULL, 4, 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user_passwd` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user_authority` int NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_pk_2`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
