/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hong

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-09-28 14:02:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for h_api_record
-- ----------------------------
DROP TABLE IF EXISTS `h_api_record`;
CREATE TABLE `h_api_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'api名称',
  `remark` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `code_rule` text COLLATE utf8mb4_unicode_ci COMMENT '代码规则',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of h_api_record
-- ----------------------------
INSERT INTO `h_api_record` VALUES ('5', 'api模拟mock数据', '备注2', '2019-05-23 20:13:52', '2019-06-28 15:11:11', '{\n  \"code\": 200,\n  \"result\": {\n    \"id|10000-20000\": 10000,\n    \"name\": \"@cname\",\n    \"star|0-5\": \"☆\",\n    \"locked|1-2\": false,\n    \"address|1\": [\"北京市\", \"贵州省\", \"浙江省\"],\n    \"phone\": /^(13|14|15|18)[0-9]\\d{8}$/,\n    \"order|10\": [{\n      \"id|+1\": 10000,\n      \"orderName\": \"@ctitle\",\n      \"orderTime\": \"@datetime\",\n      \"image\": Random.image(\'200x100\', \'#50B347\', \'#FFF\', \'Mock.js\')\n    }],\n    \"loginTime\": function() {\n      return new Date().getTime();\n    }\n  },\n  \"message\": \"查询成功\"\n}');
INSERT INTO `h_api_record` VALUES ('23', '模拟line图表数据', 'beizhu', '2019-06-18 09:42:35', '2019-06-28 15:11:51', '{\n  \"code\": \"200\",\n  \"message\": \"成功\",\n  \"responseBody\": {\n    \"code\": \"1\",\n    \"data\": {\n      \"data|1\": \"@range(1, 100)\",\n      \"day|100\": \"@date(yyyy-MM-dd),\"\n    },\n    \"message\": \"操作成功\"\n  }\n}');
INSERT INTO `h_api_record` VALUES ('24', '合作劳务公司', '合作劳务公司', '2019-07-10 17:13:09', '2019-07-11 15:29:43', '{\n  \"code\": \"200\",\n  \"message\": \"成功\",\n  \"responseBody\": {\n    \"code\": \"1\",\n    \"data\": {\n      \"currentPage|+1\": 1,\n      \"list|10\": [{\n          \"companyName\": \"@ctitle\",\n          \"supplierNum\": \"@string\",\n          \"laboraAptitude\": null,\n          \"createdTime\": \"@datetime\",\n          \"trueName\": \"@cname\",\n          \"id\": \"1147051080484413441\",\n\n        },\n\n      ],\n      \"pageSize\": 10,\n      \"total|+5\": 33,\n      \"totalPages|+1\": 4\n    },\n    \"message\": \"操作成功\"\n  }\n}');
INSERT INTO `h_api_record` VALUES ('25', '劳务公司合作管理列表', '劳务公司合作管理列表', '2019-07-12 16:07:13', '2019-07-12 16:07:13', '{\n  \"code\": \"200\",\n  \"message\": \"成功\",\n  \"responseBody\": {\n    \"code\": \"1\",\n    \"data\": {\n      \"currentPage|+1\": 1,\n      \"list|10\": [{\n          \"companyName\": \"@ctitle\",\n          \"supplierNum\": \"@string\",\n          \"laboraAptitude\": null,\n          \"createdTime\": \"@datetime\",\n          \"trueName\": \"@cname\",\n          \"id\": \"1139436315372855297\",\n\n        },\n\n      ],\n      \"pageSize\": 10,\n      \"total|+5\": 33,\n      \"totalPages|+1\": 4\n    },\n    \"message\": \"操作成功\"\n  }\n}');

-- ----------------------------
-- Table structure for h_article
-- ----------------------------
DROP TABLE IF EXISTS `h_article`;
CREATE TABLE `h_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of h_article
-- ----------------------------
INSERT INTO `h_article` VALUES ('1', '标题', '内容1', '2019-05-17 15:52:17', null);
INSERT INTO `h_article` VALUES ('2', '标题2', '内容2', '2019-05-17 15:52:21', null);
INSERT INTO `h_article` VALUES ('3', '标题3', '内容3', '2019-05-17 15:52:24', null);

-- ----------------------------
-- Table structure for h_user
-- ----------------------------
DROP TABLE IF EXISTS `h_user`;
CREATE TABLE `h_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of h_user
-- ----------------------------
INSERT INTO `h_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', null, '2019-05-28 15:25:15', '2019-05-28 15:25:20');
