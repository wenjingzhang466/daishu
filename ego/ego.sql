/*
Navicat MySQL Data Transfer

Source Server         : ego_mysql
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : egowx

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-08-19 17:07:55
*/
CREATE DATABASE IF NOT EXISTS egowx CHARSET utf8;
USE egowx;
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) DEFAULT NULL COMMENT 'Banner描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='banner管理表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页置顶', '首页轮播图', null, null);

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='banner子项表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '65', '6', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('2', '2', '25', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('3', '3', '11', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('4', '70', '21', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('5', '1', '10', '1', null, '1', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='商品类目';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('2', '果味', '6', null, null, null);
INSERT INTO `category` VALUES ('3', '蔬菜', '5', null, null, null);
INSERT INTO `category` VALUES ('4', '炒货', '7', null, null, null);
INSERT INTO `category` VALUES ('5', '点心', '4', null, null, null);
INSERT INTO `category` VALUES ('6', '粗茶', '8', null, null, null);
INSERT INTO `category` VALUES ('7', '淡饭', '9', null, null, null);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COMMENT='图片总表';

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '/banner-1a.png', '1', null, null);
INSERT INTO `image` VALUES ('2', '/banner-2a.png', '1', null, null);
INSERT INTO `image` VALUES ('3', '/banner-3a.png', '1', null, null);
INSERT INTO `image` VALUES ('4', '/category-cake.png', '1', null, null);
INSERT INTO `image` VALUES ('5', '/category-vg.png', '1', null, null);
INSERT INTO `image` VALUES ('6', '/category-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('7', '/category-fry-a.png', '1', null, null);
INSERT INTO `image` VALUES ('8', '/category-tea.png', '1', null, null);
INSERT INTO `image` VALUES ('9', '/category-rice.png', '1', null, null);
INSERT INTO `image` VALUES ('10', '/product-dryfruit@1.png', '1', null, null);
INSERT INTO `image` VALUES ('13', '/product-vg@1.png', '1', null, null);
INSERT INTO `image` VALUES ('14', '/product-rice@6.png', '1', null, null);
INSERT INTO `image` VALUES ('16', '/1@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('17', '/2@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('18', '/3@theme.png', '1', null, null);
INSERT INTO `image` VALUES ('19', '/detail-1@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('20', '/detail-2@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('21', '/detail-3@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('22', '/detail-4@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('23', '/detail-5@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('24', '/detail-6@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('25', '/detail-7@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('26', '/detail-8@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('27', '/detail-9@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('28', '/detail-11@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('29', '/detail-10@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('31', '/product-rice@1.png', '1', null, null);
INSERT INTO `image` VALUES ('32', '/product-tea@1.png', '1', null, null);
INSERT INTO `image` VALUES ('33', '/product-dryfruit@2.png', '1', null, null);
INSERT INTO `image` VALUES ('36', '/product-dryfruit@3.png', '1', null, null);
INSERT INTO `image` VALUES ('37', '/product-dryfruit@4.png', '1', null, null);
INSERT INTO `image` VALUES ('38', '/product-dryfruit@5.png', '1', null, null);
INSERT INTO `image` VALUES ('39', '/product-dryfruit-a@6.png', '1', null, null);
INSERT INTO `image` VALUES ('40', '/product-dryfruit@7.png', '1', null, null);
INSERT INTO `image` VALUES ('41', '/product-rice@2.png', '1', null, null);
INSERT INTO `image` VALUES ('42', '/product-rice@3.png', '1', null, null);
INSERT INTO `image` VALUES ('43', '/product-rice@4.png', '1', null, null);
INSERT INTO `image` VALUES ('44', '/product-fry@1.png', '1', null, null);
INSERT INTO `image` VALUES ('45', '/product-fry@2.png', '1', null, null);
INSERT INTO `image` VALUES ('46', '/product-fry@3.png', '1', null, null);
INSERT INTO `image` VALUES ('47', '/product-tea@2.png', '1', null, null);
INSERT INTO `image` VALUES ('48', '/product-tea@3.png', '1', null, null);
INSERT INTO `image` VALUES ('49', '/1@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('50', '/2@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('51', '/3@theme-head.png', '1', null, null);
INSERT INTO `image` VALUES ('52', '/product-cake@1.png', '1', null, null);
INSERT INTO `image` VALUES ('53', '/product-cake@2.png', '1', null, null);
INSERT INTO `image` VALUES ('54', '/product-cake-a@3.png', '1', null, null);
INSERT INTO `image` VALUES ('55', '/product-cake-a@4.png', '1', null, null);
INSERT INTO `image` VALUES ('56', '/product-dryfruit@8.png', '1', null, null);
INSERT INTO `image` VALUES ('57', '/product-fry@4.png', '1', null, null);
INSERT INTO `image` VALUES ('58', '/product-fry@5.png', '1', null, null);
INSERT INTO `image` VALUES ('59', '/product-rice@5.png', '1', null, null);
INSERT INTO `image` VALUES ('60', '/product-rice@7.png', '1', null, null);
INSERT INTO `image` VALUES ('62', '/detail-12@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('63', '/detail-13@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('65', '/banner-4a.png', '1', null, null);
INSERT INTO `image` VALUES ('66', '/product-vg@4.png', '1', null, null);
INSERT INTO `image` VALUES ('67', '/product-vg@5.png', '1', null, null);
INSERT INTO `image` VALUES ('68', '/product-vg@2.png', '1', null, null);
INSERT INTO `image` VALUES ('69', '/product-vg@3.png', '1', null, null);
INSERT INTO `image` VALUES ('70', '/banner-5a.png', '1', null, null);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `snap_img` varchar(255) DEFAULT NULL COMMENT '订单快照图片',
  `snap_name` varchar(80) DEFAULT NULL COMMENT '订单快照名称',
  `total_count` int(11) NOT NULL DEFAULT 0,
  `update_time` int(11) DEFAULT NULL,
  `snap_items` text DEFAULT NULL COMMENT '订单其他信息快照（json)',
  `snap_address` varchar(500) DEFAULT NULL COMMENT '地址快照',
  `prepay_id` varchar(100) DEFAULT NULL COMMENT '订单微信支付的预订单id（用于发送模板消息）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', 'CA30262953709024', '2', null, '1572426295', '0.01', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1572426295', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5317\\u4eac\",\"mobile\":\"18911123299\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u6d77\\u6dc0\\u533a\",\"detail\":\"TBD\\u4e91\\u96c6\\u4e2d\\u5fc3(\\u5317\\u4eac\\u5e02\\u660c\\u5e73\\u533aS337)\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('2', 'CA30262964952439', '2', null, '1572426296', '0.01', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1572426296', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5317\\u4eac\",\"mobile\":\"18911123299\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u6d77\\u6dc0\\u533a\",\"detail\":\"TBD\\u4e91\\u96c6\\u4e2d\\u5fc3(\\u5317\\u4eac\\u5e02\\u660c\\u5e73\\u533aS337)\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('7', 'CA30263007982780', '2', null, '1572426300', '0.01', '3', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1572426300', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5317\\u4eac\",\"mobile\":\"18911123299\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u6d77\\u6dc0\\u533a\",\"detail\":\"TBD\\u4e91\\u96c6\\u4e2d\\u5fc3(\\u5317\\u4eac\\u5e02\\u660c\\u5e73\\u533aS337)\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('8', 'CA30263009612620', '2', null, '1572426300', '0.01', '3', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1572432809', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5317\\u4eac\",\"mobile\":\"18911123299\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u6d77\\u6dc0\\u533a\",\"detail\":\"TBD\\u4e91\\u96c6\\u4e2d\\u5fc3(\\u5317\\u4eac\\u5e02\\u660c\\u5e73\\u533aS337)\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('43', 'CB15857655046513', '7', null, '1573785765', '0.01', '1', 'http://www.tpthink.cn/images/product-vg@1.png', '芹菜 半斤', '1', '1573785765', '[{\"id\":1,\"name\":\"\\u82b9\\u83dc \\u534a\\u65a4\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-vg@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('44', 'CB15857906079415', '7', null, '1573785790', '0.01', '1', 'http://www.tpthink.cn/images/product-vg@1.png', '芹菜 半斤', '1', '1573785790', '[{\"id\":1,\"name\":\"\\u82b9\\u83dc \\u534a\\u65a4\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-vg@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('45', 'CB15859143662199', '7', null, '1573785914', '0.01', '1', 'http://www.tpthink.cn/images/product-vg@1.png', '芹菜 半斤', '1', '1573785914', '[{\"id\":1,\"name\":\"\\u82b9\\u83dc \\u534a\\u65a4\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-vg@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('46', 'CB15891253844855', '7', null, '1573789125', '0.02', '1', 'http://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个等', '2', '1573789125', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":22,\"name\":\"\\u6885\\u5170\\u6e05\\u82b1\\u7cd5 1\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-cake-a@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('47', 'CB15913583627625', '7', null, '1573791358', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1573791358', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('48', 'CB15034910055020', '7', null, '1573803490', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1573803490', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":10,\"name\":\"\\u4e07\\u7d2b\\u5343\\u51e4\\u68a8 300\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@5.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('49', 'CB15038324106529', '7', null, '1573803832', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1573803832', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":10,\"name\":\"\\u4e07\\u7d2b\\u5343\\u51e4\\u68a8 300\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@5.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('50', 'CB15039906369944', '7', null, '1573803990', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1573803990', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":10,\"name\":\"\\u4e07\\u7d2b\\u5343\\u51e4\\u68a8 300\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@5.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('53', 'CB19565002700896', '1', null, '1574156500', '0.01', '3', 'http://www.tpthink.cn/images/product-tea@1.png', '红袖枸杞 6克*3袋', '1', '1574156500', '[{\"id\":4,\"name\":\"\\u7ea2\\u8896\\u67b8\\u675e 6\\u514b*3\\u888b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-tea@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u6731\\u5efa\\u521a\",\"mobile\":\"18612035318\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u6d77\\u6dc0\\u533a\",\"detail\":\"\\u4fe1\\u606f\\u8def1\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('71', 'CB28122167332374', '1', null, '1574912216', '0.02', '1', 'http://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '2', '1574912216', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('72', 'CB28122318437987', '1', null, '1574912231', '0.02', '1', 'http://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '2', '1574912231', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('73', 'CC01705760705014', '7', null, '1575170576', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1575170576', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('74', 'CC01707519186130', '7', null, '1575170751', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1575170751', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('75', 'CC01717457450499', '7', null, '1575171745', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1575171745', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('76', 'CC01724992265180', '7', null, '1575172499', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1575172499', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('77', 'CC01731176570155', '7', null, '1575173117', '0.01', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '1', '1575173117', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('78', 'CC01914104062224', '7', null, '1575191410', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1575191410', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":9,\"name\":\"\\u51ac\\u6728\\u7ea2\\u67a3 500\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@4.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('79', 'CC01924303534270', '7', null, '1575192430', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1575192430', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":9,\"name\":\"\\u51ac\\u6728\\u7ea2\\u67a3 500\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@4.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('80', 'CC01930143571348', '7', null, '1575193014', '0.03', '1', 'http://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个等', '3', '1575193014', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1},{\"id\":9,\"name\":\"\\u51ac\\u6728\\u7ea2\\u67a3 500\\u514b\",\"main_img_url\":\"http:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@4.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u674e\\u767d\",\"mobile\":\"13012345678\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u671d\\u9633\\u533a\",\"detail\":\"001\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('81', 'CC27409312159319', '1', null, '1577440931', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577440931', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('82', 'CC28173131494788', '1', null, '1577517313', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517313', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('83', 'CC28173294602280', '1', null, '1577517329', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517329', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('84', 'CC28173306077303', '1', null, '1577517330', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517330', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('85', 'CC28173364067416', '1', null, '1577517336', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517336', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('86', 'CC28173370028682', '1', null, '1577517336', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517336', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('87', 'CC28173375653078', '1', null, '1577517337', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517337', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('88', 'CC28173379767479', '1', null, '1577517337', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517337', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('89', 'CC28173383922378', '1', null, '1577517338', '0.04', '1', 'https://www.tpthink.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '4', '1577517338', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@1.png\",\"count\":4,\"totalPrice\":0.04,\"price\":\"0.01\",\"counts\":4}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('90', 'CC30039160677936', '1', null, '1577703916', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577703916', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('91', 'CC31239622335842', '1', null, '1577723962', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577723962', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('92', 'CC31242302915155', '1', null, '1577724230', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577724230', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('93', 'CC31254156262112', '1', null, '1577725415', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577725415', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('94', 'CC31257774737652', '1', null, '1577725777', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577725777', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('95', 'D102490948303490', '1', null, '1577949094', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577949094', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('96', 'D102503701035554', '1', null, '1577950370', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577950370', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('97', 'D102510739726686', '1', null, '1577951073', '0.02', '1', 'https://www.tpthink.cn/images/product-dryfruit@3.png', '夏日芒果 3个', '2', '1577951073', '[{\"id\":8,\"name\":\"\\u590f\\u65e5\\u8292\\u679c 3\\u4e2a\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-dryfruit@3.png\",\"count\":2,\"totalPrice\":0.02,\"price\":\"0.01\",\"counts\":2}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('98', 'D108578865974068', '1', null, '1578457886', '0.01', '1', 'https://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1578457886', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('99', 'D108580190490507', '1', null, '1578458019', '0.01', '1', 'https://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1578458019', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('100', 'D108583513663349', '1', null, '1578458351', '0.01', '1', 'https://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1578458351', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('101', 'D108584355194604', '1', null, '1578458435', '0.01', '1', 'https://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1578458435', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('102', 'D108589655798194', '1', null, '1578458965', '0.01', '1', 'https://www.tpthink.cn/images/product-cake@2.png', '小红的猪耳朵 120克', '1', '1578458965', '[{\"id\":6,\"name\":\"\\u5c0f\\u7ea2\\u7684\\u732a\\u8033\\u6735 120\\u514b\",\"main_img_url\":\"https:\\/\\/www.tpthink.cn\\/images\\/product-cake@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u8bf8\\u845b\\u6751\\u592b\",\"mobile\":\"18800000001\",\"province\":\"\\u5317\\u4eac\\u5e02\",\"city\":\"\\u5317\\u4eac\\u5e02\",\"country\":\"\\u660c\\u5e73\\u533a\",\"detail\":\"\\u5730\\u7403\\u8857\\u706b\\u661f\\u6751\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('103', 'D819061792051198', '8', null, '1597806179', '0.01', '1', 'http://e.cn/images/product-dryfruit@1.png', '梨花带雨 3个', '1', '1597806179', '[{\"id\":2,\"name\":\"\\u68a8\\u82b1\\u5e26\\u96e8 3\\u4e2a\",\"main_img_url\":\"http:\\/\\/e.cn\\/images\\/product-dryfruit@1.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5f20\\u4e09\",\"mobile\":\"020-81167888\",\"province\":\"\\u5e7f\\u4e1c\\u7701\",\"city\":\"\\u5e7f\\u5dde\\u5e02\",\"country\":\"\\u6d77\\u73e0\\u533a\",\"detail\":\"\\u65b0\\u6e2f\\u4e2d\\u8def397\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);
INSERT INTO `order` VALUES ('104', 'D819063494568191', '8', null, '1597806349', '0.01', '1', 'http://e.cn/images/product-dryfruit@2.png', '春生龙眼 500克', '1', '1597806349', '[{\"id\":5,\"name\":\"\\u6625\\u751f\\u9f99\\u773c 500\\u514b\",\"main_img_url\":\"http:\\/\\/e.cn\\/images\\/product-dryfruit@2.png\",\"count\":1,\"totalPrice\":0.01,\"price\":\"0.01\",\"counts\":1}]', '{\"name\":\"\\u5f20\\u4e09\",\"mobile\":\"020-81167888\",\"province\":\"\\u5e7f\\u4e1c\\u7701\",\"city\":\"\\u5e7f\\u5dde\\u5e02\",\"country\":\"\\u6d77\\u73e0\\u533a\",\"detail\":\"\\u65b0\\u6e2f\\u4e2d\\u8def397\\u53f7\",\"update_time\":\"1970-01-01 08:00:00\"}', null);

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES ('43', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('44', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('45', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('55', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('56', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('57', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('58', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('59', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('60', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('61', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('62', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('63', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('64', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('65', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('66', '1', '1', null, null);
INSERT INTO `order_product` VALUES ('68', '1', '2', null, null);
INSERT INTO `order_product` VALUES ('1', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('2', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('3', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('4', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('5', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('6', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('7', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('8', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('9', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('10', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('11', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('12', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('13', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('14', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('15', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('16', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('17', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('18', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('19', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('20', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('21', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('22', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('23', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('24', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('25', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('26', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('27', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('28', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('29', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('30', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('31', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('32', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('33', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('34', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('35', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('36', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('37', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('38', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('39', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('46', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('51', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('67', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('69', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('70', '2', '5', null, null);
INSERT INTO `order_product` VALUES ('81', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('82', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('83', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('84', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('85', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('86', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('87', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('88', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('89', '2', '4', null, null);
INSERT INTO `order_product` VALUES ('103', '2', '1', null, null);
INSERT INTO `order_product` VALUES ('53', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('54', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('70', '4', '1', null, null);
INSERT INTO `order_product` VALUES ('41', '5', '1', null, null);
INSERT INTO `order_product` VALUES ('42', '5', '1', null, null);
INSERT INTO `order_product` VALUES ('104', '5', '1', null, null);
INSERT INTO `order_product` VALUES ('71', '6', '2', null, null);
INSERT INTO `order_product` VALUES ('72', '6', '2', null, null);
INSERT INTO `order_product` VALUES ('98', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('99', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('100', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('101', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('102', '6', '1', null, null);
INSERT INTO `order_product` VALUES ('47', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('48', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('49', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('50', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('73', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('74', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('75', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('76', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('77', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('78', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('79', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('80', '8', '1', null, null);
INSERT INTO `order_product` VALUES ('90', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('91', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('92', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('93', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('94', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('95', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('96', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('97', '8', '2', null, null);
INSERT INTO `order_product` VALUES ('78', '9', '2', null, null);
INSERT INTO `order_product` VALUES ('79', '9', '2', null, null);
INSERT INTO `order_product` VALUES ('80', '9', '2', null, null);
INSERT INTO `order_product` VALUES ('48', '10', '2', null, null);
INSERT INTO `order_product` VALUES ('49', '10', '2', null, null);
INSERT INTO `order_product` VALUES ('50', '10', '2', null, null);
INSERT INTO `order_product` VALUES ('40', '11', '1', null, null);
INSERT INTO `order_product` VALUES ('42', '12', '1', null, null);
INSERT INTO `order_product` VALUES ('52', '18', '1', null, null);
INSERT INTO `order_product` VALUES ('46', '22', '1', null, null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存量',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT 1 COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '芹菜 半斤', '0.01', '2', null, '3', '/product-vg@1.png', '1', null, null, null, '13');
INSERT INTO `product` VALUES ('2', '梨花带雨 3个', '0.01', '984', null, '2', '/product-dryfruit@1.png', '1', null, null, null, '10');
INSERT INTO `product` VALUES ('3', '素米 327克', '0.01', '996', null, '7', '/product-rice@1.png', '1', null, null, null, '31');
INSERT INTO `product` VALUES ('4', '红袖枸杞 6克*3袋', '0.01', '998', null, '6', '/product-tea@1.png', '1', null, null, null, '32');
INSERT INTO `product` VALUES ('5', '春生龙眼 500克', '0.01', '995', null, '2', '/product-dryfruit@2.png', '1', null, null, null, '33');
INSERT INTO `product` VALUES ('6', '小红的猪耳朵 120克', '0.01', '997', null, '5', '/product-cake@2.png', '1', null, null, null, '53');
INSERT INTO `product` VALUES ('7', '泥蒿 半斤', '0.01', '998', null, '3', '/product-vg@2.png', '1', null, null, null, '68');
INSERT INTO `product` VALUES ('8', '夏日芒果 3个', '0.01', '995', null, '2', '/product-dryfruit@3.png', '1', null, null, null, '36');
INSERT INTO `product` VALUES ('9', '冬木红枣 500克', '0.01', '996', null, '2', '/product-dryfruit@4.png', '1', null, null, null, '37');
INSERT INTO `product` VALUES ('10', '万紫千凤梨 300克', '0.01', '996', null, '2', '/product-dryfruit@5.png', '1', null, null, null, '38');
INSERT INTO `product` VALUES ('11', '贵妃笑 100克', '0.01', '994', null, '2', '/product-dryfruit-a@6.png', '1', null, null, null, '39');
INSERT INTO `product` VALUES ('12', '珍奇异果 3个', '0.01', '999', null, '2', '/product-dryfruit@7.png', '1', null, null, null, '40');
INSERT INTO `product` VALUES ('13', '绿豆 125克', '0.01', '999', null, '7', '/product-rice@2.png', '1', null, null, null, '41');
INSERT INTO `product` VALUES ('14', '芝麻 50克', '0.01', '999', null, '7', '/product-rice@3.png', '1', null, null, null, '42');
INSERT INTO `product` VALUES ('15', '猴头菇 370克', '0.01', '999', null, '7', '/product-rice@4.png', '1', null, null, null, '43');
INSERT INTO `product` VALUES ('16', '西红柿 1斤', '0.01', '999', null, '3', '/product-vg@3.png', '1', null, null, null, '69');
INSERT INTO `product` VALUES ('17', '油炸花生 300克', '0.01', '999', null, '4', '/product-fry@1.png', '1', null, null, null, '44');
INSERT INTO `product` VALUES ('18', '春泥西瓜子 128克', '0.01', '997', null, '4', '/product-fry@2.png', '1', null, null, null, '45');
INSERT INTO `product` VALUES ('19', '碧水葵花籽 128克', '0.01', '999', null, '4', '/product-fry@3.png', '1', null, null, null, '46');
INSERT INTO `product` VALUES ('20', '碧螺春 12克*3袋', '0.01', '999', null, '6', '/product-tea@2.png', '1', null, null, null, '47');
INSERT INTO `product` VALUES ('21', '西湖龙井 8克*3袋', '0.01', '998', null, '6', '/product-tea@3.png', '1', null, null, null, '48');
INSERT INTO `product` VALUES ('22', '梅兰清花糕 1个', '0.01', '997', null, '5', '/product-cake-a@3.png', '1', null, null, null, '54');
INSERT INTO `product` VALUES ('23', '清凉薄荷糕 1个', '0.01', '998', null, '5', '/product-cake-a@4.png', '1', null, null, null, '55');
INSERT INTO `product` VALUES ('25', '小明的妙脆角 120克', '0.01', '999', null, '5', '/product-cake@1.png', '1', null, null, null, '52');
INSERT INTO `product` VALUES ('26', '红衣青瓜 混搭160克', '0.01', '999', null, '2', '/product-dryfruit@8.png', '1', null, null, null, '56');
INSERT INTO `product` VALUES ('27', '锈色瓜子 100克', '0.01', '998', null, '4', '/product-fry@4.png', '1', null, null, null, '57');
INSERT INTO `product` VALUES ('28', '春泥花生 200克', '0.01', '999', null, '4', '/product-fry@5.png', '1', null, null, null, '58');
INSERT INTO `product` VALUES ('29', '冰心鸡蛋 2个', '0.01', '999', null, '7', '/product-rice@5.png', '1', null, null, null, '59');
INSERT INTO `product` VALUES ('30', '八宝莲子 200克', '0.01', '999', null, '7', '/product-rice@6.png', '1', null, null, null, '14');
INSERT INTO `product` VALUES ('31', '深涧木耳 78克', '0.01', '999', null, '7', '/product-rice@7.png', '1', null, null, null, '60');
INSERT INTO `product` VALUES ('32', '土豆 半斤', '0.01', '999', null, '3', '/product-vg@4.png', '1', null, null, null, '66');
INSERT INTO `product` VALUES ('33', '青椒 半斤', '0.01', '999', null, '3', '/product-vg@5.png', '1', null, null, null, '67');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT 0 COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('4', '19', null, '1', '11');
INSERT INTO `product_image` VALUES ('5', '20', null, '2', '11');
INSERT INTO `product_image` VALUES ('6', '21', null, '3', '11');
INSERT INTO `product_image` VALUES ('7', '22', null, '4', '11');
INSERT INTO `product_image` VALUES ('8', '23', null, '5', '11');
INSERT INTO `product_image` VALUES ('9', '24', null, '6', '11');
INSERT INTO `product_image` VALUES ('10', '25', null, '7', '11');
INSERT INTO `product_image` VALUES ('11', '26', null, '8', '11');
INSERT INTO `product_image` VALUES ('12', '27', null, '9', '11');
INSERT INTO `product_image` VALUES ('13', '28', null, '11', '11');
INSERT INTO `product_image` VALUES ('14', '29', null, '10', '11');
INSERT INTO `product_image` VALUES ('18', '62', null, '12', '11');
INSERT INTO `product_image` VALUES ('19', '63', null, '13', '11');

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) NOT NULL COMMENT '详情属性',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES ('1', '品名', '杨梅', '11', null, null);
INSERT INTO `product_property` VALUES ('2', '口味', '青梅味 雪梨味 黄桃味 菠萝味', '11', null, null);
INSERT INTO `product_property` VALUES ('3', '产地', '火星', '11', null, null);
INSERT INTO `product_property` VALUES ('4', '保质期', '180天', '11', null, null);
INSERT INTO `product_property` VALUES ('5', '品名', '梨子', '2', null, null);
INSERT INTO `product_property` VALUES ('6', '产地', '金星', '2', null, null);
INSERT INTO `product_property` VALUES ('7', '净含量', '100g', '2', null, null);
INSERT INTO `product_property` VALUES ('8', '保质期', '10天', '2', null, null);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '专题名称',
  `description` varchar(255) DEFAULT NULL COMMENT '专题描述',
  `topic_img_id` int(11) NOT NULL COMMENT '主题图，外键',
  `delete_time` int(11) DEFAULT NULL,
  `head_img_id` int(11) NOT NULL COMMENT '专题列表页，头图',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='主题信息表';

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES ('1', '专题栏位一', '美味水果世界', '16', null, '49', null);
INSERT INTO `theme` VALUES ('2', '专题栏位二', '新品推荐', '17', null, '50', null);
INSERT INTO `theme` VALUES ('3', '专题栏位三', '做个干物女', '18', null, '18', null);

-- ----------------------------
-- Table structure for theme_product
-- ----------------------------
DROP TABLE IF EXISTS `theme_product`;
CREATE TABLE `theme_product` (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `product_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主题所包含的商品';

-- ----------------------------
-- Records of theme_product
-- ----------------------------
INSERT INTO `theme_product` VALUES ('1', '2');
INSERT INTO `theme_product` VALUES ('1', '5');
INSERT INTO `theme_product` VALUES ('1', '8');
INSERT INTO `theme_product` VALUES ('1', '10');
INSERT INTO `theme_product` VALUES ('1', '12');
INSERT INTO `theme_product` VALUES ('2', '1');
INSERT INTO `theme_product` VALUES ('2', '2');
INSERT INTO `theme_product` VALUES ('2', '3');
INSERT INTO `theme_product` VALUES ('2', '5');
INSERT INTO `theme_product` VALUES ('2', '6');
INSERT INTO `theme_product` VALUES ('2', '16');
INSERT INTO `theme_product` VALUES ('2', '33');
INSERT INTO `theme_product` VALUES ('3', '15');
INSERT INTO `theme_product` VALUES ('3', '18');
INSERT INTO `theme_product` VALUES ('3', '19');
INSERT INTO `theme_product` VALUES ('3', '27');
INSERT INTO `theme_product` VALUES ('3', '30');
INSERT INTO `theme_product` VALUES ('3', '31');

-- ----------------------------
-- Table structure for third_app
-- ----------------------------
DROP TABLE IF EXISTS `third_app`;
CREATE TABLE `third_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(64) NOT NULL COMMENT '应用app_id',
  `app_secret` varchar(64) NOT NULL COMMENT '应用secret',
  `app_description` varchar(100) DEFAULT NULL COMMENT '应用程序描述',
  `scope` varchar(20) NOT NULL COMMENT '应用权限',
  `scope_description` varchar(100) DEFAULT NULL COMMENT '权限描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='访问API的各应用账号密码表';

-- ----------------------------
-- Records of third_app
-- ----------------------------
INSERT INTO `third_app` VALUES ('1', 'starcraft', '777*777', 'CMS', '32', 'Super', null, null);
INSERT INTO `third_app` VALUES ('2', 'admin', '123456', 'CMS', '32', 'Super', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'okN6f4vJP20fD_SSEpqivty-hk08', null, null, null, '1572408098', '1572408098');
INSERT INTO `user` VALUES ('2', 'okN6f4rb5zQtPYN43tHJ8_BblOlI', null, null, null, '1572426218', '1572426218');
INSERT INTO `user` VALUES ('3', 'okN6f4o5u3kPnLuF4I--8mmAPAnA', null, null, null, '1572765348', '1572765348');
INSERT INTO `user` VALUES ('4', 'okN6f4nTXlhApfHq4pYHotwETkkU', null, null, null, '1572765455', '1572765455');
INSERT INTO `user` VALUES ('5', 'okN6f4hn-D-XsBQlqa5cqTY7IpjM', null, null, null, '1572775527', '1572775527');
INSERT INTO `user` VALUES ('6', 'okN6f4hyidRXqY89HVa0AOgOtJLw', null, null, null, '1573467521', '1573467521');
INSERT INTO `user` VALUES ('7', 'okN6f4ods4YfOwj36N6iv_F8j_YM', null, null, null, '1573785549', '1573785549');
INSERT INTO `user` VALUES ('8', 'oM1iw4m8TngLGQ3mEdOT4D1FDOWU', null, null, null, '1597804963', '1597804963');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `country` varchar(20) DEFAULT NULL COMMENT '区',
  `detail` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `delete_time` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '北京', '18911123299', '北京市', '北京市', '海淀区', 'TBD云集中心(北京市昌平区S337)', null, '2', null);
INSERT INTO `user_address` VALUES ('2', '诸葛村夫', '18800000001', '北京市', '北京市', '昌平区', '地球街火星村', null, '1', null);
INSERT INTO `user_address` VALUES ('3', '李白', '13012345678', '北京市', '北京市', '朝阳区', '001号', null, '7', null);
INSERT INTO `user_address` VALUES ('4', '张三', '020-81167888', '广东省', '广州市', '海珠区', '新港中路397号', null, '8', null);
