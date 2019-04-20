-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.3.12-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- builder 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `builder` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `builder`;

-- 테이블 builder.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `membre_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원 번호',
  `member_id` varchar(100) NOT NULL COMMENT '회원 아이디',
  `member_name` varchar(100) NOT NULL COMMENT '회원 이름',
  `password` varbinary(64) NOT NULL COMMENT '비밀번호',
  `email` varchar(100) NOT NULL COMMENT '회원 전자우편 주소',
  `zip_no` varchar(7) DEFAULT NULL COMMENT '우편번호',
  `address` varchar(200) DEFAULT NULL COMMENT '주소',
  `join_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT '회원정보 등록시각',
  `mod_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT '회원정보 수정시각',
  PRIMARY KEY (`membre_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='회원 정보';

-- 테이블 데이터 builder.member:~6 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`membre_no`, `member_id`, `member_name`, `password`, `email`, `zip_no`, `address`, `join_date`, `mod_date`) VALUES
	(1, 'master', '통합 관리자', '*ED8C7EED87C11560032063A78660C9CCDBCC3265', 'hanwh@douzone.com', NULL, NULL, '2019-03-22 18:48:20', '2019-03-22 18:48:20'),
	(2, 'asdf', 'asdf', 'asdf', 'asdf@asdf.com', NULL, NULL, '2019-03-22 19:13:10', '2019-03-22 19:13:10'),
	(3, 'qwer', 'qwer', '*2491CA5000A9614AA28C39036702D965584486EC', 'qwer@asdf.com', NULL, NULL, '2019-03-22 19:15:38', '2019-03-22 19:15:38'),
	(4, 'zxcv', 'zxcv', '*F95008B30C8987EA3327BBABBF7F4562F2FCE6AB', 'zxcv@asdf.com', NULL, NULL, '2019-03-22 19:23:44', '2019-03-22 19:23:44'),
	(5, 'sdfg', 'sdgf', '*CCE297E56371EF7DA141573F4A815B0F42E3FE9C', 'sdfg@asdf.com', NULL, NULL, '2019-03-22 19:33:43', '2019-03-22 19:33:43'),
	(6, 'asdf1', 'asdf1', '*0E6F0F2553234323F97A26BE7154D6FC22A59484', 'asdf1@asdf.com', NULL, NULL, '2019-03-22 19:35:46', '2019-03-22 19:35:46');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;



CREATE USER 'builder'@'%' IDENTIFIED BY 'builder!23$';
GRANT ALL PRIVILEGES ON BUILDER.* TO 'builder'@'%';
FLUSH PRIVILEGES;
