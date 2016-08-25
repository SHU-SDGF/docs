/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : tunnel_insp

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2016-08-25 14:14:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detail_type_list
-- ----------------------------
DROP TABLE IF EXISTS `detail_type_list`;
CREATE TABLE `detail_type_list` (
  `DETAIL_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`DETAIL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail_type_list
-- ----------------------------
INSERT INTO `detail_type_list` VALUES ('凸起');
INSERT INTO `detail_type_list` VALUES ('凹陷');
INSERT INTO `detail_type_list` VALUES ('剥落');
INSERT INTO `detail_type_list` VALUES ('变形缝张开');
INSERT INTO `detail_type_list` VALUES ('径向裂缝');
INSERT INTO `detail_type_list` VALUES ('掉粉');
INSERT INTO `detail_type_list` VALUES ('松花');
INSERT INTO `detail_type_list` VALUES ('横向裂缝');
INSERT INTO `detail_type_list` VALUES ('止水带损坏');
INSERT INTO `detail_type_list` VALUES ('水珠');
INSERT INTO `detail_type_list` VALUES ('泌出');
INSERT INTO `detail_type_list` VALUES ('渗水');
INSERT INTO `detail_type_list` VALUES ('湿渍');
INSERT INTO `detail_type_list` VALUES ('滴漏');
INSERT INTO `detail_type_list` VALUES ('漏泥沙');
INSERT INTO `detail_type_list` VALUES ('环内错台');
INSERT INTO `detail_type_list` VALUES ('环间错台');
INSERT INTO `detail_type_list` VALUES ('竖向裂纹');
INSERT INTO `detail_type_list` VALUES ('纵向裂缝');
INSERT INTO `detail_type_list` VALUES ('线漏');
INSERT INTO `detail_type_list` VALUES ('细微裂纹');
INSERT INTO `detail_type_list` VALUES ('缺角');
INSERT INTO `detail_type_list` VALUES ('蜂窝');
INSERT INTO `detail_type_list` VALUES ('螺栓损坏');
INSERT INTO `detail_type_list` VALUES ('裂缝张开');
INSERT INTO `detail_type_list` VALUES ('起壳');
INSERT INTO `detail_type_list` VALUES ('起层');
INSERT INTO `detail_type_list` VALUES ('起皮');
INSERT INTO `detail_type_list` VALUES ('锈斑');
INSERT INTO `detail_type_list` VALUES ('麻面');

-- ----------------------------
-- Table structure for disease_type_detail_match
-- ----------------------------
DROP TABLE IF EXISTS `disease_type_detail_match`;
CREATE TABLE `disease_type_detail_match` (
  `MATCH_ID` int(3) NOT NULL AUTO_INCREMENT,
  `DISEASE_TYPE` varchar(50) DEFAULT NULL,
  `DETAIL_TYPE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MATCH_ID`),
  KEY `DETAIL_TYPE` (`DETAIL_TYPE`),
  KEY `DISEASE_TYPE` (`DISEASE_TYPE`),
  CONSTRAINT `disease_type_detail_match_ibfk_1` FOREIGN KEY (`DETAIL_TYPE`) REFERENCES `detail_type_list` (`DETAIL_TYPE`),
  CONSTRAINT `disease_type_detail_match_ibfk_2` FOREIGN KEY (`DISEASE_TYPE`) REFERENCES `disease_type_list` (`DISEASE_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disease_type_detail_match
-- ----------------------------
INSERT INTO `disease_type_detail_match` VALUES ('1', '裂缝', '细微裂纹');
INSERT INTO `disease_type_detail_match` VALUES ('2', '裂缝', '径向裂缝');
INSERT INTO `disease_type_detail_match` VALUES ('3', '裂缝', '纵向裂缝');
INSERT INTO `disease_type_detail_match` VALUES ('4', '裂缝', '横向裂缝');
INSERT INTO `disease_type_detail_match` VALUES ('5', '裂缝', '竖向裂纹');
INSERT INTO `disease_type_detail_match` VALUES ('6', '渗漏', '湿渍');
INSERT INTO `disease_type_detail_match` VALUES ('7', '渗漏', '渗水');
INSERT INTO `disease_type_detail_match` VALUES ('8', '渗漏', '水珠');
INSERT INTO `disease_type_detail_match` VALUES ('9', '渗漏', '滴漏');
INSERT INTO `disease_type_detail_match` VALUES ('10', '渗漏', '线漏');
INSERT INTO `disease_type_detail_match` VALUES ('11', '渗漏', '漏泥沙');
INSERT INTO `disease_type_detail_match` VALUES ('12', '缺损', '缺角');
INSERT INTO `disease_type_detail_match` VALUES ('13', '缺损', '止水带损坏');
INSERT INTO `disease_type_detail_match` VALUES ('14', '缺损', '螺栓损坏');
INSERT INTO `disease_type_detail_match` VALUES ('15', '错台', '环间错台');
INSERT INTO `disease_type_detail_match` VALUES ('16', '错台', '环内错台');
INSERT INTO `disease_type_detail_match` VALUES ('17', '张开', '变形缝张开');
INSERT INTO `disease_type_detail_match` VALUES ('18', '张开', '裂缝张开');
INSERT INTO `disease_type_detail_match` VALUES ('19', '腐蚀', '起壳');
INSERT INTO `disease_type_detail_match` VALUES ('20', '腐蚀', '锈斑');
INSERT INTO `disease_type_detail_match` VALUES ('21', '腐蚀', '泌出');
INSERT INTO `disease_type_detail_match` VALUES ('22', '腐蚀', '起皮');
INSERT INTO `disease_type_detail_match` VALUES ('23', '腐蚀', '起层');
INSERT INTO `disease_type_detail_match` VALUES ('24', '腐蚀', '蜂窝');
INSERT INTO `disease_type_detail_match` VALUES ('25', '腐蚀', '麻面');
INSERT INTO `disease_type_detail_match` VALUES ('26', '腐蚀', '松花');
INSERT INTO `disease_type_detail_match` VALUES ('27', '腐蚀', '凸起');
INSERT INTO `disease_type_detail_match` VALUES ('28', '腐蚀', '剥落');
INSERT INTO `disease_type_detail_match` VALUES ('29', '腐蚀', '凹陷');
INSERT INTO `disease_type_detail_match` VALUES ('30', '腐蚀', '掉粉');

-- ----------------------------
-- Table structure for disease_type_list
-- ----------------------------
DROP TABLE IF EXISTS `disease_type_list`;
CREATE TABLE `disease_type_list` (
  `DISEASE_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`DISEASE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disease_type_list
-- ----------------------------
INSERT INTO `disease_type_list` VALUES ('张开');
INSERT INTO `disease_type_list` VALUES ('渗漏');
INSERT INTO `disease_type_list` VALUES ('缺损');
INSERT INTO `disease_type_list` VALUES ('腐蚀');
INSERT INTO `disease_type_list` VALUES ('裂缝');
INSERT INTO `disease_type_list` VALUES ('错台');

-- ----------------------------
-- Table structure for disease_type_parameter_match
-- ----------------------------
DROP TABLE IF EXISTS `disease_type_parameter_match`;
CREATE TABLE `disease_type_parameter_match` (
  `MATCH_ID` int(3) NOT NULL AUTO_INCREMENT,
  `DISEASE_TYPE` varchar(50) DEFAULT NULL,
  `PARAMETER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MATCH_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of disease_type_parameter_match
-- ----------------------------
INSERT INTO `disease_type_parameter_match` VALUES ('1', '裂缝', '宽度');
INSERT INTO `disease_type_parameter_match` VALUES ('2', '裂缝', '长度');
INSERT INTO `disease_type_parameter_match` VALUES ('3', '裂缝', '深度');
INSERT INTO `disease_type_parameter_match` VALUES ('4', '渗漏', '面积');
INSERT INTO `disease_type_parameter_match` VALUES ('5', '缺损', '面积');
INSERT INTO `disease_type_parameter_match` VALUES ('6', '缺损', '深度');
INSERT INTO `disease_type_parameter_match` VALUES ('7', '错台', '错台量');
INSERT INTO `disease_type_parameter_match` VALUES ('8', '张开', '张开量');
INSERT INTO `disease_type_parameter_match` VALUES ('9', '腐蚀', '面积');

-- ----------------------------
-- Table structure for facility_type_list
-- ----------------------------
DROP TABLE IF EXISTS `facility_type_list`;
CREATE TABLE `facility_type_list` (
  `FACILITY_TYPE` varchar(30) NOT NULL,
  PRIMARY KEY (`FACILITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of facility_type_list
-- ----------------------------
INSERT INTO `facility_type_list` VALUES ('主体结构\r\n');
INSERT INTO `facility_type_list` VALUES ('横截沟\r\n');
INSERT INTO `facility_type_list` VALUES ('衬砌环\r\n');

-- ----------------------------
-- Table structure for model_name_list
-- ----------------------------
DROP TABLE IF EXISTS `model_name_list`;
CREATE TABLE `model_name_list` (
  `MODEL_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`MODEL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of model_name_list
-- ----------------------------
INSERT INTO `model_name_list` VALUES ('大型车道');
INSERT INTO `model_name_list` VALUES ('安全通道');
INSERT INTO `model_name_list` VALUES ('小型车道');
INSERT INTO `model_name_list` VALUES ('消防通道');
INSERT INTO `model_name_list` VALUES ('电缆通道');
INSERT INTO `model_name_list` VALUES ('紧急停靠\r\n');

-- ----------------------------
-- Table structure for monomer_no_list
-- ----------------------------
DROP TABLE IF EXISTS `monomer_no_list`;
CREATE TABLE `monomer_no_list` (
  `NO` varchar(10) NOT NULL,
  `Monomer_No` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monomer_no_list
-- ----------------------------
INSERT INTO `monomer_no_list` VALUES ('1', '东线隧道');
INSERT INTO `monomer_no_list` VALUES ('2', '西线隧道\r\n');
INSERT INTO `monomer_no_list` VALUES ('3', '浦东工作井\r\n');
INSERT INTO `monomer_no_list` VALUES ('4', '浦西工作井\r\n');
INSERT INTO `monomer_no_list` VALUES ('5', '1#联络通道\r\n');
INSERT INTO `monomer_no_list` VALUES ('6', '2#联络通道\r\n');
INSERT INTO `monomer_no_list` VALUES ('7', '隧道管理大楼\r\n');
INSERT INTO `monomer_no_list` VALUES ('8', '矩形段安全通道\r\n');
INSERT INTO `monomer_no_list` VALUES ('9', '矩形段电缆通道\r\n');
INSERT INTO `monomer_no_list` VALUES ('A', '保护区\r\n');
INSERT INTO `monomer_no_list` VALUES ('B', '浦东龙门架\r\n');
INSERT INTO `monomer_no_list` VALUES ('C', '浦西龙门架\r\n');

-- ----------------------------
-- Table structure for m_facility_list
-- ----------------------------
DROP TABLE IF EXISTS `m_facility_list`;
CREATE TABLE `m_facility_list` (
  `Facility_No` char(22) NOT NULL,
  `Facility_Name` varchar(50) DEFAULT NULL,
  `Facility_Importance` char(1) DEFAULT NULL,
  `Supplementary_Specification` varchar(255) DEFAULT NULL,
  `Complete_Date` date DEFAULT NULL,
  `Contingency_Plan` varchar(200) DEFAULT NULL,
  `Technical_Index` varchar(255) DEFAULT NULL,
  `Subsidy_Document` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`Facility_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_facility_list
-- ----------------------------

-- ----------------------------
-- Table structure for m_login
-- ----------------------------
DROP TABLE IF EXISTS `m_login`;
CREATE TABLE `m_login` (
  `LOGIN_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(200) DEFAULT NULL,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `IS_ADMIN` char(1) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `TEL_NO` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `TOKEN` varchar(50) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`LOGIN_ID`),
  CONSTRAINT `m_login_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `m_login_role` (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_login
-- ----------------------------

-- ----------------------------
-- Table structure for m_login_role
-- ----------------------------
DROP TABLE IF EXISTS `m_login_role`;
CREATE TABLE `m_login_role` (
  `LOGIN_ID` varchar(20) NOT NULL,
  `ROLE_ID` varchar(50) NOT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`LOGIN_ID`,`ROLE_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `m_login_role_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `m_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_login_role
-- ----------------------------

-- ----------------------------
-- Table structure for m_role
-- ----------------------------
DROP TABLE IF EXISTS `m_role`;
CREATE TABLE `m_role` (
  `ROLE_ID` varchar(50) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_role
-- ----------------------------
INSERT INTO `m_role` VALUES ('3', '技术人员', null, null, null, null, null);
INSERT INTO `m_role` VALUES ('6', '中控巡检管理', null, null, null, null, null);
INSERT INTO `m_role` VALUES ('7', '中控巡检采集', null, null, null, null, null);

-- ----------------------------
-- Table structure for pos_desp_list
-- ----------------------------
DROP TABLE IF EXISTS `pos_desp_list`;
CREATE TABLE `pos_desp_list` (
  `Pos_Desp` varchar(100) NOT NULL,
  PRIMARY KEY (`Pos_Desp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pos_desp_list
-- ----------------------------
INSERT INTO `pos_desp_list` VALUES ('注浆孔\r\n');
INSERT INTO `pos_desp_list` VALUES ('片缝\r\n');
INSERT INTO `pos_desp_list` VALUES ('环缝\r\n');
INSERT INTO `pos_desp_list` VALUES ('螺栓\r\n');
INSERT INTO `pos_desp_list` VALUES ('螺栓孔\r\n');
INSERT INTO `pos_desp_list` VALUES ('裂缝\r\n');

-- ----------------------------
-- Table structure for tunnel_mileage_monomer_match
-- ----------------------------
DROP TABLE IF EXISTS `tunnel_mileage_monomer_match`;
CREATE TABLE `tunnel_mileage_monomer_match` (
  `Monomer_No` varchar(10) DEFAULT NULL,
  `Tunnel` int(11) DEFAULT NULL,
  `MILEAGE` varchar(15) DEFAULT NULL,
  `FACILITY_NO` char(22) DEFAULT NULL,
  KEY `Monomer_No` (`Monomer_No`),
  CONSTRAINT `tunnel_mileage_monomer_match_ibfk_1` FOREIGN KEY (`Monomer_No`) REFERENCES `monomer_no_list` (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tunnel_mileage_monomer_match
-- ----------------------------
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1', 'EK11+700', 'HMNL104SZCQHK117000_A0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '2', 'EK11+702', 'HMNL104SZCQHK117020_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '3', 'EK11+704', 'HMNL104SZCQHK117040_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '4', 'EK11+706', 'HMNL104SZCQHK117060_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '5', 'EK11+708', 'HMNL104SZCQHK117080_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '6', 'EK11+710', 'HMNL104SZCQHK117100_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '7', 'EK11+712', 'HMNL104SZCQHK117120_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '8', 'EK11+714', 'HMNL104SZCQHK117140_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '9', 'EK11+716', 'HMNL104SZCQHK117160_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '10', 'EK11+718', 'HMNL104SZCQHK117180_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '11', 'EK11+720', 'HMNL104SZCQHK117200_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '12', 'EK11+722', 'HMNL104SZCQHK117220_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '13', 'EK11+724', 'HMNL104SZCQHK117240_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '14', 'EK11+726', 'HMNL104SZCQHK117260_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '15', 'EK11+728', 'HMNL104SZCQHK117280_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '16', 'EK11+730', 'HMNL104SZCQHK117300_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '17', 'EK11+732', 'HMNL104SZCQHK117320_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '18', 'EK11+734', 'HMNL104SZCQHK117340_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '19', 'EK11+736', 'HMNL104SZCQHK117360_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '20', 'EK11+738', 'HMNL104SZCQHK117380_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '21', 'EK11+740', 'HMNL104SZCQHK117400_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '22', 'EK11+742', 'HMNL104SZCQHK117420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '23', 'EK11+744', 'HMNL104SZCQHK117440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '24', 'EK11+746', 'HMNL104SZCQHK117460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '25', 'EK11+748', 'HMNL104SZCQHK117480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '26', 'EK11+750', 'HMNL104SZCQHK117500_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '27', 'EK11+752', 'HMNL104SZCQHK117520_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '28', 'EK11+754', 'HMNL104SZCQHK117540_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '29', 'EK11+756', 'HMNL104SZCQHK117560_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '30', 'EK11+758', 'HMNL104SZCQHK117580_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '31', 'EK11+760', 'HMNL104SZCQHK117600_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '32', 'EK11+762', 'HMNL104SZCQHK117620_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '33', 'EK11+764', 'HMNL104SZCQHK117640_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '34', 'EK11+766', 'HMNL104SZCQHK117660_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '35', 'EK11+768', 'HMNL104SZCQHK117680_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '36', 'EK11+770', 'HMNL104SZCQHK117700_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '37', 'EK11+772', 'HMNL104SZCQHK117720_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '38', 'EK11+774', 'HMNL104SZCQHK117740_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '39', 'EK11+776', 'HMNL104SZCQHK117760_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '40', 'EK11+778', 'HMNL104SZCQHK117780_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '41', 'EK11+780', 'HMNL104SZCQHK117800_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '42', 'EK11+782', 'HMNL104SZCQHK117820_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '43', 'EK11+784', 'HMNL104SZCQHK117840_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '44', 'EK11+786', 'HMNL104SZCQHK117860_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '45', 'EK11+788', 'HMNL104SZCQHK117880_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '46', 'EK11+790', 'HMNL104SZCQHK117900_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '47', 'EK11+792', 'HMNL104SZCQHK117920_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '48', 'EK11+794', 'HMNL104SZCQHK117940_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '49', 'EK11+796', 'HMNL104SZCQHK117960_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '50', 'EK11+798', 'HMNL104SZCQHK117980_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '51', 'EK11+800', 'HMNL104SZCQHK118000_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '52', 'EK11+802', 'HMNL104SZCQHK118020_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '53', 'EK11+804', 'HMNL104SZCQHK118040_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '54', 'EK11+806', 'HMNL104SZCQHK118060_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '55', 'EK11+808', 'HMNL104SZCQHK118080_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '56', 'EK11+810', 'HMNL104SZCQHK118100_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '57', 'EK11+812', 'HMNL104SZCQHK118120_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '58', 'EK11+814', 'HMNL104SZCQHK118140_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '59', 'EK11+816', 'HMNL104SZCQHK118160_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '60', 'EK11+818', 'HMNL104SZCQHK118180_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '61', 'EK11+820', 'HMNL104SZCQHK118200_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '62', 'EK11+822', 'HMNL104SZCQHK118220_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '63', 'EK11+824', 'HMNL104SZCQHK118240_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '64', 'EK11+826', 'HMNL104SZCQHK118260_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '65', 'EK11+828', 'HMNL104SZCQHK118280_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '66', 'EK11+830', 'HMNL104SZCQHK118300_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '67', 'EK11+832', 'HMNL104SZCQHK118320_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '68', 'EK11+834', 'HMNL104SZCQHK118340_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '69', 'EK11+836', 'HMNL104SZCQHK118360_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '70', 'EK11+838', 'HMNL104SZCQHK118380_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '71', 'EK11+840', 'HMNL104SZCQHK118400_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '72', 'EK11+842', 'HMNL104SZCQHK118420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '73', 'EK11+844', 'HMNL104SZCQHK118440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '74', 'EK11+846', 'HMNL104SZCQHK118460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '75', 'EK11+848', 'HMNL104SZCQHK118480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '76', 'EK11+850', 'HMNL104SZCQHK118500_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '77', 'EK11+852', 'HMNL104SZCQHK118520_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '78', 'EK11+854', 'HMNL104SZCQHK118540_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '79', 'EK11+856', 'HMNL104SZCQHK118560_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '80', 'EK11+858', 'HMNL104SZCQHK118580_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '81', 'EK11+860', 'HMNL104SZCQHK118600_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '82', 'EK11+862', 'HMNL104SZCQHK118620_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '83', 'EK11+864', 'HMNL104SZCQHK118640_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '84', 'EK11+866', 'HMNL104SZCQHK118660_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '85', 'EK11+868', 'HMNL104SZCQHK118680_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '86', 'EK11+870', 'HMNL104SZCQHK118700_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '87', 'EK11+872', 'HMNL104SZCQHK118720_C0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '88', 'EK11+874', 'HMNL104SZCQHK118740_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '89', 'EK11+876', 'HMNL104SZCQHK118760_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '90', 'EK11+878', 'HMNL104SZCQHK118780_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '91', 'EK11+880', 'HMNL104SZCQHK118800_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '92', 'EK11+882', 'HMNL104SZCQHK118820_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '93', 'EK11+884', 'HMNL104SZCQHK118840_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '94', 'EK11+886', 'HMNL104SZCQHK118860_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '95', 'EK11+888', 'HMNL104SZCQHK118880_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '96', 'EK11+890', 'HMNL104SZCQHK118900_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '97', 'EK11+892', 'HMNL104SZCQHK118920_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '98', 'EK11+894', 'HMNL104SZCQHK118940_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '99', 'EK11+896', 'HMNL104SZCQHK118960_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '100', 'EK11+898', 'HMNL104SZCQHK118980_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '101', 'EK11+900', 'HMNL104SZCQHK119000_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '102', 'EK11+902', 'HMNL104SZCQHK119020_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '103', 'EK11+904', 'HMNL104SZCQHK119040_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '104', 'EK11+906', 'HMNL104SZCQHK119060_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '105', 'EK11+908', 'HMNL104SZCQHK119080_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '106', 'EK11+910', 'HMNL104SZCQHK119100_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '107', 'EK11+912', 'HMNL104SZCQHK119120_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '108', 'EK11+914', 'HMNL104SZCQHK119140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '109', 'EK11+916', 'HMNL104SZCQHK119160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '110', 'EK11+918', 'HMNL104SZCQHK119180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '111', 'EK11+920', 'HMNL104SZCQHK119200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '112', 'EK11+922', 'HMNL104SZCQHK119220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '113', 'EK11+924', 'HMNL104SZCQHK119240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '114', 'EK11+926', 'HMNL104SZCQHK119260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '115', 'EK11+928', 'HMNL104SZCQHK119280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '116', 'EK11+930', 'HMNL104SZCQHK119300_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '117', 'EK11+932', 'HMNL104SZCQHK119320_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '118', 'EK11+934', 'HMNL104SZCQHK119340_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '119', 'EK11+936', 'HMNL104SZCQHK119360_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '120', 'EK11+938', 'HMNL104SZCQHK119380_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '121', 'EK11+940', 'HMNL104SZCQHK119400_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '122', 'EK11+942', 'HMNL104SZCQHK119420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '123', 'EK11+944', 'HMNL104SZCQHK119440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '124', 'EK11+946', 'HMNL104SZCQHK119460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '125', 'EK11+948', 'HMNL104SZCQHK119480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '126', 'EK11+950', 'HMNL104SZCQHK119500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '127', 'EK11+952', 'HMNL104SZCQHK119520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '128', 'EK11+954', 'HMNL104SZCQHK119540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '129', 'EK11+956', 'HMNL104SZCQHK119560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '130', 'EK11+958', 'HMNL104SZCQHK119580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '131', 'EK11+960', 'HMNL104SZCQHK119600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '132', 'EK11+962', 'HMNL104SZCQHK119620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '133', 'EK11+964', 'HMNL104SZCQHK119640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '134', 'EK11+966', 'HMNL104SZCQHK119660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '135', 'EK11+968', 'HMNL104SZCQHK119680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '136', 'EK11+970', 'HMNL104SZCQHK119700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '137', 'EK11+972', 'HMNL104SZCQHK119720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '138', 'EK11+974', 'HMNL104SZCQHK119740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '139', 'EK11+976', 'HMNL104SZCQHK119760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '140', 'EK11+978', 'HMNL104SZCQHK119780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '141', 'EK11+980', 'HMNL104SZCQHK119800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '142', 'EK11+982', 'HMNL104SZCQHK119820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '143', 'EK11+984', 'HMNL104SZCQHK119840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '144', 'EK11+986', 'HMNL104SZCQHK119860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '145', 'EK11+988', 'HMNL104SZCQHK119880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '146', 'EK11+990', 'HMNL104SZCQHK119900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '147', 'EK11+992', 'HMNL104SZCQHK119920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '148', 'EK11+994', 'HMNL104SZCQHK119940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '149', 'EK11+996', 'HMNL104SZCQHK119960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '150', 'EK11+998', 'HMNL104SZCQHK119980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '151', 'EK12+000', 'HMNL104SZCQHK120000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '152', 'EK12+002', 'HMNL104SZCQHK120020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '153', 'EK12+004', 'HMNL104SZCQHK120040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '154', 'EK12+006', 'HMNL104SZCQHK120060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '155', 'EK12+008', 'HMNL104SZCQHK120080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '156', 'EK12+010', 'HMNL104SZCQHK120100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '157', 'EK12+012', 'HMNL104SZCQHK120120_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '158', 'EK12+014', 'HMNL104SZCQHK120140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '159', 'EK12+016', 'HMNL104SZCQHK120160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '160', 'EK12+018', 'HMNL104SZCQHK120180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '161', 'EK12+020', 'HMNL104SZCQHK120200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '162', 'EK12+022', 'HMNL104SZCQHK120220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '163', 'EK12+024', 'HMNL104SZCQHK120240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '164', 'EK12+026', 'HMNL104SZCQHK120260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '165', 'EK12+028', 'HMNL104SZCQHK120280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '166', 'EK12+030', 'HMNL104SZCQHK120300_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '167', 'EK12+032', 'HMNL104SZCQHK120320_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '168', 'EK12+034', 'HMNL104SZCQHK120340_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '169', 'EK12+036', 'HMNL104SZCQHK120360_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '170', 'EK12+038', 'HMNL104SZCQHK120380_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '171', 'EK12+040', 'HMNL104SZCQHK120400_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '172', 'EK12+042', 'HMNL104SZCQHK120420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '173', 'EK12+044', 'HMNL104SZCQHK120440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '174', 'EK12+046', 'HMNL104SZCQHK120460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '175', 'EK12+048', 'HMNL104SZCQHK120480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '176', 'EK12+050', 'HMNL104SZCQHK120500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '177', 'EK12+052', 'HMNL104SZCQHK120520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '178', 'EK12+054', 'HMNL104SZCQHK120540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '179', 'EK12+056', 'HMNL104SZCQHK120560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '180', 'EK12+058', 'HMNL104SZCQHK120580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '181', 'EK12+060', 'HMNL104SZCQHK120600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '182', 'EK12+062', 'HMNL104SZCQHK120620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '183', 'EK12+064', 'HMNL104SZCQHK120640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '184', 'EK12+066', 'HMNL104SZCQHK120660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '185', 'EK12+068', 'HMNL104SZCQHK120680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '186', 'EK12+070', 'HMNL104SZCQHK120700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '187', 'EK12+072', 'HMNL104SZCQHK120720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '188', 'EK12+074', 'HMNL104SZCQHK120740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '189', 'EK12+076', 'HMNL104SZCQHK120760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '190', 'EK12+078', 'HMNL104SZCQHK120780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '191', 'EK12+080', 'HMNL104SZCQHK120800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '192', 'EK12+082', 'HMNL104SZCQHK120820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '193', 'EK12+084', 'HMNL104SZCQHK120840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '194', 'EK12+086', 'HMNL104SZCQHK120860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '195', 'EK12+088', 'HMNL104SZCQHK120880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '196', 'EK12+090', 'HMNL104SZCQHK120900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '197', 'EK12+092', 'HMNL104SZCQHK120920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '198', 'EK12+094', 'HMNL104SZCQHK120940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '199', 'EK12+096', 'HMNL104SZCQHK120960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '200', 'EK12+098', 'HMNL104SZCQHK120980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '201', 'EK12+100', 'HMNL104SZCQHK121000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '202', 'EK12+102', 'HMNL104SZCQHK121020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '203', 'EK12+104', 'HMNL104SZCQHK121040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '204', 'EK12+106', 'HMNL104SZCQHK121060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '205', 'EK12+108', 'HMNL104SZCQHK121080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '206', 'EK12+110', 'HMNL104SZCQHK121100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '207', 'EK12+112', 'HMNL104SZCQHK121120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '208', 'EK12+114', 'HMNL104SZCQHK121140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '209', 'EK12+116', 'HMNL104SZCQHK121160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '210', 'EK12+118', 'HMNL104SZCQHK121180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '211', 'EK12+120', 'HMNL104SZCQHK121200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '212', 'EK12+122', 'HMNL104SZCQHK121220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '213', 'EK12+124', 'HMNL104SZCQHK121240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '214', 'EK12+126', 'HMNL104SZCQHK121260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '215', 'EK12+128', 'HMNL104SZCQHK121280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '216', 'EK12+130', 'HMNL104SZCQHK121300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '217', 'EK12+132', 'HMNL104SZCQHK121320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '218', 'EK12+134', 'HMNL104SZCQHK121340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '219', 'EK12+136', 'HMNL104SZCQHK121360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '220', 'EK12+138', 'HMNL104SZCQHK121380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '221', 'EK12+140', 'HMNL104SZCQHK121400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '222', 'EK12+142', 'HMNL104SZCQHK121420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '223', 'EK12+144', 'HMNL104SZCQHK121440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '224', 'EK12+146', 'HMNL104SZCQHK121460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '225', 'EK12+148', 'HMNL104SZCQHK121480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '226', 'EK12+150', 'HMNL104SZCQHK121500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '227', 'EK12+152', 'HMNL104SZCQHK121520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '228', 'EK12+154', 'HMNL104SZCQHK121540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '229', 'EK12+156', 'HMNL104SZCQHK121560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '230', 'EK12+158', 'HMNL104SZCQHK121580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '231', 'EK12+160', 'HMNL104SZCQHK121600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '232', 'EK12+162', 'HMNL104SZCQHK121620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '233', 'EK12+164', 'HMNL104SZCQHK121640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '234', 'EK12+166', 'HMNL104SZCQHK121660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '235', 'EK12+168', 'HMNL104SZCQHK121680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '236', 'EK12+170', 'HMNL104SZCQHK121700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '237', 'EK12+172', 'HMNL104SZCQHK121720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '238', 'EK12+174', 'HMNL104SZCQHK121740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '239', 'EK12+176', 'HMNL104SZCQHK121760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '240', 'EK12+178', 'HMNL104SZCQHK121780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '241', 'EK12+180', 'HMNL104SZCQHK121800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '242', 'EK12+182', 'HMNL104SZCQHK121820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '243', 'EK12+184', 'HMNL104SZCQHK121840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '244', 'EK12+186', 'HMNL104SZCQHK121860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '245', 'EK12+188', 'HMNL104SZCQHK121880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '246', 'EK12+190', 'HMNL104SZCQHK121900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '247', 'EK12+192', 'HMNL104SZCQHK121920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '248', 'EK12+194', 'HMNL104SZCQHK121940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '249', 'EK12+196', 'HMNL104SZCQHK121960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '250', 'EK12+198', 'HMNL104SZCQHK121980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '251', 'EK12+200', 'HMNL104SZCQHK122000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '252', 'EK12+202', 'HMNL104SZCQHK122020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '253', 'EK12+204', 'HMNL104SZCQHK122040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '254', 'EK12+206', 'HMNL104SZCQHK122060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '255', 'EK12+208', 'HMNL104SZCQHK122080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '256', 'EK12+210', 'HMNL104SZCQHK122100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '257', 'EK12+212', 'HMNL104SZCQHK122120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '258', 'EK12+214', 'HMNL104SZCQHK122140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '259', 'EK12+216', 'HMNL104SZCQHK122160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '260', 'EK12+218', 'HMNL104SZCQHK122180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '261', 'EK12+220', 'HMNL104SZCQHK122200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '262', 'EK12+222', 'HMNL104SZCQHK122220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '263', 'EK12+224', 'HMNL104SZCQHK122240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '264', 'EK12+226', 'HMNL104SZCQHK122260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '265', 'EK12+228', 'HMNL104SZCQHK122280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '266', 'EK12+230', 'HMNL104SZCQHK122300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '267', 'EK12+232', 'HMNL104SZCQHK122320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '268', 'EK12+234', 'HMNL104SZCQHK122340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '269', 'EK12+236', 'HMNL104SZCQHK122360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '270', 'EK12+238', 'HMNL104SZCQHK122380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '271', 'EK12+240', 'HMNL104SZCQHK122400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '272', 'EK12+242', 'HMNL104SZCQHK122420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '273', 'EK12+244', 'HMNL104SZCQHK122440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '274', 'EK12+246', 'HMNL104SZCQHK122460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '275', 'EK12+248', 'HMNL104SZCQHK122480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '276', 'EK12+250', 'HMNL104SZCQHK122500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '277', 'EK12+252', 'HMNL104SZCQHK122520_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '278', 'EK12+254', 'HMNL104SZCQHK122540_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '279', 'EK12+256', 'HMNL104SZCQHK122560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '280', 'EK12+258', 'HMNL104SZCQHK122580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '281', 'EK12+260', 'HMNL104SZCQHK122600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '282', 'EK12+262', 'HMNL104SZCQHK122620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '283', 'EK12+264', 'HMNL104SZCQHK122640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '284', 'EK12+266', 'HMNL104SZCQHK122660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '285', 'EK12+268', 'HMNL104SZCQHK122680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '286', 'EK12+270', 'HMNL104SZCQHK122700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '287', 'EK12+272', 'HMNL104SZCQHK122720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '288', 'EK12+274', 'HMNL104SZCQHK122740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '289', 'EK12+276', 'HMNL104SZCQHK122760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '290', 'EK12+278', 'HMNL104SZCQHK122780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '291', 'EK12+280', 'HMNL104SZCQHK122800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '292', 'EK12+282', 'HMNL104SZCQHK122820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '293', 'EK12+284', 'HMNL104SZCQHK122840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '294', 'EK12+286', 'HMNL104SZCQHK122860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '295', 'EK12+288', 'HMNL104SZCQHK122880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '296', 'EK12+290', 'HMNL104SZCQHK122900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '297', 'EK12+292', 'HMNL104SZCQHK122920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '298', 'EK12+294', 'HMNL104SZCQHK122940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '299', 'EK12+296', 'HMNL104SZCQHK122960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '300', 'EK12+298', 'HMNL104SZCQHK122980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '301', 'EK12+300', 'HMNL104SZCQHK123000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '302', 'EK12+302', 'HMNL104SZCQHK123020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '303', 'EK12+304', 'HMNL104SZCQHK123040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '304', 'EK12+306', 'HMNL104SZCQHK123060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '305', 'EK12+308', 'HMNL104SZCQHK123080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '306', 'EK12+310', 'HMNL104SZCQHK123100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '307', 'EK12+312', 'HMNL104SZCQHK123120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '308', 'EK12+314', 'HMNL104SZCQHK123140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '309', 'EK12+316', 'HMNL104SZCQHK123160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '310', 'EK12+318', 'HMNL104SZCQHK123180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '311', 'EK12+320', 'HMNL104SZCQHK123200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '312', 'EK12+322', 'HMNL104SZCQHK123220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '313', 'EK12+324', 'HMNL104SZCQHK123240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '314', 'EK12+326', 'HMNL104SZCQHK123260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '315', 'EK12+328', 'HMNL104SZCQHK123280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '316', 'EK12+330', 'HMNL104SZCQHK123300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '317', 'EK12+332', 'HMNL104SZCQHK123320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '318', 'EK12+334', 'HMNL104SZCQHK123340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '319', 'EK12+336', 'HMNL104SZCQHK123360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '320', 'EK12+338', 'HMNL104SZCQHK123380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '321', 'EK12+340', 'HMNL104SZCQHK123400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '322', 'EK12+342', 'HMNL104SZCQHK123420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '323', 'EK12+344', 'HMNL104SZCQHK123440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '324', 'EK12+346', 'HMNL104SZCQHK123460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '325', 'EK12+348', 'HMNL104SZCQHK123480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '326', 'EK12+350', 'HMNL104SZCQHK123500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '327', 'EK12+352', 'HMNL104SZCQHK123520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '328', 'EK12+354', 'HMNL104SZCQHK123540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '329', 'EK12+356', 'HMNL104SZCQHK123560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '330', 'EK12+358', 'HMNL104SZCQHK123580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '331', 'EK12+360', 'HMNL104SZCQHK123600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '332', 'EK12+362', 'HMNL104SZCQHK123620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '333', 'EK12+364', 'HMNL104SZCQHK123640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '334', 'EK12+366', 'HMNL104SZCQHK123660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '335', 'EK12+368', 'HMNL104SZCQHK123680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '336', 'EK12+370', 'HMNL104SZCQHK123700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '337', 'EK12+372', 'HMNL104SZCQHK123720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '338', 'EK12+374', 'HMNL104SZCQHK123740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '339', 'EK12+376', 'HMNL104SZCQHK123760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '340', 'EK12+378', 'HMNL104SZCQHK123780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '341', 'EK12+380', 'HMNL104SZCQHK123800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '342', 'EK12+382', 'HMNL104SZCQHK123820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '343', 'EK12+384', 'HMNL104SZCQHK123840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '344', 'EK12+386', 'HMNL104SZCQHK123860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '345', 'EK12+388', 'HMNL104SZCQHK123880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '346', 'EK12+390', 'HMNL104SZCQHK123900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '347', 'EK12+392', 'HMNL104SZCQHK123920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '348', 'EK12+394', 'HMNL104SZCQHK123940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '349', 'EK12+396', 'HMNL104SZCQHK123960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '350', 'EK12+398', 'HMNL104SZCQHK123980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '351', 'EK12+400', 'HMNL104SZCQHK124000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '352', 'EK12+402', 'HMNL104SZCQHK124020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '353', 'EK12+404', 'HMNL104SZCQHK124040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '354', 'EK12+406', 'HMNL104SZCQHK124060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '355', 'EK12+408', 'HMNL104SZCQHK124080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '356', 'EK12+410', 'HMNL104SZCQHK124100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '357', 'EK12+412', 'HMNL104SZCQHK124120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '358', 'EK12+414', 'HMNL104SZCQHK124140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '359', 'EK12+416', 'HMNL104SZCQHK124160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '360', 'EK12+418', 'HMNL104SZCQHK124180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '361', 'EK12+420', 'HMNL104SZCQHK124200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '362', 'EK12+422', 'HMNL104SZCQHK124220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '363', 'EK12+424', 'HMNL104SZCQHK124240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '364', 'EK12+426', 'HMNL104SZCQHK124260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '365', 'EK12+428', 'HMNL104SZCQHK124280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '366', 'EK12+430', 'HMNL104SZCQHK124300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '367', 'EK12+432', 'HMNL104SZCQHK124320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '368', 'EK12+434', 'HMNL104SZCQHK124340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '369', 'EK12+436', 'HMNL104SZCQHK124360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '370', 'EK12+438', 'HMNL104SZCQHK124380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '371', 'EK12+440', 'HMNL104SZCQHK124400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '372', 'EK12+442', 'HMNL104SZCQHK124420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '373', 'EK12+444', 'HMNL104SZCQHK124440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '374', 'EK12+446', 'HMNL104SZCQHK124460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '375', 'EK12+448', 'HMNL104SZCQHK124480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '376', 'EK12+450', 'HMNL104SZCQHK124500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '377', 'EK12+452', 'HMNL104SZCQHK124520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '378', 'EK12+454', 'HMNL104SZCQHK124540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '379', 'EK12+456', 'HMNL104SZCQHK124560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '380', 'EK12+458', 'HMNL104SZCQHK124580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '381', 'EK12+460', 'HMNL104SZCQHK124600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '382', 'EK12+462', 'HMNL104SZCQHK124620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '383', 'EK12+464', 'HMNL104SZCQHK124640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '384', 'EK12+466', 'HMNL104SZCQHK124660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '385', 'EK12+468', 'HMNL104SZCQHK124680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '386', 'EK12+470', 'HMNL104SZCQHK124700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '387', 'EK12+472', 'HMNL104SZCQHK124720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '388', 'EK12+474', 'HMNL104SZCQHK124740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '389', 'EK12+476', 'HMNL104SZCQHK124760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '390', 'EK12+478', 'HMNL104SZCQHK124780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '391', 'EK12+480', 'HMNL104SZCQHK124800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '392', 'EK12+482', 'HMNL104SZCQHK124820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '393', 'EK12+484', 'HMNL104SZCQHK124840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '394', 'EK12+486', 'HMNL104SZCQHK124860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '395', 'EK12+488', 'HMNL104SZCQHK124880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '396', 'EK12+490', 'HMNL104SZCQHK124900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '397', 'EK12+492', 'HMNL104SZCQHK124920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '398', 'EK12+494', 'HMNL104SZCQHK124940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '399', 'EK12+496', 'HMNL104SZCQHK124960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '400', 'EK12+498', 'HMNL104SZCQHK124980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '401', 'EK12+500', 'HMNL104SZCQHK125000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '402', 'EK12+502', 'HMNL104SZCQHK125020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '403', 'EK12+504', 'HMNL104SZCQHK125040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '404', 'EK12+506', 'HMNL104SZCQHK125060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '405', 'EK12+508', 'HMNL104SZCQHK125080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '406', 'EK12+510', 'HMNL104SZCQHK125100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '407', 'EK12+512', 'HMNL104SZCQHK125120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '408', 'EK12+514', 'HMNL104SZCQHK125140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '409', 'EK12+516', 'HMNL104SZCQHK125160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '410', 'EK12+518', 'HMNL104SZCQHK125180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '411', 'EK12+520', 'HMNL104SZCQHK125200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '412', 'EK12+522', 'HMNL104SZCQHK125220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '413', 'EK12+524', 'HMNL104SZCQHK125240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '414', 'EK12+526', 'HMNL104SZCQHK125260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '415', 'EK12+528', 'HMNL104SZCQHK125280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '416', 'EK12+530', 'HMNL104SZCQHK125300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '417', 'EK12+532', 'HMNL104SZCQHK125320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '418', 'EK12+534', 'HMNL104SZCQHK125340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '419', 'EK12+536', 'HMNL104SZCQHK125360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '420', 'EK12+538', 'HMNL104SZCQHK125380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '421', 'EK12+540', 'HMNL104SZCQHK125400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '422', 'EK12+542', 'HMNL104SZCQHK125420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '423', 'EK12+544', 'HMNL104SZCQHK125440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '424', 'EK12+546', 'HMNL104SZCQHK125460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '425', 'EK12+548', 'HMNL104SZCQHK125480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '426', 'EK12+550', 'HMNL104SZCQHK125500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '427', 'EK12+552', 'HMNL104SZCQHK125520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '428', 'EK12+554', 'HMNL104SZCQHK125540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '429', 'EK12+556', 'HMNL104SZCQHK125560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '430', 'EK12+558', 'HMNL104SZCQHK125580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '431', 'EK12+560', 'HMNL104SZCQHK125600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '432', 'EK12+562', 'HMNL104SZCQHK125620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '433', 'EK12+564', 'HMNL104SZCQHK125640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '434', 'EK12+566', 'HMNL104SZCQHK125660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '435', 'EK12+568', 'HMNL104SZCQHK125680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '436', 'EK12+570', 'HMNL104SZCQHK125700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '437', 'EK12+572', 'HMNL104SZCQHK125720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '438', 'EK12+574', 'HMNL104SZCQHK125740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '439', 'EK12+576', 'HMNL104SZCQHK125760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '440', 'EK12+578', 'HMNL104SZCQHK125780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '441', 'EK12+580', 'HMNL104SZCQHK125800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '442', 'EK12+582', 'HMNL104SZCQHK125820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '443', 'EK12+584', 'HMNL104SZCQHK125840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '444', 'EK12+586', 'HMNL104SZCQHK125860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '445', 'EK12+588', 'HMNL104SZCQHK125880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '446', 'EK12+590', 'HMNL104SZCQHK125900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '447', 'EK12+592', 'HMNL104SZCQHK125920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '448', 'EK12+594', 'HMNL104SZCQHK125940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '449', 'EK12+596', 'HMNL104SZCQHK125960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '450', 'EK12+598', 'HMNL104SZCQHK125980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '451', 'EK12+600', 'HMNL104SZCQHK126000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '452', 'EK12+602', 'HMNL104SZCQHK126020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '453', 'EK12+604', 'HMNL104SZCQHK126040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '454', 'EK12+606', 'HMNL104SZCQHK126060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '455', 'EK12+608', 'HMNL104SZCQHK126080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '456', 'EK12+610', 'HMNL104SZCQHK126100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '457', 'EK12+612', 'HMNL104SZCQHK126120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '458', 'EK12+614', 'HMNL104SZCQHK126140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '459', 'EK12+616', 'HMNL104SZCQHK126160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '460', 'EK12+618', 'HMNL104SZCQHK126180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '461', 'EK12+620', 'HMNL104SZCQHK126200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '462', 'EK12+622', 'HMNL104SZCQHK126220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '463', 'EK12+624', 'HMNL104SZCQHK126240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '464', 'EK12+626', 'HMNL104SZCQHK126260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '465', 'EK12+628', 'HMNL104SZCQHK126280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '466', 'EK12+630', 'HMNL104SZCQHK126300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '467', 'EK12+632', 'HMNL104SZCQHK126320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '468', 'EK12+634', 'HMNL104SZCQHK126340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '469', 'EK12+636', 'HMNL104SZCQHK126360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '470', 'EK12+638', 'HMNL104SZCQHK126380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '471', 'EK12+640', 'HMNL104SZCQHK126400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '472', 'EK12+642', 'HMNL104SZCQHK126420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '473', 'EK12+644', 'HMNL104SZCQHK126440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '474', 'EK12+646', 'HMNL104SZCQHK126460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '475', 'EK12+648', 'HMNL104SZCQHK126480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '476', 'EK12+650', 'HMNL104SZCQHK126500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '477', 'EK12+652', 'HMNL104SZCQHK126520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '478', 'EK12+654', 'HMNL104SZCQHK126540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '479', 'EK12+656', 'HMNL104SZCQHK126560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '480', 'EK12+658', 'HMNL104SZCQHK126580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '481', 'EK12+660', 'HMNL104SZCQHK126600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '482', 'EK12+662', 'HMNL104SZCQHK126620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '483', 'EK12+664', 'HMNL104SZCQHK126640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '484', 'EK12+666', 'HMNL104SZCQHK126660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '485', 'EK12+668', 'HMNL104SZCQHK126680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '486', 'EK12+670', 'HMNL104SZCQHK126700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '487', 'EK12+672', 'HMNL104SZCQHK126720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '488', 'EK12+674', 'HMNL104SZCQHK126740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '489', 'EK12+676', 'HMNL104SZCQHK126760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '490', 'EK12+678', 'HMNL104SZCQHK126780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '491', 'EK12+680', 'HMNL104SZCQHK126800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '492', 'EK12+682', 'HMNL104SZCQHK126820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '493', 'EK12+684', 'HMNL104SZCQHK126840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '494', 'EK12+686', 'HMNL104SZCQHK126860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '495', 'EK12+688', 'HMNL104SZCQHK126880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '496', 'EK12+690', 'HMNL104SZCQHK126900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '497', 'EK12+692', 'HMNL104SZCQHK126920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '498', 'EK12+694', 'HMNL104SZCQHK126940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '499', 'EK12+696', 'HMNL104SZCQHK126960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '500', 'EK12+698', 'HMNL104SZCQHK126980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '501', 'EK12+700', 'HMNL104SZCQHK127000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '502', 'EK12+702', 'HMNL104SZCQHK127020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '503', 'EK12+704', 'HMNL104SZCQHK127040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '504', 'EK12+706', 'HMNL104SZCQHK127060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '505', 'EK12+708', 'HMNL104SZCQHK127080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '506', 'EK12+710', 'HMNL104SZCQHK127100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '507', 'EK12+712', 'HMNL104SZCQHK127120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '508', 'EK12+714', 'HMNL104SZCQHK127140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '509', 'EK12+716', 'HMNL104SZCQHK127160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '510', 'EK12+718', 'HMNL104SZCQHK127180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '511', 'EK12+720', 'HMNL104SZCQHK127200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '512', 'EK12+722', 'HMNL104SZCQHK127220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '513', 'EK12+724', 'HMNL104SZCQHK127240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '514', 'EK12+726', 'HMNL104SZCQHK127260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '515', 'EK12+728', 'HMNL104SZCQHK127280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '516', 'EK12+730', 'HMNL104SZCQHK127300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '517', 'EK12+732', 'HMNL104SZCQHK127320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '518', 'EK12+734', 'HMNL104SZCQHK127340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '519', 'EK12+736', 'HMNL104SZCQHK127360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '520', 'EK12+738', 'HMNL104SZCQHK127380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '521', 'EK12+740', 'HMNL104SZCQHK127400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '522', 'EK12+742', 'HMNL104SZCQHK127420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '523', 'EK12+744', 'HMNL104SZCQHK127440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '524', 'EK12+746', 'HMNL104SZCQHK127460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '525', 'EK12+748', 'HMNL104SZCQHK127480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '526', 'EK12+750', 'HMNL104SZCQHK127500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '527', 'EK12+752', 'HMNL104SZCQHK127520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '528', 'EK12+754', 'HMNL104SZCQHK127540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '529', 'EK12+756', 'HMNL104SZCQHK127560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '530', 'EK12+758', 'HMNL104SZCQHK127580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '531', 'EK12+760', 'HMNL104SZCQHK127600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '532', 'EK12+762', 'HMNL104SZCQHK127620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '533', 'EK12+764', 'HMNL104SZCQHK127640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '534', 'EK12+766', 'HMNL104SZCQHK127660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '535', 'EK12+768', 'HMNL104SZCQHK127680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '536', 'EK12+770', 'HMNL104SZCQHK127700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '537', 'EK12+772', 'HMNL104SZCQHK127720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '538', 'EK12+774', 'HMNL104SZCQHK127740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '539', 'EK12+776', 'HMNL104SZCQHK127760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '540', 'EK12+778', 'HMNL104SZCQHK127780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '541', 'EK12+780', 'HMNL104SZCQHK127800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '542', 'EK12+782', 'HMNL104SZCQHK127820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '543', 'EK12+784', 'HMNL104SZCQHK127840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '544', 'EK12+786', 'HMNL104SZCQHK127860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '545', 'EK12+788', 'HMNL104SZCQHK127880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '546', 'EK12+790', 'HMNL104SZCQHK127900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '547', 'EK12+792', 'HMNL104SZCQHK127920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '548', 'EK12+794', 'HMNL104SZCQHK127940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '549', 'EK12+796', 'HMNL104SZCQHK127960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '550', 'EK12+798', 'HMNL104SZCQHK127980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '551', 'EK12+800', 'HMNL104SZCQHK128000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '552', 'EK12+802', 'HMNL104SZCQHK128020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '553', 'EK12+804', 'HMNL104SZCQHK128040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '554', 'EK12+806', 'HMNL104SZCQHK128060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '555', 'EK12+808', 'HMNL104SZCQHK128080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '556', 'EK12+810', 'HMNL104SZCQHK128100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '557', 'EK12+812', 'HMNL104SZCQHK128120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '558', 'EK12+814', 'HMNL104SZCQHK128140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '559', 'EK12+816', 'HMNL104SZCQHK128160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '560', 'EK12+818', 'HMNL104SZCQHK128180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '561', 'EK12+820', 'HMNL104SZCQHK128200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '562', 'EK12+822', 'HMNL104SZCQHK128220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '563', 'EK12+824', 'HMNL104SZCQHK128240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '564', 'EK12+826', 'HMNL104SZCQHK128260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '565', 'EK12+828', 'HMNL104SZCQHK128280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '566', 'EK12+830', 'HMNL104SZCQHK128300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '567', 'EK12+832', 'HMNL104SZCQHK128320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '568', 'EK12+834', 'HMNL104SZCQHK128340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '569', 'EK12+836', 'HMNL104SZCQHK128360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '570', 'EK12+838', 'HMNL104SZCQHK128380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '571', 'EK12+840', 'HMNL104SZCQHK128400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '572', 'EK12+842', 'HMNL104SZCQHK128420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '573', 'EK12+844', 'HMNL104SZCQHK128440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '574', 'EK12+846', 'HMNL104SZCQHK128460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '575', 'EK12+848', 'HMNL104SZCQHK128480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '576', 'EK12+850', 'HMNL104SZCQHK128500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '577', 'EK12+852', 'HMNL104SZCQHK128520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '578', 'EK12+854', 'HMNL104SZCQHK128540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '579', 'EK12+856', 'HMNL104SZCQHK128560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '580', 'EK12+858', 'HMNL104SZCQHK128580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '581', 'EK12+860', 'HMNL104SZCQHK128600_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '582', 'EK12+862', 'HMNL104SZCQHK128620_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '583', 'EK12+864', 'HMNL104SZCQHK128640_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '584', 'EK12+866', 'HMNL104SZCQHK128660_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '585', 'EK12+868', 'HMNL104SZCQHK128680_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '586', 'EK12+870', 'HMNL104SZCQHK128700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '587', 'EK12+872', 'HMNL104SZCQHK128720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '588', 'EK12+874', 'HMNL104SZCQHK128740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '589', 'EK12+876', 'HMNL104SZCQHK128760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '590', 'EK12+878', 'HMNL104SZCQHK128780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '591', 'EK12+880', 'HMNL104SZCQHK128800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '592', 'EK12+882', 'HMNL104SZCQHK128820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '593', 'EK12+884', 'HMNL104SZCQHK128840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '594', 'EK12+886', 'HMNL104SZCQHK128860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '595', 'EK12+888', 'HMNL104SZCQHK128880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '596', 'EK12+890', 'HMNL104SZCQHK128900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '597', 'EK12+892', 'HMNL104SZCQHK128920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '598', 'EK12+894', 'HMNL104SZCQHK128940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '599', 'EK12+896', 'HMNL104SZCQHK128960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '600', 'EK12+898', 'HMNL104SZCQHK128980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '601', 'EK12+900', 'HMNL104SZCQHK129000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '602', 'EK12+902', 'HMNL104SZCQHK129020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '603', 'EK12+904', 'HMNL104SZCQHK129040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '604', 'EK12+906', 'HMNL104SZCQHK129060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '605', 'EK12+908', 'HMNL104SZCQHK129080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '606', 'EK12+910', 'HMNL104SZCQHK129100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '607', 'EK12+912', 'HMNL104SZCQHK129120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '608', 'EK12+914', 'HMNL104SZCQHK129140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '609', 'EK12+916', 'HMNL104SZCQHK129160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '610', 'EK12+918', 'HMNL104SZCQHK129180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '611', 'EK12+920', 'HMNL104SZCQHK129200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '612', 'EK12+922', 'HMNL104SZCQHK129220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '613', 'EK12+924', 'HMNL104SZCQHK129240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '614', 'EK12+926', 'HMNL104SZCQHK129260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '615', 'EK12+928', 'HMNL104SZCQHK129280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '616', 'EK12+930', 'HMNL104SZCQHK129300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '617', 'EK12+932', 'HMNL104SZCQHK129320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '618', 'EK12+934', 'HMNL104SZCQHK129340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '619', 'EK12+936', 'HMNL104SZCQHK129360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '620', 'EK12+938', 'HMNL104SZCQHK129380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '621', 'EK12+940', 'HMNL104SZCQHK129400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '622', 'EK12+942', 'HMNL104SZCQHK129420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '623', 'EK12+944', 'HMNL104SZCQHK129440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '624', 'EK12+946', 'HMNL104SZCQHK129460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '625', 'EK12+948', 'HMNL104SZCQHK129480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '626', 'EK12+950', 'HMNL104SZCQHK129500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '627', 'EK12+952', 'HMNL104SZCQHK129520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '628', 'EK12+954', 'HMNL104SZCQHK129540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '629', 'EK12+956', 'HMNL104SZCQHK129560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '630', 'EK12+958', 'HMNL104SZCQHK129580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '631', 'EK12+960', 'HMNL104SZCQHK129600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '632', 'EK12+962', 'HMNL104SZCQHK129620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '633', 'EK12+964', 'HMNL104SZCQHK129640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '634', 'EK12+966', 'HMNL104SZCQHK129660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '635', 'EK12+968', 'HMNL104SZCQHK129680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '636', 'EK12+970', 'HMNL104SZCQHK129700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '637', 'EK12+972', 'HMNL104SZCQHK129720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '638', 'EK12+974', 'HMNL104SZCQHK129740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '639', 'EK12+976', 'HMNL104SZCQHK129760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '640', 'EK12+978', 'HMNL104SZCQHK129780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '641', 'EK12+980', 'HMNL104SZCQHK129800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '642', 'EK12+982', 'HMNL104SZCQHK129820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '643', 'EK12+984', 'HMNL104SZCQHK129840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '644', 'EK12+986', 'HMNL104SZCQHK129860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '645', 'EK12+988', 'HMNL104SZCQHK129880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '646', 'EK12+990', 'HMNL104SZCQHK129900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '647', 'EK12+992', 'HMNL104SZCQHK129920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '648', 'EK12+994', 'HMNL104SZCQHK129940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '649', 'EK12+996', 'HMNL104SZCQHK129960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '650', 'EK12+998', 'HMNL104SZCQHK129980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '651', 'EK13+000', 'HMNL104SZCQHK130000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '652', 'EK13+002', 'HMNL104SZCQHK130020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '653', 'EK13+004', 'HMNL104SZCQHK130040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '654', 'EK13+006', 'HMNL104SZCQHK130060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '655', 'EK13+008', 'HMNL104SZCQHK130080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '656', 'EK13+010', 'HMNL104SZCQHK130100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '657', 'EK13+012', 'HMNL104SZCQHK130120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '658', 'EK13+014', 'HMNL104SZCQHK130140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '659', 'EK13+016', 'HMNL104SZCQHK130160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '660', 'EK13+018', 'HMNL104SZCQHK130180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '661', 'EK13+020', 'HMNL104SZCQHK130200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '662', 'EK13+022', 'HMNL104SZCQHK130220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '663', 'EK13+024', 'HMNL104SZCQHK130240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '664', 'EK13+026', 'HMNL104SZCQHK130260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '665', 'EK13+028', 'HMNL104SZCQHK130280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '666', 'EK13+030', 'HMNL104SZCQHK130300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '667', 'EK13+032', 'HMNL104SZCQHK130320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '668', 'EK13+034', 'HMNL104SZCQHK130340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '669', 'EK13+036', 'HMNL104SZCQHK130360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '670', 'EK13+038', 'HMNL104SZCQHK130380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '671', 'EK13+040', 'HMNL104SZCQHK130400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '672', 'EK13+042', 'HMNL104SZCQHK130420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '673', 'EK13+044', 'HMNL104SZCQHK130440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '674', 'EK13+046', 'HMNL104SZCQHK130460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '675', 'EK13+048', 'HMNL104SZCQHK130480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '676', 'EK13+050', 'HMNL104SZCQHK130500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '677', 'EK13+052', 'HMNL104SZCQHK130520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '678', 'EK13+054', 'HMNL104SZCQHK130540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '679', 'EK13+056', 'HMNL104SZCQHK130560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '680', 'EK13+058', 'HMNL104SZCQHK130580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '681', 'EK13+060', 'HMNL104SZCQHK130600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '682', 'EK13+062', 'HMNL104SZCQHK130620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '683', 'EK13+064', 'HMNL104SZCQHK130640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '684', 'EK13+066', 'HMNL104SZCQHK130660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '685', 'EK13+068', 'HMNL104SZCQHK130680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '686', 'EK13+070', 'HMNL104SZCQHK130700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '687', 'EK13+072', 'HMNL104SZCQHK130720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '688', 'EK13+074', 'HMNL104SZCQHK130740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '689', 'EK13+076', 'HMNL104SZCQHK130760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '690', 'EK13+078', 'HMNL104SZCQHK130780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '691', 'EK13+080', 'HMNL104SZCQHK130800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '692', 'EK13+082', 'HMNL104SZCQHK130820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '693', 'EK13+084', 'HMNL104SZCQHK130840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '694', 'EK13+086', 'HMNL104SZCQHK130860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '695', 'EK13+088', 'HMNL104SZCQHK130880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '696', 'EK13+090', 'HMNL104SZCQHK130900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '697', 'EK13+092', 'HMNL104SZCQHK130920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '698', 'EK13+094', 'HMNL104SZCQHK130940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '699', 'EK13+096', 'HMNL104SZCQHK130960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '700', 'EK13+098', 'HMNL104SZCQHK130980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '701', 'EK13+100', 'HMNL104SZCQHK131000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '702', 'EK13+102', 'HMNL104SZCQHK131020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '703', 'EK13+104', 'HMNL104SZCQHK131040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '704', 'EK13+106', 'HMNL104SZCQHK131060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '705', 'EK13+108', 'HMNL104SZCQHK131080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '706', 'EK13+110', 'HMNL104SZCQHK131100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '707', 'EK13+112', 'HMNL104SZCQHK131120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '708', 'EK13+114', 'HMNL104SZCQHK131140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '709', 'EK13+116', 'HMNL104SZCQHK131160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '710', 'EK13+118', 'HMNL104SZCQHK131180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '711', 'EK13+120', 'HMNL104SZCQHK131200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '712', 'EK13+122', 'HMNL104SZCQHK131220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '713', 'EK13+124', 'HMNL104SZCQHK131240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '714', 'EK13+126', 'HMNL104SZCQHK131260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '715', 'EK13+128', 'HMNL104SZCQHK131280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '716', 'EK13+130', 'HMNL104SZCQHK131300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '717', 'EK13+132', 'HMNL104SZCQHK131320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '718', 'EK13+134', 'HMNL104SZCQHK131340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '719', 'EK13+136', 'HMNL104SZCQHK131360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '720', 'EK13+138', 'HMNL104SZCQHK131380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '721', 'EK13+140', 'HMNL104SZCQHK131400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '722', 'EK13+142', 'HMNL104SZCQHK131420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '723', 'EK13+144', 'HMNL104SZCQHK131440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '724', 'EK13+146', 'HMNL104SZCQHK131460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '725', 'EK13+148', 'HMNL104SZCQHK131480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '726', 'EK13+150', 'HMNL104SZCQHK131500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '727', 'EK13+152', 'HMNL104SZCQHK131520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '728', 'EK13+154', 'HMNL104SZCQHK131540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '729', 'EK13+156', 'HMNL104SZCQHK131560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '730', 'EK13+158', 'HMNL104SZCQHK131580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '731', 'EK13+160', 'HMNL104SZCQHK131600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '732', 'EK13+162', 'HMNL104SZCQHK131620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '733', 'EK13+164', 'HMNL104SZCQHK131640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '734', 'EK13+166', 'HMNL104SZCQHK131660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '735', 'EK13+168', 'HMNL104SZCQHK131680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '736', 'EK13+170', 'HMNL104SZCQHK131700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '737', 'EK13+172', 'HMNL104SZCQHK131720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '738', 'EK13+174', 'HMNL104SZCQHK131740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '739', 'EK13+176', 'HMNL104SZCQHK131760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '740', 'EK13+178', 'HMNL104SZCQHK131780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '741', 'EK13+180', 'HMNL104SZCQHK131800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '742', 'EK13+182', 'HMNL104SZCQHK131820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '743', 'EK13+184', 'HMNL104SZCQHK131840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '744', 'EK13+186', 'HMNL104SZCQHK131860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '745', 'EK13+188', 'HMNL104SZCQHK131880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '746', 'EK13+190', 'HMNL104SZCQHK131900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '747', 'EK13+192', 'HMNL104SZCQHK131920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '748', 'EK13+194', 'HMNL104SZCQHK131940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '749', 'EK13+196', 'HMNL104SZCQHK131960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '750', 'EK13+198', 'HMNL104SZCQHK131980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '751', 'EK13+200', 'HMNL104SZCQHK132000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '752', 'EK13+202', 'HMNL104SZCQHK132020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '753', 'EK13+204', 'HMNL104SZCQHK132040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '754', 'EK13+206', 'HMNL104SZCQHK132060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '755', 'EK13+208', 'HMNL104SZCQHK132080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '756', 'EK13+210', 'HMNL104SZCQHK132100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '757', 'EK13+212', 'HMNL104SZCQHK132120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '758', 'EK13+214', 'HMNL104SZCQHK132140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '759', 'EK13+216', 'HMNL104SZCQHK132160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '760', 'EK13+218', 'HMNL104SZCQHK132180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '761', 'EK13+220', 'HMNL104SZCQHK132200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '762', 'EK13+222', 'HMNL104SZCQHK132220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '763', 'EK13+224', 'HMNL104SZCQHK132240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '764', 'EK13+226', 'HMNL104SZCQHK132260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '765', 'EK13+228', 'HMNL104SZCQHK132280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '766', 'EK13+230', 'HMNL104SZCQHK132300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '767', 'EK13+232', 'HMNL104SZCQHK132320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '768', 'EK13+234', 'HMNL104SZCQHK132340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '769', 'EK13+236', 'HMNL104SZCQHK132360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '770', 'EK13+238', 'HMNL104SZCQHK132380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '771', 'EK13+240', 'HMNL104SZCQHK132400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '772', 'EK13+242', 'HMNL104SZCQHK132420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '773', 'EK13+244', 'HMNL104SZCQHK132440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '774', 'EK13+246', 'HMNL104SZCQHK132460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '775', 'EK13+248', 'HMNL104SZCQHK132480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '776', 'EK13+250', 'HMNL104SZCQHK132500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '777', 'EK13+252', 'HMNL104SZCQHK132520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '778', 'EK13+254', 'HMNL104SZCQHK132540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '779', 'EK13+256', 'HMNL104SZCQHK132560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '780', 'EK13+258', 'HMNL104SZCQHK132580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '781', 'EK13+260', 'HMNL104SZCQHK132600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '782', 'EK13+262', 'HMNL104SZCQHK132620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '783', 'EK13+264', 'HMNL104SZCQHK132640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '784', 'EK13+266', 'HMNL104SZCQHK132660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '785', 'EK13+268', 'HMNL104SZCQHK132680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '786', 'EK13+270', 'HMNL104SZCQHK132700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '787', 'EK13+272', 'HMNL104SZCQHK132720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '788', 'EK13+274', 'HMNL104SZCQHK132740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '789', 'EK13+276', 'HMNL104SZCQHK132760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '790', 'EK13+278', 'HMNL104SZCQHK132780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '791', 'EK13+280', 'HMNL104SZCQHK132800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '792', 'EK13+282', 'HMNL104SZCQHK132820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '793', 'EK13+284', 'HMNL104SZCQHK132840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '794', 'EK13+286', 'HMNL104SZCQHK132860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '795', 'EK13+288', 'HMNL104SZCQHK132880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '796', 'EK13+290', 'HMNL104SZCQHK132900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '797', 'EK13+292', 'HMNL104SZCQHK132920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '798', 'EK13+294', 'HMNL104SZCQHK132940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '799', 'EK13+296', 'HMNL104SZCQHK132960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '800', 'EK13+298', 'HMNL104SZCQHK132980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '801', 'EK13+300', 'HMNL104SZCQHK133000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '802', 'EK13+302', 'HMNL104SZCQHK133020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '803', 'EK13+304', 'HMNL104SZCQHK133040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '804', 'EK13+306', 'HMNL104SZCQHK133060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '805', 'EK13+308', 'HMNL104SZCQHK133080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '806', 'EK13+310', 'HMNL104SZCQHK133100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '807', 'EK13+312', 'HMNL104SZCQHK133120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '808', 'EK13+314', 'HMNL104SZCQHK133140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '809', 'EK13+316', 'HMNL104SZCQHK133160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '810', 'EK13+318', 'HMNL104SZCQHK133180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '811', 'EK13+320', 'HMNL104SZCQHK133200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '812', 'EK13+322', 'HMNL104SZCQHK133220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '813', 'EK13+324', 'HMNL104SZCQHK133240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '814', 'EK13+326', 'HMNL104SZCQHK133260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '815', 'EK13+328', 'HMNL104SZCQHK133280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '816', 'EK13+330', 'HMNL104SZCQHK133300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '817', 'EK13+332', 'HMNL104SZCQHK133320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '818', 'EK13+334', 'HMNL104SZCQHK133340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '819', 'EK13+336', 'HMNL104SZCQHK133360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '820', 'EK13+338', 'HMNL104SZCQHK133380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '821', 'EK13+340', 'HMNL104SZCQHK133400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '822', 'EK13+342', 'HMNL104SZCQHK133420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '823', 'EK13+344', 'HMNL104SZCQHK133440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '824', 'EK13+346', 'HMNL104SZCQHK133460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '825', 'EK13+348', 'HMNL104SZCQHK133480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '826', 'EK13+350', 'HMNL104SZCQHK133500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '827', 'EK13+352', 'HMNL104SZCQHK133520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '828', 'EK13+354', 'HMNL104SZCQHK133540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '829', 'EK13+356', 'HMNL104SZCQHK133560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '830', 'EK13+358', 'HMNL104SZCQHK133580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '831', 'EK13+360', 'HMNL104SZCQHK133600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '832', 'EK13+362', 'HMNL104SZCQHK133620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '833', 'EK13+364', 'HMNL104SZCQHK133640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '834', 'EK13+366', 'HMNL104SZCQHK133660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '835', 'EK13+368', 'HMNL104SZCQHK133680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '836', 'EK13+370', 'HMNL104SZCQHK133700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '837', 'EK13+372', 'HMNL104SZCQHK133720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '838', 'EK13+374', 'HMNL104SZCQHK133740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '839', 'EK13+376', 'HMNL104SZCQHK133760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '840', 'EK13+378', 'HMNL104SZCQHK133780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '841', 'EK13+380', 'HMNL104SZCQHK133800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '842', 'EK13+382', 'HMNL104SZCQHK133820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '843', 'EK13+384', 'HMNL104SZCQHK133840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '844', 'EK13+386', 'HMNL104SZCQHK133860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '845', 'EK13+388', 'HMNL104SZCQHK133880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '846', 'EK13+390', 'HMNL104SZCQHK133900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '847', 'EK13+392', 'HMNL104SZCQHK133920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '848', 'EK13+394', 'HMNL104SZCQHK133940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '849', 'EK13+396', 'HMNL104SZCQHK133960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '850', 'EK13+398', 'HMNL104SZCQHK133980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '851', 'EK13+400', 'HMNL104SZCQHK134000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '852', 'EK13+402', 'HMNL104SZCQHK134020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '853', 'EK13+404', 'HMNL104SZCQHK134040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '854', 'EK13+406', 'HMNL104SZCQHK134060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '855', 'EK13+408', 'HMNL104SZCQHK134080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '856', 'EK13+410', 'HMNL104SZCQHK134100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '857', 'EK13+412', 'HMNL104SZCQHK134120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '858', 'EK13+414', 'HMNL104SZCQHK134140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '859', 'EK13+416', 'HMNL104SZCQHK134160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '860', 'EK13+418', 'HMNL104SZCQHK134180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '861', 'EK13+420', 'HMNL104SZCQHK134200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '862', 'EK13+422', 'HMNL104SZCQHK134220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '863', 'EK13+424', 'HMNL104SZCQHK134240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '864', 'EK13+426', 'HMNL104SZCQHK134260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '865', 'EK13+428', 'HMNL104SZCQHK134280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '866', 'EK13+430', 'HMNL104SZCQHK134300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '867', 'EK13+432', 'HMNL104SZCQHK134320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '868', 'EK13+434', 'HMNL104SZCQHK134340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '869', 'EK13+436', 'HMNL104SZCQHK134360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '870', 'EK13+438', 'HMNL104SZCQHK134380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '871', 'EK13+440', 'HMNL104SZCQHK134400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '872', 'EK13+442', 'HMNL104SZCQHK134420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '873', 'EK13+444', 'HMNL104SZCQHK134440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '874', 'EK13+446', 'HMNL104SZCQHK134460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '875', 'EK13+448', 'HMNL104SZCQHK134480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '876', 'EK13+450', 'HMNL104SZCQHK134500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '877', 'EK13+452', 'HMNL104SZCQHK134520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '878', 'EK13+454', 'HMNL104SZCQHK134540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '879', 'EK13+456', 'HMNL104SZCQHK134560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '880', 'EK13+458', 'HMNL104SZCQHK134580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '881', 'EK13+460', 'HMNL104SZCQHK134600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '882', 'EK13+462', 'HMNL104SZCQHK134620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '883', 'EK13+464', 'HMNL104SZCQHK134640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '884', 'EK13+466', 'HMNL104SZCQHK134660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '885', 'EK13+468', 'HMNL104SZCQHK134680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '886', 'EK13+470', 'HMNL104SZCQHK134700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '887', 'EK13+472', 'HMNL104SZCQHK134720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '888', 'EK13+474', 'HMNL104SZCQHK134740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '889', 'EK13+476', 'HMNL104SZCQHK134760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '890', 'EK13+478', 'HMNL104SZCQHK134780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '891', 'EK13+480', 'HMNL104SZCQHK134800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '892', 'EK13+482', 'HMNL104SZCQHK134820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '893', 'EK13+484', 'HMNL104SZCQHK134840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '894', 'EK13+486', 'HMNL104SZCQHK134860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '895', 'EK13+488', 'HMNL104SZCQHK134880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '896', 'EK13+490', 'HMNL104SZCQHK134900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '897', 'EK13+492', 'HMNL104SZCQHK134920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '898', 'EK13+494', 'HMNL104SZCQHK134940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '899', 'EK13+496', 'HMNL104SZCQHK134960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '900', 'EK13+498', 'HMNL104SZCQHK134980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '901', 'EK13+500', 'HMNL104SZCQHK135000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '902', 'EK13+502', 'HMNL104SZCQHK135020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '903', 'EK13+504', 'HMNL104SZCQHK135040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '904', 'EK13+506', 'HMNL104SZCQHK135060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '905', 'EK13+508', 'HMNL104SZCQHK135080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '906', 'EK13+510', 'HMNL104SZCQHK135100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '907', 'EK13+512', 'HMNL104SZCQHK135120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '908', 'EK13+514', 'HMNL104SZCQHK135140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '909', 'EK13+516', 'HMNL104SZCQHK135160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '910', 'EK13+518', 'HMNL104SZCQHK135180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '911', 'EK13+520', 'HMNL104SZCQHK135200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '912', 'EK13+522', 'HMNL104SZCQHK135220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '913', 'EK13+524', 'HMNL104SZCQHK135240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '914', 'EK13+526', 'HMNL104SZCQHK135260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '915', 'EK13+528', 'HMNL104SZCQHK135280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '916', 'EK13+530', 'HMNL104SZCQHK135300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '917', 'EK13+532', 'HMNL104SZCQHK135320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '918', 'EK13+534', 'HMNL104SZCQHK135340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '919', 'EK13+536', 'HMNL104SZCQHK135360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '920', 'EK13+538', 'HMNL104SZCQHK135380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '921', 'EK13+540', 'HMNL104SZCQHK135400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '922', 'EK13+542', 'HMNL104SZCQHK135420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '923', 'EK13+544', 'HMNL104SZCQHK135440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '924', 'EK13+546', 'HMNL104SZCQHK135460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '925', 'EK13+548', 'HMNL104SZCQHK135480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '926', 'EK13+550', 'HMNL104SZCQHK135500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '927', 'EK13+552', 'HMNL104SZCQHK135520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '928', 'EK13+554', 'HMNL104SZCQHK135540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '929', 'EK13+556', 'HMNL104SZCQHK135560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '930', 'EK13+558', 'HMNL104SZCQHK135580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '931', 'EK13+560', 'HMNL104SZCQHK135600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '932', 'EK13+562', 'HMNL104SZCQHK135620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '933', 'EK13+564', 'HMNL104SZCQHK135640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '934', 'EK13+566', 'HMNL104SZCQHK135660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '935', 'EK13+568', 'HMNL104SZCQHK135680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '936', 'EK13+570', 'HMNL104SZCQHK135700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '937', 'EK13+572', 'HMNL104SZCQHK135720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '938', 'EK13+574', 'HMNL104SZCQHK135740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '939', 'EK13+576', 'HMNL104SZCQHK135760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '940', 'EK13+578', 'HMNL104SZCQHK135780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '941', 'EK13+580', 'HMNL104SZCQHK135800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '942', 'EK13+582', 'HMNL104SZCQHK135820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '943', 'EK13+584', 'HMNL104SZCQHK135840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '944', 'EK13+586', 'HMNL104SZCQHK135860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '945', 'EK13+588', 'HMNL104SZCQHK135880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '946', 'EK13+590', 'HMNL104SZCQHK135900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '947', 'EK13+592', 'HMNL104SZCQHK135920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '948', 'EK13+594', 'HMNL104SZCQHK135940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '949', 'EK13+596', 'HMNL104SZCQHK135960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '950', 'EK13+598', 'HMNL104SZCQHK135980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '951', 'EK13+600', 'HMNL104SZCQHK136000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '952', 'EK13+602', 'HMNL104SZCQHK136020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '953', 'EK13+604', 'HMNL104SZCQHK136040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '954', 'EK13+606', 'HMNL104SZCQHK136060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '955', 'EK13+608', 'HMNL104SZCQHK136080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '956', 'EK13+610', 'HMNL104SZCQHK136100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '957', 'EK13+612', 'HMNL104SZCQHK136120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '958', 'EK13+614', 'HMNL104SZCQHK136140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '959', 'EK13+616', 'HMNL104SZCQHK136160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '960', 'EK13+618', 'HMNL104SZCQHK136180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '961', 'EK13+620', 'HMNL104SZCQHK136200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '962', 'EK13+622', 'HMNL104SZCQHK136220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '963', 'EK13+624', 'HMNL104SZCQHK136240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '964', 'EK13+626', 'HMNL104SZCQHK136260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '965', 'EK13+628', 'HMNL104SZCQHK136280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '966', 'EK13+630', 'HMNL104SZCQHK136300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '967', 'EK13+632', 'HMNL104SZCQHK136320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '968', 'EK13+634', 'HMNL104SZCQHK136340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '969', 'EK13+636', 'HMNL104SZCQHK136360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '970', 'EK13+638', 'HMNL104SZCQHK136380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '971', 'EK13+640', 'HMNL104SZCQHK136400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '972', 'EK13+642', 'HMNL104SZCQHK136420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '973', 'EK13+644', 'HMNL104SZCQHK136440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '974', 'EK13+646', 'HMNL104SZCQHK136460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '975', 'EK13+648', 'HMNL104SZCQHK136480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '976', 'EK13+650', 'HMNL104SZCQHK136500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '977', 'EK13+652', 'HMNL104SZCQHK136520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '978', 'EK13+654', 'HMNL104SZCQHK136540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '979', 'EK13+656', 'HMNL104SZCQHK136560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '980', 'EK13+658', 'HMNL104SZCQHK136580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '981', 'EK13+660', 'HMNL104SZCQHK136600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '982', 'EK13+662', 'HMNL104SZCQHK136620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '983', 'EK13+664', 'HMNL104SZCQHK136640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '984', 'EK13+666', 'HMNL104SZCQHK136660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '985', 'EK13+668', 'HMNL104SZCQHK136680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '986', 'EK13+670', 'HMNL104SZCQHK136700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '987', 'EK13+672', 'HMNL104SZCQHK136720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '988', 'EK13+674', 'HMNL104SZCQHK136740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '989', 'EK13+676', 'HMNL104SZCQHK136760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '990', 'EK13+678', 'HMNL104SZCQHK136780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '991', 'EK13+680', 'HMNL104SZCQHK136800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '992', 'EK13+682', 'HMNL104SZCQHK136820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '993', 'EK13+684', 'HMNL104SZCQHK136840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '994', 'EK13+686', 'HMNL104SZCQHK136860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '995', 'EK13+688', 'HMNL104SZCQHK136880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '996', 'EK13+690', 'HMNL104SZCQHK136900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '997', 'EK13+692', 'HMNL104SZCQHK136920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '998', 'EK13+694', 'HMNL104SZCQHK136940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '999', 'EK13+696', 'HMNL104SZCQHK136960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1000', 'EK13+698', 'HMNL104SZCQHK136980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1001', 'EK13+700', 'HMNL104SZCQHK137000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1002', 'EK13+702', 'HMNL104SZCQHK137020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1003', 'EK13+704', 'HMNL104SZCQHK137040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1004', 'EK13+706', 'HMNL104SZCQHK137060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1005', 'EK13+708', 'HMNL104SZCQHK137080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1006', 'EK13+710', 'HMNL104SZCQHK137100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1007', 'EK13+712', 'HMNL104SZCQHK137120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1008', 'EK13+714', 'HMNL104SZCQHK137140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1009', 'EK13+716', 'HMNL104SZCQHK137160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1010', 'EK13+718', 'HMNL104SZCQHK137180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1011', 'EK13+720', 'HMNL104SZCQHK137200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1012', 'EK13+722', 'HMNL104SZCQHK137220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1013', 'EK13+724', 'HMNL104SZCQHK137240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1014', 'EK13+726', 'HMNL104SZCQHK137260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1015', 'EK13+728', 'HMNL104SZCQHK137280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1016', 'EK13+730', 'HMNL104SZCQHK137300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1017', 'EK13+732', 'HMNL104SZCQHK137320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1018', 'EK13+734', 'HMNL104SZCQHK137340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1019', 'EK13+736', 'HMNL104SZCQHK137360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1020', 'EK13+738', 'HMNL104SZCQHK137380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1021', 'EK13+740', 'HMNL104SZCQHK137400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1022', 'EK13+742', 'HMNL104SZCQHK137420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1023', 'EK13+744', 'HMNL104SZCQHK137440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1024', 'EK13+746', 'HMNL104SZCQHK137460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1025', 'EK13+748', 'HMNL104SZCQHK137480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1026', 'EK13+750', 'HMNL104SZCQHK137500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1027', 'EK13+752', 'HMNL104SZCQHK137520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1028', 'EK13+754', 'HMNL104SZCQHK137540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1029', 'EK13+756', 'HMNL104SZCQHK137560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1030', 'EK13+758', 'HMNL104SZCQHK137580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1031', 'EK13+760', 'HMNL104SZCQHK137600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1032', 'EK13+762', 'HMNL104SZCQHK137620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1033', 'EK13+764', 'HMNL104SZCQHK137640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1034', 'EK13+766', 'HMNL104SZCQHK137660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1035', 'EK13+768', 'HMNL104SZCQHK137680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1036', 'EK13+770', 'HMNL104SZCQHK137700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1037', 'EK13+772', 'HMNL104SZCQHK137720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1038', 'EK13+774', 'HMNL104SZCQHK137740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1039', 'EK13+776', 'HMNL104SZCQHK137760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1040', 'EK13+778', 'HMNL104SZCQHK137780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1041', 'EK13+780', 'HMNL104SZCQHK137800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1042', 'EK13+782', 'HMNL104SZCQHK137820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1043', 'EK13+784', 'HMNL104SZCQHK137840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1044', 'EK13+786', 'HMNL104SZCQHK137860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1045', 'EK13+788', 'HMNL104SZCQHK137880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1046', 'EK13+790', 'HMNL104SZCQHK137900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1047', 'EK13+792', 'HMNL104SZCQHK137920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1048', 'EK13+794', 'HMNL104SZCQHK137940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1049', 'EK13+796', 'HMNL104SZCQHK137960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1050', 'EK13+798', 'HMNL104SZCQHK137980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1051', 'EK13+800', 'HMNL104SZCQHK138000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1052', 'EK13+802', 'HMNL104SZCQHK138020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1053', 'EK13+804', 'HMNL104SZCQHK138040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1054', 'EK13+806', 'HMNL104SZCQHK138060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1055', 'EK13+808', 'HMNL104SZCQHK138080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1056', 'EK13+810', 'HMNL104SZCQHK138100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1057', 'EK13+812', 'HMNL104SZCQHK138120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1058', 'EK13+814', 'HMNL104SZCQHK138140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1059', 'EK13+816', 'HMNL104SZCQHK138160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1060', 'EK13+818', 'HMNL104SZCQHK138180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1061', 'EK13+820', 'HMNL104SZCQHK138200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1062', 'EK13+822', 'HMNL104SZCQHK138220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1063', 'EK13+824', 'HMNL104SZCQHK138240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1064', 'EK13+826', 'HMNL104SZCQHK138260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1065', 'EK13+828', 'HMNL104SZCQHK138280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1066', 'EK13+830', 'HMNL104SZCQHK138300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1067', 'EK13+832', 'HMNL104SZCQHK138320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1068', 'EK13+834', 'HMNL104SZCQHK138340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1069', 'EK13+836', 'HMNL104SZCQHK138360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1070', 'EK13+838', 'HMNL104SZCQHK138380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1071', 'EK13+840', 'HMNL104SZCQHK138400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1072', 'EK13+842', 'HMNL104SZCQHK138420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1073', 'EK13+844', 'HMNL104SZCQHK138440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1074', 'EK13+846', 'HMNL104SZCQHK138460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1075', 'EK13+848', 'HMNL104SZCQHK138480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1076', 'EK13+850', 'HMNL104SZCQHK138500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1077', 'EK13+852', 'HMNL104SZCQHK138520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1078', 'EK13+854', 'HMNL104SZCQHK138540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1079', 'EK13+856', 'HMNL104SZCQHK138560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1080', 'EK13+858', 'HMNL104SZCQHK138580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1081', 'EK13+860', 'HMNL104SZCQHK138600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1082', 'EK13+862', 'HMNL104SZCQHK138620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1083', 'EK13+864', 'HMNL104SZCQHK138640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1084', 'EK13+866', 'HMNL104SZCQHK138660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1085', 'EK13+868', 'HMNL104SZCQHK138680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1086', 'EK13+870', 'HMNL104SZCQHK138700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1087', 'EK13+872', 'HMNL104SZCQHK138720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1088', 'EK13+874', 'HMNL104SZCQHK138740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1089', 'EK13+876', 'HMNL104SZCQHK138760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1090', 'EK13+878', 'HMNL104SZCQHK138780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1091', 'EK13+880', 'HMNL104SZCQHK138800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1092', 'EK13+882', 'HMNL104SZCQHK138820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1093', 'EK13+884', 'HMNL104SZCQHK138840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1094', 'EK13+886', 'HMNL104SZCQHK138860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1095', 'EK13+888', 'HMNL104SZCQHK138880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1096', 'EK13+890', 'HMNL104SZCQHK138900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1097', 'EK13+892', 'HMNL104SZCQHK138920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1098', 'EK13+894', 'HMNL104SZCQHK138940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1099', 'EK13+896', 'HMNL104SZCQHK138960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1100', 'EK13+898', 'HMNL104SZCQHK138980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1101', 'EK13+900', 'HMNL104SZCQHK139000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1102', 'EK13+902', 'HMNL104SZCQHK139020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1103', 'EK13+904', 'HMNL104SZCQHK139040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1104', 'EK13+906', 'HMNL104SZCQHK139060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1105', 'EK13+908', 'HMNL104SZCQHK139080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1106', 'EK13+910', 'HMNL104SZCQHK139100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1107', 'EK13+912', 'HMNL104SZCQHK139120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1108', 'EK13+914', 'HMNL104SZCQHK139140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1109', 'EK13+916', 'HMNL104SZCQHK139160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1110', 'EK13+918', 'HMNL104SZCQHK139180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1111', 'EK13+920', 'HMNL104SZCQHK139200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1112', 'EK13+922', 'HMNL104SZCQHK139220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1113', 'EK13+924', 'HMNL104SZCQHK139240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1114', 'EK13+926', 'HMNL104SZCQHK139260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1115', 'EK13+928', 'HMNL104SZCQHK139280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1116', 'EK13+930', 'HMNL104SZCQHK139300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1117', 'EK13+932', 'HMNL104SZCQHK139320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1118', 'EK13+934', 'HMNL104SZCQHK139340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1119', 'EK13+936', 'HMNL104SZCQHK139360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1120', 'EK13+938', 'HMNL104SZCQHK139380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1121', 'EK13+940', 'HMNL104SZCQHK139400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1122', 'EK13+942', 'HMNL104SZCQHK139420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1123', 'EK13+944', 'HMNL104SZCQHK139440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1124', 'EK13+946', 'HMNL104SZCQHK139460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1125', 'EK13+948', 'HMNL104SZCQHK139480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1126', 'EK13+950', 'HMNL104SZCQHK139500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1127', 'EK13+952', 'HMNL104SZCQHK139520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1128', 'EK13+954', 'HMNL104SZCQHK139540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1129', 'EK13+956', 'HMNL104SZCQHK139560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1130', 'EK13+958', 'HMNL104SZCQHK139580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1131', 'EK13+960', 'HMNL104SZCQHK139600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1132', 'EK13+962', 'HMNL104SZCQHK139620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1133', 'EK13+964', 'HMNL104SZCQHK139640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1134', 'EK13+966', 'HMNL104SZCQHK139660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1135', 'EK13+968', 'HMNL104SZCQHK139680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1136', 'EK13+970', 'HMNL104SZCQHK139700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1137', 'EK13+972', 'HMNL104SZCQHK139720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1138', 'EK13+974', 'HMNL104SZCQHK139740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1139', 'EK13+976', 'HMNL104SZCQHK139760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1140', 'EK13+978', 'HMNL104SZCQHK139780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1141', 'EK13+980', 'HMNL104SZCQHK139800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1142', 'EK13+982', 'HMNL104SZCQHK139820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1143', 'EK13+984', 'HMNL104SZCQHK139840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1144', 'EK13+986', 'HMNL104SZCQHK139860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1145', 'EK13+988', 'HMNL104SZCQHK139880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1146', 'EK13+990', 'HMNL104SZCQHK139900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1147', 'EK13+992', 'HMNL104SZCQHK139920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1148', 'EK13+994', 'HMNL104SZCQHK139940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1149', 'EK13+996', 'HMNL104SZCQHK139960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1150', 'EK13+998', 'HMNL104SZCQHK139980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1151', 'EK14+000', 'HMNL104SZCQHK140000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1152', 'EK14+002', 'HMNL104SZCQHK140020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1153', 'EK14+004', 'HMNL104SZCQHK140040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1154', 'EK14+006', 'HMNL104SZCQHK140060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1155', 'EK14+008', 'HMNL104SZCQHK140080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1156', 'EK14+010', 'HMNL104SZCQHK140100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1157', 'EK14+012', 'HMNL104SZCQHK140120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1158', 'EK14+014', 'HMNL104SZCQHK140140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1159', 'EK14+016', 'HMNL104SZCQHK140160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1160', 'EK14+018', 'HMNL104SZCQHK140180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1161', 'EK14+020', 'HMNL104SZCQHK140200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1162', 'EK14+022', 'HMNL104SZCQHK140220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1163', 'EK14+024', 'HMNL104SZCQHK140240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1164', 'EK14+026', 'HMNL104SZCQHK140260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1165', 'EK14+028', 'HMNL104SZCQHK140280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1166', 'EK14+030', 'HMNL104SZCQHK140300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1167', 'EK14+032', 'HMNL104SZCQHK140320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1168', 'EK14+034', 'HMNL104SZCQHK140340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1169', 'EK14+036', 'HMNL104SZCQHK140360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1170', 'EK14+038', 'HMNL104SZCQHK140380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1171', 'EK14+040', 'HMNL104SZCQHK140400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1172', 'EK14+042', 'HMNL104SZCQHK140420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1173', 'EK14+044', 'HMNL104SZCQHK140440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1174', 'EK14+046', 'HMNL104SZCQHK140460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1175', 'EK14+048', 'HMNL104SZCQHK140480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1176', 'EK14+050', 'HMNL104SZCQHK140500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1177', 'EK14+052', 'HMNL104SZCQHK140520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1178', 'EK14+054', 'HMNL104SZCQHK140540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1179', 'EK14+056', 'HMNL104SZCQHK140560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1180', 'EK14+058', 'HMNL104SZCQHK140580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1181', 'EK14+060', 'HMNL104SZCQHK140600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1182', 'EK14+062', 'HMNL104SZCQHK140620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1183', 'EK14+064', 'HMNL104SZCQHK140640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1184', 'EK14+066', 'HMNL104SZCQHK140660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1185', 'EK14+068', 'HMNL104SZCQHK140680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1186', 'EK14+070', 'HMNL104SZCQHK140700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1187', 'EK14+072', 'HMNL104SZCQHK140720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1188', 'EK14+074', 'HMNL104SZCQHK140740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1189', 'EK14+076', 'HMNL104SZCQHK140760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1190', 'EK14+078', 'HMNL104SZCQHK140780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1191', 'EK14+080', 'HMNL104SZCQHK140800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1192', 'EK14+082', 'HMNL104SZCQHK140820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1193', 'EK14+084', 'HMNL104SZCQHK140840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1194', 'EK14+086', 'HMNL104SZCQHK140860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1195', 'EK14+088', 'HMNL104SZCQHK140880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1196', 'EK14+090', 'HMNL104SZCQHK140900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1197', 'EK14+092', 'HMNL104SZCQHK140920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1198', 'EK14+094', 'HMNL104SZCQHK140940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1199', 'EK14+096', 'HMNL104SZCQHK140960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1200', 'EK14+098', 'HMNL104SZCQHK140980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1201', 'EK14+100', 'HMNL104SZCQHK141000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1202', 'EK14+102', 'HMNL104SZCQHK141020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1203', 'EK14+104', 'HMNL104SZCQHK141040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1204', 'EK14+106', 'HMNL104SZCQHK141060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1205', 'EK14+108', 'HMNL104SZCQHK141080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1206', 'EK14+110', 'HMNL104SZCQHK141100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1207', 'EK14+112', 'HMNL104SZCQHK141120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1208', 'EK14+114', 'HMNL104SZCQHK141140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1209', 'EK14+116', 'HMNL104SZCQHK141160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1210', 'EK14+118', 'HMNL104SZCQHK141180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1211', 'EK14+120', 'HMNL104SZCQHK141200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1212', 'EK14+122', 'HMNL104SZCQHK141220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1213', 'EK14+124', 'HMNL104SZCQHK141240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1214', 'EK14+126', 'HMNL104SZCQHK141260_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1215', 'EK14+128', 'HMNL104SZCQHK141280_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1216', 'EK14+130', 'HMNL104SZCQHK141300_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1217', 'EK14+132', 'HMNL104SZCQHK141320_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1218', 'EK14+134', 'HMNL104SZCQHK141340_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1219', 'EK14+136', 'HMNL104SZCQHK141360_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1220', 'EK14+138', 'HMNL104SZCQHK141380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1221', 'EK14+140', 'HMNL104SZCQHK141400_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1222', 'EK14+142', 'HMNL104SZCQHK141420_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1223', 'EK14+144', 'HMNL104SZCQHK141440_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1224', 'EK14+146', 'HMNL104SZCQHK141460_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1225', 'EK14+148', 'HMNL104SZCQHK141480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1226', 'EK14+150', 'HMNL104SZCQHK141500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1227', 'EK14+152', 'HMNL104SZCQHK141520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1228', 'EK14+154', 'HMNL104SZCQHK141540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1229', 'EK14+156', 'HMNL104SZCQHK141560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1230', 'EK14+158', 'HMNL104SZCQHK141580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1231', 'EK14+160', 'HMNL104SZCQHK141600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1232', 'EK14+162', 'HMNL104SZCQHK141620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1233', 'EK14+164', 'HMNL104SZCQHK141640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1234', 'EK14+166', 'HMNL104SZCQHK141660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1235', 'EK14+168', 'HMNL104SZCQHK141680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1236', 'EK14+170', 'HMNL104SZCQHK141700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1237', 'EK14+172', 'HMNL104SZCQHK141720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1238', 'EK14+174', 'HMNL104SZCQHK141740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1239', 'EK14+176', 'HMNL104SZCQHK141760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1240', 'EK14+178', 'HMNL104SZCQHK141780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1241', 'EK14+180', 'HMNL104SZCQHK141800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1242', 'EK14+182', 'HMNL104SZCQHK141820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1243', 'EK14+184', 'HMNL104SZCQHK141840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1244', 'EK14+186', 'HMNL104SZCQHK141860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1245', 'EK14+188', 'HMNL104SZCQHK141880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1246', 'EK14+190', 'HMNL104SZCQHK141900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1247', 'EK14+192', 'HMNL104SZCQHK141920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1248', 'EK14+194', 'HMNL104SZCQHK141940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1249', 'EK14+196', 'HMNL104SZCQHK141960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1250', 'EK14+198', 'HMNL104SZCQHK141980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1251', 'EK14+200', 'HMNL104SZCQHK142000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1252', 'EK14+202', 'HMNL104SZCQHK142020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1253', 'EK14+204', 'HMNL104SZCQHK142040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1254', 'EK14+206', 'HMNL104SZCQHK142060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1255', 'EK14+208', 'HMNL104SZCQHK142080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1256', 'EK14+210', 'HMNL104SZCQHK142100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1257', 'EK14+212', 'HMNL104SZCQHK142120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1258', 'EK14+214', 'HMNL104SZCQHK142140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1259', 'EK14+216', 'HMNL104SZCQHK142160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1260', 'EK14+218', 'HMNL104SZCQHK142180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1261', 'EK14+220', 'HMNL104SZCQHK142200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1262', 'EK14+222', 'HMNL104SZCQHK142220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1263', 'EK14+224', 'HMNL104SZCQHK142240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1264', 'EK14+226', 'HMNL104SZCQHK142260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1265', 'EK14+228', 'HMNL104SZCQHK142280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1266', 'EK14+230', 'HMNL104SZCQHK142300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1267', 'EK14+232', 'HMNL104SZCQHK142320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1268', 'EK14+234', 'HMNL104SZCQHK142340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1269', 'EK14+236', 'HMNL104SZCQHK142360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1270', 'EK14+238', 'HMNL104SZCQHK142380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1271', 'EK14+240', 'HMNL104SZCQHK142400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1272', 'EK14+242', 'HMNL104SZCQHK142420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1273', 'EK14+244', 'HMNL104SZCQHK142440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1274', 'EK14+246', 'HMNL104SZCQHK142460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1275', 'EK14+248', 'HMNL104SZCQHK142480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1276', 'EK14+250', 'HMNL104SZCQHK142500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1277', 'EK14+252', 'HMNL104SZCQHK142520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1278', 'EK14+254', 'HMNL104SZCQHK142540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1279', 'EK14+256', 'HMNL104SZCQHK142560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1280', 'EK14+258', 'HMNL104SZCQHK142580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1281', 'EK14+260', 'HMNL104SZCQHK142600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1282', 'EK14+262', 'HMNL104SZCQHK142620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1283', 'EK14+264', 'HMNL104SZCQHK142640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1284', 'EK14+266', 'HMNL104SZCQHK142660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1285', 'EK14+268', 'HMNL104SZCQHK142680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1286', 'EK14+270', 'HMNL104SZCQHK142700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1287', 'EK14+272', 'HMNL104SZCQHK142720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1288', 'EK14+274', 'HMNL104SZCQHK142740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1289', 'EK14+276', 'HMNL104SZCQHK142760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1290', 'EK14+278', 'HMNL104SZCQHK142780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1291', 'EK14+280', 'HMNL104SZCQHK142800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1292', 'EK14+282', 'HMNL104SZCQHK142820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1293', 'EK14+284', 'HMNL104SZCQHK142840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1294', 'EK14+286', 'HMNL104SZCQHK142860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1295', 'EK14+288', 'HMNL104SZCQHK142880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1296', 'EK14+290', 'HMNL104SZCQHK142900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1297', 'EK14+292', 'HMNL104SZCQHK142920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1298', 'EK14+294', 'HMNL104SZCQHK142940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1299', 'EK14+296', 'HMNL104SZCQHK142960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1300', 'EK14+298', 'HMNL104SZCQHK142980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1301', 'EK14+300', 'HMNL104SZCQHK143000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1302', 'EK14+302', 'HMNL104SZCQHK143020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1303', 'EK14+304', 'HMNL104SZCQHK143040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1304', 'EK14+306', 'HMNL104SZCQHK143060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1305', 'EK14+308', 'HMNL104SZCQHK143080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1306', 'EK14+310', 'HMNL104SZCQHK143100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1307', 'EK14+312', 'HMNL104SZCQHK143120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1308', 'EK14+314', 'HMNL104SZCQHK143140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1309', 'EK14+316', 'HMNL104SZCQHK143160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1310', 'EK14+318', 'HMNL104SZCQHK143180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1311', 'EK14+320', 'HMNL104SZCQHK143200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1312', 'EK14+322', 'HMNL104SZCQHK143220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1313', 'EK14+324', 'HMNL104SZCQHK143240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1314', 'EK14+326', 'HMNL104SZCQHK143260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1315', 'EK14+328', 'HMNL104SZCQHK143280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1316', 'EK14+330', 'HMNL104SZCQHK143300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1317', 'EK14+332', 'HMNL104SZCQHK143320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1318', 'EK14+334', 'HMNL104SZCQHK143340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1319', 'EK14+336', 'HMNL104SZCQHK143360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1320', 'EK14+338', 'HMNL104SZCQHK143380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1321', 'EK14+340', 'HMNL104SZCQHK143400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1322', 'EK14+342', 'HMNL104SZCQHK143420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1323', 'EK14+344', 'HMNL104SZCQHK143440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1324', 'EK14+346', 'HMNL104SZCQHK143460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1325', 'EK14+348', 'HMNL104SZCQHK143480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1326', 'EK14+350', 'HMNL104SZCQHK143500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1327', 'EK14+352', 'HMNL104SZCQHK143520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1328', 'EK14+354', 'HMNL104SZCQHK143540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1329', 'EK14+356', 'HMNL104SZCQHK143560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1330', 'EK14+358', 'HMNL104SZCQHK143580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1331', 'EK14+360', 'HMNL104SZCQHK143600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1332', 'EK14+362', 'HMNL104SZCQHK143620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1333', 'EK14+364', 'HMNL104SZCQHK143640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1334', 'EK14+366', 'HMNL104SZCQHK143660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1335', 'EK14+368', 'HMNL104SZCQHK143680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1336', 'EK14+370', 'HMNL104SZCQHK143700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1337', 'EK14+372', 'HMNL104SZCQHK143720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1338', 'EK14+374', 'HMNL104SZCQHK143740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1339', 'EK14+376', 'HMNL104SZCQHK143760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1340', 'EK14+378', 'HMNL104SZCQHK143780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1341', 'EK14+380', 'HMNL104SZCQHK143800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1342', 'EK14+382', 'HMNL104SZCQHK143820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1343', 'EK14+384', 'HMNL104SZCQHK143840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1344', 'EK14+386', 'HMNL104SZCQHK143860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1345', 'EK14+388', 'HMNL104SZCQHK143880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1346', 'EK14+390', 'HMNL104SZCQHK143900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1347', 'EK14+392', 'HMNL104SZCQHK143920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1348', 'EK14+394', 'HMNL104SZCQHK143940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1349', 'EK14+396', 'HMNL104SZCQHK143960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1350', 'EK14+398', 'HMNL104SZCQHK143980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1351', 'EK14+400', 'HMNL104SZCQHK144000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1352', 'EK14+402', 'HMNL104SZCQHK144020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1353', 'EK14+404', 'HMNL104SZCQHK144040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1354', 'EK14+406', 'HMNL104SZCQHK144060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1355', 'EK14+408', 'HMNL104SZCQHK144080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1356', 'EK14+410', 'HMNL104SZCQHK144100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1357', 'EK14+412', 'HMNL104SZCQHK144120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1358', 'EK14+414', 'HMNL104SZCQHK144140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1359', 'EK14+416', 'HMNL104SZCQHK144160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1360', 'EK14+418', 'HMNL104SZCQHK144180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1361', 'EK14+420', 'HMNL104SZCQHK144200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1362', 'EK14+422', 'HMNL104SZCQHK144220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1363', 'EK14+424', 'HMNL104SZCQHK144240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1364', 'EK14+426', 'HMNL104SZCQHK144260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1365', 'EK14+428', 'HMNL104SZCQHK144280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1366', 'EK14+430', 'HMNL104SZCQHK144300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1367', 'EK14+432', 'HMNL104SZCQHK144320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1368', 'EK14+434', 'HMNL104SZCQHK144340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1369', 'EK14+436', 'HMNL104SZCQHK144360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1370', 'EK14+438', 'HMNL104SZCQHK144380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1371', 'EK14+440', 'HMNL104SZCQHK144400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1372', 'EK14+442', 'HMNL104SZCQHK144420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1373', 'EK14+444', 'HMNL104SZCQHK144440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1374', 'EK14+446', 'HMNL104SZCQHK144460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1375', 'EK14+448', 'HMNL104SZCQHK144480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1376', 'EK14+450', 'HMNL104SZCQHK144500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1377', 'EK14+452', 'HMNL104SZCQHK144520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1378', 'EK14+454', 'HMNL104SZCQHK144540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1379', 'EK14+456', 'HMNL104SZCQHK144560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1380', 'EK14+458', 'HMNL104SZCQHK144580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1381', 'EK14+460', 'HMNL104SZCQHK144600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1382', 'EK14+462', 'HMNL104SZCQHK144620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1383', 'EK14+464', 'HMNL104SZCQHK144640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1384', 'EK14+466', 'HMNL104SZCQHK144660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1385', 'EK14+468', 'HMNL104SZCQHK144680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1386', 'EK14+470', 'HMNL104SZCQHK144700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1387', 'EK14+472', 'HMNL104SZCQHK144720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1388', 'EK14+474', 'HMNL104SZCQHK144740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1389', 'EK14+476', 'HMNL104SZCQHK144760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1390', 'EK14+478', 'HMNL104SZCQHK144780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1391', 'EK14+480', 'HMNL104SZCQHK144800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1392', 'EK14+482', 'HMNL104SZCQHK144820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1393', 'EK14+484', 'HMNL104SZCQHK144840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1394', 'EK14+486', 'HMNL104SZCQHK144860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1395', 'EK14+488', 'HMNL104SZCQHK144880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1396', 'EK14+490', 'HMNL104SZCQHK144900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1397', 'EK14+492', 'HMNL104SZCQHK144920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1398', 'EK14+494', 'HMNL104SZCQHK144940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1399', 'EK14+496', 'HMNL104SZCQHK144960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1400', 'EK14+498', 'HMNL104SZCQHK144980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1401', 'EK14+500', 'HMNL104SZCQHK145000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1402', 'EK14+502', 'HMNL104SZCQHK145020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1403', 'EK14+504', 'HMNL104SZCQHK145040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1404', 'EK14+506', 'HMNL104SZCQHK145060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1405', 'EK14+508', 'HMNL104SZCQHK145080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1406', 'EK14+510', 'HMNL104SZCQHK145100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1407', 'EK14+512', 'HMNL104SZCQHK145120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1408', 'EK14+514', 'HMNL104SZCQHK145140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1409', 'EK14+516', 'HMNL104SZCQHK145160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1410', 'EK14+518', 'HMNL104SZCQHK145180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1411', 'EK14+520', 'HMNL104SZCQHK145200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1412', 'EK14+522', 'HMNL104SZCQHK145220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1413', 'EK14+524', 'HMNL104SZCQHK145240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1414', 'EK14+526', 'HMNL104SZCQHK145260_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1415', 'EK14+528', 'HMNL104SZCQHK145280_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1416', 'EK14+530', 'HMNL104SZCQHK145300_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1417', 'EK14+532', 'HMNL104SZCQHK145320_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1418', 'EK14+534', 'HMNL104SZCQHK145340_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1419', 'EK14+536', 'HMNL104SZCQHK145360_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1420', 'EK14+538', 'HMNL104SZCQHK145380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1421', 'EK14+540', 'HMNL104SZCQHK145400_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1422', 'EK14+542', 'HMNL104SZCQHK145420_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1423', 'EK14+544', 'HMNL104SZCQHK145440_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1424', 'EK14+546', 'HMNL104SZCQHK145460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1425', 'EK14+548', 'HMNL104SZCQHK145480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1426', 'EK14+550', 'HMNL104SZCQHK145500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1427', 'EK14+552', 'HMNL104SZCQHK145520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1428', 'EK14+554', 'HMNL104SZCQHK145540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1429', 'EK14+556', 'HMNL104SZCQHK145560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1430', 'EK14+558', 'HMNL104SZCQHK145580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1431', 'EK14+560', 'HMNL104SZCQHK145600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1432', 'EK14+562', 'HMNL104SZCQHK145620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1433', 'EK14+564', 'HMNL104SZCQHK145640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1434', 'EK14+566', 'HMNL104SZCQHK145660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1435', 'EK14+568', 'HMNL104SZCQHK145680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1436', 'EK14+570', 'HMNL104SZCQHK145700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1437', 'EK14+572', 'HMNL104SZCQHK145720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1438', 'EK14+574', 'HMNL104SZCQHK145740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1439', 'EK14+576', 'HMNL104SZCQHK145760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1440', 'EK14+578', 'HMNL104SZCQHK145780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1441', 'EK14+580', 'HMNL104SZCQHK145800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1442', 'EK14+582', 'HMNL104SZCQHK145820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1443', 'EK14+584', 'HMNL104SZCQHK145840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1444', 'EK14+586', 'HMNL104SZCQHK145860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1445', 'EK14+588', 'HMNL104SZCQHK145880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1446', 'EK14+590', 'HMNL104SZCQHK145900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1447', 'EK14+592', 'HMNL104SZCQHK145920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1448', 'EK14+594', 'HMNL104SZCQHK145940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1449', 'EK14+596', 'HMNL104SZCQHK145960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1450', 'EK14+598', 'HMNL104SZCQHK145980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1451', 'EK14+600', 'HMNL104SZCQHK146000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1452', 'EK14+602', 'HMNL104SZCQHK146020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1453', 'EK14+604', 'HMNL104SZCQHK146040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1454', 'EK14+606', 'HMNL104SZCQHK146060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1455', 'EK14+608', 'HMNL104SZCQHK146080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1456', 'EK14+610', 'HMNL104SZCQHK146100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1457', 'EK14+612', 'HMNL104SZCQHK146120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1458', 'EK14+614', 'HMNL104SZCQHK146140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1459', 'EK14+616', 'HMNL104SZCQHK146160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1460', 'EK14+618', 'HMNL104SZCQHK146180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1461', 'EK14+620', 'HMNL104SZCQHK146200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1462', 'EK14+622', 'HMNL104SZCQHK146220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1463', 'EK14+624', 'HMNL104SZCQHK146240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1464', 'EK14+626', 'HMNL104SZCQHK146260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1465', 'EK14+628', 'HMNL104SZCQHK146280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1466', 'EK14+630', 'HMNL104SZCQHK146300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1467', 'EK14+632', 'HMNL104SZCQHK146320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1468', 'EK14+634', 'HMNL104SZCQHK146340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1469', 'EK14+636', 'HMNL104SZCQHK146360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1470', 'EK14+638', 'HMNL104SZCQHK146380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1471', 'EK14+640', 'HMNL104SZCQHK146400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1472', 'EK14+642', 'HMNL104SZCQHK146420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1473', 'EK14+644', 'HMNL104SZCQHK146440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1474', 'EK14+646', 'HMNL104SZCQHK146460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1475', 'EK14+648', 'HMNL104SZCQHK146480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1476', 'EK14+650', 'HMNL104SZCQHK146500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1477', 'EK14+652', 'HMNL104SZCQHK146520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1478', 'EK14+654', 'HMNL104SZCQHK146540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1479', 'EK14+656', 'HMNL104SZCQHK146560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1480', 'EK14+658', 'HMNL104SZCQHK146580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1481', 'EK14+660', 'HMNL104SZCQHK146600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1482', 'EK14+662', 'HMNL104SZCQHK146620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1483', 'EK14+664', 'HMNL104SZCQHK146640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1484', 'EK14+666', 'HMNL104SZCQHK146660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1485', 'EK14+668', 'HMNL104SZCQHK146680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1486', 'EK14+670', 'HMNL104SZCQHK146700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1487', 'EK14+672', 'HMNL104SZCQHK146720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1488', 'EK14+674', 'HMNL104SZCQHK146740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1489', 'EK14+676', 'HMNL104SZCQHK146760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1490', 'EK14+678', 'HMNL104SZCQHK146780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1491', 'EK14+680', 'HMNL104SZCQHK146800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1492', 'EK14+682', 'HMNL104SZCQHK146820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1493', 'EK14+684', 'HMNL104SZCQHK146840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1494', 'EK14+686', 'HMNL104SZCQHK146860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1495', 'EK14+688', 'HMNL104SZCQHK146880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1496', 'EK14+690', 'HMNL104SZCQHK146900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1497', 'EK14+692', 'HMNL104SZCQHK146920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1498', 'EK14+694', 'HMNL104SZCQHK146940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1499', 'EK14+696', 'HMNL104SZCQHK146960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1500', 'EK14+698', 'HMNL104SZCQHK146980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1501', 'EK14+700', 'HMNL104SZCQHK147000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1502', 'EK14+702', 'HMNL104SZCQHK147020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1503', 'EK14+704', 'HMNL104SZCQHK147040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1504', 'EK14+706', 'HMNL104SZCQHK147060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1505', 'EK14+708', 'HMNL104SZCQHK147080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1506', 'EK14+710', 'HMNL104SZCQHK147100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1507', 'EK14+712', 'HMNL104SZCQHK147120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1508', 'EK14+714', 'HMNL104SZCQHK147140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1509', 'EK14+716', 'HMNL104SZCQHK147160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1510', 'EK14+718', 'HMNL104SZCQHK147180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1511', 'EK14+720', 'HMNL104SZCQHK147200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1512', 'EK14+722', 'HMNL104SZCQHK147220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1513', 'EK14+724', 'HMNL104SZCQHK147240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1514', 'EK14+726', 'HMNL104SZCQHK147260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1515', 'EK14+728', 'HMNL104SZCQHK147280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1516', 'EK14+730', 'HMNL104SZCQHK147300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1517', 'EK14+732', 'HMNL104SZCQHK147320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1518', 'EK14+734', 'HMNL104SZCQHK147340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1519', 'EK14+736', 'HMNL104SZCQHK147360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1520', 'EK14+738', 'HMNL104SZCQHK147380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1521', 'EK14+740', 'HMNL104SZCQHK147400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1522', 'EK14+742', 'HMNL104SZCQHK147420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1523', 'EK14+744', 'HMNL104SZCQHK147440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1524', 'EK14+746', 'HMNL104SZCQHK147460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1525', 'EK14+748', 'HMNL104SZCQHK147480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1526', 'EK14+750', 'HMNL104SZCQHK147500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1527', 'EK14+752', 'HMNL104SZCQHK147520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1528', 'EK14+754', 'HMNL104SZCQHK147540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1529', 'EK14+756', 'HMNL104SZCQHK147560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1530', 'EK14+758', 'HMNL104SZCQHK147580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1531', 'EK14+760', 'HMNL104SZCQHK147600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1532', 'EK14+762', 'HMNL104SZCQHK147620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1533', 'EK14+764', 'HMNL104SZCQHK147640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1534', 'EK14+766', 'HMNL104SZCQHK147660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1535', 'EK14+768', 'HMNL104SZCQHK147680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1536', 'EK14+770', 'HMNL104SZCQHK147700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1537', 'EK14+772', 'HMNL104SZCQHK147720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1538', 'EK14+774', 'HMNL104SZCQHK147740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1539', 'EK14+776', 'HMNL104SZCQHK147760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1540', 'EK14+778', 'HMNL104SZCQHK147780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1541', 'EK14+780', 'HMNL104SZCQHK147800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1542', 'EK14+782', 'HMNL104SZCQHK147820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1543', 'EK14+784', 'HMNL104SZCQHK147840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1544', 'EK14+786', 'HMNL104SZCQHK147860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1545', 'EK14+788', 'HMNL104SZCQHK147880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1546', 'EK14+790', 'HMNL104SZCQHK147900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1547', 'EK14+792', 'HMNL104SZCQHK147920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1548', 'EK14+794', 'HMNL104SZCQHK147940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1549', 'EK14+796', 'HMNL104SZCQHK147960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1550', 'EK14+798', 'HMNL104SZCQHK147980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1551', 'EK14+800', 'HMNL104SZCQHK148000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1552', 'EK14+802', 'HMNL104SZCQHK148020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1553', 'EK14+804', 'HMNL104SZCQHK148040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1554', 'EK14+806', 'HMNL104SZCQHK148060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1555', 'EK14+808', 'HMNL104SZCQHK148080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1556', 'EK14+810', 'HMNL104SZCQHK148100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1557', 'EK14+812', 'HMNL104SZCQHK148120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1558', 'EK14+814', 'HMNL104SZCQHK148140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1559', 'EK14+816', 'HMNL104SZCQHK148160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1560', 'EK14+818', 'HMNL104SZCQHK148180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1561', 'EK14+820', 'HMNL104SZCQHK148200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1562', 'EK14+822', 'HMNL104SZCQHK148220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1563', 'EK14+824', 'HMNL104SZCQHK148240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1564', 'EK14+826', 'HMNL104SZCQHK148260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1565', 'EK14+828', 'HMNL104SZCQHK148280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1566', 'EK14+830', 'HMNL104SZCQHK148300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1567', 'EK14+832', 'HMNL104SZCQHK148320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1568', 'EK14+834', 'HMNL104SZCQHK148340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1569', 'EK14+836', 'HMNL104SZCQHK148360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1570', 'EK14+838', 'HMNL104SZCQHK148380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1571', 'EK14+840', 'HMNL104SZCQHK148400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1572', 'EK14+842', 'HMNL104SZCQHK148420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1573', 'EK14+844', 'HMNL104SZCQHK148440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1574', 'EK14+846', 'HMNL104SZCQHK148460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1575', 'EK14+848', 'HMNL104SZCQHK148480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1576', 'EK14+850', 'HMNL104SZCQHK148500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1577', 'EK14+852', 'HMNL104SZCQHK148520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1578', 'EK14+854', 'HMNL104SZCQHK148540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1579', 'EK14+856', 'HMNL104SZCQHK148560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1580', 'EK14+858', 'HMNL104SZCQHK148580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1581', 'EK14+860', 'HMNL104SZCQHK148600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1582', 'EK14+862', 'HMNL104SZCQHK148620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1583', 'EK14+864', 'HMNL104SZCQHK148640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1584', 'EK14+866', 'HMNL104SZCQHK148660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1585', 'EK14+868', 'HMNL104SZCQHK148680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1586', 'EK14+870', 'HMNL104SZCQHK148700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1587', 'EK14+872', 'HMNL104SZCQHK148720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1588', 'EK14+874', 'HMNL104SZCQHK148740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1589', 'EK14+876', 'HMNL104SZCQHK148760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1590', 'EK14+878', 'HMNL104SZCQHK148780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1591', 'EK14+880', 'HMNL104SZCQHK148800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1592', 'EK14+882', 'HMNL104SZCQHK148820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1593', 'EK14+884', 'HMNL104SZCQHK148840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1594', 'EK14+886', 'HMNL104SZCQHK148860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1595', 'EK14+888', 'HMNL104SZCQHK148880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1596', 'EK14+890', 'HMNL104SZCQHK148900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1597', 'EK14+892', 'HMNL104SZCQHK148920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1598', 'EK14+894', 'HMNL104SZCQHK148940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1599', 'EK14+896', 'HMNL104SZCQHK148960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1600', 'EK14+898', 'HMNL104SZCQHK148980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1601', 'EK14+900', 'HMNL104SZCQHK149000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1602', 'EK14+902', 'HMNL104SZCQHK149020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1603', 'EK14+904', 'HMNL104SZCQHK149040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1604', 'EK14+906', 'HMNL104SZCQHK149060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1605', 'EK14+908', 'HMNL104SZCQHK149080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1606', 'EK14+910', 'HMNL104SZCQHK149100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1607', 'EK14+912', 'HMNL104SZCQHK149120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1608', 'EK14+914', 'HMNL104SZCQHK149140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1609', 'EK14+916', 'HMNL104SZCQHK149160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1610', 'EK14+918', 'HMNL104SZCQHK149180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1611', 'EK14+920', 'HMNL104SZCQHK149200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1612', 'EK14+922', 'HMNL104SZCQHK149220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1613', 'EK14+924', 'HMNL104SZCQHK149240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1614', 'EK14+926', 'HMNL104SZCQHK149260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1615', 'EK14+928', 'HMNL104SZCQHK149280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1616', 'EK14+930', 'HMNL104SZCQHK149300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1617', 'EK14+932', 'HMNL104SZCQHK149320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1618', 'EK14+934', 'HMNL104SZCQHK149340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1619', 'EK14+936', 'HMNL104SZCQHK149360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1620', 'EK14+938', 'HMNL104SZCQHK149380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1621', 'EK14+940', 'HMNL104SZCQHK149400_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1622', 'EK14+942', 'HMNL104SZCQHK149420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1623', 'EK14+944', 'HMNL104SZCQHK149440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1624', 'EK14+946', 'HMNL104SZCQHK149460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1625', 'EK14+948', 'HMNL104SZCQHK149480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1626', 'EK14+950', 'HMNL104SZCQHK149500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1627', 'EK14+952', 'HMNL104SZCQHK149520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1628', 'EK14+954', 'HMNL104SZCQHK149540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1629', 'EK14+956', 'HMNL104SZCQHK149560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1630', 'EK14+958', 'HMNL104SZCQHK149580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1631', 'EK14+960', 'HMNL104SZCQHK149600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1632', 'EK14+962', 'HMNL104SZCQHK149620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1633', 'EK14+964', 'HMNL104SZCQHK149640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1634', 'EK14+966', 'HMNL104SZCQHK149660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1635', 'EK14+968', 'HMNL104SZCQHK149680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1636', 'EK14+970', 'HMNL104SZCQHK149700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1637', 'EK14+972', 'HMNL104SZCQHK149720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1638', 'EK14+974', 'HMNL104SZCQHK149740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1639', 'EK14+976', 'HMNL104SZCQHK149760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1640', 'EK14+978', 'HMNL104SZCQHK149780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1641', 'EK14+980', 'HMNL104SZCQHK149800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1642', 'EK14+982', 'HMNL104SZCQHK149820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1643', 'EK14+984', 'HMNL104SZCQHK149840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1644', 'EK14+986', 'HMNL104SZCQHK149860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1645', 'EK14+988', 'HMNL104SZCQHK149880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1646', 'EK14+990', 'HMNL104SZCQHK149900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1647', 'EK14+992', 'HMNL104SZCQHK149920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1648', 'EK14+994', 'HMNL104SZCQHK149940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1649', 'EK14+996', 'HMNL104SZCQHK149960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1650', 'EK14+998', 'HMNL104SZCQHK149980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1651', 'EK15+000', 'HMNL104SZCQHK150000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1652', 'EK15+002', 'HMNL104SZCQHK150020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1653', 'EK15+004', 'HMNL104SZCQHK150040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1654', 'EK15+006', 'HMNL104SZCQHK150060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1655', 'EK15+008', 'HMNL104SZCQHK150080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1656', 'EK15+010', 'HMNL104SZCQHK150100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1657', 'EK15+012', 'HMNL104SZCQHK150120_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1658', 'EK15+014', 'HMNL104SZCQHK150140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1659', 'EK15+016', 'HMNL104SZCQHK150160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1660', 'EK15+018', 'HMNL104SZCQHK150180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1661', 'EK15+020', 'HMNL104SZCQHK150200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1662', 'EK15+022', 'HMNL104SZCQHK150220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1663', 'EK15+024', 'HMNL104SZCQHK150240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1664', 'EK15+026', 'HMNL104SZCQHK150260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1665', 'EK15+028', 'HMNL104SZCQHK150280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1666', 'EK15+030', 'HMNL104SZCQHK150300_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1667', 'EK15+032', 'HMNL104SZCQHK150320_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1668', 'EK15+034', 'HMNL104SZCQHK150340_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1669', 'EK15+036', 'HMNL104SZCQHK150360_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1670', 'EK15+038', 'HMNL104SZCQHK150380_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1671', 'EK15+040', 'HMNL104SZCQHK150400_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1672', 'EK15+042', 'HMNL104SZCQHK150420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1673', 'EK15+044', 'HMNL104SZCQHK150440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1674', 'EK15+046', 'HMNL104SZCQHK150460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1675', 'EK15+048', 'HMNL104SZCQHK150480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1676', 'EK15+050', 'HMNL104SZCQHK150500_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1677', 'EK15+052', 'HMNL104SZCQHK150520_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1678', 'EK15+054', 'HMNL104SZCQHK150540_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1679', 'EK15+056', 'HMNL104SZCQHK150560_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1680', 'EK15+058', 'HMNL104SZCQHK150580_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1681', 'EK15+060', 'HMNL104SZCQHK150600_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1682', 'EK15+062', 'HMNL104SZCQHK150620_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1683', 'EK15+064', 'HMNL104SZCQHK150640_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1684', 'EK15+066', 'HMNL104SZCQHK150660_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1685', 'EK15+068', 'HMNL104SZCQHK150680_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1686', 'EK15+070', 'HMNL104SZCQHK150700_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1687', 'EK15+072', 'HMNL104SZCQHK150720_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1688', 'EK15+074', 'HMNL104SZCQHK150740_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1689', 'EK15+076', 'HMNL104SZCQHK150760_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1690', 'EK15+078', 'HMNL104SZCQHK150780_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1691', 'EK15+080', 'HMNL104SZCQHK150800_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1692', 'EK15+082', 'HMNL104SZCQHK150820_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1693', 'EK15+084', 'HMNL104SZCQHK150840_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1694', 'EK15+086', 'HMNL104SZCQHK150860_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1695', 'EK15+088', 'HMNL104SZCQHK150880_B0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1', 'WK15+091.498', 'HMNL204SZCQHK154980_A0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '2', 'WK15+089.1984', 'HMNL204SZCQHK159840_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '3', 'WK15+086.8988', 'HMNL204SZCQHK159880_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '4', 'WK15+084.5992', 'HMNL204SZCQHK159920_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '5', 'WK15+082.2996', 'HMNL204SZCQHK159960_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '6', 'WK15+080', 'HMNL204SZCQHK150800_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '7', 'WK15+078', 'HMNL204SZCQHK150780_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '8', 'WK15+076', 'HMNL204SZCQHK150760_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '9', 'WK15+074', 'HMNL204SZCQHK150740_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '10', 'WK15+072', 'HMNL204SZCQHK150720_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '11', 'WK15+070', 'HMNL204SZCQHK150700_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '12', 'WK15+068', 'HMNL204SZCQHK150680_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '13', 'WK15+066', 'HMNL204SZCQHK150660_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '14', 'WK15+064', 'HMNL204SZCQHK150640_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '15', 'WK15+062', 'HMNL204SZCQHK150620_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '16', 'WK15+060', 'HMNL204SZCQHK150600_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '17', 'WK15+058', 'HMNL204SZCQHK150580_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '18', 'WK15+056', 'HMNL204SZCQHK150560_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '19', 'WK15+054', 'HMNL204SZCQHK150540_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '20', 'WK15+052', 'HMNL204SZCQHK150520_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '21', 'WK15+050', 'HMNL204SZCQHK150500_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '22', 'WK15+048', 'HMNL204SZCQHK150480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '23', 'WK15+046', 'HMNL204SZCQHK150460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '24', 'WK15+044', 'HMNL204SZCQHK150440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '25', 'WK15+042', 'HMNL204SZCQHK150420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '26', 'WK15+040', 'HMNL204SZCQHK150400_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '27', 'WK15+038', 'HMNL204SZCQHK150380_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '28', 'WK15+036', 'HMNL204SZCQHK150360_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '29', 'WK15+034', 'HMNL204SZCQHK150340_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '30', 'WK15+032', 'HMNL204SZCQHK150320_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '31', 'WK15+030', 'HMNL204SZCQHK150300_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '32', 'WK15+028', 'HMNL204SZCQHK150280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '33', 'WK15+026', 'HMNL204SZCQHK150260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '34', 'WK15+024', 'HMNL204SZCQHK150240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '35', 'WK15+022', 'HMNL204SZCQHK150220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '36', 'WK15+020', 'HMNL204SZCQHK150200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '37', 'WK15+018', 'HMNL204SZCQHK150180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '38', 'WK15+016', 'HMNL204SZCQHK150160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '39', 'WK15+014', 'HMNL204SZCQHK150140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '40', 'WK15+012', 'HMNL204SZCQHK150120_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '41', 'WK15+010', 'HMNL204SZCQHK150100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '42', 'WK15+008', 'HMNL204SZCQHK150080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '43', 'WK15+006', 'HMNL204SZCQHK150060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '44', 'WK15+004', 'HMNL204SZCQHK150040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '45', 'WK15+002', 'HMNL204SZCQHK150020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '46', 'WK15+000.00', 'HMNL204SZCQHK15.000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '47', 'WK14+998', 'HMNL204SZCQHK149980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '48', 'WK14+996', 'HMNL204SZCQHK149960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '49', 'WK14+994', 'HMNL204SZCQHK149940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '50', 'WK14+992', 'HMNL204SZCQHK149920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '51', 'WK14+990', 'HMNL204SZCQHK149900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '52', 'WK14+988', 'HMNL204SZCQHK149880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '53', 'WK14+986', 'HMNL204SZCQHK149860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '54', 'WK14+984', 'HMNL204SZCQHK149840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '55', 'WK14+982', 'HMNL204SZCQHK149820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '56', 'WK14+980', 'HMNL204SZCQHK149800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '57', 'WK14+978', 'HMNL204SZCQHK149780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '58', 'WK14+976', 'HMNL204SZCQHK149760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '59', 'WK14+974', 'HMNL204SZCQHK149740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '60', 'WK14+972', 'HMNL204SZCQHK149720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '61', 'WK14+970', 'HMNL204SZCQHK149700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '62', 'WK14+968', 'HMNL204SZCQHK149680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '63', 'WK14+966', 'HMNL204SZCQHK149660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '64', 'WK14+964', 'HMNL204SZCQHK149640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '65', 'WK14+962', 'HMNL204SZCQHK149620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '66', 'WK14+960', 'HMNL204SZCQHK149600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '67', 'WK14+958', 'HMNL204SZCQHK149580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '68', 'WK14+956', 'HMNL204SZCQHK149560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '69', 'WK14+954', 'HMNL204SZCQHK149540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '70', 'WK14+952', 'HMNL204SZCQHK149520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '71', 'WK14+950', 'HMNL204SZCQHK149500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '72', 'WK14+948', 'HMNL204SZCQHK149480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '73', 'WK14+946', 'HMNL204SZCQHK149460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '74', 'WK14+944', 'HMNL204SZCQHK149440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '75', 'WK14+942', 'HMNL204SZCQHK149420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '76', 'WK14+940', 'HMNL204SZCQHK149400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '77', 'WK14+938', 'HMNL204SZCQHK149380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '78', 'WK14+936', 'HMNL204SZCQHK149360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '79', 'WK14+934', 'HMNL204SZCQHK149340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '80', 'WK14+932', 'HMNL204SZCQHK149320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '81', 'WK14+930', 'HMNL204SZCQHK149300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '82', 'WK14+928', 'HMNL204SZCQHK149280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '83', 'WK14+926', 'HMNL204SZCQHK149260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '84', 'WK14+924', 'HMNL204SZCQHK149240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '85', 'WK14+922', 'HMNL204SZCQHK149220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '86', 'WK14+920', 'HMNL204SZCQHK149200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '87', 'WK14+918', 'HMNL204SZCQHK149180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '88', 'WK14+916', 'HMNL204SZCQHK149160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '89', 'WK14+914', 'HMNL204SZCQHK149140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '90', 'WK14+912', 'HMNL204SZCQHK149120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '91', 'WK14+910', 'HMNL204SZCQHK149100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '92', 'WK14+908', 'HMNL204SZCQHK149080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '93', 'WK14+906', 'HMNL204SZCQHK149060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '94', 'WK14+904', 'HMNL204SZCQHK149040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '95', 'WK14+902', 'HMNL204SZCQHK149020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '96', 'WK14+900', 'HMNL204SZCQHK149000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '97', 'WK14+898', 'HMNL204SZCQHK148980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '98', 'WK14+896', 'HMNL204SZCQHK148960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '99', 'WK14+894', 'HMNL204SZCQHK148940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '100', 'WK14+892', 'HMNL204SZCQHK148920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '101', 'WK14+890', 'HMNL204SZCQHK148900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '102', 'WK14+888', 'HMNL204SZCQHK148880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '103', 'WK14+886', 'HMNL204SZCQHK148860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '104', 'WK14+884', 'HMNL204SZCQHK148840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '105', 'WK14+882', 'HMNL204SZCQHK148820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '106', 'WK14+880', 'HMNL204SZCQHK148800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '107', 'WK14+878', 'HMNL204SZCQHK148780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '108', 'WK14+876', 'HMNL204SZCQHK148760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '109', 'WK14+874', 'HMNL204SZCQHK148740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '110', 'WK14+872', 'HMNL204SZCQHK148720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '111', 'WK14+870', 'HMNL204SZCQHK148700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '112', 'WK14+868', 'HMNL204SZCQHK148680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '113', 'WK14+866', 'HMNL204SZCQHK148660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '114', 'WK14+864', 'HMNL204SZCQHK148640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '115', 'WK14+862', 'HMNL204SZCQHK148620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '116', 'WK14+860', 'HMNL204SZCQHK148600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '117', 'WK14+858', 'HMNL204SZCQHK148580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '118', 'WK14+856', 'HMNL204SZCQHK148560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '119', 'WK14+854', 'HMNL204SZCQHK148540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '120', 'WK14+852', 'HMNL204SZCQHK148520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '121', 'WK14+850', 'HMNL204SZCQHK148500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '122', 'WK14+848', 'HMNL204SZCQHK148480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '123', 'WK14+846', 'HMNL204SZCQHK148460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '124', 'WK14+844', 'HMNL204SZCQHK148440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '125', 'WK14+842', 'HMNL204SZCQHK148420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '126', 'WK14+840', 'HMNL204SZCQHK148400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '127', 'WK14+838', 'HMNL204SZCQHK148380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '128', 'WK14+836', 'HMNL204SZCQHK148360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '129', 'WK14+834', 'HMNL204SZCQHK148340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '130', 'WK14+832', 'HMNL204SZCQHK148320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '131', 'WK14+830', 'HMNL204SZCQHK148300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '132', 'WK14+828', 'HMNL204SZCQHK148280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '133', 'WK14+826', 'HMNL204SZCQHK148260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '134', 'WK14+824', 'HMNL204SZCQHK148240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '135', 'WK14+822', 'HMNL204SZCQHK148220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '136', 'WK14+820', 'HMNL204SZCQHK148200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '137', 'WK14+818', 'HMNL204SZCQHK148180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '138', 'WK14+816', 'HMNL204SZCQHK148160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '139', 'WK14+814', 'HMNL204SZCQHK148140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '140', 'WK14+812', 'HMNL204SZCQHK148120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '141', 'WK14+810', 'HMNL204SZCQHK148100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '142', 'WK14+808', 'HMNL204SZCQHK148080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '143', 'WK14+806', 'HMNL204SZCQHK148060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '144', 'WK14+804', 'HMNL204SZCQHK148040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '145', 'WK14+802', 'HMNL204SZCQHK148020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '146', 'WK14+800', 'HMNL204SZCQHK148000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '147', 'WK14+798', 'HMNL204SZCQHK147980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '148', 'WK14+796', 'HMNL204SZCQHK147960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '149', 'WK14+794', 'HMNL204SZCQHK147940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '150', 'WK14+792', 'HMNL204SZCQHK147920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '151', 'WK14+790', 'HMNL204SZCQHK147900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '152', 'WK14+788', 'HMNL204SZCQHK147880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '153', 'WK14+786', 'HMNL204SZCQHK147860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '154', 'WK14+784', 'HMNL204SZCQHK147840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '155', 'WK14+782', 'HMNL204SZCQHK147820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '156', 'WK14+780', 'HMNL204SZCQHK147800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '157', 'WK14+778', 'HMNL204SZCQHK147780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '158', 'WK14+776', 'HMNL204SZCQHK147760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '159', 'WK14+774', 'HMNL204SZCQHK147740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '160', 'WK14+772', 'HMNL204SZCQHK147720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '161', 'WK14+770', 'HMNL204SZCQHK147700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '162', 'WK14+768', 'HMNL204SZCQHK147680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '163', 'WK14+766', 'HMNL204SZCQHK147660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '164', 'WK14+764', 'HMNL204SZCQHK147640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '165', 'WK14+762', 'HMNL204SZCQHK147620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '166', 'WK14+760', 'HMNL204SZCQHK147600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '167', 'WK14+758', 'HMNL204SZCQHK147580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '168', 'WK14+756', 'HMNL204SZCQHK147560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '169', 'WK14+754', 'HMNL204SZCQHK147540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '170', 'WK14+752', 'HMNL204SZCQHK147520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '171', 'WK14+750', 'HMNL204SZCQHK147500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '172', 'WK14+748', 'HMNL204SZCQHK147480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '173', 'WK14+746', 'HMNL204SZCQHK147460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '174', 'WK14+744', 'HMNL204SZCQHK147440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '175', 'WK14+742', 'HMNL204SZCQHK147420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '176', 'WK14+740', 'HMNL204SZCQHK147400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '177', 'WK14+738', 'HMNL204SZCQHK147380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '178', 'WK14+736', 'HMNL204SZCQHK147360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '179', 'WK14+734', 'HMNL204SZCQHK147340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '180', 'WK14+732', 'HMNL204SZCQHK147320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '181', 'WK14+730', 'HMNL204SZCQHK147300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '182', 'WK14+728', 'HMNL204SZCQHK147280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '183', 'WK14+726', 'HMNL204SZCQHK147260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '184', 'WK14+724', 'HMNL204SZCQHK147240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '185', 'WK14+722', 'HMNL204SZCQHK147220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '186', 'WK14+720', 'HMNL204SZCQHK147200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '187', 'WK14+718', 'HMNL204SZCQHK147180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '188', 'WK14+716', 'HMNL204SZCQHK147160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '189', 'WK14+714', 'HMNL204SZCQHK147140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '190', 'WK14+712', 'HMNL204SZCQHK147120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '191', 'WK14+710', 'HMNL204SZCQHK147100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '192', 'WK14+708', 'HMNL204SZCQHK147080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '193', 'WK14+706', 'HMNL204SZCQHK147060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '194', 'WK14+704', 'HMNL204SZCQHK147040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '195', 'WK14+702', 'HMNL204SZCQHK147020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '196', 'WK14+700', 'HMNL204SZCQHK147000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '197', 'WK14+698', 'HMNL204SZCQHK146980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '198', 'WK14+696', 'HMNL204SZCQHK146960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '199', 'WK14+694', 'HMNL204SZCQHK146940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '200', 'WK14+692', 'HMNL204SZCQHK146920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '201', 'WK14+690', 'HMNL204SZCQHK146900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '202', 'WK14+688', 'HMNL204SZCQHK146880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '203', 'WK14+686', 'HMNL204SZCQHK146860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '204', 'WK14+684', 'HMNL204SZCQHK146840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '205', 'WK14+682', 'HMNL204SZCQHK146820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '206', 'WK14+680', 'HMNL204SZCQHK146800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '207', 'WK14+678', 'HMNL204SZCQHK146780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '208', 'WK14+676', 'HMNL204SZCQHK146760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '209', 'WK14+674', 'HMNL204SZCQHK146740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '210', 'WK14+672', 'HMNL204SZCQHK146720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '211', 'WK14+670', 'HMNL204SZCQHK146700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '212', 'WK14+668', 'HMNL204SZCQHK146680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '213', 'WK14+666', 'HMNL204SZCQHK146660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '214', 'WK14+664', 'HMNL204SZCQHK146640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '215', 'WK14+662', 'HMNL204SZCQHK146620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '216', 'WK14+660', 'HMNL204SZCQHK146600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '217', 'WK14+658', 'HMNL204SZCQHK146580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '218', 'WK14+656', 'HMNL204SZCQHK146560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '219', 'WK14+654', 'HMNL204SZCQHK146540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '220', 'WK14+652', 'HMNL204SZCQHK146520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '221', 'WK14+650', 'HMNL204SZCQHK146500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '222', 'WK14+648', 'HMNL204SZCQHK146480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '223', 'WK14+646', 'HMNL204SZCQHK146460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '224', 'WK14+644', 'HMNL204SZCQHK146440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '225', 'WK14+642', 'HMNL204SZCQHK146420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '226', 'WK14+640', 'HMNL204SZCQHK146400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '227', 'WK14+638', 'HMNL204SZCQHK146380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '228', 'WK14+636', 'HMNL204SZCQHK146360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '229', 'WK14+634', 'HMNL204SZCQHK146340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '230', 'WK14+632', 'HMNL204SZCQHK146320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '231', 'WK14+630', 'HMNL204SZCQHK146300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '232', 'WK14+628', 'HMNL204SZCQHK146280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '233', 'WK14+626', 'HMNL204SZCQHK146260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '234', 'WK14+624', 'HMNL204SZCQHK146240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '235', 'WK14+622', 'HMNL204SZCQHK146220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '236', 'WK14+620', 'HMNL204SZCQHK146200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '237', 'WK14+618', 'HMNL204SZCQHK146180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '238', 'WK14+616', 'HMNL204SZCQHK146160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '239', 'WK14+614', 'HMNL204SZCQHK146140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '240', 'WK14+612', 'HMNL204SZCQHK146120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '241', 'WK14+610', 'HMNL204SZCQHK146100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '242', 'WK14+608', 'HMNL204SZCQHK146080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '243', 'WK14+606', 'HMNL204SZCQHK146060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '244', 'WK14+604', 'HMNL204SZCQHK146040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '245', 'WK14+602', 'HMNL204SZCQHK146020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '246', 'WK14+600', 'HMNL204SZCQHK146000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '247', 'WK14+598', 'HMNL204SZCQHK145980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '248', 'WK14+596', 'HMNL204SZCQHK145960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '249', 'WK14+594', 'HMNL204SZCQHK145940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '250', 'WK14+592', 'HMNL204SZCQHK145920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '251', 'WK14+590', 'HMNL204SZCQHK145900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '252', 'WK14+588', 'HMNL204SZCQHK145880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '253', 'WK14+586', 'HMNL204SZCQHK145860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '254', 'WK14+584', 'HMNL204SZCQHK145840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '255', 'WK14+582', 'HMNL204SZCQHK145820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '256', 'WK14+580', 'HMNL204SZCQHK145800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '257', 'WK14+578', 'HMNL204SZCQHK145780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '258', 'WK14+576', 'HMNL204SZCQHK145760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '259', 'WK14+574', 'HMNL204SZCQHK145740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '260', 'WK14+572', 'HMNL204SZCQHK145720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '261', 'WK14+570', 'HMNL204SZCQHK145700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '262', 'WK14+568', 'HMNL204SZCQHK145680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '263', 'WK14+566', 'HMNL204SZCQHK145660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '264', 'WK14+564', 'HMNL204SZCQHK145640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '265', 'WK14+562', 'HMNL204SZCQHK145620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '266', 'WK14+560', 'HMNL204SZCQHK145600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '267', 'WK14+558', 'HMNL204SZCQHK145580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '268', 'WK14+556', 'HMNL204SZCQHK145560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '269', 'WK14+554', 'HMNL204SZCQHK145540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '270', 'WK14+552', 'HMNL204SZCQHK145520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '271', 'WK14+550', 'HMNL204SZCQHK145500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '272', 'WK14+548', 'HMNL204SZCQHK145480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '273', 'WK14+546', 'HMNL204SZCQHK145460_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '274', 'WK14+544', 'HMNL204SZCQHK145440_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '275', 'WK14+542', 'HMNL204SZCQHK145420_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '276', 'WK14+540', 'HMNL204SZCQHK145400_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '277', 'WK14+538', 'HMNL204SZCQHK145380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '278', 'WK14+536', 'HMNL204SZCQHK145360_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '279', 'WK14+534', 'HMNL204SZCQHK145340_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '280', 'WK14+532', 'HMNL204SZCQHK145320_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '281', 'WK14+530', 'HMNL204SZCQHK145300_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '282', 'WK14+528', 'HMNL204SZCQHK145280_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '283', 'WK14+526', 'HMNL204SZCQHK145260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '284', 'WK14+524', 'HMNL204SZCQHK145240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '285', 'WK14+522', 'HMNL204SZCQHK145220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '286', 'WK14+520', 'HMNL204SZCQHK145200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '287', 'WK14+518', 'HMNL204SZCQHK145180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '288', 'WK14+516', 'HMNL204SZCQHK145160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '289', 'WK14+514', 'HMNL204SZCQHK145140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '290', 'WK14+512', 'HMNL204SZCQHK145120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '291', 'WK14+510', 'HMNL204SZCQHK145100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '292', 'WK14+508', 'HMNL204SZCQHK145080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '293', 'WK14+506', 'HMNL204SZCQHK145060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '294', 'WK14+504', 'HMNL204SZCQHK145040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '295', 'WK14+502', 'HMNL204SZCQHK145020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '296', 'WK14+500', 'HMNL204SZCQHK145000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '297', 'WK14+498', 'HMNL204SZCQHK144980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '298', 'WK14+496', 'HMNL204SZCQHK144960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '299', 'WK14+494', 'HMNL204SZCQHK144940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '300', 'WK14+492', 'HMNL204SZCQHK144920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '301', 'WK14+490', 'HMNL204SZCQHK144900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '302', 'WK14+488', 'HMNL204SZCQHK144880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '303', 'WK14+486', 'HMNL204SZCQHK144860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '304', 'WK14+484', 'HMNL204SZCQHK144840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '305', 'WK14+482', 'HMNL204SZCQHK144820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '306', 'WK14+480', 'HMNL204SZCQHK144800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '307', 'WK14+478', 'HMNL204SZCQHK144780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '308', 'WK14+476', 'HMNL204SZCQHK144760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '309', 'WK14+474', 'HMNL204SZCQHK144740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '310', 'WK14+472', 'HMNL204SZCQHK144720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '311', 'WK14+470', 'HMNL204SZCQHK144700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '312', 'WK14+468', 'HMNL204SZCQHK144680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '313', 'WK14+466', 'HMNL204SZCQHK144660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '314', 'WK14+464', 'HMNL204SZCQHK144640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '315', 'WK14+462', 'HMNL204SZCQHK144620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '316', 'WK14+460', 'HMNL204SZCQHK144600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '317', 'WK14+458', 'HMNL204SZCQHK144580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '318', 'WK14+456', 'HMNL204SZCQHK144560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '319', 'WK14+454', 'HMNL204SZCQHK144540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '320', 'WK14+452', 'HMNL204SZCQHK144520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '321', 'WK14+450', 'HMNL204SZCQHK144500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '322', 'WK14+448', 'HMNL204SZCQHK144480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '323', 'WK14+446', 'HMNL204SZCQHK144460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '324', 'WK14+444', 'HMNL204SZCQHK144440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '325', 'WK14+442', 'HMNL204SZCQHK144420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '326', 'WK14+440', 'HMNL204SZCQHK144400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '327', 'WK14+438', 'HMNL204SZCQHK144380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '328', 'WK14+436', 'HMNL204SZCQHK144360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '329', 'WK14+434', 'HMNL204SZCQHK144340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '330', 'WK14+432', 'HMNL204SZCQHK144320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '331', 'WK14+430', 'HMNL204SZCQHK144300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '332', 'WK14+428', 'HMNL204SZCQHK144280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '333', 'WK14+426', 'HMNL204SZCQHK144260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '334', 'WK14+424', 'HMNL204SZCQHK144240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '335', 'WK14+422', 'HMNL204SZCQHK144220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '336', 'WK14+420', 'HMNL204SZCQHK144200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '337', 'WK14+418', 'HMNL204SZCQHK144180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '338', 'WK14+416', 'HMNL204SZCQHK144160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '339', 'WK14+414', 'HMNL204SZCQHK144140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '340', 'WK14+412', 'HMNL204SZCQHK144120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '341', 'WK14+410', 'HMNL204SZCQHK144100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '342', 'WK14+408', 'HMNL204SZCQHK144080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '343', 'WK14+406', 'HMNL204SZCQHK144060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '344', 'WK14+404', 'HMNL204SZCQHK144040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '345', 'WK14+402', 'HMNL204SZCQHK144020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '346', 'WK14+400', 'HMNL204SZCQHK144000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '347', 'WK14+398', 'HMNL204SZCQHK143980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '348', 'WK14+396', 'HMNL204SZCQHK143960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '349', 'WK14+394', 'HMNL204SZCQHK143940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '350', 'WK14+392', 'HMNL204SZCQHK143920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '351', 'WK14+390', 'HMNL204SZCQHK143900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '352', 'WK14+388', 'HMNL204SZCQHK143880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '353', 'WK14+386', 'HMNL204SZCQHK143860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '354', 'WK14+384', 'HMNL204SZCQHK143840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '355', 'WK14+382', 'HMNL204SZCQHK143820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '356', 'WK14+380', 'HMNL204SZCQHK143800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '357', 'WK14+378', 'HMNL204SZCQHK143780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '358', 'WK14+376', 'HMNL204SZCQHK143760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '359', 'WK14+374', 'HMNL204SZCQHK143740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '360', 'WK14+372', 'HMNL204SZCQHK143720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '361', 'WK14+370', 'HMNL204SZCQHK143700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '362', 'WK14+368', 'HMNL204SZCQHK143680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '363', 'WK14+366', 'HMNL204SZCQHK143660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '364', 'WK14+364', 'HMNL204SZCQHK143640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '365', 'WK14+362', 'HMNL204SZCQHK143620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '366', 'WK14+360', 'HMNL204SZCQHK143600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '367', 'WK14+358', 'HMNL204SZCQHK143580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '368', 'WK14+356', 'HMNL204SZCQHK143560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '369', 'WK14+354', 'HMNL204SZCQHK143540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '370', 'WK14+352', 'HMNL204SZCQHK143520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '371', 'WK14+350', 'HMNL204SZCQHK143500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '372', 'WK14+348', 'HMNL204SZCQHK143480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '373', 'WK14+346', 'HMNL204SZCQHK143460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '374', 'WK14+344', 'HMNL204SZCQHK143440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '375', 'WK14+342', 'HMNL204SZCQHK143420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '376', 'WK14+340', 'HMNL204SZCQHK143400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '377', 'WK14+338', 'HMNL204SZCQHK143380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '378', 'WK14+336', 'HMNL204SZCQHK143360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '379', 'WK14+334', 'HMNL204SZCQHK143340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '380', 'WK14+332', 'HMNL204SZCQHK143320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '381', 'WK14+330', 'HMNL204SZCQHK143300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '382', 'WK14+328', 'HMNL204SZCQHK143280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '383', 'WK14+326', 'HMNL204SZCQHK143260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '384', 'WK14+324', 'HMNL204SZCQHK143240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '385', 'WK14+322', 'HMNL204SZCQHK143220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '386', 'WK14+320', 'HMNL204SZCQHK143200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '387', 'WK14+318', 'HMNL204SZCQHK143180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '388', 'WK14+316', 'HMNL204SZCQHK143160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '389', 'WK14+314', 'HMNL204SZCQHK143140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '390', 'WK14+312', 'HMNL204SZCQHK143120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '391', 'WK14+310', 'HMNL204SZCQHK143100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '392', 'WK14+308', 'HMNL204SZCQHK143080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '393', 'WK14+306', 'HMNL204SZCQHK143060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '394', 'WK14+304', 'HMNL204SZCQHK143040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '395', 'WK14+302', 'HMNL204SZCQHK143020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '396', 'WK14+300', 'HMNL204SZCQHK143000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '397', 'WK14+298', 'HMNL204SZCQHK142980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '398', 'WK14+296', 'HMNL204SZCQHK142960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '399', 'WK14+294', 'HMNL204SZCQHK142940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '400', 'WK14+292', 'HMNL204SZCQHK142920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '401', 'WK14+290', 'HMNL204SZCQHK142900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '402', 'WK14+288', 'HMNL204SZCQHK142880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '403', 'WK14+286', 'HMNL204SZCQHK142860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '404', 'WK14+284', 'HMNL204SZCQHK142840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '405', 'WK14+282', 'HMNL204SZCQHK142820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '406', 'WK14+280', 'HMNL204SZCQHK142800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '407', 'WK14+278', 'HMNL204SZCQHK142780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '408', 'WK14+276', 'HMNL204SZCQHK142760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '409', 'WK14+274', 'HMNL204SZCQHK142740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '410', 'WK14+272', 'HMNL204SZCQHK142720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '411', 'WK14+270', 'HMNL204SZCQHK142700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '412', 'WK14+268', 'HMNL204SZCQHK142680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '413', 'WK14+266', 'HMNL204SZCQHK142660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '414', 'WK14+264', 'HMNL204SZCQHK142640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '415', 'WK14+262', 'HMNL204SZCQHK142620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '416', 'WK14+260', 'HMNL204SZCQHK142600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '417', 'WK14+258', 'HMNL204SZCQHK142580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '418', 'WK14+256', 'HMNL204SZCQHK142560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '419', 'WK14+254', 'HMNL204SZCQHK142540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '420', 'WK14+252', 'HMNL204SZCQHK142520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '421', 'WK14+250', 'HMNL204SZCQHK142500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '422', 'WK14+248', 'HMNL204SZCQHK142480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '423', 'WK14+246', 'HMNL204SZCQHK142460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '424', 'WK14+244', 'HMNL204SZCQHK142440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '425', 'WK14+242', 'HMNL204SZCQHK142420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '426', 'WK14+240', 'HMNL204SZCQHK142400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '427', 'WK14+238', 'HMNL204SZCQHK142380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '428', 'WK14+236', 'HMNL204SZCQHK142360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '429', 'WK14+234', 'HMNL204SZCQHK142340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '430', 'WK14+232', 'HMNL204SZCQHK142320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '431', 'WK14+230', 'HMNL204SZCQHK142300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '432', 'WK14+228', 'HMNL204SZCQHK142280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '433', 'WK14+226', 'HMNL204SZCQHK142260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '434', 'WK14+224', 'HMNL204SZCQHK142240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '435', 'WK14+222', 'HMNL204SZCQHK142220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '436', 'WK14+220', 'HMNL204SZCQHK142200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '437', 'WK14+218', 'HMNL204SZCQHK142180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '438', 'WK14+216', 'HMNL204SZCQHK142160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '439', 'WK14+214', 'HMNL204SZCQHK142140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '440', 'WK14+212', 'HMNL204SZCQHK142120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '441', 'WK14+210', 'HMNL204SZCQHK142100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '442', 'WK14+208', 'HMNL204SZCQHK142080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '443', 'WK14+206', 'HMNL204SZCQHK142060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '444', 'WK14+204', 'HMNL204SZCQHK142040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '445', 'WK14+202', 'HMNL204SZCQHK142020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '446', 'WK14+200', 'HMNL204SZCQHK142000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '447', 'WK14+198', 'HMNL204SZCQHK141980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '448', 'WK14+196', 'HMNL204SZCQHK141960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '449', 'WK14+194', 'HMNL204SZCQHK141940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '450', 'WK14+192', 'HMNL204SZCQHK141920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '451', 'WK14+190', 'HMNL204SZCQHK141900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '452', 'WK14+188', 'HMNL204SZCQHK141880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '453', 'WK14+186', 'HMNL204SZCQHK141860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '454', 'WK14+184', 'HMNL204SZCQHK141840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '455', 'WK14+182', 'HMNL204SZCQHK141820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '456', 'WK14+180', 'HMNL204SZCQHK141800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '457', 'WK14+178', 'HMNL204SZCQHK141780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '458', 'WK14+176', 'HMNL204SZCQHK141760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '459', 'WK14+174', 'HMNL204SZCQHK141740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '460', 'WK14+172', 'HMNL204SZCQHK141720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '461', 'WK14+170', 'HMNL204SZCQHK141700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '462', 'WK14+168', 'HMNL204SZCQHK141680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '463', 'WK14+166', 'HMNL204SZCQHK141660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '464', 'WK14+164', 'HMNL204SZCQHK141640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '465', 'WK14+162', 'HMNL204SZCQHK141620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '466', 'WK14+160', 'HMNL204SZCQHK141600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '467', 'WK14+158', 'HMNL204SZCQHK141580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '468', 'WK14+156', 'HMNL204SZCQHK141560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '469', 'WK14+154', 'HMNL204SZCQHK141540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '470', 'WK14+152', 'HMNL204SZCQHK141520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '471', 'WK14+150', 'HMNL204SZCQHK141500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '472', 'WK14+148', 'HMNL204SZCQHK141480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '473', 'WK14+146', 'HMNL204SZCQHK141460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '474', 'WK14+144', 'HMNL204SZCQHK141440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '475', 'WK14+142', 'HMNL204SZCQHK141420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '476', 'WK14+140', 'HMNL204SZCQHK141400_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '477', 'WK14+138', 'HMNL204SZCQHK141380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '478', 'WK14+136', 'HMNL204SZCQHK141360_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '479', 'WK14+134', 'HMNL204SZCQHK141340_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '480', 'WK14+132', 'HMNL204SZCQHK141320_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '481', 'WK14+130', 'HMNL204SZCQHK141300_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '482', 'WK14+128', 'HMNL204SZCQHK141280_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '483', 'WK14+126', 'HMNL204SZCQHK141260_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '484', 'WK14+124', 'HMNL204SZCQHK141240_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '485', 'WK14+122', 'HMNL204SZCQHK141220_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '486', 'WK14+120', 'HMNL204SZCQHK141200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '487', 'WK14+118', 'HMNL204SZCQHK141180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '488', 'WK14+116', 'HMNL204SZCQHK141160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '489', 'WK14+114', 'HMNL204SZCQHK141140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '490', 'WK14+112', 'HMNL204SZCQHK141120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '491', 'WK14+110', 'HMNL204SZCQHK141100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '492', 'WK14+108', 'HMNL204SZCQHK141080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '493', 'WK14+106', 'HMNL204SZCQHK141060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '494', 'WK14+104', 'HMNL204SZCQHK141040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '495', 'WK14+102', 'HMNL204SZCQHK141020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '496', 'WK14+100', 'HMNL204SZCQHK141000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '497', 'WK14+098', 'HMNL204SZCQHK140980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '498', 'WK14+096', 'HMNL204SZCQHK140960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '499', 'WK14+094', 'HMNL204SZCQHK140940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '500', 'WK14+092', 'HMNL204SZCQHK140920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '501', 'WK14+090', 'HMNL204SZCQHK140900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '502', 'WK14+088', 'HMNL204SZCQHK140880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '503', 'WK14+086', 'HMNL204SZCQHK140860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '504', 'WK14+084', 'HMNL204SZCQHK140840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '505', 'WK14+082', 'HMNL204SZCQHK140820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '506', 'WK14+080', 'HMNL204SZCQHK140800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '507', 'WK14+078', 'HMNL204SZCQHK140780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '508', 'WK14+076', 'HMNL204SZCQHK140760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '509', 'WK14+074', 'HMNL204SZCQHK140740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '510', 'WK14+072', 'HMNL204SZCQHK140720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '511', 'WK14+070', 'HMNL204SZCQHK140700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '512', 'WK14+068', 'HMNL204SZCQHK140680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '513', 'WK14+066', 'HMNL204SZCQHK140660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '514', 'WK14+064', 'HMNL204SZCQHK140640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '515', 'WK14+062', 'HMNL204SZCQHK140620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '516', 'WK14+060', 'HMNL204SZCQHK140600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '517', 'WK14+058', 'HMNL204SZCQHK140580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '518', 'WK14+056', 'HMNL204SZCQHK140560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '519', 'WK14+054', 'HMNL204SZCQHK140540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '520', 'WK14+052', 'HMNL204SZCQHK140520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '521', 'WK14+050', 'HMNL204SZCQHK140500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '522', 'WK14+048', 'HMNL204SZCQHK140480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '523', 'WK14+046', 'HMNL204SZCQHK140460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '524', 'WK14+044', 'HMNL204SZCQHK140440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '525', 'WK14+042', 'HMNL204SZCQHK140420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '526', 'WK14+040', 'HMNL204SZCQHK140400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '527', 'WK14+038', 'HMNL204SZCQHK140380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '528', 'WK14+036', 'HMNL204SZCQHK140360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '529', 'WK14+034', 'HMNL204SZCQHK140340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '530', 'WK14+032', 'HMNL204SZCQHK140320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '531', 'WK14+030', 'HMNL204SZCQHK140300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '532', 'WK14+028', 'HMNL204SZCQHK140280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '533', 'WK14+026', 'HMNL204SZCQHK140260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '534', 'WK14+024', 'HMNL204SZCQHK140240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '535', 'WK14+022', 'HMNL204SZCQHK140220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '536', 'WK14+020', 'HMNL204SZCQHK140200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '537', 'WK14+018', 'HMNL204SZCQHK140180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '538', 'WK14+016', 'HMNL204SZCQHK140160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '539', 'WK14+014', 'HMNL204SZCQHK140140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '540', 'WK14+012', 'HMNL204SZCQHK140120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '541', 'WK14+010', 'HMNL204SZCQHK140100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '542', 'WK14+008', 'HMNL204SZCQHK140080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '543', 'WK14+006', 'HMNL204SZCQHK140060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '544', 'WK14+004', 'HMNL204SZCQHK140040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '545', 'WK14+002', 'HMNL204SZCQHK140020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '546', 'WK14+000', 'HMNL204SZCQHK140000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '547', 'WK13+998', 'HMNL204SZCQHK139980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '548', 'WK13+996', 'HMNL204SZCQHK139960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '549', 'WK13+994', 'HMNL204SZCQHK139940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '550', 'WK13+992', 'HMNL204SZCQHK139920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '551', 'WK13+990', 'HMNL204SZCQHK139900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '552', 'WK13+988', 'HMNL204SZCQHK139880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '553', 'WK13+986', 'HMNL204SZCQHK139860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '554', 'WK13+984', 'HMNL204SZCQHK139840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '555', 'WK13+982', 'HMNL204SZCQHK139820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '556', 'WK13+980', 'HMNL204SZCQHK139800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '557', 'WK13+978', 'HMNL204SZCQHK139780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '558', 'WK13+976', 'HMNL204SZCQHK139760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '559', 'WK13+974', 'HMNL204SZCQHK139740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '560', 'WK13+972', 'HMNL204SZCQHK139720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '561', 'WK13+970', 'HMNL204SZCQHK139700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '562', 'WK13+968', 'HMNL204SZCQHK139680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '563', 'WK13+966', 'HMNL204SZCQHK139660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '564', 'WK13+964', 'HMNL204SZCQHK139640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '565', 'WK13+962', 'HMNL204SZCQHK139620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '566', 'WK13+960', 'HMNL204SZCQHK139600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '567', 'WK13+958', 'HMNL204SZCQHK139580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '568', 'WK13+956', 'HMNL204SZCQHK139560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '569', 'WK13+954', 'HMNL204SZCQHK139540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '570', 'WK13+952', 'HMNL204SZCQHK139520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '571', 'WK13+950', 'HMNL204SZCQHK139500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '572', 'WK13+948', 'HMNL204SZCQHK139480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '573', 'WK13+946', 'HMNL204SZCQHK139460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '574', 'WK13+944', 'HMNL204SZCQHK139440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '575', 'WK13+942', 'HMNL204SZCQHK139420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '576', 'WK13+940', 'HMNL204SZCQHK139400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '577', 'WK13+938', 'HMNL204SZCQHK139380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '578', 'WK13+936', 'HMNL204SZCQHK139360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '579', 'WK13+934', 'HMNL204SZCQHK139340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '580', 'WK13+932', 'HMNL204SZCQHK139320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '581', 'WK13+930', 'HMNL204SZCQHK139300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '582', 'WK13+928', 'HMNL204SZCQHK139280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '583', 'WK13+926', 'HMNL204SZCQHK139260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '584', 'WK13+924', 'HMNL204SZCQHK139240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '585', 'WK13+922', 'HMNL204SZCQHK139220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '586', 'WK13+920', 'HMNL204SZCQHK139200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '587', 'WK13+918', 'HMNL204SZCQHK139180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '588', 'WK13+916', 'HMNL204SZCQHK139160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '589', 'WK13+914', 'HMNL204SZCQHK139140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '590', 'WK13+912', 'HMNL204SZCQHK139120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '591', 'WK13+910', 'HMNL204SZCQHK139100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '592', 'WK13+908', 'HMNL204SZCQHK139080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '593', 'WK13+906', 'HMNL204SZCQHK139060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '594', 'WK13+904', 'HMNL204SZCQHK139040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '595', 'WK13+902', 'HMNL204SZCQHK139020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '596', 'WK13+900', 'HMNL204SZCQHK139000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '597', 'WK13+898', 'HMNL204SZCQHK138980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '598', 'WK13+896', 'HMNL204SZCQHK138960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '599', 'WK13+894', 'HMNL204SZCQHK138940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '600', 'WK13+892', 'HMNL204SZCQHK138920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '601', 'WK13+890', 'HMNL204SZCQHK138900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '602', 'WK13+888', 'HMNL204SZCQHK138880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '603', 'WK13+886', 'HMNL204SZCQHK138860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '604', 'WK13+884', 'HMNL204SZCQHK138840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '605', 'WK13+882', 'HMNL204SZCQHK138820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '606', 'WK13+880', 'HMNL204SZCQHK138800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '607', 'WK13+878', 'HMNL204SZCQHK138780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '608', 'WK13+876', 'HMNL204SZCQHK138760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '609', 'WK13+874', 'HMNL204SZCQHK138740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '610', 'WK13+872', 'HMNL204SZCQHK138720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '611', 'WK13+870', 'HMNL204SZCQHK138700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '612', 'WK13+868', 'HMNL204SZCQHK138680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '613', 'WK13+866', 'HMNL204SZCQHK138660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '614', 'WK13+864', 'HMNL204SZCQHK138640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '615', 'WK13+862', 'HMNL204SZCQHK138620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '616', 'WK13+860', 'HMNL204SZCQHK138600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '617', 'WK13+858', 'HMNL204SZCQHK138580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '618', 'WK13+856', 'HMNL204SZCQHK138560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '619', 'WK13+854', 'HMNL204SZCQHK138540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '620', 'WK13+852', 'HMNL204SZCQHK138520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '621', 'WK13+850', 'HMNL204SZCQHK138500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '622', 'WK13+848', 'HMNL204SZCQHK138480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '623', 'WK13+846', 'HMNL204SZCQHK138460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '624', 'WK13+844', 'HMNL204SZCQHK138440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '625', 'WK13+842', 'HMNL204SZCQHK138420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '626', 'WK13+840', 'HMNL204SZCQHK138400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '627', 'WK13+838', 'HMNL204SZCQHK138380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '628', 'WK13+836', 'HMNL204SZCQHK138360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '629', 'WK13+834', 'HMNL204SZCQHK138340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '630', 'WK13+832', 'HMNL204SZCQHK138320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '631', 'WK13+830', 'HMNL204SZCQHK138300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '632', 'WK13+828', 'HMNL204SZCQHK138280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '633', 'WK13+826', 'HMNL204SZCQHK138260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '634', 'WK13+824', 'HMNL204SZCQHK138240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '635', 'WK13+822', 'HMNL204SZCQHK138220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '636', 'WK13+820', 'HMNL204SZCQHK138200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '637', 'WK13+818', 'HMNL204SZCQHK138180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '638', 'WK13+816', 'HMNL204SZCQHK138160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '639', 'WK13+814', 'HMNL204SZCQHK138140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '640', 'WK13+812', 'HMNL204SZCQHK138120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '641', 'WK13+810', 'HMNL204SZCQHK138100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '642', 'WK13+808', 'HMNL204SZCQHK138080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '643', 'WK13+806', 'HMNL204SZCQHK138060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '644', 'WK13+804', 'HMNL204SZCQHK138040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '645', 'WK13+802', 'HMNL204SZCQHK138020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '646', 'WK13+800', 'HMNL204SZCQHK138000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '647', 'WK13+798', 'HMNL204SZCQHK137980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '648', 'WK13+796', 'HMNL204SZCQHK137960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '649', 'WK13+794', 'HMNL204SZCQHK137940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '650', 'WK13+792', 'HMNL204SZCQHK137920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '651', 'WK13+790', 'HMNL204SZCQHK137900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '652', 'WK13+788', 'HMNL204SZCQHK137880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '653', 'WK13+786', 'HMNL204SZCQHK137860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '654', 'WK13+784', 'HMNL204SZCQHK137840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '655', 'WK13+782', 'HMNL204SZCQHK137820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '656', 'WK13+780', 'HMNL204SZCQHK137800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '657', 'WK13+778', 'HMNL204SZCQHK137780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '658', 'WK13+776', 'HMNL204SZCQHK137760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '659', 'WK13+774', 'HMNL204SZCQHK137740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '660', 'WK13+772', 'HMNL204SZCQHK137720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '661', 'WK13+770', 'HMNL204SZCQHK137700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '662', 'WK13+768', 'HMNL204SZCQHK137680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '663', 'WK13+766', 'HMNL204SZCQHK137660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '664', 'WK13+764', 'HMNL204SZCQHK137640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '665', 'WK13+762', 'HMNL204SZCQHK137620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '666', 'WK13+760', 'HMNL204SZCQHK137600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '667', 'WK13+758', 'HMNL204SZCQHK137580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '668', 'WK13+756', 'HMNL204SZCQHK137560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '669', 'WK13+754', 'HMNL204SZCQHK137540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '670', 'WK13+752', 'HMNL204SZCQHK137520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '671', 'WK13+750', 'HMNL204SZCQHK137500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '672', 'WK13+748', 'HMNL204SZCQHK137480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '673', 'WK13+746', 'HMNL204SZCQHK137460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '674', 'WK13+744', 'HMNL204SZCQHK137440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '675', 'WK13+742', 'HMNL204SZCQHK137420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '676', 'WK13+740', 'HMNL204SZCQHK137400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '677', 'WK13+738', 'HMNL204SZCQHK137380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '678', 'WK13+736', 'HMNL204SZCQHK137360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '679', 'WK13+734', 'HMNL204SZCQHK137340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '680', 'WK13+732', 'HMNL204SZCQHK137320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '681', 'WK13+730', 'HMNL204SZCQHK137300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '682', 'WK13+728', 'HMNL204SZCQHK137280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '683', 'WK13+726', 'HMNL204SZCQHK137260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '684', 'WK13+724', 'HMNL204SZCQHK137240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '685', 'WK13+722', 'HMNL204SZCQHK137220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '686', 'WK13+720', 'HMNL204SZCQHK137200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '687', 'WK13+718', 'HMNL204SZCQHK137180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '688', 'WK13+716', 'HMNL204SZCQHK137160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '689', 'WK13+714', 'HMNL204SZCQHK137140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '690', 'WK13+712', 'HMNL204SZCQHK137120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '691', 'WK13+710', 'HMNL204SZCQHK137100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '692', 'WK13+708', 'HMNL204SZCQHK137080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '693', 'WK13+706', 'HMNL204SZCQHK137060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '694', 'WK13+704', 'HMNL204SZCQHK137040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '695', 'WK13+702', 'HMNL204SZCQHK137020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '696', 'WK13+700', 'HMNL204SZCQHK137000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '697', 'WK13+698', 'HMNL204SZCQHK136980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '698', 'WK13+696', 'HMNL204SZCQHK136960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '699', 'WK13+694', 'HMNL204SZCQHK136940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '700', 'WK13+692', 'HMNL204SZCQHK136920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '701', 'WK13+690', 'HMNL204SZCQHK136900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '702', 'WK13+688', 'HMNL204SZCQHK136880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '703', 'WK13+686', 'HMNL204SZCQHK136860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '704', 'WK13+684', 'HMNL204SZCQHK136840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '705', 'WK13+682', 'HMNL204SZCQHK136820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '706', 'WK13+680', 'HMNL204SZCQHK136800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '707', 'WK13+678', 'HMNL204SZCQHK136780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '708', 'WK13+676', 'HMNL204SZCQHK136760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '709', 'WK13+674', 'HMNL204SZCQHK136740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '710', 'WK13+672', 'HMNL204SZCQHK136720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '711', 'WK13+670', 'HMNL204SZCQHK136700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '712', 'WK13+668', 'HMNL204SZCQHK136680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '713', 'WK13+666', 'HMNL204SZCQHK136660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '714', 'WK13+664', 'HMNL204SZCQHK136640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '715', 'WK13+662', 'HMNL204SZCQHK136620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '716', 'WK13+660', 'HMNL204SZCQHK136600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '717', 'WK13+658', 'HMNL204SZCQHK136580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '718', 'WK13+656', 'HMNL204SZCQHK136560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '719', 'WK13+654', 'HMNL204SZCQHK136540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '720', 'WK13+652', 'HMNL204SZCQHK136520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '721', 'WK13+650', 'HMNL204SZCQHK136500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '722', 'WK13+648', 'HMNL204SZCQHK136480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '723', 'WK13+646', 'HMNL204SZCQHK136460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '724', 'WK13+644', 'HMNL204SZCQHK136440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '725', 'WK13+642', 'HMNL204SZCQHK136420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '726', 'WK13+640', 'HMNL204SZCQHK136400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '727', 'WK13+638', 'HMNL204SZCQHK136380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '728', 'WK13+636', 'HMNL204SZCQHK136360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '729', 'WK13+634', 'HMNL204SZCQHK136340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '730', 'WK13+632', 'HMNL204SZCQHK136320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '731', 'WK13+630', 'HMNL204SZCQHK136300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '732', 'WK13+628', 'HMNL204SZCQHK136280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '733', 'WK13+626', 'HMNL204SZCQHK136260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '734', 'WK13+624', 'HMNL204SZCQHK136240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '735', 'WK13+622', 'HMNL204SZCQHK136220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '736', 'WK13+620', 'HMNL204SZCQHK136200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '737', 'WK13+618', 'HMNL204SZCQHK136180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '738', 'WK13+616', 'HMNL204SZCQHK136160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '739', 'WK13+614', 'HMNL204SZCQHK136140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '740', 'WK13+612', 'HMNL204SZCQHK136120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '741', 'WK13+610', 'HMNL204SZCQHK136100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '742', 'WK13+608', 'HMNL204SZCQHK136080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '743', 'WK13+606', 'HMNL204SZCQHK136060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '744', 'WK13+604', 'HMNL204SZCQHK136040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '745', 'WK13+602', 'HMNL204SZCQHK136020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '746', 'WK13+600', 'HMNL204SZCQHK136000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '747', 'WK13+598', 'HMNL204SZCQHK135980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '748', 'WK13+596', 'HMNL204SZCQHK135960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '749', 'WK13+594', 'HMNL204SZCQHK135940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '750', 'WK13+592', 'HMNL204SZCQHK135920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '751', 'WK13+590', 'HMNL204SZCQHK135900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '752', 'WK13+588', 'HMNL204SZCQHK135880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '753', 'WK13+586', 'HMNL204SZCQHK135860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '754', 'WK13+584', 'HMNL204SZCQHK135840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '755', 'WK13+582', 'HMNL204SZCQHK135820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '756', 'WK13+580', 'HMNL204SZCQHK135800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '757', 'WK13+578', 'HMNL204SZCQHK135780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '758', 'WK13+576', 'HMNL204SZCQHK135760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '759', 'WK13+574', 'HMNL204SZCQHK135740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '760', 'WK13+572', 'HMNL204SZCQHK135720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '761', 'WK13+570', 'HMNL204SZCQHK135700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '762', 'WK13+568', 'HMNL204SZCQHK135680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '763', 'WK13+566', 'HMNL204SZCQHK135660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '764', 'WK13+564', 'HMNL204SZCQHK135640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '765', 'WK13+562', 'HMNL204SZCQHK135620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '766', 'WK13+560', 'HMNL204SZCQHK135600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '767', 'WK13+558', 'HMNL204SZCQHK135580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '768', 'WK13+556', 'HMNL204SZCQHK135560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '769', 'WK13+554', 'HMNL204SZCQHK135540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '770', 'WK13+552', 'HMNL204SZCQHK135520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '771', 'WK13+550', 'HMNL204SZCQHK135500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '772', 'WK13+548', 'HMNL204SZCQHK135480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '773', 'WK13+546', 'HMNL204SZCQHK135460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '774', 'WK13+544', 'HMNL204SZCQHK135440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '775', 'WK13+542', 'HMNL204SZCQHK135420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '776', 'WK13+540', 'HMNL204SZCQHK135400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '777', 'WK13+538', 'HMNL204SZCQHK135380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '778', 'WK13+536', 'HMNL204SZCQHK135360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '779', 'WK13+534', 'HMNL204SZCQHK135340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '780', 'WK13+532', 'HMNL204SZCQHK135320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '781', 'WK13+530', 'HMNL204SZCQHK135300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '782', 'WK13+528', 'HMNL204SZCQHK135280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '783', 'WK13+526', 'HMNL204SZCQHK135260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '784', 'WK13+524', 'HMNL204SZCQHK135240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '785', 'WK13+522', 'HMNL204SZCQHK135220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '786', 'WK13+520', 'HMNL204SZCQHK135200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '787', 'WK13+518', 'HMNL204SZCQHK135180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '788', 'WK13+516', 'HMNL204SZCQHK135160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '789', 'WK13+514', 'HMNL204SZCQHK135140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '790', 'WK13+512', 'HMNL204SZCQHK135120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '791', 'WK13+510', 'HMNL204SZCQHK135100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '792', 'WK13+508', 'HMNL204SZCQHK135080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '793', 'WK13+506', 'HMNL204SZCQHK135060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '794', 'WK13+504', 'HMNL204SZCQHK135040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '795', 'WK13+502', 'HMNL204SZCQHK135020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '796', 'WK13+500', 'HMNL204SZCQHK135000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '797', 'WK13+498', 'HMNL204SZCQHK134980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '798', 'WK13+496', 'HMNL204SZCQHK134960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '799', 'WK13+494', 'HMNL204SZCQHK134940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '800', 'WK13+492', 'HMNL204SZCQHK134920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '801', 'WK13+490', 'HMNL204SZCQHK134900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '802', 'WK13+488', 'HMNL204SZCQHK134880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '803', 'WK13+486', 'HMNL204SZCQHK134860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '804', 'WK13+484', 'HMNL204SZCQHK134840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '805', 'WK13+482', 'HMNL204SZCQHK134820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '806', 'WK13+480', 'HMNL204SZCQHK134800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '807', 'WK13+478', 'HMNL204SZCQHK134780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '808', 'WK13+476', 'HMNL204SZCQHK134760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '809', 'WK13+474', 'HMNL204SZCQHK134740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '810', 'WK13+472', 'HMNL204SZCQHK134720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '811', 'WK13+470', 'HMNL204SZCQHK134700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '812', 'WK13+468', 'HMNL204SZCQHK134680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '813', 'WK13+466', 'HMNL204SZCQHK134660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '814', 'WK13+464', 'HMNL204SZCQHK134640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '815', 'WK13+462', 'HMNL204SZCQHK134620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '816', 'WK13+460', 'HMNL204SZCQHK134600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '817', 'WK13+458', 'HMNL204SZCQHK134580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '818', 'WK13+456', 'HMNL204SZCQHK134560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '819', 'WK13+454', 'HMNL204SZCQHK134540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '820', 'WK13+452', 'HMNL204SZCQHK134520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '821', 'WK13+450', 'HMNL204SZCQHK134500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '822', 'WK13+448', 'HMNL204SZCQHK134480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '823', 'WK13+446', 'HMNL204SZCQHK134460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '824', 'WK13+444', 'HMNL204SZCQHK134440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '825', 'WK13+442', 'HMNL204SZCQHK134420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '826', 'WK13+440', 'HMNL204SZCQHK134400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '827', 'WK13+438', 'HMNL204SZCQHK134380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '828', 'WK13+436', 'HMNL204SZCQHK134360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '829', 'WK13+434', 'HMNL204SZCQHK134340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '830', 'WK13+432', 'HMNL204SZCQHK134320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '831', 'WK13+430', 'HMNL204SZCQHK134300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '832', 'WK13+428', 'HMNL204SZCQHK134280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '833', 'WK13+426', 'HMNL204SZCQHK134260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '834', 'WK13+424', 'HMNL204SZCQHK134240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '835', 'WK13+422', 'HMNL204SZCQHK134220_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '836', 'WK13+420', 'HMNL204SZCQHK134200_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '837', 'WK13+418', 'HMNL204SZCQHK134180_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '838', 'WK13+416', 'HMNL204SZCQHK134160_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '839', 'WK13+414', 'HMNL204SZCQHK134140_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '840', 'WK13+412', 'HMNL204SZCQHK134120_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '841', 'WK13+410', 'HMNL204SZCQHK134100_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '842', 'WK13+408', 'HMNL204SZCQHK134080_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '843', 'WK13+406', 'HMNL204SZCQHK134060_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '844', 'WK13+404', 'HMNL204SZCQHK134040_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '845', 'WK13+402', 'HMNL204SZCQHK134020_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '846', 'WK13+400', 'HMNL204SZCQHK134000_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '847', 'WK13+398', 'HMNL204SZCQHK133980_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '848', 'WK13+396', 'HMNL204SZCQHK133960_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '849', 'WK13+394', 'HMNL204SZCQHK133940_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '850', 'WK13+392', 'HMNL204SZCQHK133920_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '851', 'WK13+390', 'HMNL204SZCQHK133900_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '852', 'WK13+388', 'HMNL204SZCQHK133880_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '853', 'WK13+386', 'HMNL204SZCQHK133860_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '854', 'WK13+384', 'HMNL204SZCQHK133840_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '855', 'WK13+382', 'HMNL204SZCQHK133820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '856', 'WK13+380', 'HMNL204SZCQHK133800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '857', 'WK13+378', 'HMNL204SZCQHK133780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '858', 'WK13+376', 'HMNL204SZCQHK133760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '859', 'WK13+374', 'HMNL204SZCQHK133740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '860', 'WK13+372', 'HMNL204SZCQHK133720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '861', 'WK13+370', 'HMNL204SZCQHK133700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '862', 'WK13+368', 'HMNL204SZCQHK133680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '863', 'WK13+366', 'HMNL204SZCQHK133660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '864', 'WK13+364', 'HMNL204SZCQHK133640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '865', 'WK13+362', 'HMNL204SZCQHK133620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '866', 'WK13+360', 'HMNL204SZCQHK133600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '867', 'WK13+358', 'HMNL204SZCQHK133580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '868', 'WK13+356', 'HMNL204SZCQHK133560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '869', 'WK13+354', 'HMNL204SZCQHK133540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '870', 'WK13+352', 'HMNL204SZCQHK133520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '871', 'WK13+350', 'HMNL204SZCQHK133500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '872', 'WK13+348', 'HMNL204SZCQHK133480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '873', 'WK13+346', 'HMNL204SZCQHK133460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '874', 'WK13+344', 'HMNL204SZCQHK133440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '875', 'WK13+342', 'HMNL204SZCQHK133420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '876', 'WK13+340', 'HMNL204SZCQHK133400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '877', 'WK13+338', 'HMNL204SZCQHK133380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '878', 'WK13+336', 'HMNL204SZCQHK133360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '879', 'WK13+334', 'HMNL204SZCQHK133340_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '880', 'WK13+332', 'HMNL204SZCQHK133320_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '881', 'WK13+330', 'HMNL204SZCQHK133300_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '882', 'WK13+328', 'HMNL204SZCQHK133280_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '883', 'WK13+326', 'HMNL204SZCQHK133260_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '884', 'WK13+324', 'HMNL204SZCQHK133240_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '885', 'WK13+322', 'HMNL204SZCQHK133220_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '886', 'WK13+320', 'HMNL204SZCQHK133200_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '887', 'WK13+318', 'HMNL204SZCQHK133180_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '888', 'WK13+316', 'HMNL204SZCQHK133160_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '889', 'WK13+314', 'HMNL204SZCQHK133140_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '890', 'WK13+312', 'HMNL204SZCQHK133120_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '891', 'WK13+310', 'HMNL204SZCQHK133100_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '892', 'WK13+308', 'HMNL204SZCQHK133080_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '893', 'WK13+306', 'HMNL204SZCQHK133060_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '894', 'WK13+304', 'HMNL204SZCQHK133040_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '895', 'WK13+302', 'HMNL204SZCQHK133020_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '896', 'WK13+300', 'HMNL204SZCQHK133000_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '897', 'WK13+298', 'HMNL204SZCQHK132980_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '898', 'WK13+296', 'HMNL204SZCQHK132960_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '899', 'WK13+294', 'HMNL204SZCQHK132940_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '900', 'WK13+292', 'HMNL204SZCQHK132920_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '901', 'WK13+290', 'HMNL204SZCQHK132900_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '902', 'WK13+288', 'HMNL204SZCQHK132880_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '903', 'WK13+286', 'HMNL204SZCQHK132860_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '904', 'WK13+284', 'HMNL204SZCQHK132840_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '905', 'WK13+282', 'HMNL204SZCQHK132820_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '906', 'WK13+280', 'HMNL204SZCQHK132800_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '907', 'WK13+278', 'HMNL204SZCQHK132780_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '908', 'WK13+276', 'HMNL204SZCQHK132760_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '909', 'WK13+274', 'HMNL204SZCQHK132740_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '910', 'WK13+272', 'HMNL204SZCQHK132720_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '911', 'WK13+270', 'HMNL204SZCQHK132700_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '912', 'WK13+268', 'HMNL204SZCQHK132680_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '913', 'WK13+266', 'HMNL204SZCQHK132660_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '914', 'WK13+264', 'HMNL204SZCQHK132640_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '915', 'WK13+262', 'HMNL204SZCQHK132620_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '916', 'WK13+260', 'HMNL204SZCQHK132600_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '917', 'WK13+258', 'HMNL204SZCQHK132580_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '918', 'WK13+256', 'HMNL204SZCQHK132560_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '919', 'WK13+254', 'HMNL204SZCQHK132540_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '920', 'WK13+252', 'HMNL204SZCQHK132520_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '921', 'WK13+250', 'HMNL204SZCQHK132500_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '922', 'WK13+248', 'HMNL204SZCQHK132480_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '923', 'WK13+246', 'HMNL204SZCQHK132460_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '924', 'WK13+244', 'HMNL204SZCQHK132440_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '925', 'WK13+242', 'HMNL204SZCQHK132420_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '926', 'WK13+240', 'HMNL204SZCQHK132400_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '927', 'WK13+238', 'HMNL204SZCQHK132380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '928', 'WK13+236', 'HMNL204SZCQHK132360_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '929', 'WK13+234', 'HMNL204SZCQHK132340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '930', 'WK13+232', 'HMNL204SZCQHK132320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '931', 'WK13+230', 'HMNL204SZCQHK132300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '932', 'WK13+228', 'HMNL204SZCQHK132280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '933', 'WK13+226', 'HMNL204SZCQHK132260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '934', 'WK13+224', 'HMNL204SZCQHK132240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '935', 'WK13+222', 'HMNL204SZCQHK132220_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '936', 'WK13+220', 'HMNL204SZCQHK132200_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '937', 'WK13+218', 'HMNL204SZCQHK132180_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '938', 'WK13+216', 'HMNL204SZCQHK132160_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '939', 'WK13+214', 'HMNL204SZCQHK132140_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '940', 'WK13+212', 'HMNL204SZCQHK132120_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '941', 'WK13+210', 'HMNL204SZCQHK132100_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '942', 'WK13+208', 'HMNL204SZCQHK132080_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '943', 'WK13+206', 'HMNL204SZCQHK132060_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '944', 'WK13+204', 'HMNL204SZCQHK132040_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '945', 'WK13+202', 'HMNL204SZCQHK132020_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '946', 'WK13+200', 'HMNL204SZCQHK132000_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '947', 'WK13+198', 'HMNL204SZCQHK131980_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '948', 'WK13+196', 'HMNL204SZCQHK131960_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '949', 'WK13+194', 'HMNL204SZCQHK131940_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '950', 'WK13+192', 'HMNL204SZCQHK131920_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '951', 'WK13+190', 'HMNL204SZCQHK131900_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '952', 'WK13+188', 'HMNL204SZCQHK131880_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '953', 'WK13+186', 'HMNL204SZCQHK131860_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '954', 'WK13+184', 'HMNL204SZCQHK131840_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '955', 'WK13+182', 'HMNL204SZCQHK131820_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '956', 'WK13+180', 'HMNL204SZCQHK131800_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '957', 'WK13+178', 'HMNL204SZCQHK131780_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '958', 'WK13+176', 'HMNL204SZCQHK131760_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '959', 'WK13+174', 'HMNL204SZCQHK131740_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '960', 'WK13+172', 'HMNL204SZCQHK131720_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '961', 'WK13+170', 'HMNL204SZCQHK131700_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '962', 'WK13+168', 'HMNL204SZCQHK131680_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '963', 'WK13+166', 'HMNL204SZCQHK131660_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '964', 'WK13+164', 'HMNL204SZCQHK131640_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '965', 'WK13+162', 'HMNL204SZCQHK131620_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '966', 'WK13+160', 'HMNL204SZCQHK131600_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '967', 'WK13+158', 'HMNL204SZCQHK131580_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '968', 'WK13+156', 'HMNL204SZCQHK131560_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '969', 'WK13+154', 'HMNL204SZCQHK131540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '970', 'WK13+152', 'HMNL204SZCQHK131520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '971', 'WK13+150', 'HMNL204SZCQHK131500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '972', 'WK13+148', 'HMNL204SZCQHK131480_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '973', 'WK13+146', 'HMNL204SZCQHK131460_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '974', 'WK13+144', 'HMNL204SZCQHK131440_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '975', 'WK13+142', 'HMNL204SZCQHK131420_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '976', 'WK13+140', 'HMNL204SZCQHK131400_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '977', 'WK13+138', 'HMNL204SZCQHK131380_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '978', 'WK13+136', 'HMNL204SZCQHK131360_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '979', 'WK13+134', 'HMNL204SZCQHK131340_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '980', 'WK13+132', 'HMNL204SZCQHK131320_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '981', 'WK13+130', 'HMNL204SZCQHK131300_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '982', 'WK13+128', 'HMNL204SZCQHK131280_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '983', 'WK13+126', 'HMNL204SZCQHK131260_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '984', 'WK13+124', 'HMNL204SZCQHK131240_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '985', 'WK13+122', 'HMNL204SZCQHK131220_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '986', 'WK13+120', 'HMNL204SZCQHK131200_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '987', 'WK13+118.1819', 'HMNL204SZCQHK138190_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '988', 'WK13+116.3638', 'HMNL204SZCQHK136380_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '989', 'WK13+114.5457', 'HMNL204SZCQHK134570_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '990', 'WK13+112.7276', 'HMNL204SZCQHK132760_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '991', 'WK13+110.9095', 'HMNL204SZCQHK130950_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '992', 'WK13+109.0914', 'HMNL204SZCQHK139140_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '993', 'WK13+107.2733', 'HMNL204SZCQHK137330_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '994', 'WK13+105.4552', 'HMNL204SZCQHK135520_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '995', 'WK13+103.6371', 'HMNL204SZCQHK133710_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '996', 'WK13+101.819', 'HMNL204SZCQHK138190_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '997', 'WK13+100', 'HMNL204SZCQHK131000_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '998', 'WK13+098', 'HMNL204SZCQHK130980_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '999', 'WK13+096', 'HMNL204SZCQHK130960_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1000', 'WK13+094', 'HMNL204SZCQHK130940_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1001', 'WK13+092', 'HMNL204SZCQHK130920_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1002', 'WK13+090', 'HMNL204SZCQHK130900_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1003', 'WK13+088', 'HMNL204SZCQHK130880_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1004', 'WK13+086', 'HMNL204SZCQHK130860_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1005', 'WK13+084', 'HMNL204SZCQHK130840_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1006', 'WK13+082', 'HMNL204SZCQHK130820_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1007', 'WK13+080', 'HMNL204SZCQHK130800_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1008', 'WK13+078', 'HMNL204SZCQHK130780_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1009', 'WK13+076', 'HMNL204SZCQHK130760_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1010', 'WK13+074', 'HMNL204SZCQHK130740_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1011', 'WK13+072', 'HMNL204SZCQHK130720_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1012', 'WK13+070', 'HMNL204SZCQHK130700_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1013', 'WK13+068', 'HMNL204SZCQHK130680_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1014', 'WK13+066', 'HMNL204SZCQHK130660_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1015', 'WK13+064', 'HMNL204SZCQHK130640_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1016', 'WK13+062', 'HMNL204SZCQHK130620_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1017', 'WK13+060', 'HMNL204SZCQHK130600_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1018', 'WK13+058', 'HMNL204SZCQHK130580_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1019', 'WK13+056', 'HMNL204SZCQHK130560_G0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1020', 'WK13+054', 'HMNL204SZCQHK130540_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1021', 'WK13+052', 'HMNL204SZCQHK130520_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1022', 'WK13+050', 'HMNL204SZCQHK130500_F0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1023', 'WK13+048', 'HMNL204SZCQHK130480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1024', 'WK13+046', 'HMNL204SZCQHK130460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1025', 'WK13+044', 'HMNL204SZCQHK130440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1026', 'WK13+042', 'HMNL204SZCQHK130420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1027', 'WK13+040', 'HMNL204SZCQHK130400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1028', 'WK13+038', 'HMNL204SZCQHK130380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1029', 'WK13+036', 'HMNL204SZCQHK130360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1030', 'WK13+034', 'HMNL204SZCQHK130340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1031', 'WK13+032', 'HMNL204SZCQHK130320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1032', 'WK13+030', 'HMNL204SZCQHK130300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1033', 'WK13+028', 'HMNL204SZCQHK130280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1034', 'WK13+026', 'HMNL204SZCQHK130260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1035', 'WK13+024', 'HMNL204SZCQHK130240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1036', 'WK13+022', 'HMNL204SZCQHK130220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1037', 'WK13+020', 'HMNL204SZCQHK130200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1038', 'WK13+018', 'HMNL204SZCQHK130180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1039', 'WK13+016', 'HMNL204SZCQHK130160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1040', 'WK13+014', 'HMNL204SZCQHK130140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1041', 'WK13+012', 'HMNL204SZCQHK130120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1042', 'WK13+010', 'HMNL204SZCQHK130100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1043', 'WK13+008', 'HMNL204SZCQHK130080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1044', 'WK13+006', 'HMNL204SZCQHK130060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1045', 'WK13+004', 'HMNL204SZCQHK130040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1046', 'WK13+002', 'HMNL204SZCQHK130020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1047', 'WK13+000', 'HMNL204SZCQHK130000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1048', 'WK12+998', 'HMNL204SZCQHK129980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1049', 'WK12+996', 'HMNL204SZCQHK129960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1050', 'WK12+994', 'HMNL204SZCQHK129940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1051', 'WK12+992', 'HMNL204SZCQHK129920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1052', 'WK12+990', 'HMNL204SZCQHK129900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1053', 'WK12+988', 'HMNL204SZCQHK129880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1054', 'WK12+986', 'HMNL204SZCQHK129860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1055', 'WK12+984', 'HMNL204SZCQHK129840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1056', 'WK12+982', 'HMNL204SZCQHK129820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1057', 'WK12+980', 'HMNL204SZCQHK129800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1058', 'WK12+978', 'HMNL204SZCQHK129780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1059', 'WK12+976', 'HMNL204SZCQHK129760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1060', 'WK12+974', 'HMNL204SZCQHK129740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1061', 'WK12+972', 'HMNL204SZCQHK129720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1062', 'WK12+970', 'HMNL204SZCQHK129700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1063', 'WK12+968', 'HMNL204SZCQHK129680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1064', 'WK12+966', 'HMNL204SZCQHK129660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1065', 'WK12+964', 'HMNL204SZCQHK129640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1066', 'WK12+962', 'HMNL204SZCQHK129620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1067', 'WK12+960', 'HMNL204SZCQHK129600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1068', 'WK12+958', 'HMNL204SZCQHK129580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1069', 'WK12+956', 'HMNL204SZCQHK129560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1070', 'WK12+954', 'HMNL204SZCQHK129540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1071', 'WK12+952', 'HMNL204SZCQHK129520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1072', 'WK12+950', 'HMNL204SZCQHK129500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1073', 'WK12+948', 'HMNL204SZCQHK129480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1074', 'WK12+946', 'HMNL204SZCQHK129460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1075', 'WK12+944', 'HMNL204SZCQHK129440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1076', 'WK12+942', 'HMNL204SZCQHK129420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1077', 'WK12+940', 'HMNL204SZCQHK129400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1078', 'WK12+938', 'HMNL204SZCQHK129380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1079', 'WK12+936', 'HMNL204SZCQHK129360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1080', 'WK12+934', 'HMNL204SZCQHK129340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1081', 'WK12+932', 'HMNL204SZCQHK129320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1082', 'WK12+930', 'HMNL204SZCQHK129300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1083', 'WK12+928', 'HMNL204SZCQHK129280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1084', 'WK12+926', 'HMNL204SZCQHK129260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1085', 'WK12+924', 'HMNL204SZCQHK129240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1086', 'WK12+922', 'HMNL204SZCQHK129220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1087', 'WK12+920', 'HMNL204SZCQHK129200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1088', 'WK12+918', 'HMNL204SZCQHK129180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1089', 'WK12+916', 'HMNL204SZCQHK129160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1090', 'WK12+914', 'HMNL204SZCQHK129140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1091', 'WK12+912', 'HMNL204SZCQHK129120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1092', 'WK12+910', 'HMNL204SZCQHK129100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1093', 'WK12+908', 'HMNL204SZCQHK129080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1094', 'WK12+906', 'HMNL204SZCQHK129060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1095', 'WK12+904', 'HMNL204SZCQHK129040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1096', 'WK12+902', 'HMNL204SZCQHK129020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1097', 'WK12+900', 'HMNL204SZCQHK129000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1098', 'WK12+898', 'HMNL204SZCQHK128980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1099', 'WK12+896', 'HMNL204SZCQHK128960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1100', 'WK12+894', 'HMNL204SZCQHK128940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1101', 'WK12+892', 'HMNL204SZCQHK128920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1102', 'WK12+890', 'HMNL204SZCQHK128900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1103', 'WK12+888', 'HMNL204SZCQHK128880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1104', 'WK12+886', 'HMNL204SZCQHK128860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1105', 'WK12+884', 'HMNL204SZCQHK128840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1106', 'WK12+882', 'HMNL204SZCQHK128820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1107', 'WK12+880', 'HMNL204SZCQHK128800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1108', 'WK12+878', 'HMNL204SZCQHK128780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1109', 'WK12+876', 'HMNL204SZCQHK128760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1110', 'WK12+874', 'HMNL204SZCQHK128740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1111', 'WK12+872', 'HMNL204SZCQHK128720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1112', 'WK12+870', 'HMNL204SZCQHK128700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1113', 'WK12+868', 'HMNL204SZCQHK128680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1114', 'WK12+866', 'HMNL204SZCQHK128660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1115', 'WK12+864', 'HMNL204SZCQHK128640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1116', 'WK12+862', 'HMNL204SZCQHK128620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1117', 'WK12+860', 'HMNL204SZCQHK128600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1118', 'WK12+858', 'HMNL204SZCQHK128580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1119', 'WK12+856', 'HMNL204SZCQHK128560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1120', 'WK12+854', 'HMNL204SZCQHK128540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1121', 'WK12+852', 'HMNL204SZCQHK128520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1122', 'WK12+850', 'HMNL204SZCQHK128500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1123', 'WK12+848', 'HMNL204SZCQHK128480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1124', 'WK12+846', 'HMNL204SZCQHK128460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1125', 'WK12+844', 'HMNL204SZCQHK128440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1126', 'WK12+842', 'HMNL204SZCQHK128420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1127', 'WK12+840', 'HMNL204SZCQHK128400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1128', 'WK12+838', 'HMNL204SZCQHK128380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1129', 'WK12+836', 'HMNL204SZCQHK128360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1130', 'WK12+834', 'HMNL204SZCQHK128340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1131', 'WK12+832', 'HMNL204SZCQHK128320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1132', 'WK12+830', 'HMNL204SZCQHK128300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1133', 'WK12+828', 'HMNL204SZCQHK128280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1134', 'WK12+826', 'HMNL204SZCQHK128260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1135', 'WK12+824', 'HMNL204SZCQHK128240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1136', 'WK12+822', 'HMNL204SZCQHK128220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1137', 'WK12+820', 'HMNL204SZCQHK128200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1138', 'WK12+818', 'HMNL204SZCQHK128180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1139', 'WK12+816', 'HMNL204SZCQHK128160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1140', 'WK12+814', 'HMNL204SZCQHK128140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1141', 'WK12+812', 'HMNL204SZCQHK128120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1142', 'WK12+810', 'HMNL204SZCQHK128100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1143', 'WK12+808', 'HMNL204SZCQHK128080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1144', 'WK12+806', 'HMNL204SZCQHK128060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1145', 'WK12+804', 'HMNL204SZCQHK128040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1146', 'WK12+802', 'HMNL204SZCQHK128020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1147', 'WK12+800', 'HMNL204SZCQHK128000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1148', 'WK12+798', 'HMNL204SZCQHK127980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1149', 'WK12+796', 'HMNL204SZCQHK127960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1150', 'WK12+794', 'HMNL204SZCQHK127940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1151', 'WK12+792', 'HMNL204SZCQHK127920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1152', 'WK12+790', 'HMNL204SZCQHK127900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1153', 'WK12+788', 'HMNL204SZCQHK127880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1154', 'WK12+786', 'HMNL204SZCQHK127860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1155', 'WK12+784', 'HMNL204SZCQHK127840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1156', 'WK12+782', 'HMNL204SZCQHK127820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1157', 'WK12+780', 'HMNL204SZCQHK127800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1158', 'WK12+778', 'HMNL204SZCQHK127780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1159', 'WK12+776', 'HMNL204SZCQHK127760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1160', 'WK12+774', 'HMNL204SZCQHK127740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1161', 'WK12+772', 'HMNL204SZCQHK127720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1162', 'WK12+770', 'HMNL204SZCQHK127700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1163', 'WK12+768', 'HMNL204SZCQHK127680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1164', 'WK12+766', 'HMNL204SZCQHK127660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1165', 'WK12+764', 'HMNL204SZCQHK127640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1166', 'WK12+762', 'HMNL204SZCQHK127620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1167', 'WK12+760', 'HMNL204SZCQHK127600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1168', 'WK12+758', 'HMNL204SZCQHK127580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1169', 'WK12+756', 'HMNL204SZCQHK127560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1170', 'WK12+754', 'HMNL204SZCQHK127540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1171', 'WK12+752', 'HMNL204SZCQHK127520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1172', 'WK12+750', 'HMNL204SZCQHK127500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1173', 'WK12+748', 'HMNL204SZCQHK127480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1174', 'WK12+746', 'HMNL204SZCQHK127460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1175', 'WK12+744', 'HMNL204SZCQHK127440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1176', 'WK12+742', 'HMNL204SZCQHK127420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1177', 'WK12+740', 'HMNL204SZCQHK127400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1178', 'WK12+738', 'HMNL204SZCQHK127380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1179', 'WK12+736', 'HMNL204SZCQHK127360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1180', 'WK12+734', 'HMNL204SZCQHK127340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1181', 'WK12+732', 'HMNL204SZCQHK127320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1182', 'WK12+730', 'HMNL204SZCQHK127300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1183', 'WK12+728', 'HMNL204SZCQHK127280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1184', 'WK12+726', 'HMNL204SZCQHK127260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1185', 'WK12+724', 'HMNL204SZCQHK127240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1186', 'WK12+722', 'HMNL204SZCQHK127220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1187', 'WK12+720', 'HMNL204SZCQHK127200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1188', 'WK12+718', 'HMNL204SZCQHK127180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1189', 'WK12+716', 'HMNL204SZCQHK127160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1190', 'WK12+714', 'HMNL204SZCQHK127140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1191', 'WK12+712', 'HMNL204SZCQHK127120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1192', 'WK12+710', 'HMNL204SZCQHK127100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1193', 'WK12+708', 'HMNL204SZCQHK127080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1194', 'WK12+706', 'HMNL204SZCQHK127060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1195', 'WK12+704', 'HMNL204SZCQHK127040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1196', 'WK12+702', 'HMNL204SZCQHK127020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1197', 'WK12+700', 'HMNL204SZCQHK127000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1198', 'WK12+698', 'HMNL204SZCQHK126980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1199', 'WK12+696', 'HMNL204SZCQHK126960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1200', 'WK12+694', 'HMNL204SZCQHK126940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1201', 'WK12+692', 'HMNL204SZCQHK126920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1202', 'WK12+690', 'HMNL204SZCQHK126900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1203', 'WK12+688', 'HMNL204SZCQHK126880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1204', 'WK12+686', 'HMNL204SZCQHK126860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1205', 'WK12+684', 'HMNL204SZCQHK126840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1206', 'WK12+682', 'HMNL204SZCQHK126820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1207', 'WK12+680', 'HMNL204SZCQHK126800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1208', 'WK12+678', 'HMNL204SZCQHK126780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1209', 'WK12+676', 'HMNL204SZCQHK126760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1210', 'WK12+674', 'HMNL204SZCQHK126740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1211', 'WK12+672', 'HMNL204SZCQHK126720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1212', 'WK12+670', 'HMNL204SZCQHK126700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1213', 'WK12+668', 'HMNL204SZCQHK126680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1214', 'WK12+666', 'HMNL204SZCQHK126660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1215', 'WK12+664', 'HMNL204SZCQHK126640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1216', 'WK12+662', 'HMNL204SZCQHK126620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1217', 'WK12+660', 'HMNL204SZCQHK126600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1218', 'WK12+658', 'HMNL204SZCQHK126580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1219', 'WK12+656', 'HMNL204SZCQHK126560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1220', 'WK12+654', 'HMNL204SZCQHK126540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1221', 'WK12+652', 'HMNL204SZCQHK126520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1222', 'WK12+650', 'HMNL204SZCQHK126500_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1223', 'WK12+648', 'HMNL204SZCQHK126480_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1224', 'WK12+646', 'HMNL204SZCQHK126460_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1225', 'WK12+644', 'HMNL204SZCQHK126440_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1226', 'WK12+642', 'HMNL204SZCQHK126420_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1227', 'WK12+640', 'HMNL204SZCQHK126400_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1228', 'WK12+638', 'HMNL204SZCQHK126380_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1229', 'WK12+636', 'HMNL204SZCQHK126360_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1230', 'WK12+634', 'HMNL204SZCQHK126340_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1231', 'WK12+632', 'HMNL204SZCQHK126320_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1232', 'WK12+630', 'HMNL204SZCQHK126300_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1233', 'WK12+628', 'HMNL204SZCQHK126280_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1234', 'WK12+626', 'HMNL204SZCQHK126260_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1235', 'WK12+624', 'HMNL204SZCQHK126240_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1236', 'WK12+622', 'HMNL204SZCQHK126220_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1237', 'WK12+620', 'HMNL204SZCQHK126200_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1238', 'WK12+618', 'HMNL204SZCQHK126180_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1239', 'WK12+616', 'HMNL204SZCQHK126160_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1240', 'WK12+614', 'HMNL204SZCQHK126140_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1241', 'WK12+612', 'HMNL204SZCQHK126120_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1242', 'WK12+610', 'HMNL204SZCQHK126100_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1243', 'WK12+608', 'HMNL204SZCQHK126080_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1244', 'WK12+606', 'HMNL204SZCQHK126060_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1245', 'WK12+604', 'HMNL204SZCQHK126040_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1246', 'WK12+602', 'HMNL204SZCQHK126020_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1247', 'WK12+600', 'HMNL204SZCQHK126000_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1248', 'WK12+598', 'HMNL204SZCQHK125980_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1249', 'WK12+596', 'HMNL204SZCQHK125960_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1250', 'WK12+594', 'HMNL204SZCQHK125940_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1251', 'WK12+592', 'HMNL204SZCQHK125920_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1252', 'WK12+590', 'HMNL204SZCQHK125900_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1253', 'WK12+588', 'HMNL204SZCQHK125880_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1254', 'WK12+586', 'HMNL204SZCQHK125860_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1255', 'WK12+584', 'HMNL204SZCQHK125840_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1256', 'WK12+582', 'HMNL204SZCQHK125820_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1257', 'WK12+580', 'HMNL204SZCQHK125800_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1258', 'WK12+578', 'HMNL204SZCQHK125780_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1259', 'WK12+576', 'HMNL204SZCQHK125760_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1260', 'WK12+574', 'HMNL204SZCQHK125740_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1261', 'WK12+572', 'HMNL204SZCQHK125720_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1262', 'WK12+570', 'HMNL204SZCQHK125700_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1263', 'WK12+568', 'HMNL204SZCQHK125680_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1264', 'WK12+566', 'HMNL204SZCQHK125660_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1265', 'WK12+564', 'HMNL204SZCQHK125640_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1266', 'WK12+562', 'HMNL204SZCQHK125620_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1267', 'WK12+560', 'HMNL204SZCQHK125600_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1268', 'WK12+558', 'HMNL204SZCQHK125580_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1269', 'WK12+556', 'HMNL204SZCQHK125560_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1270', 'WK12+554', 'HMNL204SZCQHK125540_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1271', 'WK12+552', 'HMNL204SZCQHK125520_I0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1272', 'WK12+550', 'HMNL204SZCQHK125500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1273', 'WK12+548', 'HMNL204SZCQHK125480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1274', 'WK12+546', 'HMNL204SZCQHK125460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1275', 'WK12+544', 'HMNL204SZCQHK125440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1276', 'WK12+542', 'HMNL204SZCQHK125420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1277', 'WK12+540', 'HMNL204SZCQHK125400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1278', 'WK12+538', 'HMNL204SZCQHK125380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1279', 'WK12+536', 'HMNL204SZCQHK125360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1280', 'WK12+534', 'HMNL204SZCQHK125340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1281', 'WK12+532', 'HMNL204SZCQHK125320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1282', 'WK12+530', 'HMNL204SZCQHK125300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1283', 'WK12+528', 'HMNL204SZCQHK125280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1284', 'WK12+526', 'HMNL204SZCQHK125260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1285', 'WK12+524', 'HMNL204SZCQHK125240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1286', 'WK12+522', 'HMNL204SZCQHK125220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1287', 'WK12+520', 'HMNL204SZCQHK125200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1288', 'WK12+518', 'HMNL204SZCQHK125180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1289', 'WK12+516', 'HMNL204SZCQHK125160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1290', 'WK12+514', 'HMNL204SZCQHK125140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1291', 'WK12+512', 'HMNL204SZCQHK125120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1292', 'WK12+510', 'HMNL204SZCQHK125100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1293', 'WK12+508', 'HMNL204SZCQHK125080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1294', 'WK12+506', 'HMNL204SZCQHK125060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1295', 'WK12+504', 'HMNL204SZCQHK125040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1296', 'WK12+502', 'HMNL204SZCQHK125020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1297', 'WK12+500', 'HMNL204SZCQHK125000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1298', 'WK12+498', 'HMNL204SZCQHK124980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1299', 'WK12+496', 'HMNL204SZCQHK124960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1300', 'WK12+494', 'HMNL204SZCQHK124940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1301', 'WK12+492', 'HMNL204SZCQHK124920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1302', 'WK12+490', 'HMNL204SZCQHK124900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1303', 'WK12+488', 'HMNL204SZCQHK124880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1304', 'WK12+486', 'HMNL204SZCQHK124860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1305', 'WK12+484', 'HMNL204SZCQHK124840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1306', 'WK12+482', 'HMNL204SZCQHK124820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1307', 'WK12+480', 'HMNL204SZCQHK124800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1308', 'WK12+478', 'HMNL204SZCQHK124780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1309', 'WK12+476', 'HMNL204SZCQHK124760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1310', 'WK12+474', 'HMNL204SZCQHK124740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1311', 'WK12+472', 'HMNL204SZCQHK124720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1312', 'WK12+470', 'HMNL204SZCQHK124700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1313', 'WK12+468', 'HMNL204SZCQHK124680_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1314', 'WK12+466', 'HMNL204SZCQHK124660_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1315', 'WK12+464', 'HMNL204SZCQHK124640_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1316', 'WK12+462', 'HMNL204SZCQHK124620_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1317', 'WK12+460', 'HMNL204SZCQHK124600_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1318', 'WK12+458', 'HMNL204SZCQHK124580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1319', 'WK12+456', 'HMNL204SZCQHK124560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1320', 'WK12+454', 'HMNL204SZCQHK124540_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1321', 'WK12+452', 'HMNL204SZCQHK124520_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1322', 'WK12+450', 'HMNL204SZCQHK124500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1323', 'WK12+448', 'HMNL204SZCQHK124480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1324', 'WK12+446', 'HMNL204SZCQHK124460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1325', 'WK12+444', 'HMNL204SZCQHK124440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1326', 'WK12+442', 'HMNL204SZCQHK124420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1327', 'WK12+440', 'HMNL204SZCQHK124400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1328', 'WK12+438', 'HMNL204SZCQHK124380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1329', 'WK12+436', 'HMNL204SZCQHK124360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1330', 'WK12+434', 'HMNL204SZCQHK124340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1331', 'WK12+432', 'HMNL204SZCQHK124320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1332', 'WK12+430', 'HMNL204SZCQHK124300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1333', 'WK12+428', 'HMNL204SZCQHK124280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1334', 'WK12+426', 'HMNL204SZCQHK124260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1335', 'WK12+424', 'HMNL204SZCQHK124240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1336', 'WK12+422', 'HMNL204SZCQHK124220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1337', 'WK12+420', 'HMNL204SZCQHK124200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1338', 'WK12+418', 'HMNL204SZCQHK124180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1339', 'WK12+416', 'HMNL204SZCQHK124160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1340', 'WK12+414', 'HMNL204SZCQHK124140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1341', 'WK12+412', 'HMNL204SZCQHK124120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1342', 'WK12+410', 'HMNL204SZCQHK124100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1343', 'WK12+408', 'HMNL204SZCQHK124080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1344', 'WK12+406', 'HMNL204SZCQHK124060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1345', 'WK12+404', 'HMNL204SZCQHK124040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1346', 'WK12+402', 'HMNL204SZCQHK124020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1347', 'WK12+400', 'HMNL204SZCQHK124000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1348', 'WK12+398', 'HMNL204SZCQHK123980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1349', 'WK12+396', 'HMNL204SZCQHK123960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1350', 'WK12+394', 'HMNL204SZCQHK123940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1351', 'WK12+392', 'HMNL204SZCQHK123920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1352', 'WK12+390', 'HMNL204SZCQHK123900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1353', 'WK12+388', 'HMNL204SZCQHK123880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1354', 'WK12+386', 'HMNL204SZCQHK123860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1355', 'WK12+384', 'HMNL204SZCQHK123840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1356', 'WK12+382', 'HMNL204SZCQHK123820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1357', 'WK12+380', 'HMNL204SZCQHK123800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1358', 'WK12+378', 'HMNL204SZCQHK123780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1359', 'WK12+376', 'HMNL204SZCQHK123760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1360', 'WK12+374', 'HMNL204SZCQHK123740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1361', 'WK12+372', 'HMNL204SZCQHK123720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1362', 'WK12+370', 'HMNL204SZCQHK123700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1363', 'WK12+368', 'HMNL204SZCQHK123680_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1364', 'WK12+366', 'HMNL204SZCQHK123660_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1365', 'WK12+364', 'HMNL204SZCQHK123640_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1366', 'WK12+362', 'HMNL204SZCQHK123620_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1367', 'WK12+360', 'HMNL204SZCQHK123600_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1368', 'WK12+358', 'HMNL204SZCQHK123580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1369', 'WK12+356', 'HMNL204SZCQHK123560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1370', 'WK12+354', 'HMNL204SZCQHK123540_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1371', 'WK12+352', 'HMNL204SZCQHK123520_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1372', 'WK12+350', 'HMNL204SZCQHK123500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1373', 'WK12+348', 'HMNL204SZCQHK123480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1374', 'WK12+346', 'HMNL204SZCQHK123460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1375', 'WK12+344', 'HMNL204SZCQHK123440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1376', 'WK12+342', 'HMNL204SZCQHK123420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1377', 'WK12+340', 'HMNL204SZCQHK123400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1378', 'WK12+338', 'HMNL204SZCQHK123380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1379', 'WK12+336', 'HMNL204SZCQHK123360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1380', 'WK12+334', 'HMNL204SZCQHK123340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1381', 'WK12+332', 'HMNL204SZCQHK123320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1382', 'WK12+330', 'HMNL204SZCQHK123300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1383', 'WK12+328', 'HMNL204SZCQHK123280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1384', 'WK12+326', 'HMNL204SZCQHK123260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1385', 'WK12+324', 'HMNL204SZCQHK123240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1386', 'WK12+322', 'HMNL204SZCQHK123220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1387', 'WK12+320', 'HMNL204SZCQHK123200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1388', 'WK12+318', 'HMNL204SZCQHK123180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1389', 'WK12+316', 'HMNL204SZCQHK123160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1390', 'WK12+314', 'HMNL204SZCQHK123140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1391', 'WK12+312', 'HMNL204SZCQHK123120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1392', 'WK12+310', 'HMNL204SZCQHK123100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1393', 'WK12+308', 'HMNL204SZCQHK123080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1394', 'WK12+306', 'HMNL204SZCQHK123060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1395', 'WK12+304', 'HMNL204SZCQHK123040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1396', 'WK12+302', 'HMNL204SZCQHK123020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1397', 'WK12+300', 'HMNL204SZCQHK123000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1398', 'WK12+298', 'HMNL204SZCQHK122980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1399', 'WK12+296', 'HMNL204SZCQHK122960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1400', 'WK12+294', 'HMNL204SZCQHK122940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1401', 'WK12+292', 'HMNL204SZCQHK122920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1402', 'WK12+290', 'HMNL204SZCQHK122900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1403', 'WK12+288', 'HMNL204SZCQHK122880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1404', 'WK12+286', 'HMNL204SZCQHK122860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1405', 'WK12+284', 'HMNL204SZCQHK122840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1406', 'WK12+282', 'HMNL204SZCQHK122820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1407', 'WK12+280', 'HMNL204SZCQHK122800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1408', 'WK12+278', 'HMNL204SZCQHK122780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1409', 'WK12+276', 'HMNL204SZCQHK122760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1410', 'WK12+274', 'HMNL204SZCQHK122740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1411', 'WK12+272', 'HMNL204SZCQHK122720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1412', 'WK12+270', 'HMNL204SZCQHK122700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1413', 'WK12+268', 'HMNL204SZCQHK122680_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1414', 'WK12+266', 'HMNL204SZCQHK122660_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1415', 'WK12+264', 'HMNL204SZCQHK122640_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1416', 'WK12+262', 'HMNL204SZCQHK122620_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1417', 'WK12+260', 'HMNL204SZCQHK122600_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1418', 'WK12+258', 'HMNL204SZCQHK122580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1419', 'WK12+256', 'HMNL204SZCQHK122560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1420', 'WK12+254', 'HMNL204SZCQHK122540_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1421', 'WK12+252', 'HMNL204SZCQHK122520_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1422', 'WK12+250', 'HMNL204SZCQHK122500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1423', 'WK12+248', 'HMNL204SZCQHK122480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1424', 'WK12+246', 'HMNL204SZCQHK122460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1425', 'WK12+244', 'HMNL204SZCQHK122440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1426', 'WK12+242', 'HMNL204SZCQHK122420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1427', 'WK12+240', 'HMNL204SZCQHK122400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1428', 'WK12+238', 'HMNL204SZCQHK122380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1429', 'WK12+236', 'HMNL204SZCQHK122360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1430', 'WK12+234', 'HMNL204SZCQHK122340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1431', 'WK12+232', 'HMNL204SZCQHK122320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1432', 'WK12+230', 'HMNL204SZCQHK122300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1433', 'WK12+228', 'HMNL204SZCQHK122280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1434', 'WK12+226', 'HMNL204SZCQHK122260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1435', 'WK12+224', 'HMNL204SZCQHK122240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1436', 'WK12+222', 'HMNL204SZCQHK122220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1437', 'WK12+220', 'HMNL204SZCQHK122200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1438', 'WK12+218', 'HMNL204SZCQHK122180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1439', 'WK12+216', 'HMNL204SZCQHK122160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1440', 'WK12+214', 'HMNL204SZCQHK122140_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1441', 'WK12+212', 'HMNL204SZCQHK122120_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1442', 'WK12+210', 'HMNL204SZCQHK122100_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1443', 'WK12+208', 'HMNL204SZCQHK122080_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1444', 'WK12+206', 'HMNL204SZCQHK122060_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1445', 'WK12+204', 'HMNL204SZCQHK122040_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1446', 'WK12+202', 'HMNL204SZCQHK122020_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1447', 'WK12+200', 'HMNL204SZCQHK122000_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1448', 'WK12+198', 'HMNL204SZCQHK121980_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1449', 'WK12+196', 'HMNL204SZCQHK121960_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1450', 'WK12+194', 'HMNL204SZCQHK121940_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1451', 'WK12+192', 'HMNL204SZCQHK121920_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1452', 'WK12+190', 'HMNL204SZCQHK121900_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1453', 'WK12+188', 'HMNL204SZCQHK121880_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1454', 'WK12+186', 'HMNL204SZCQHK121860_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1455', 'WK12+184', 'HMNL204SZCQHK121840_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1456', 'WK12+182', 'HMNL204SZCQHK121820_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1457', 'WK12+180', 'HMNL204SZCQHK121800_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1458', 'WK12+178', 'HMNL204SZCQHK121780_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1459', 'WK12+176', 'HMNL204SZCQHK121760_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1460', 'WK12+174', 'HMNL204SZCQHK121740_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1461', 'WK12+172', 'HMNL204SZCQHK121720_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1462', 'WK12+170', 'HMNL204SZCQHK121700_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1463', 'WK12+168', 'HMNL204SZCQHK121680_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1464', 'WK12+166', 'HMNL204SZCQHK121660_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1465', 'WK12+164', 'HMNL204SZCQHK121640_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1466', 'WK12+162', 'HMNL204SZCQHK121620_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1467', 'WK12+160', 'HMNL204SZCQHK121600_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1468', 'WK12+158', 'HMNL204SZCQHK121580_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1469', 'WK12+156', 'HMNL204SZCQHK121560_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1470', 'WK12+154', 'HMNL204SZCQHK121540_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1471', 'WK12+152', 'HMNL204SZCQHK121520_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1472', 'WK12+150', 'HMNL204SZCQHK121500_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1473', 'WK12+148', 'HMNL204SZCQHK121480_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1474', 'WK12+146', 'HMNL204SZCQHK121460_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1475', 'WK12+144', 'HMNL204SZCQHK121440_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1476', 'WK12+142', 'HMNL204SZCQHK121420_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1477', 'WK12+140', 'HMNL204SZCQHK121400_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1478', 'WK12+138', 'HMNL204SZCQHK121380_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1479', 'WK12+136', 'HMNL204SZCQHK121360_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1480', 'WK12+134', 'HMNL204SZCQHK121340_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1481', 'WK12+132', 'HMNL204SZCQHK121320_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1482', 'WK12+130', 'HMNL204SZCQHK121300_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1483', 'WK12+128', 'HMNL204SZCQHK121280_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1484', 'WK12+126', 'HMNL204SZCQHK121260_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1485', 'WK12+124', 'HMNL204SZCQHK121240_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1486', 'WK12+122', 'HMNL204SZCQHK121220_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1487', 'WK12+120', 'HMNL204SZCQHK121200_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1488', 'WK12+118', 'HMNL204SZCQHK121180_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1489', 'WK12+116', 'HMNL204SZCQHK121160_J0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1490', 'WK12+114', 'HMNL204SZCQHK121140_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1491', 'WK12+112', 'HMNL204SZCQHK121120_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1492', 'WK12+110', 'HMNL204SZCQHK121100_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1493', 'WK12+108', 'HMNL204SZCQHK121080_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1494', 'WK12+106', 'HMNL204SZCQHK121060_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1495', 'WK12+104', 'HMNL204SZCQHK121040_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1496', 'WK12+102', 'HMNL204SZCQHK121020_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1497', 'WK12+100', 'HMNL204SZCQHK121000_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1498', 'WK12+098', 'HMNL204SZCQHK120980_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1499', 'WK12+096', 'HMNL204SZCQHK120960_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1500', 'WK12+094', 'HMNL204SZCQHK120940_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1501', 'WK12+092', 'HMNL204SZCQHK120920_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1502', 'WK12+090', 'HMNL204SZCQHK120900_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1503', 'WK12+088', 'HMNL204SZCQHK120880_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1504', 'WK12+086', 'HMNL204SZCQHK120860_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1505', 'WK12+084', 'HMNL204SZCQHK120840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1506', 'WK12+082', 'HMNL204SZCQHK120820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1507', 'WK12+080', 'HMNL204SZCQHK120800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1508', 'WK12+078', 'HMNL204SZCQHK120780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1509', 'WK12+076', 'HMNL204SZCQHK120760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1510', 'WK12+074', 'HMNL204SZCQHK120740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1511', 'WK12+072', 'HMNL204SZCQHK120720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1512', 'WK12+070', 'HMNL204SZCQHK120700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1513', 'WK12+068', 'HMNL204SZCQHK120680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1514', 'WK12+066', 'HMNL204SZCQHK120660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1515', 'WK12+064', 'HMNL204SZCQHK120640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1516', 'WK12+062', 'HMNL204SZCQHK120620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1517', 'WK12+060', 'HMNL204SZCQHK120600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1518', 'WK12+058', 'HMNL204SZCQHK120580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1519', 'WK12+056', 'HMNL204SZCQHK120560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1520', 'WK12+054', 'HMNL204SZCQHK120540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1521', 'WK12+052', 'HMNL204SZCQHK120520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1522', 'WK12+050', 'HMNL204SZCQHK120500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1523', 'WK12+048', 'HMNL204SZCQHK120480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1524', 'WK12+046', 'HMNL204SZCQHK120460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1525', 'WK12+044', 'HMNL204SZCQHK120440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1526', 'WK12+042', 'HMNL204SZCQHK120420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1527', 'WK12+040', 'HMNL204SZCQHK120400_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1528', 'WK12+038', 'HMNL204SZCQHK120380_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1529', 'WK12+036', 'HMNL204SZCQHK120360_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1530', 'WK12+034', 'HMNL204SZCQHK120340_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1531', 'WK12+032', 'HMNL204SZCQHK120320_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1532', 'WK12+030', 'HMNL204SZCQHK120300_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1533', 'WK12+028', 'HMNL204SZCQHK120280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1534', 'WK12+026', 'HMNL204SZCQHK120260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1535', 'WK12+024', 'HMNL204SZCQHK120240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1536', 'WK12+022', 'HMNL204SZCQHK120220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1537', 'WK12+020', 'HMNL204SZCQHK120200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1538', 'WK12+018', 'HMNL204SZCQHK120180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1539', 'WK12+016', 'HMNL204SZCQHK120160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1540', 'WK12+014', 'HMNL204SZCQHK120140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1541', 'WK12+012', 'HMNL204SZCQHK120120_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1542', 'WK12+010', 'HMNL204SZCQHK120100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1543', 'WK12+008', 'HMNL204SZCQHK120080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1544', 'WK12+006', 'HMNL204SZCQHK120060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1545', 'WK12+004', 'HMNL204SZCQHK120040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1546', 'WK12+002', 'HMNL204SZCQHK120020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1547', 'WK12+000', 'HMNL204SZCQHK120000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1548', 'WK11+998', 'HMNL204SZCQHK119980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1549', 'WK11+996', 'HMNL204SZCQHK119960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1550', 'WK11+994', 'HMNL204SZCQHK119940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1551', 'WK11+992', 'HMNL204SZCQHK119920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1552', 'WK11+990', 'HMNL204SZCQHK119900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1553', 'WK11+988', 'HMNL204SZCQHK119880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1554', 'WK11+986', 'HMNL204SZCQHK119860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1555', 'WK11+984', 'HMNL204SZCQHK119840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1556', 'WK11+982', 'HMNL204SZCQHK119820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1557', 'WK11+980', 'HMNL204SZCQHK119800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1558', 'WK11+978', 'HMNL204SZCQHK119780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1559', 'WK11+976', 'HMNL204SZCQHK119760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1560', 'WK11+974', 'HMNL204SZCQHK119740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1561', 'WK11+972', 'HMNL204SZCQHK119720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1562', 'WK11+970', 'HMNL204SZCQHK119700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1563', 'WK11+968', 'HMNL204SZCQHK119680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1564', 'WK11+966', 'HMNL204SZCQHK119660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1565', 'WK11+964', 'HMNL204SZCQHK119640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1566', 'WK11+962', 'HMNL204SZCQHK119620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1567', 'WK11+960', 'HMNL204SZCQHK119600_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1568', 'WK11+958', 'HMNL204SZCQHK119580_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1569', 'WK11+956', 'HMNL204SZCQHK119560_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1570', 'WK11+954', 'HMNL204SZCQHK119540_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1571', 'WK11+952', 'HMNL204SZCQHK119520_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1572', 'WK11+950', 'HMNL204SZCQHK119500_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1573', 'WK11+948', 'HMNL204SZCQHK119480_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1574', 'WK11+946', 'HMNL204SZCQHK119460_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1575', 'WK11+944', 'HMNL204SZCQHK119440_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1576', 'WK11+942', 'HMNL204SZCQHK119420_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1577', 'WK11+940', 'HMNL204SZCQHK119400_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1578', 'WK11+938', 'HMNL204SZCQHK119380_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1579', 'WK11+936', 'HMNL204SZCQHK119360_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1580', 'WK11+934', 'HMNL204SZCQHK119340_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1581', 'WK11+932', 'HMNL204SZCQHK119320_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1582', 'WK11+930', 'HMNL204SZCQHK119300_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1583', 'WK11+928', 'HMNL204SZCQHK119280_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1584', 'WK11+926', 'HMNL204SZCQHK119260_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1585', 'WK11+924', 'HMNL204SZCQHK119240_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1586', 'WK11+922', 'HMNL204SZCQHK119220_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1587', 'WK11+920', 'HMNL204SZCQHK119200_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1588', 'WK11+918', 'HMNL204SZCQHK119180_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1589', 'WK11+916', 'HMNL204SZCQHK119160_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1590', 'WK11+914', 'HMNL204SZCQHK119140_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1591', 'WK11+912', 'HMNL204SZCQHK119120_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1592', 'WK11+910', 'HMNL204SZCQHK119100_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1593', 'WK11+908', 'HMNL204SZCQHK119080_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1594', 'WK11+906', 'HMNL204SZCQHK119060_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1595', 'WK11+904', 'HMNL204SZCQHK119040_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1596', 'WK11+902', 'HMNL204SZCQHK119020_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1597', 'WK11+900', 'HMNL204SZCQHK119000_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1598', 'WK11+898', 'HMNL204SZCQHK118980_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1599', 'WK11+896', 'HMNL204SZCQHK118960_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1600', 'WK11+894', 'HMNL204SZCQHK118940_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1601', 'WK11+892', 'HMNL204SZCQHK118920_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1602', 'WK11+890', 'HMNL204SZCQHK118900_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1603', 'WK11+888', 'HMNL204SZCQHK118880_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1604', 'WK11+886', 'HMNL204SZCQHK118860_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1605', 'WK11+884', 'HMNL204SZCQHK118840_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1606', 'WK11+882', 'HMNL204SZCQHK118820_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1607', 'WK11+880', 'HMNL204SZCQHK118800_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1608', 'WK11+878', 'HMNL204SZCQHK118780_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1609', 'WK11+876', 'HMNL204SZCQHK118760_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1610', 'WK11+874', 'HMNL204SZCQHK118740_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1611', 'WK11+872', 'HMNL204SZCQHK118720_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1612', 'WK11+870', 'HMNL204SZCQHK118700_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1613', 'WK11+868', 'HMNL204SZCQHK118680_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1614', 'WK11+866', 'HMNL204SZCQHK118660_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1615', 'WK11+864', 'HMNL204SZCQHK118640_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1616', 'WK11+862', 'HMNL204SZCQHK118620_D0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1617', 'WK11+860', 'HMNL204SZCQHK118600_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1618', 'WK11+858', 'HMNL204SZCQHK118580_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1619', 'WK11+856', 'HMNL204SZCQHK118560_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1620', 'WK11+854', 'HMNL204SZCQHK118540_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1621', 'WK11+852', 'HMNL204SZCQHK118520_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1622', 'WK11+850', 'HMNL204SZCQHK118500_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1623', 'WK11+848', 'HMNL204SZCQHK118480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1624', 'WK11+846', 'HMNL204SZCQHK118460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1625', 'WK11+844', 'HMNL204SZCQHK118440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1626', 'WK11+842', 'HMNL204SZCQHK118420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1627', 'WK11+840', 'HMNL204SZCQHK118400_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1628', 'WK11+838', 'HMNL204SZCQHK118380_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1629', 'WK11+836', 'HMNL204SZCQHK118360_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1630', 'WK11+834', 'HMNL204SZCQHK118340_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1631', 'WK11+832', 'HMNL204SZCQHK118320_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1632', 'WK11+830', 'HMNL204SZCQHK118300_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1633', 'WK11+828', 'HMNL204SZCQHK118280_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1634', 'WK11+826', 'HMNL204SZCQHK118260_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1635', 'WK11+824', 'HMNL204SZCQHK118240_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1636', 'WK11+822', 'HMNL204SZCQHK118220_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1637', 'WK11+820', 'HMNL204SZCQHK118200_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1638', 'WK11+818', 'HMNL204SZCQHK118180_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1639', 'WK11+816', 'HMNL204SZCQHK118160_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1640', 'WK11+814', 'HMNL204SZCQHK118140_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1641', 'WK11+812', 'HMNL204SZCQHK118120_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1642', 'WK11+810', 'HMNL204SZCQHK118100_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1643', 'WK11+808', 'HMNL204SZCQHK118080_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1644', 'WK11+806', 'HMNL204SZCQHK118060_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1645', 'WK11+804', 'HMNL204SZCQHK118040_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1646', 'WK11+802', 'HMNL204SZCQHK118020_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1647', 'WK11+800', 'HMNL204SZCQHK118000_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1648', 'WK11+798', 'HMNL204SZCQHK117980_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1649', 'WK11+796', 'HMNL204SZCQHK117960_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1650', 'WK11+794', 'HMNL204SZCQHK117940_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1651', 'WK11+792', 'HMNL204SZCQHK117920_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1652', 'WK11+790', 'HMNL204SZCQHK117900_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1653', 'WK11+788', 'HMNL204SZCQHK117880_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1654', 'WK11+786', 'HMNL204SZCQHK117860_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1655', 'WK11+784', 'HMNL204SZCQHK117840_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1656', 'WK11+782', 'HMNL204SZCQHK117820_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1657', 'WK11+780', 'HMNL204SZCQHK117800_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1658', 'WK11+778', 'HMNL204SZCQHK117780_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1659', 'WK11+776', 'HMNL204SZCQHK117760_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1660', 'WK11+774', 'HMNL204SZCQHK117740_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1661', 'WK11+772', 'HMNL204SZCQHK117720_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1662', 'WK11+770', 'HMNL204SZCQHK117700_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1663', 'WK11+768', 'HMNL204SZCQHK117680_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1664', 'WK11+766', 'HMNL204SZCQHK117660_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1665', 'WK11+764', 'HMNL204SZCQHK117640_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1666', 'WK11+762', 'HMNL204SZCQHK117620_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1667', 'WK11+760', 'HMNL204SZCQHK117600_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1668', 'WK11+758', 'HMNL204SZCQHK117580_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1669', 'WK11+756', 'HMNL204SZCQHK117560_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1670', 'WK11+754', 'HMNL204SZCQHK117540_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1671', 'WK11+752', 'HMNL204SZCQHK117520_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1672', 'WK11+750', 'HMNL204SZCQHK117500_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1673', 'WK11+748', 'HMNL204SZCQHK117480_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1674', 'WK11+746', 'HMNL204SZCQHK117460_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1675', 'WK11+744', 'HMNL204SZCQHK117440_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1676', 'WK11+742', 'HMNL204SZCQHK117420_E0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1677', 'WK11+740', 'HMNL204SZCQHK117400_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1678', 'WK11+738', 'HMNL204SZCQHK117380_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1679', 'WK11+736', 'HMNL204SZCQHK117360_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1680', 'WK11+734', 'HMNL204SZCQHK117340_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1681', 'WK11+732', 'HMNL204SZCQHK117320_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1682', 'WK11+730', 'HMNL204SZCQHK117300_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1683', 'WK11+728', 'HMNL204SZCQHK117280_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1684', 'WK11+726', 'HMNL204SZCQHK117260_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1685', 'WK11+724', 'HMNL204SZCQHK117240_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1686', 'WK11+722', 'HMNL204SZCQHK117220_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1687', 'WK11+720', 'HMNL204SZCQHK117200_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1688', 'WK11+718', 'HMNL204SZCQHK117180_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1689', 'WK11+716', 'HMNL204SZCQHK117160_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1690', 'WK11+714', 'HMNL204SZCQHK117140_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1691', 'WK11+712', 'HMNL204SZCQHK117120_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1692', 'WK11+710', 'HMNL204SZCQHK117100_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1693', 'WK11+708', 'HMNL204SZCQHK117080_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1694', 'WK11+706', 'HMNL204SZCQHK117060_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1695', 'WK11+704', 'HMNL204SZCQHK117040_H0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('2', '1696', 'WK11+702', 'HMNL204SZCQHK117020_B0');
INSERT INTO `tunnel_mileage_monomer_match` VALUES ('1', '1', '1', 'HMNL104SZCQHK120980_D0');

-- ----------------------------
-- Table structure for t_facility_insp_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_facility_insp_detail`;
CREATE TABLE `t_facility_insp_detail` (
  `ID` int(3) NOT NULL,
  `DISEASE_NO` varchar(15) DEFAULT NULL,
  `DISEASE_DATE` date DEFAULT NULL,
  `DISEASE_TYPE` varchar(50) DEFAULT NULL,
  `DETAIL_TYPE` varchar(50) DEFAULT NULL,
  `DISEASE_DISCRIPTION` varchar(50) DEFAULT NULL,
  `DEPTH` decimal(14,2) DEFAULT NULL,
  `LENGTH` decimal(14,2) DEFAULT NULL,
  `WIDTH` decimal(14,2) DEFAULT NULL,
  `AREA` decimal(14,2) DEFAULT NULL,
  `JOINTOPEN` decimal(14,2) DEFAULT NULL,
  `DISLOCATION` decimal(14,2) DEFAULT NULL,
  `PHOTO` varchar(200) DEFAULT NULL,
  `RECORDER` varchar(30) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `DISEASE_TYPE` (`DISEASE_TYPE`),
  KEY `DETAIL_TYPE` (`DETAIL_TYPE`),
  CONSTRAINT `t_facility_insp_detail_ibfk_1` FOREIGN KEY (`DISEASE_TYPE`) REFERENCES `disease_type_list` (`DISEASE_TYPE`),
  CONSTRAINT `t_facility_insp_detail_ibfk_2` FOREIGN KEY (`DETAIL_TYPE`) REFERENCES `detail_type_list` (`DETAIL_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_facility_insp_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_facility_insp_sum
-- ----------------------------
DROP TABLE IF EXISTS `t_facility_insp_sum`;
CREATE TABLE `t_facility_insp_sum` (
  `MILEAGE` varchar(15) NOT NULL,
  `PHOTO_STANDARD` varchar(200) DEFAULT NULL,
  `DISEASE_NO` varchar(15) DEFAULT NULL,
  `DISEASE_DATE` date DEFAULT NULL,
  `Monomer_No` varchar(10) DEFAULT NULL,
  `FACILITY_NO` char(22) DEFAULT NULL,
  `FACILITY_TYPE` varchar(30) DEFAULT NULL,
  `Pos_Desp` varchar(100) DEFAULT NULL,
  `TAG_ID` varchar(255) DEFAULT NULL,
  `MODEL_NAME` varchar(50) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`MILEAGE`),
  KEY `Monomer_No` (`Monomer_No`),
  KEY `FACILITY_NO` (`FACILITY_NO`),
  KEY `FACILITY_TYPE` (`FACILITY_TYPE`),
  KEY `Pos_Desp` (`Pos_Desp`),
  KEY `MODEL_NAME` (`MODEL_NAME`),
  CONSTRAINT `t_facility_insp_sum_ibfk_1` FOREIGN KEY (`Monomer_No`) REFERENCES `monomer_no_list` (`NO`),
  CONSTRAINT `t_facility_insp_sum_ibfk_2` FOREIGN KEY (`FACILITY_NO`) REFERENCES `m_facility_list` (`Facility_No`),
  CONSTRAINT `t_facility_insp_sum_ibfk_3` FOREIGN KEY (`FACILITY_TYPE`) REFERENCES `facility_type_list` (`FACILITY_TYPE`),
  CONSTRAINT `t_facility_insp_sum_ibfk_4` FOREIGN KEY (`Pos_Desp`) REFERENCES `pos_desp_list` (`Pos_Desp`),
  CONSTRAINT `t_facility_insp_sum_ibfk_5` FOREIGN KEY (`MODEL_NAME`) REFERENCES `model_name_list` (`MODEL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_facility_insp_sum
-- ----------------------------

-- ----------------------------
-- Table structure for t_facility_maintain
-- ----------------------------
DROP TABLE IF EXISTS `t_facility_maintain`;
CREATE TABLE `t_facility_maintain` (
  `FM_NO` varchar(15) NOT NULL,
  `DISEASE_NO` varchar(100) DEFAULT NULL,
  `REPAIR_CONTENT` varchar(60) DEFAULT NULL,
  `REPAIR_AMOUNT` decimal(8,0) DEFAULT NULL,
  `QUOTA_NO` varchar(60) DEFAULT NULL,
  `REPAIR_FEE` decimal(10,2) DEFAULT NULL,
  `FINISH_DATE` date DEFAULT NULL,
  `MAINTAIN_MAN` varchar(20) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`FM_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_facility_maintain
-- ----------------------------

-- ----------------------------
-- Table structure for t_mileage_disease_match
-- ----------------------------
DROP TABLE IF EXISTS `t_mileage_disease_match`;
CREATE TABLE `t_mileage_disease_match` (
  `Match_ID` int(3) NOT NULL AUTO_INCREMENT,
  `MILEAGE` varchar(15) DEFAULT NULL,
  `DISEASE_NO` varchar(15) DEFAULT NULL,
  `LOCATION_X` decimal(5,2) DEFAULT NULL,
  `LOCATION_Y` decimal(5,2) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`Match_ID`),
  KEY `MILEAGE` (`MILEAGE`),
  CONSTRAINT `t_mileage_disease_match_ibfk_1` FOREIGN KEY (`MILEAGE`) REFERENCES `t_facility_insp_sum` (`MILEAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mileage_disease_match
-- ----------------------------

-- ----------------------------
-- Table structure for t_surr_act
-- ----------------------------
DROP TABLE IF EXISTS `t_surr_act`;
CREATE TABLE `t_surr_act` (
  `NO` int(3) NOT NULL AUTO_INCREMENT,
  `ACT_NO` char(11) DEFAULT NULL,
  `INSP_DATE` date DEFAULT NULL,
  `ACT_TYPE` varchar(10) DEFAULT NULL,
  `ACT_STATUS` varchar(10) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Photo` varchar(200) DEFAULT NULL,
  `Audio` varchar(200) DEFAULT NULL,
  `VIDEO` varchar(200) DEFAULT NULL,
  `Recorder` varchar(20) DEFAULT NULL,
  `SynChronize` char(1) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surr_act
-- ----------------------------

-- ----------------------------
-- Table structure for t_surr_act_sum
-- ----------------------------
DROP TABLE IF EXISTS `t_surr_act_sum`;
CREATE TABLE `t_surr_act_sum` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `ACT_NO` char(11) DEFAULT NULL,
  `ACT_NAME` varchar(20) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `Surround_No` char(22) DEFAULT NULL,
  `TAG_ID` varchar(255) DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ACT_LEVEL` char(2) DEFAULT NULL,
  `LONGITUDE` decimal(5,2) DEFAULT NULL,
  `LATITUDE` decimal(5,2) DEFAULT NULL,
  `SynChronize` char(1) DEFAULT NULL,
  `DEL_FLG` char(1) DEFAULT NULL,
  `UPDATE_CNT` decimal(5,0) DEFAULT NULL,
  `CREATE_USER` varchar(40) DEFAULT NULL,
  `CREATE_DATE` date DEFAULT NULL,
  `UPDATE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Surround_No` (`Surround_No`),
  CONSTRAINT `t_surr_act_sum_ibfk_1` FOREIGN KEY (`Surround_No`) REFERENCES `t_surr_info` (`Surround_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surr_act_sum
-- ----------------------------

-- ----------------------------
-- Table structure for t_surr_info
-- ----------------------------
DROP TABLE IF EXISTS `t_surr_info`;
CREATE TABLE `t_surr_info` (
  `Surround_No` char(22) NOT NULL,
  `Surround_Name` varchar(30) DEFAULT NULL,
  `Surround_Type` varchar(10) DEFAULT NULL,
  `Protect_Level` varchar(5) DEFAULT NULL,
  `Nearest_Tunnel` varchar(20) DEFAULT NULL,
  `Mileage_No` varchar(10) DEFAULT NULL,
  `Height` decimal(8,0) DEFAULT NULL,
  `Depth` decimal(8,0) DEFAULT NULL,
  `Building_State` varchar(10) DEFAULT NULL,
  `Finished_Year` date DEFAULT NULL,
  `Usage_State` varchar(100) DEFAULT NULL,
  `Owner_Unit` varchar(100) DEFAULT NULL,
  `Telephone` varchar(30) DEFAULT NULL,
  `Blueprint_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Surround_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surr_info
-- ----------------------------
INSERT INTO `t_surr_info` VALUES ('HDLL000NR000N00010_000', '东西地下通道', '道路', 'B', '交叉', '', null, null, '已建', null, '运营中', '', '', '');
INSERT INTO `t_surr_info` VALUES ('HDLL000NS000N00010_000', '地铁四号线杨树浦路站', '轨道交通车站', 'B', '交叉', '31.6835', null, null, '已建', null, '运营中', '', '', '');
INSERT INTO `t_surr_info` VALUES ('HDLL000NS000N00020_000', '地铁四号线浦东大道站', '轨道交通车站', 'B', '交叉', '30.4023', null, null, '已建', null, '运营中', '', '', '');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00011_000', '裕景大酒店     ', '地上建筑物', 'B', '东线', '33.2072', null, null, '已建', null, '运营中', '齐茂(中国)有限公司', '021-38789888', '\\照片\\周边环境照片\\裕景大酒店');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00031_000', '其昌栈渡口     ', '地上建筑物', 'A', '东线', '92.6883', null, null, '已建', null, '运营中', '上海市轮渡公司', '021-63263560', '\\照片\\周边环境照片\\浦东其昌栈渡口');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00041_000', '浦东三棟小洋房   ', '地上建筑物', 'B', '东线', '29.7734', null, null, '已建', null, '运营中', '', '', '\\照片\\周边环境照片\\浦东三栋小洋房');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00051_000', '浦东一棟大洋房   ', '地上建筑物', 'B', '东线', '24.5145', null, null, '已建', null, '运营中', '', '', '\\照片\\周边环境照片\\浦东大洋房');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00061_000', '诺亚财富      ', '地上建筑物', 'B', '东线', '124.3974', null, null, '已建', null, '运营中', '诺亚（中国）财富管理中心', '021-38602388', '\\照片\\周边环境照片\\诺亚财富');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00071_000', '上海罗曼照明科技股份有限公司', '地上建筑物', 'B', '东线', '66.2482', null, null, '已建', null, '运营中', '上海罗曼照明科技股份有限公司', '65031217 ', '\\照片\\周边环境照片\\上海罗曼照明科技股份有限公司');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00091_000', '江北海关验货场', '地上建筑物', 'B', '东线', '', null, null, '已建', null, '运营中', '', '', '');
INSERT INTO `t_surr_info` VALUES ('HDLL100NU000N00101_000', '联通大厦', '地上建筑物', 'B', '东线', '', null, null, '已建', null, '运营中', '', '', '');
INSERT INTO `t_surr_info` VALUES ('HDLL200NU000N00022_000', '秦皇岛码头     ', '地上建筑物', 'A', '西线', '209.3646', null, null, '已建', null, '运营中', '上海游船服务中心', '400-880-9118', '\\照片\\周边环境照片\\秦皇岛码头');
INSERT INTO `t_surr_info` VALUES ('HDLL200NU000N00082_000', '宏惠花苑2期', '地上建筑物', 'B', '西线', '168.98', null, null, '已建', null, '运营中', '', '', '');
SET FOREIGN_KEY_CHECKS=1;
