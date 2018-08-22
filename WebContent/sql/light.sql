/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : light

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-25 13:46:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `brandId` int(4) NOT NULL,
  `brandName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '欧普照明');
INSERT INTO `brand` VALUES ('2', '熙欧');

-- ----------------------------
-- Table structure for `catagory`
-- ----------------------------
DROP TABLE IF EXISTS `catagory`;
CREATE TABLE `catagory` (
  `catagoryId` int(4) NOT NULL,
  `catagoryName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`catagoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catagory
-- ----------------------------
INSERT INTO `catagory` VALUES ('1', '吸顶灯');
INSERT INTO `catagory` VALUES ('2', '枝型吊灯');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentId` int(4) NOT NULL AUTO_INCREMENT,
  `lightId` int(4) NOT NULL,
  `userId` int(4) NOT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`commentId`),
  KEY `LightId` (`lightId`) USING BTREE,
  KEY `UserId` (`userId`) USING BTREE,
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`lightId`) REFERENCES `light` (`lightId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '3001', '1', '1', '1');

-- ----------------------------
-- Table structure for `light`
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light` (
  `lightId` int(4) NOT NULL,
  `catagoryId` int(4) NOT NULL,
  `brandId` int(4) NOT NULL,
  `styleId` int(4) NOT NULL,
  `stuff` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `locate` varchar(20) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `quantity` int(4) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `images` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`lightId`),
  KEY `Catagoryld` (`catagoryId`),
  KEY `BrandId` (`brandId`),
  KEY `StyleId` (`styleId`),
  CONSTRAINT `light_ibfk_1` FOREIGN KEY (`catagoryId`) REFERENCES `catagory` (`catagoryId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `light_ibfk_2` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `light_ibfk_3` FOREIGN KEY (`styleId`) REFERENCES `style` (`styleId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of light
-- ----------------------------
INSERT INTO `light` VALUES ('3001', '1', '1', '2', '水晶', '白', '卧室', '2999.00', '5', '欧普照明现代中式吸顶灯欧普中式灯具客厅灯长方形实木led吸顶灯 卧室书房灯具大气 红韵 ', 'images/o/o1w.jpg');
INSERT INTO `light` VALUES ('3002', '1', '1', '1', '水晶', '黄', '卧室，客厅', '1988.00', '10', '欧普照明美式简约吸顶灯欧普照明 led圆形温馨卧室房间餐厅吸顶灯具 大气现代浪漫简约', 'images/o/o2y.jpg');
INSERT INTO `light` VALUES ('3003', '1', '1', '1', 'ABS+五金底盘', '黄', '卧室，客厅', '3958.00', '20', '欧普照明美式简约吸顶灯欧普照明LED吸顶灯圆形卧室灯简约现代温馨书房餐厅灯具灯饰 云裳', 'images/o/o3y.jpg');
INSERT INTO `light` VALUES ('3004', '2', '1', '2', 'ABS+五金底盘', '白', '客厅', '1599.00', '125', '欧普照明现代中式枝型吊灯欧普照明 led餐厅灯浪漫 现代简约时尚单头餐吊灯个性 花之密语', 'images/o/o4w.jpg');
INSERT INTO `light` VALUES ('3005', '1', '1', '2', 'ABS+五金底盘，水晶', '黄，白', '卧室，客厅', '1998.00', '15', '欧普照明现代中式吸顶灯欧普照明led长方形客厅灯卧室水晶吸顶灯具现代简约温馨大气 晶靓', 'images/o/o5w.jpg');
INSERT INTO `light` VALUES ('3006', '1', '1', '1', '水晶', '白', '卧室，客厅', '3000.00', '50', '欧普照明美式简约吸顶灯欧普照明led吸顶灯客厅灯简约现代大气灯具温馨花朵卧室灯饰', 'images/o/o6w.jpg');
INSERT INTO `light` VALUES ('3007', '1', '1', '1', 'ABS+五金底盘', '黄，白', '卧室，客厅', '1998.00', '50', '欧普照明美式简约吸顶灯欧普照明LED灯饰田园简约现代卧室灯客厅房间灯过道吸顶灯具', 'images/o/o7w.jpg');
INSERT INTO `light` VALUES ('3008', '1', '1', '1', 'ABS+五金底盘，水晶', '黄', '客厅', '2199.00', '50', '欧普照明美式简约吸顶灯欧普照明led吸顶灯客厅卧室房间餐厅长方形简约现代大气灯饰', 'images/o/o8y.jpg');
INSERT INTO `light` VALUES ('3009', '1', '2', '3', 'ABS+五金底盘，水晶', '黄，白', '卧室', '2100.00', '30', '熙欧中式吸顶灯简约后现代北欧创意大客厅灯具LED主卧室温馨浪漫个性灯饰吸顶灯', 'images/x/x1w.jpg');
INSERT INTO `light` VALUES ('3010', '1', '2', '1', 'ABS+五金底盘，水晶', '黄，白', '卧室，客厅', '3200.00', '15', '熙欧美式简约吸顶灯北欧吊灯moooi萤火虫树枝餐厅灯饰创意个性后现代客厅灯设计师款', 'images/x/x2y.jpg');
INSERT INTO `light` VALUES ('3011', '1', '2', '1', 'ABS+五金底盘，水晶', '白', '卧室，客厅', '2500.00', '15', '熙欧美式简约吸顶灯熙欧后现代LED客厅吸顶灯简约创意大厅灯具大气鸟巢主卧室灯饰', 'images/x/x3w.jpg');
INSERT INTO `light` VALUES ('3012', '1', '2', '1', '水晶', '黄，白', '卧室，客厅', '2150.00', '50', '熙欧美式简约吸顶灯创意客厅吸顶灯个性卧室灯简约现代大气家用圆形温馨浪漫灯具灯饰', 'images/x/x4w.jpg');
INSERT INTO `light` VALUES ('3013', '2', '2', '1', '水晶', '黄', '卧室，客厅', '3520.00', '50', '熙欧美式简约枝型吊灯北欧吊灯创意led餐厅吊灯个性艺术现代简约吧台吊灯客厅卧室灯具', 'images/x/x5y.jpg');
INSERT INTO `light` VALUES ('3014', '2', '2', '1', 'ABS+五金底盘，水晶', '黄，白', '卧室，客厅', '2660.00', '80', '熙欧美式简约枝型吊灯北欧魔豆吊灯创意个性餐厅灯卧室灯具后现代简约大气家用客厅吊灯', 'images/x/x6y.jpg');
INSERT INTO `light` VALUES ('3015', '1', '2', '1', 'ABS+五金底盘，水晶', '白', '卧室，客厅', '3550.00', '78', '熙欧美式简约吸顶灯温馨浪漫主卧室灯简约现代创意个性客厅吸顶灯北欧婚房儿童房灯具', 'images/x/x7w.jpg');
INSERT INTO `light` VALUES ('3016', '1', '2', '1', 'ABS+五金底盘，水晶', '白', '卧室，客厅', '2666.00', '66', '熙欧美式简约吸顶灯个性后现代北欧创意大客厅灯具LED主卧室温馨浪漫吸顶灯灯饰简约', 'images/x/x8w.jpg');

-- ----------------------------
-- Table structure for `myshopcart`
-- ----------------------------
DROP TABLE IF EXISTS `myshopcart`;
CREATE TABLE `myshopcart` (
  `shopCartId` int(4) NOT NULL AUTO_INCREMENT,
  `lightId` int(4) NOT NULL,
  `userId` int(4) NOT NULL,
  `addDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`shopCartId`),
  KEY `LightId` (`lightId`),
  KEY `UserId` (`userId`),
  CONSTRAINT `myshopcart_ibfk_1` FOREIGN KEY (`lightId`) REFERENCES `light` (`lightId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `myshopcart_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myshopcart
-- ----------------------------
INSERT INTO `myshopcart` VALUES ('10001', '3003', '2', '2018424');
INSERT INTO `myshopcart` VALUES ('10002', '3001', '1', '2018424');
INSERT INTO `myshopcart` VALUES ('10003', '3005', '1', '2018424');
INSERT INTO `myshopcart` VALUES ('10004', '3002', '2', '2018424');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` varchar(17) NOT NULL,
  `userId` int(4) NOT NULL,
  `lightId` int(4) NOT NULL,
  `buyQuantity` int(4) NOT NULL,
  `totalPrice` double(10,2) NOT NULL,
  `orderDate` varchar(10) NOT NULL,
  `orderStateId` int(4) NOT NULL,
  `showOrNot` int(1) NOT NULL,
  `receiveName` varchar(20) NOT NULL,
  `receivePhone` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `postalCode` varchar(6) NOT NULL,
  `postType` varchar(20) NOT NULL,
  `paymentType` varchar(20) NOT NULL,
  `postFee` int(4) NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `UserId` (`userId`),
  KEY `LightId` (`lightId`),
  KEY `OrderStateId` (`orderStateId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`lightId`) REFERENCES `light` (`lightId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`orderStateId`) REFERENCES `orderstates` (`orderStateId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '3001', '1', '1.00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `orderstates`
-- ----------------------------
DROP TABLE IF EXISTS `orderstates`;
CREATE TABLE `orderstates` (
  `orderStateId` int(4) NOT NULL,
  `orderStateName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderStateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstates
-- ----------------------------
INSERT INTO `orderstates` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `statistics`
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics` (
  `lightId` int(4) NOT NULL,
  `clicks` int(4) DEFAULT NULL,
  `storeCount` int(4) DEFAULT NULL,
  `saleCount` int(4) DEFAULT NULL,
  PRIMARY KEY (`lightId`),
  CONSTRAINT `statistics_ibfk_1` FOREIGN KEY (`lightId`) REFERENCES `light` (`lightId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES ('3001', '50', '30', '180');
INSERT INTO `statistics` VALUES ('3002', '8', '5', '5');
INSERT INTO `statistics` VALUES ('3003', '40', '20', '60');
INSERT INTO `statistics` VALUES ('3004', '30', '50', '15');
INSERT INTO `statistics` VALUES ('3005', '20', '10', '30');
INSERT INTO `statistics` VALUES ('3006', '10', '18', '18');
INSERT INTO `statistics` VALUES ('3007', '100', '58', '40');
INSERT INTO `statistics` VALUES ('3008', '35', '30', '30');
INSERT INTO `statistics` VALUES ('3009', '40', '40', '50');
INSERT INTO `statistics` VALUES ('3010', '2', '4', '4');
INSERT INTO `statistics` VALUES ('3011', '5', '5', '5');
INSERT INTO `statistics` VALUES ('3012', '8', '2', '4');
INSERT INTO `statistics` VALUES ('3013', '30', '4', '5');
INSERT INTO `statistics` VALUES ('3014', '32', '4', '15');
INSERT INTO `statistics` VALUES ('3015', '4', '8', '64');
INSERT INTO `statistics` VALUES ('3016', '4', '8', '1');

-- ----------------------------
-- Table structure for `style`
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `styleId` int(4) NOT NULL,
  `styleName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`styleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES ('1', '美式简约');
INSERT INTO `style` VALUES ('2', '现代中式');
INSERT INTO `style` VALUES ('3', '欧式');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(4) NOT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postalCode` varchar(6) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `userRoleId` int(4) NOT NULL,
  `userStateId` int(4) NOT NULL,
  `loginId` varchar(50) NOT NULL,
  `loginPwd` varchar(50) NOT NULL,
  `lastLoginTime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `UserRoleId` (`userRoleId`),
  KEY `UserStateId` (`userStateId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userRoleId`) REFERENCES `userroles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`userStateId`) REFERENCES `userstates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小林', '广东肇庆', '526455', '17876253447', '905753552@qq.com', '男', '1', '1', 'lin', '123456', '1');
INSERT INTO `user` VALUES ('2', '小风', '广东广州', '510000', '13435806041', '605506256@qq.com', '男', '1', '1', 'feng', '123456', '1');
INSERT INTO `user` VALUES ('3', '小美', '广东潮汕', '521031', '17876251111', '5555888@163.com', '女', '1', '1', 'mei', '123456', '1');

-- ----------------------------
-- Table structure for `userroles`
-- ----------------------------
DROP TABLE IF EXISTS `userroles`;
CREATE TABLE `userroles` (
  `id` int(4) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userroles
-- ----------------------------
INSERT INTO `userroles` VALUES ('1', '用户');

-- ----------------------------
-- Table structure for `userstates`
-- ----------------------------
DROP TABLE IF EXISTS `userstates`;
CREATE TABLE `userstates` (
  `id` int(4) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userstates
-- ----------------------------
INSERT INTO `userstates` VALUES ('1', '1');

-- ----------------------------
-- Table structure for `wishlist`
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `wishListId` int(4) NOT NULL AUTO_INCREMENT,
  `lightId` int(4) NOT NULL,
  `userId` int(4) NOT NULL,
  `storeDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wishListId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES ('1', '1', '1', '1');
