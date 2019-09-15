/*
Navicat MySQL Data Transfer

Source Server         : jimxu_mysql
Source Server Version : 50126
Source Host           : localhost:3306
Source Database       : sshdemo

Target Server Type    : MYSQL
Target Server Version : 50126
File Encoding         : 65001

Date: 2019-09-15 10:53:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sex
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex` (
  `id` int(11) NOT NULL,
  `sex` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sexid` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sexid` (`sexid`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`sexid`) REFERENCES `sex` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
