/*
Navicat MySQL Data Transfer

Source Server         : 139.199.88.177
Source Server Version : 50718
Source Host           : 139.199.88.177:3306
Source Database       : 91Kage

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-03-07 02:56:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for AgentInfo
-- ----------------------------
DROP TABLE IF EXISTS `AgentInfo`;
CREATE TABLE `AgentInfo` (
  `AgentName` varchar(255) NOT NULL,
  `AgentId` varchar(255) NOT NULL,
  `AgentContactName` varchar(255) NOT NULL,
  `AgentContactPhone` varchar(255) NOT NULL,
  `AgentType` int(11) NOT NULL,
  `AgentCompanyName` varchar(255) DEFAULT NULL,
  `AgentCompanyNums` varchar(255) DEFAULT NULL,
  `AgentCompanyTex` varchar(255) DEFAULT NULL,
  `AgentCompanyAddr` varchar(255) DEFAULT NULL,
  `AgentCompanyType` varchar(255) DEFAULT NULL,
  `AgentRegisteredcapital` varchar(255) DEFAULT NULL,
  `AgentCorporateRepresentative` varchar(255) DEFAULT NULL,
  `AgentBankUserName` varchar(255) DEFAULT NULL,
  `AgentBankArea` varchar(255) DEFAULT NULL,
  `AgentBankAreaDetail` varchar(255) DEFAULT NULL,
  `AgentBankUserId` varchar(255) DEFAULT NULL,
  `AgentBankName` varchar(255) DEFAULT NULL,
  `AgentSettlementType` varchar(255) DEFAULT NULL,
  `AgentContactAddr` varchar(255) DEFAULT NULL,
  `AgentContactEamil` varchar(255) DEFAULT NULL,
  `AgentNoteInfo` varchar(255) DEFAULT NULL,
  `AgentState` int(11) DEFAULT NULL,
  `AgentAddTime` varchar(11) DEFAULT '0',
  PRIMARY KEY (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of AgentInfo
-- ----------------------------
INSERT INTO `AgentInfo` VALUES ('1', '1', '1', '11111111111', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1520355052');
INSERT INTO `AgentInfo` VALUES ('1234123', 'a123456', '43214321', '18811597595', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `AgentInfo` VALUES ('gfddf', 'a1234567', '342143', '18811597595', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `AgentInfo` VALUES ('dsafdsa', 'a12345678', 'a12345678', '18811597595', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `AgentInfo` VALUES ('3214321', 'basd', 'fdsa', '18811597595', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `AgentInfo` VALUES ('fdafdasfd', 'fdafdasfds', 'fdasfdas', '18811597595', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1520188038');
