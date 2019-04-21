CREATE TABLE `CUST_ACCOUNT` (
	`account_id` INT NOT NULL AUTO_INCREMENT COMMENT '계정 일련번호'
	, `account_no` VARCHAR(100) NOT NULL COMMENT '계좌 번호'
	, `cust_name` VARCHAR(100) NOT NULL COMMENT '계좌 소유자 이름'
	, `balance` INT NOT NULL COMMENT '계좌 잔고'
	, `join_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '계좌 생성일'
	, `mod_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '계좌 수정일'

	, PRIMARY KEY (`account_id`)
)
COMMENT='계좌  정보'
COLLATE='utf8_general_ci'
ENGINE=InnoDB;


INSERT INTO `CUST_ACCOUNT` (`account_no`, `cust_name`, `balance`)
VALUES
	( '70-490-930', '세종대왕', 150000000 )
	, ( '70-490-130', '염라대왕', 250000000 )
;