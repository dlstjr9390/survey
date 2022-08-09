-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.5.6-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- yis 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `yis` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `yis`;

-- 테이블 yis.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `b_idx` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `view` int(255) NOT NULL DEFAULT 0,
  `writer` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `b_group` int(10) DEFAULT NULL,
  `b_order` int(10) DEFAULT NULL,
  `b_depth` int(10) DEFAULT NULL,
  PRIMARY KEY (`b_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.board:~31 rows (대략적) 내보내기
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` (`b_idx`, `title`, `content`, `view`, `writer`, `date`, `b_group`, `b_order`, `b_depth`) VALUES
	(94, '제목1', '제목1', 68, '학생1', '2022-01-28 15:48:12', 94, 1, 0),
	(95, '답글', '답글', 800, '학생4', '2022-01-28 15:54:38', 94, 2, 1),
	(96, 'qweqwrqw', 'rqwrwrr', 113, '학생1', '2022-02-09 14:41:49', 96, 1, 0),
	(100, '검색', '검색내용', 1, '학생1', '2022-02-17 13:24:56', 100, 1, 0),
	(101, '제목23', '내용23', 3, '추가14', '2022-02-17 13:26:01', 101, 1, 0),
	(102, '제목 24', '내용 24', 0, '추가14', '2022-02-17 13:26:21', 102, 1, 0),
	(103, '제목25', '내용25', 0, '추가14', '2022-02-17 13:27:15', 103, 1, 0),
	(104, 'adsfa', 'adsfasdf', 1, '학생1', '2022-02-17 14:58:58', 104, 1, 0),
	(105, '제목26', '내용26', 0, '학생2', '2022-02-21 13:28:10', 105, 1, 0),
	(106, '제목27', '내용27', 2, '학생2', '2022-02-21 13:29:26', 106, 1, 0),
	(113, 'qqq', 'qqq', 7, 'qqq', '2022-02-23 15:36:40', 113, 1, 0),
	(125, '444', '444', 14, '학생1', '2022-02-25 13:14:57', 125, 1, 0),
	(143, '55', '55', 1, '학생1', '2022-02-25 13:44:30', 125, 2, 1),
	(144, '새글', '새글', 3, '학생1', '2022-02-25 13:53:11', 144, 1, 0),
	(145, 'gg', 'gg', 0, '학생1', '2022-02-25 14:16:56', 144, 2, 1),
	(146, '', '', 1, '학생1', '2022-02-25 15:36:07', 146, 1, 0),
	(147, '123', '44', 0, '학생1', '2022-03-07 13:13:27', 147, 1, 0),
	(148, '11', '11123', 1, '학생1', '2022-03-07 13:37:27', 148, 1, 0),
	(151, 'aa', 'aa', 0, '학생1', '2022-03-08 13:35:04', 151, 1, 0),
	(152, 'ff', 'ff', 0, '학생1', '2022-03-08 13:36:57', 152, 1, 0),
	(153, 'gg', 'gg', 1, '학생1', '2022-03-08 13:37:16', 153, 1, 0),
	(173, 'hh', 'hh', 0, '학생1', '2022-03-11 14:34:00', 173, 1, 0),
	(175, '새글', 'ㅁㅁ', 23, '학생1', '2022-03-11 14:37:19', 175, 1, 0),
	(177, 'zx', 'zxz', 81, '학생1', '2022-03-11 14:54:35', 177, 1, 0),
	(178, 'gg', 'gg', 0, '학생1', '2022-03-14 13:46:24', 178, 0, 0),
	(179, 'gg2', 'gg', 0, '학생1', '2022-03-14 13:47:33', 179, 1, 0),
	(180, 'hh', 'hh', 1, '학생1', '2022-03-14 13:48:56', 180, 1, 0),
	(181, 'aaa', 'aaa', 0, '학생1', '2022-03-14 14:17:23', 181, 1, 0),
	(191, '13', '13', 76, '학생1', '2022-03-14 15:06:23', 191, 1, 0),
	(194, '11', '11', 1, '학생1', '2022-04-07 15:08:12', 194, 1, 0),
	(195, '11', '11', 0, '학생1', '2022-04-07 15:08:33', 195, 1, 0),
	(196, '새글', '새글', 1, '학생1', '2022-04-07 15:11:10', 196, 1, 0),
	(197, '답', '답', 0, '학생1', '2022-04-07 15:11:19', 197, 1, 0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;

-- 테이블 yis.comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `comment` (
  `c_idx` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `c_group` int(10) DEFAULT NULL,
  `c_order` int(10) DEFAULT NULL,
  `c_depth` int(10) DEFAULT NULL,
  `b_idx` int(10) DEFAULT NULL,
  PRIMARY KEY (`c_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.comment:~24 rows (대략적) 내보내기
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`c_idx`, `content`, `writer`, `date`, `c_group`, `c_order`, `c_depth`, `b_idx`) VALUES
	(44, '10답1댓글1', '10답1댓글1', '2022-01-26 14:16:59', 44, 1, 0, 82),
	(45, '12댓글', '12댓글', '2022-01-26 14:17:12', 45, 1, 0, 76),
	(50, '12댓글2', '12댓글2', '2022-01-26 14:47:25', 50, 1, 0, 76),
	(107, '수정1', '댓글1', '2022-01-28 14:10:41', 107, 1, 0, 75),
	(108, '대댓', '대댓', '2022-01-28 14:10:47', 107, 24, 1, 75),
	(109, '수정2', '댓글2', '2022-01-28 14:13:04', 109, 1, 0, 75),
	(111, '수정2대댓', '댓글3', '2022-01-28 14:13:17', 109, 23, 1, 75),
	(112, '대댓2수정', '대댓2', '2022-01-28 14:25:39', 107, 25, 2, 75),
	(118, 'qweqweqwe', '학생1', '2022-01-28 16:00:00', 118, 1, 0, 57),
	(119, 'qeqweqweqe', '학생1', '2022-01-28 16:00:05', 118, 20, 1, 57),
	(120, 'ㅁㄴㅇasd', '학생1', '2022-02-09 14:42:44', 120, 1, 0, 96),
	(121, 'ㅁㄴㅁㅇ', '학생11', '2022-02-09 14:42:47', 121, 1, 0, 96),
	(231, 'asdf', '학생1', '2022-02-14 15:11:36', 231, 1, 0, 95),
	(232, '1234', '학생1', '2022-02-14 15:13:29', 232, 1, 0, 95),
	(233, '1234', '학생1', '2022-02-14 15:13:41', 233, 1, 0, 95),
	(234, '1241414', '학생1', '2022-02-14 15:15:10', 234, 1, 0, 95),
	(235, 'ㅁㄴㅇ', '학생1', '2022-02-14 15:15:30', 235, 1, 0, 95),
	(236, '123', '학생1', '2022-02-14 15:19:00', 236, 1, 0, 95),
	(237, 'asdfa', '학생1', '2022-02-14 15:21:52', 237, 1, 0, 95),
	(260, '141414', '학생1', '2022-02-14 15:44:52', 260, 1, 0, 97),
	(273, 'qq', '학생1', '2022-02-15 13:11:57', 273, 1, 0, 95),
	(274, 'ㅁㅁㅁ', '학생1', '2022-02-15 13:17:48', 274, 1, 0, 95);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 테이블 yis.file 구조 내보내기
CREATE TABLE IF NOT EXISTS `file` (
  `f_idx` int(10) NOT NULL AUTO_INCREMENT,
  `b_idx` int(10) DEFAULT NULL,
  `f_Oname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_Cname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `f_size` int(10) DEFAULT NULL,
  PRIMARY KEY (`f_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.file:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` (`f_idx`, `b_idx`, `f_Oname`, `f_Cname`, `f_size`) VALUES
	(29, 191, 'aaa.png', '2022031415062380474.png', 10527),
	(30, 191, 'flower.png', '2022031415062368610.png', 4385);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- 테이블 yis.lc_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_auth` (
  `u_id` varchar(50) NOT NULL,
  `u_auth` varchar(200) NOT NULL,
  PRIMARY KEY (`u_id`,`u_auth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.lc_auth:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_auth` DISABLE KEYS */;
INSERT INTO `lc_auth` (`u_id`, `u_auth`) VALUES
	('aaaa', 'ROLE_ADMIN');
/*!40000 ALTER TABLE `lc_auth` ENABLE KEYS */;

-- 테이블 yis.lc_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_board` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(50) DEFAULT NULL,
  `b_content` text DEFAULT NULL,
  `b_writer` varchar(50) DEFAULT NULL,
  `b_datetime` datetime DEFAULT current_timestamp(),
  `b_view` int(255) NOT NULL DEFAULT 0,
  `b_group` int(10) DEFAULT NULL,
  `b_order` int(10) DEFAULT NULL,
  `b_depth` int(10) DEFAULT NULL,
  `b_editid` int(255) DEFAULT 0,
  `b_isimage` int(10) DEFAULT 0,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.lc_board:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_board` DISABLE KEYS */;
INSERT INTO `lc_board` (`b_id`, `b_title`, `b_content`, `b_writer`, `b_datetime`, `b_view`, `b_group`, `b_order`, `b_depth`, `b_editid`, `b_isimage`) VALUES
	(147, 'ㅁㅁ', 'ㅁㅁ', 'aaaa', '2022-06-17 11:51:24', 23, 147, 1, 0, 0, 0),
	(148, 'ㄴㄴ', 'ㄴㄴ', 'aaaa', '2022-06-17 11:51:33', 4, 148, 1, 0, 0, 0),
	(149, '66', '66ㅁ', 'aaaa', '2022-06-17 11:52:25', 13, 147, 2, 1, 2, 0);
/*!40000 ALTER TABLE `lc_board` ENABLE KEYS */;

-- 테이블 yis.lc_comment 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_comment` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `c_content` varchar(255) NOT NULL,
  `c_writer` varchar(255) NOT NULL,
  `c_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `c_group` int(10) DEFAULT NULL,
  `c_order` int(10) DEFAULT NULL,
  `c_depth` int(10) DEFAULT NULL,
  `b_id` int(10) DEFAULT NULL,
  `c_isedit` int(10) DEFAULT 0,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.lc_comment:~26 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_comment` DISABLE KEYS */;
INSERT INTO `lc_comment` (`c_id`, `c_content`, `c_writer`, `c_datetime`, `c_group`, `c_order`, `c_depth`, `b_id`, `c_isedit`) VALUES
	(357, '123123123123', 'aaaa', '2022-04-20 15:51:30', 357, 1, 0, 99, 0),
	(361, 'asdasd', 'aaaa', '2022-04-20 15:52:44', 361, 1, 0, 99, 0),
	(464, '111111111111', 'aaaa', '2022-04-22 15:09:58', 464, 1, 0, 95, 0),
	(465, '222222222222222222', 'aaaa', '2022-04-22 15:10:00', 465, 1, 0, 95, 0),
	(466, '333333333333333', 'aaaa', '2022-04-22 15:10:02', 466, 1, 0, 95, 0),
	(467, '141414', 'aaaa', '2022-04-26 13:18:43', 467, 1, 0, 95, 0),
	(470, '123123213', 'aaaa', '2022-04-26 13:51:17', 466, 2, 1, 95, 0),
	(471, '123', 'aaaa', '2022-04-26 13:51:47', 465, 2, 1, 95, 0),
	(472, '1414', 'aaaa', '2022-04-26 13:52:28', 472, 1, 0, 93, 0),
	(473, '1414', 'aaaa', '2022-04-26 13:52:45', 473, 1, 0, 92, 0),
	(483, '123224424241414124', 'aaaa', '2022-04-28 13:11:35', 483, 1, 0, 101, 0),
	(484, '14214', 'aaaa', '2022-04-28 13:13:11', 483, 2, 1, 101, 0),
	(485, '141414', 'aaaa', '2022-04-28 13:13:20', 483, 3, 2, 101, 0),
	(486, '151515', 'aaaa', '2022-04-28 13:13:25', 483, 4, 3, 101, 0),
	(487, '151515', 'aaaa', '2022-04-28 13:13:27', 487, 1, 0, 101, 0),
	(488, '1515152525', 'aaaa', '2022-04-28 13:13:29', 488, 1, 0, 101, 0),
	(489, '1414', 'aaaa', '2022-04-28 13:14:26', 489, 1, 0, 101, 0),
	(490, '153515', 'aaaa', '2022-04-28 13:14:28', 490, 1, 0, 101, 0),
	(491, '11', 'aaaa', '2022-06-14 10:06:34', 491, 1, 0, 104, 0),
	(492, '123', 'aaaa', '2022-06-14 10:06:38', 491, 2, 1, 104, 0),
	(493, '1414', 'aaaa', '2022-06-14 10:06:41', 493, 1, 0, 104, 0),
	(494, '123123', 'aaaa', '2022-06-14 10:06:47', 493, 2, 1, 104, 0),
	(495, '123123', 'aaaa', '2022-06-14 10:06:52', 493, 3, 2, 104, 0),
	(496, '123213', 'aaaa', '2022-06-14 11:04:20', 496, 1, 0, 106, 0),
	(497, '12314', 'aaaa', '2022-06-16 09:49:50', 497, 1, 0, 127, 0),
	(498, '12344111', 'aaaa', '2022-06-16 09:49:54', 497, 2, 1, 127, 1);
/*!40000 ALTER TABLE `lc_comment` ENABLE KEYS */;

-- 테이블 yis.lc_file 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_file` (
  `f_idx` int(10) NOT NULL AUTO_INCREMENT,
  `f_filename` varchar(255) NOT NULL,
  `f_convertname` varchar(255) NOT NULL,
  `f_size` int(10) NOT NULL,
  `b_idx` int(10) NOT NULL,
  `f_editId` int(10) DEFAULT 0,
  PRIMARY KEY (`f_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.lc_file:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_file` DISABLE KEYS */;
INSERT INTO `lc_file` (`f_idx`, `f_filename`, `f_convertname`, `f_size`, `b_idx`, `f_editId`) VALUES
	(83, 'aaa.png', '2022061711512482665.png', 10527, 147, 0),
	(84, 'flower.png', '2022061711512423201.png', 4385, 147, 0),
	(85, 'aaa.png', '2022061711513343796.png', 10527, 148, 0),
	(88, 'flower.png', '2022062010111925582.png', 4385, 149, 2);
/*!40000 ALTER TABLE `lc_file` ENABLE KEYS */;

-- 테이블 yis.lc_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `lc_user` (
  `u_no` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_datetime` datetime DEFAULT current_timestamp(),
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialsNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`u_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.lc_user:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `lc_user` DISABLE KEYS */;
INSERT INTO `lc_user` (`u_no`, `u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialsNonExpired`, `u_isEnabled`) VALUES
	(4, 'aaaa', '$2a$10$ckQ5sRmFbc/QI3kfKF4DTu4DDc5Fx8sOgUcnpZvUx6nuiALbb8hBK', '1234', '2022-03-30 13:22:05', 1, 1, 1, 1);
/*!40000 ALTER TABLE `lc_user` ENABLE KEYS */;

-- 테이블 yis.spring_session 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 yis.spring_session:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` (`PRIMARY_ID`, `SESSION_ID`, `CREATION_TIME`, `LAST_ACCESS_TIME`, `MAX_INACTIVE_INTERVAL`, `EXPIRY_TIME`, `PRINCIPAL_NAME`) VALUES
	('09434d05-8a72-461b-aeee-73df9646cdce', '620698c8-4820-437b-a8c0-5482ac51d1c1', 1656288647884, 1656289021981, 7200, 1656296221981, 'user');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;

-- 테이블 yis.spring_session_attributes 구조 내보내기
CREATE TABLE IF NOT EXISTS `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 yis.spring_session_attributes:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
INSERT INTO `spring_session_attributes` (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_BYTES`) VALUES
	('09434d05-8a72-461b-aeee-73df9646cdce', 'SPRING_SECURITY_CONTEXT', _binary 0xACED00057372003D6F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E636F6E746578742E5365637572697479436F6E74657874496D706C000000000000023A0200014C000E61757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B78707372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E000000000000023A0200024C000B63726564656E7469616C737400124C6A6176612F6C616E672F4F626A6563743B4C00097072696E636970616C71007E0004787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C7371007E0004787001737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00067870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000D737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C73000000000000023A0200024C000D72656D6F7465416464726573737400124C6A6176612F6C616E672F537472696E673B4C000973657373696F6E496471007E000F787074000F303A303A303A303A303A303A303A3174002437366461343137312D393832622D343164652D626436352D33633939656230616166346170737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E55736572000000000000023A0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657374000F4C6A6176612F7574696C2F5365743B4C000870617373776F726471007E000F4C0008757365726E616D6571007E000F787001010101737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E000A737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F72000000000000023A0200007870770400000000787074000475736572);
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;

-- 테이블 yis.survey_answer 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_answer` (
  `a_idx` int(10) NOT NULL AUTO_INCREMENT,
  `a_num` int(10) NOT NULL,
  `a_content` varchar(255) NOT NULL,
  `q_idx` int(10) NOT NULL,
  PRIMARY KEY (`a_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.survey_answer:~81 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_answer` DISABLE KEYS */;
INSERT INTO `survey_answer` (`a_idx`, `a_num`, `a_content`, `q_idx`) VALUES
	(5, 0, '단답형 답변(10자 이내)', 1),
	(6, 1, '11', 2),
	(7, 2, '22', 2),
	(8, 3, '33', 2),
	(9, 0, '단답형 답변(10자 이내)', 3),
	(10, 1, '11', 4),
	(11, 2, '22', 4),
	(12, 3, '33', 4),
	(13, 1, '11', 5),
	(14, 2, '22', 5),
	(15, 3, '33', 5),
	(16, 4, '44', 5),
	(17, 5, '55', 5),
	(26, 1, '1', 10),
	(27, 2, '2', 10),
	(28, 3, '3', 10),
	(29, 4, '12', 11),
	(30, 5, '23', 11),
	(31, 6, '34', 11),
	(66, 1, '1', 26),
	(67, 2, '2', 26),
	(68, 3, '3', 26),
	(69, 1, '1', 27),
	(70, 2, '2', 27),
	(71, 3, '3', 27),
	(72, 4, '4', 27),
	(73, 0, '단답형 답변(10자 이내)', 28),
	(74, 1, 'a', 29),
	(75, 2, 's', 29),
	(76, 3, 'd', 29),
	(85, 0, '장문형 답변(100자 이내)', 33),
	(86, 1, '11', 34),
	(87, 2, '22', 34),
	(88, 3, '33', 34),
	(89, 4, '44', 34),
	(90, 1, '11', 35),
	(91, 2, '22', 35),
	(92, 3, '33', 35),
	(93, 0, '단답형 답변(10자 이내)', 36),
	(94, 1, '111', 37),
	(95, 2, '222', 37),
	(96, 3, '333', 37),
	(97, 1, 'ㅁㅁㅁ', 38),
	(98, 2, 'ㄴㄴㄴ', 38),
	(99, 3, 'ㅇㅇㅇ', 38),
	(100, 1, '1', 39),
	(101, 2, '22', 39),
	(102, 3, '3', 39),
	(103, 1, '1', 40),
	(104, 2, '22', 40),
	(105, 3, '333', 40),
	(106, 1, '124', 41),
	(107, 2, '12312', 41),
	(108, 3, '44124', 41),
	(109, 0, '장문형 답변(100자 이내)', 42),
	(110, 1, '123213', 43),
	(111, 2, '124214', 43),
	(112, 3, '124214214', 43),
	(113, 0, '단답형 답변(10자 이내)', 44),
	(114, 0, '장문형 답변(100자 이내)', 45),
	(115, 1, '1번보기', 46),
	(116, 2, '2번보기', 46),
	(117, 3, '3번보기', 46),
	(118, 1, '1번보기', 47),
	(119, 2, '2번보기', 47),
	(120, 3, '3번보기', 47),
	(121, 1, '1번보기', 48),
	(122, 2, '2번보기', 48),
	(123, 3, '3번보기', 48),
	(124, 4, '4번보기', 48),
	(125, 0, '장문형 답변(100자 이내)', 49),
	(126, 1, '한식', 50),
	(127, 2, '일식', 50),
	(128, 3, '중식', 50),
	(129, 4, '양식', 50),
	(130, 5, '기타', 50),
	(131, 1, '1만원 미만', 51),
	(132, 2, '1만원~2만원', 51),
	(133, 3, '2만원~5만원', 51),
	(134, 4, '5만원~10만원', 51),
	(135, 5, '10만원 이상', 51),
	(136, 1, '한 달에 한번 이하', 52),
	(137, 2, '한 달에 2~3번', 52),
	(138, 3, '한 주에 한번', 52),
	(139, 4, '한 주에 2~3번', 52),
	(140, 5, '매일', 52);
/*!40000 ALTER TABLE `survey_answer` ENABLE KEYS */;

-- 테이블 yis.survey_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_auth` (
  `u_id` varchar(50) NOT NULL,
  `u_auth` varchar(200) NOT NULL,
  PRIMARY KEY (`u_id`,`u_auth`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.survey_auth:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_auth` DISABLE KEYS */;
INSERT INTO `survey_auth` (`u_id`, `u_auth`) VALUES
	('1234', 'ROLE_USER'),
	('aaaa', 'ROLE_ADMIN'),
	('asdf', 'ROLE_USER');
/*!40000 ALTER TABLE `survey_auth` ENABLE KEYS */;

-- 테이블 yis.survey_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_board` (
  `s_idx` int(10) NOT NULL AUTO_INCREMENT,
  `s_title` varchar(255) NOT NULL,
  `s_description` varchar(255) NOT NULL,
  `s_datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `u_id` varchar(255) NOT NULL,
  `rescount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`s_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.survey_board:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_board` DISABLE KEYS */;
INSERT INTO `survey_board` (`s_idx`, `s_title`, `s_description`, `s_datetime`, `u_id`, `rescount`) VALUES
	(2, '제목', '설명', '2022-07-08 10:12:27', 'aaaa', 0),
	(3, '설문조사1', '설명1', '2022-07-12 09:19:20', 'aaaa', 0),
	(4, '설문2', '설명2', '2022-07-12 10:32:11', 'aaaa', 0),
	(5, 'wㅂㅈㄷ', 'ㅂㅈㄷㅂㅈ', '2022-07-12 10:33:15', 'aaaa', 0),
	(14, 'adsf', 'adsgggg', '2022-07-12 11:14:18', 'aaaa', 0),
	(16, '123', '123', '2022-07-14 09:56:17', '12', 0),
	(17, '설문조사 제목', '설문조사 설명', '2022-07-14 10:02:26', 'aaaa', 0),
	(18, 'ㅁㅁ', 'ㅁㅁㅁㅁ', '2022-07-14 10:57:16', 'aaaa', 0),
	(19, 'asd', 'asdsa', '2022-07-14 11:38:07', '12', 0),
	(20, '1223', '414124', '2022-07-15 09:36:56', 'aaaa', 0),
	(21, '최종 확인', '설명', '2022-07-19 10:47:22', 'aaaa', 4),
	(22, '2131', '2213', '2022-07-20 10:24:22', 'aaaa', 1),
	(23, '음식 선호도', '음식의 선호도와 비용,주기', '2022-08-04 09:23:56', 'aaaa', 5);
/*!40000 ALTER TABLE `survey_board` ENABLE KEYS */;

-- 테이블 yis.survey_question 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_question` (
  `q_idx` int(10) NOT NULL AUTO_INCREMENT,
  `q_content` varchar(255) NOT NULL,
  `a_type` varchar(255) NOT NULL,
  `s_idx` int(10) NOT NULL DEFAULT 0,
  `q_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`q_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.survey_question:~31 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
INSERT INTO `survey_question` (`q_idx`, `q_content`, `a_type`, `s_idx`, `q_num`) VALUES
	(1, '질문1', 'short', 2, 1),
	(2, '질문2', 'subject', 2, 2),
	(3, '질문1', 'short', 3, 1),
	(4, '질문2', 'subject', 3, 2),
	(5, '질문3', 'checkbox', 3, 3),
	(6, '객관식 질문1', 'subject', 4, 1),
	(7, '단답형 질문2', 'short', 4, 2),
	(8, '장문형 질문3', 'long', 4, 3),
	(9, '체크박스 질문4', 'checkbox', 4, 4),
	(10, 'ㅂㅈㄷㅂㅈㄷㅂㅈ', 'subject', 5, 1),
	(11, 'ㅂㅈㄷㅂㅈㄷ', 'checkbox', 5, 2),
	(26, '111', 'subject', 14, 1),
	(27, '222', 'checkbox', 14, 2),
	(28, '333', 'short', 14, 3),
	(29, '444', 'subject', 14, 4),
	(33, '123123', 'long', 16, 1),
	(34, '1123', 'subject', 16, 2),
	(35, 'ㅁㄴㅇㄹ', 'checkbox', 16, 3),
	(36, '질문111', 'short', 17, 1),
	(37, '질문222', 'subject', 17, 2),
	(38, '질문333', 'checkbox', 17, 3),
	(39, 'ㅁㅁㅁ', 'subject', 18, 1),
	(40, 'asdasd', 'dropdown', 19, 1),
	(41, '123213', 'dropdown', 20, 1),
	(42, '', 'long', 20, 2),
	(43, '123213', 'dropdown', 20, 3),
	(44, '단답형 질문', 'short', 21, 1),
	(45, '장문형 질문', 'long', 21, 2),
	(46, '객관식 질문', 'subject', 21, 3),
	(47, '체크박스(중복선택가능)', 'checkbox', 21, 4),
	(48, '드롭다운', 'dropdown', 21, 5),
	(49, '123', 'long', 22, 1),
	(50, '좋아하는 음식의 종류', 'subject', 23, 1),
	(51, '평균 식사 비용', 'subject', 23, 2),
	(52, '얼마나 자주 먹습니까?', 'subject', 23, 3);
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;

-- 테이블 yis.survey_stat 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_stat` (
  `sS_idx` int(11) NOT NULL AUTO_INCREMENT,
  `s_idx` int(11) NOT NULL,
  `q_idx` int(11) NOT NULL,
  `response` varchar(255) DEFAULT NULL,
  `u_id` varchar(255) NOT NULL,
  PRIMARY KEY (`sS_idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.survey_stat:~34 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_stat` DISABLE KEYS */;
INSERT INTO `survey_stat` (`sS_idx`, `s_idx`, `q_idx`, `response`, `u_id`) VALUES
	(1, 21, 44, 'asdas', 'aaaa'),
	(2, 21, 45, 'asdasdsa', 'aaaa'),
	(3, 21, 46, '1번보기', 'aaaa'),
	(4, 21, 47, '2번보기', 'aaaa'),
	(5, 21, 47, '3번보기', 'aaaa'),
	(6, 21, 48, '4번보기', 'aaaa'),
	(7, 21, 44, '551515', 'aaaa'),
	(8, 21, 45, '151515', 'aaaa'),
	(9, 21, 46, '3번보기', 'aaaa'),
	(10, 21, 47, '2번보기', 'aaaa'),
	(11, 21, 48, '3번보기', 'aaaa'),
	(12, 21, 44, '551515', 'aaaa'),
	(13, 21, 45, '151515', 'aaaa'),
	(14, 21, 46, '3번보기', 'aaaa'),
	(15, 21, 47, '2번보기', 'aaaa'),
	(16, 21, 48, '3번보기', 'aaaa'),
	(17, 21, 44, 'q', 'aaaa'),
	(18, 21, 45, 'w', 'aaaa'),
	(19, 21, 46, '3번보기', 'aaaa'),
	(20, 21, 47, '1번보기', 'aaaa'),
	(21, 21, 48, '1번보기', 'aaaa'),
	(22, 22, 49, '123213', 'aaaa'),
	(24, 23, 50, '일식', 'aaaa'),
	(25, 23, 51, '2만원~5만원', 'aaaa'),
	(26, 23, 52, '한 달에 2~3번', 'aaaa'),
	(27, 23, 50, '중식', 'aaaa'),
	(28, 23, 51, '1만원~2만원', 'aaaa'),
	(29, 23, 52, '한 달에 한번 이하', 'aaaa'),
	(30, 23, 50, '양식', 'aaaa'),
	(31, 23, 51, '1만원~2만원', 'aaaa'),
	(32, 23, 52, '한 달에 2~3번', 'aaaa'),
	(33, 23, 50, '한식', 'aaaa'),
	(34, 23, 51, '1만원 미만', 'aaaa'),
	(35, 23, 52, '매일', 'aaaa');
/*!40000 ALTER TABLE `survey_stat` ENABLE KEYS */;

-- 테이블 yis.survey_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `survey_user` (
  `u_no` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(50) NOT NULL,
  `u_password` varchar(200) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_datetime` datetime DEFAULT current_timestamp(),
  `u_isAccountNonExpired` tinyint(4) DEFAULT NULL,
  `u_isAccountNonLocked` tinyint(4) DEFAULT NULL,
  `u_isCredentialsNonExpired` tinyint(4) DEFAULT NULL,
  `u_isEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`u_no`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- 테이블 데이터 yis.survey_user:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `survey_user` DISABLE KEYS */;
INSERT INTO `survey_user` (`u_no`, `u_id`, `u_password`, `u_name`, `u_datetime`, `u_isAccountNonExpired`, `u_isAccountNonLocked`, `u_isCredentialsNonExpired`, `u_isEnabled`) VALUES
	(9, 'aaaa', '$2a$10$VznTMvjv0jxhrBD.TMSnueNtV1kQ5zksyOfx7mFLrayZaM763whbi', '인석', '2022-06-28 10:38:35', 1, 1, 1, 1),
	(10, 'asdf', '$2a$10$Q3VhyUihF1I9mW69hS96HeC6.056XVxVx4ycY9DvMu2EOtiEYJ/Gu', 'asdf', '2022-06-29 09:27:40', 1, 1, 1, 1),
	(11, '1234', '$2a$10$yPs0QRU6Y/uTuOXZVXQBq.0D8hovrWV6Rc79cYQTarl4Ie23Tz3UC', '1111', '2022-07-25 11:14:08', 1, 1, 1, 1);
/*!40000 ALTER TABLE `survey_user` ENABLE KEYS */;

-- 테이블 yis.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `u_idx` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(255) NOT NULL,
  `u_pw` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_tel` varchar(255) NOT NULL,
  `u_age` varchar(255) NOT NULL,
  `u_auth` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`u_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- 테이블 데이터 yis.user:~32 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`u_idx`, `u_id`, `u_pw`, `u_name`, `u_tel`, `u_age`, `u_auth`) VALUES
	(1, 'aaa', '1234', '학생1', '010-1234-1234', '99', b'1'),
	(2, 'dls', '1234', '학생2', '010-101-010', '121', b'1'),
	(3, 'asdgasdg', 'asdgasdg', '학생3', '6416-1616-6516', '15', b'1'),
	(4, 'aaafff', '165165', '학생4', '888-888-8888', '88', b'0'),
	(5, 'qqqqqqq', '88897898', '학생5', '7777-7777-7777', '77', b'0'),
	(6, 'bbbbbbb', '66666', '학생6', '2222-2222-2222', '22', b'0'),
	(7, 'ghhyhyhyh', '74456654', '학생7', '1651-1615-161', '6', b'0'),
	(8, 'qewrqewr', '74456654', '학생8', '1651-4111-161', '66', b'0'),
	(9, 'kkkkkkkkkkkkkk', '1234', '학생9', '4848-4848-8484', '48', b'0'),
	(10, 'pppppppppppppppp', '1234', '학생10', '4848-4848-8484', '48', b'0'),
	(11, 'p', '1234', '학생11', '4848-4848-8484', '48', b'0'),
	(12, 'pqwe', '1234', '학생12', '4848-4848-8484', '48', b'0'),
	(13, 'pqwewerw', '1234', '학생13', '4848-4848-8484', '48', b'0'),
	(14, 'pqwewerwaa', '1234a', '학생14', '1111-4848-8484', '15', b'0'),
	(15, 'mmmnnn', '1234a', '학생15', '1111-4848-8484', '15', b'0'),
	(16, 'lkkjjhhg', '1234a', '학생16', '1111-4746-8484', '15', b'0'),
	(18, 'fqfqfqf', '65146541651', '추가', '9877-4894-4984', '98', b'0'),
	(19, 'mmmmmmmmmmmmm', '65146541651', '추가2', '9877-4894-4984', '77', b'0'),
	(20, 'fffffffffffffffffffffffffffff', '65146541651', '추가3', '9877-4894-4984', '77', b'0'),
	(21, 'sdagqgqgqg', 'fasfd', '추가3', '9494-9849-9849', '9', b'0'),
	(22, 'sdagqgqgqg', 'fasfd', '추가4', '9494-9849-9849', '11', b'0'),
	(23, 'sdagqgqgqg', 'fasfd', '추가5', '9494-9849-9849', '145', b'0'),
	(24, 'sdagqgqgqgaaa', 'fasfda', '추가6', '9494-9849-9849', '145', b'0'),
	(25, 'sdagqgqgqgaaa111', 'fasfda', '추가7', '9494-9849-9849', '145', b'0'),
	(26, '124141414', 'fasfda', '추가8', '9494-9849-9849', '1', b'0'),
	(27, '1a11a1a1a', 'fasfda', '추가9', '9494-9849-9849', '12', b'0'),
	(28, 'dfafafafafaf', 'fasfda', '추가10', '9494-9849-9849', '33', b'0'),
	(29, 'fzzzz', 'fasfda', '추가11', '9494-9849-9849', '33', b'0'),
	(30, 'fqqqq', 'fasfda', '추가12', '9494-9849-9849', '33', b'0'),
	(31, 'zxczc', 'fasfda', '추가13', '8989-9849-9849', '33', b'0'),
	(32, 'qq', 'fasfda', '추가14', '8998-9849-9849', '33', b'0'),
	(33, 'qq1414', 'fasfda', '추가15', '8998-9849-9849', '33', b'0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
