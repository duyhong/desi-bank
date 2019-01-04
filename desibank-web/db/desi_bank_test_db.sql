/*
Navicat MySQL Data Transfer

Source Server         : Mahakal
Source Server Version : 50013
Source Host           : localhost:3306
Source Database       : desi_bank_test_db

Target Server Type    : MYSQL
Target Server Version : 50013
File Encoding         : 65001

Date: 2018-12-07 16:19:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account_number_generator_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `account_number_generator_tbl`;
CREATE TABLE `account_number_generator_tbl` (
  `id` bigint(20) NOT NULL auto_increment,
  `accountNumber` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of account_number_generator_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_account_information_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_account_information_tbl`;
CREATE TABLE `customer_account_information_tbl` (
  `id` bigint(20) NOT NULL auto_increment,
  `accountNumber` varchar(255) default NULL,
  `accountType` varchar(20) default NULL,
  `avBalance` float NOT NULL,
  `branch` varchar(255) default NULL,
  `currency` varchar(255) default NULL,
  `customerId` varchar(255) default NULL,
  `payeeName` varchar(255) default NULL,
  `statusAsOf` datetime default NULL,
  `tavBalance` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_account_information_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_question_answer_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_question_answer_tbl`;
CREATE TABLE `customer_question_answer_tbl` (
  `id` int(11) NOT NULL auto_increment,
  `answer` varchar(255) default NULL,
  `question` varchar(255) default NULL,
  `userid` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_16a9exybxl383l2meaxr8xv1e` (`userid`),
  CONSTRAINT `FK_16a9exybxl383l2meaxr8xv1e` FOREIGN KEY (`userid`) REFERENCES `user_login_tbl` (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_question_answer_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_saving_enquiry_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_saving_enquiry_tbl`;
CREATE TABLE `customer_saving_enquiry_tbl` (
  `csaid` int(11) NOT NULL auto_increment,
  `appref` varchar(30) default NULL,
  `doa` datetime default NULL,
  `email` varchar(100) default NULL,
  `location` varchar(100) default NULL,
  `mobile` varchar(15) default NULL,
  `name` varchar(100) default NULL,
  `status` varchar(20) default NULL,
  PRIMARY KEY  (`csaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_saving_enquiry_tbl
-- ----------------------------
INSERT INTO `customer_saving_enquiry_tbl` VALUES ('10033', 'A2222', '2018-10-05 11:14:14', 'nagendra.synergisticit@gmail.com', 'IDNIA', '93939393', 'JACKER', 'PENDING');

-- ----------------------------
-- Table structure for `customer_security_questions_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_security_questions_tbl`;
CREATE TABLE `customer_security_questions_tbl` (
  `qid` int(11) NOT NULL auto_increment,
  `questions` varchar(255) default NULL,
  PRIMARY KEY  (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_security_questions_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_tbl`;
CREATE TABLE `customer_tbl` (
  `id` int(11) NOT NULL auto_increment,
  `accountNum` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `age` int(11) NOT NULL,
  `approved` varchar(255) default NULL,
  `dob` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `father` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `image` longblob,
  `jobTitle` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `photoName` varchar(255) default NULL,
  `qualification` varchar(255) default NULL,
  `ssn` varchar(255) default NULL,
  `userid` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_5np8f9dvwel6067uguhtqmd67` (`userid`),
  CONSTRAINT `FK_5np8f9dvwel6067uguhtqmd67` FOREIGN KEY (`userid`) REFERENCES `user_login_tbl` (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_transaction_history_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_transaction_history_tbl`;
CREATE TABLE `customer_transaction_history_tbl` (
  `id` bigint(20) NOT NULL auto_increment,
  `amount` float NOT NULL,
  `date` datetime default NULL,
  `description` varchar(255) default NULL,
  `fromAccountNumber` varchar(255) default NULL,
  `loginId` varchar(255) default NULL,
  `toAccountNumber` varchar(255) default NULL,
  `transactionId` bigint(20) NOT NULL,
  `transactionMode` varchar(255) default NULL,
  `transactionType` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer_transaction_history_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `payee_informations_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `payee_informations_tbl`;
CREATE TABLE `payee_informations_tbl` (
  `id` int(11) NOT NULL auto_increment,
  `customerId` varchar(255) default NULL,
  `doe` datetime default NULL,
  `dom` datetime default NULL,
  `payeeAccountNo` varchar(30) default NULL,
  `payeeName` varchar(100) default NULL,
  `payeeNickName` varchar(100) default NULL,
  `remarks` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  `urn` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payee_informations_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `registation_links_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `registation_links_tbl`;
CREATE TABLE `registation_links_tbl` (
  `lno` int(11) NOT NULL auto_increment,
  `comment` varchar(200) default NULL,
  `doe` datetime default NULL,
  `email` varchar(100) default NULL,
  `exphrs` int(11) NOT NULL,
  `linkexpiredate` datetime default NULL,
  `linkurl` varchar(200) default NULL,
  PRIMARY KEY  (`lno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registation_links_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `reject_customer_saving_enquiry_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `reject_customer_saving_enquiry_tbl`;
CREATE TABLE `reject_customer_saving_enquiry_tbl` (
  `csaid` int(11) NOT NULL auto_increment,
  `customerName` varchar(100) default NULL,
  `doa` datetime default NULL,
  `email` varchar(100) default NULL,
  `location` varchar(100) default NULL,
  `mobile` varchar(15) default NULL,
  `reason` varchar(200) default NULL,
  PRIMARY KEY  (`csaid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reject_customer_saving_enquiry_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `transaction_id_generator_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `transaction_id_generator_tbl`;
CREATE TABLE `transaction_id_generator_tbl` (
  `id` bigint(20) NOT NULL auto_increment,
  `transactionId` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaction_id_generator_tbl
-- ----------------------------

-- ----------------------------
-- Table structure for `user_login_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `user_login_tbl`;
CREATE TABLE `user_login_tbl` (
  `loginid` varchar(255) NOT NULL,
  `llt` datetime default NULL,
  `locked` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `noOfAttempt` int(11) NOT NULL,
  `password` varchar(255) default NULL,
  `passwordExpire` datetime default NULL,
  `role` varchar(255) default NULL,
  PRIMARY KEY  (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login_tbl
-- ----------------------------
