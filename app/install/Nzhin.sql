DROP TABLE IF EXISTS `nzhinw_card`;
CREATE TABLE `nzhinw_card`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cont` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zan` int NOT NULL DEFAULT 0,
  `comment` int NOT NULL DEFAULT 0,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime NOT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

DROP TABLE IF EXISTS `nzhinw_comment`;
CREATE TABLE `nzhinw_comment`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `cont` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `time` datetime NOT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

DROP TABLE IF EXISTS `nzhinw_config`;
CREATE TABLE `nzhinw_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webkeywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webdescription` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webtime` date NULL DEFAULT NULL,
  `qq` int NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `copyright` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `nzhinw_config` VALUES (1, 'ConfessionWall', '表白墙', 'ConfessionWall表白墙', '2022-05-15', 1449893567, 'love.nzhin.cn', 'ConfessionWall', 'Copyright © 2022 Nzhin', '/(黄)|(赌)|(毒)|(Q币)|(电影网站)|(聚合影视APP)|(视频聊天)|(直播)|(P2P)|(私彩)|(要饭网)|(各种盗号钓鱼软件)|(游戏外挂辅助)|(短信)|(电话轰炸机)|(以及话费充值)|(直播盒子)|(百度云盘)|(王者荣耀CDK)|(以及各种抽奖)|(一元夺宝)|(股票)|(金融)|(理财)|(彩票福利)|(洗钱)|(信用卡套现)|(花呗套现)/', '1');

DROP TABLE IF EXISTS `nzhinw_user`;
CREATE TABLE `nzhinw_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qq` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qqopenid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logincity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` datetime NULL DEFAULT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

INSERT INTO `nzhinw_user` VALUES (1, 'admin', '$2y$10$9PHB3m4YXSefIaqKRrBzAeNNp7CuOLU/U9xg33Ip/AByBPDhVoN0y', '1449893567', NULL, '', '127.0.0.1', '当前环境异常', '2022-05-15 15:11:53', '2022-05-15 17:50:19', '1');

DROP TABLE IF EXISTS `nzhinw_zan`;
CREATE TABLE `nzhinw_zan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cardid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp NOT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;