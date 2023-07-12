CREATE DATABASE iolistDB;
use iolistDB;
CREATE USER 'korea'@'192.168.0.%' IDENTIFIED BY '!Biz8080';
GRANT ALL PRIVILEGES ON iolistDB.* TO 'korea'@'192.168.0.%';

DROP USER 'korea'@'localhost';
USE mysql;
SELECT USER, host FROM USER;

CREATE TABLE tbl_iolist (
	io_seq	int		PRIMARY KEY	AUTO_INCREMENT,
	io_date	VARCHAR(10)	NOT NULL,		
	io_time	VARCHAR(10)	NOT NULL,		
	io_pcode	VARCHAR(5)	NOT NULL,		
	io_dcode	VARCHAR(4)	NOT NULL,		
	io_inout	VARCHAR(1)	NOT NULL,		
	io_qty	int	NOT NULL,		
	io_iprice	int,			
	io_oprice	int			
);
CREATE TABLE tbl_dept (
	d_code	VARCHAR(4)		PRIMARY KEY,
	d_name	VARCHAR(125)	NOT NULL,
	d_ceo	VARCHAR(50)	NOT NULL,	
	d_tel	VARCHAR(20)	NOT NULL,	
	d_address	VARCHAR(125)	
);
CREATE TABLE tbl_product (
	p_code	VARCHAR(5)		PRIMARY KEY,
	p_name	VARCHAR(50)	NOT NULL,	
	p_iprice	int,	
	p_oprice	int		
);

SELECT * FROM  tbl_iolist I
LEFT JOIN tbl_dept D
ON I.io_dcode = D.d_code
WHERE D.d_name IS NULL;

SELECT * FROM tbl_iolist I
LEFT JOIN tbl_product P
ON I.io_pcode = P.p_code
WHERE P.p_name IS NULL;

ALTER TABLE tbl_iolist
ADD CONSTRAINT f_dcode
FOREIGN KEY (io_dcode)
REFERENCES tbl_dept(d_code);

ALTER TABLE tbl_iolist
ADD CONSTRAINT f_pcode
FOREIGN KEY (io_pcode)
REFERENCES tbl_product(p_code);

SELECT * FROM tbl_iolist;
SELECT * FROM tbl_iolist WHERE io_date BETWEEN '2023-03-01' AND '2023-03-31';	
SELECT * FROM tbl_iolist WHERE io_inout = 1 AND io_qty >= 60 AND io_qty < 70;

DESC tbl_iolist;
DESC tbl_dept;
DESC tbl_product;

SELECT io_seq, io_date, io_time, d_code 거래처코드, d_name 거래처명, p_code 상품코드, p_name 상품명, io_inout, io_qty, io_iprice 매입단가, io_oprice 매출단가
FROM tbl_iolist
LEFT JOIN tbl_dept ON io_dcode = d_code
LEFT JOIN tbl_product ON io_pcode = p_code;

SELECT io_pcode 상품코드, p_name 상품명, COUNT(io_pcode) 레코드수 FROM tbl_iolist LEFT JOIN tbl_product ON io_pcode = p_code GROUP BY io_pcode;

SELECT io_inout 구분, io_pcode 상품코드, p_name 상품명, SUM(io_qty) 수량합계
FROM tbl_iolist LEFT JOIN tbl_product ON io_pcode = p_code GROUP BY io_inout, io_pcode ORDER BY io_pcode, io_inout;

SELECT io_inout 거래구분, SUM(io_qty * io_iprice) 매입합계, SUM(io_qty * io_oprice) 매출합계 FROM tbl_iolist GROUP BY io_inout; 

SELECT io_pcode 상품코드, p_name 상품명, AVG(io_iprice) 평균매입단가, AVG(io_oprice) 평균매출단가
FROM tbl_iolist LEFT JOIN tbl_product ON io_pcode = p_code GROUP BY io_pcode
ORDER BY io_pcode;

CREATE TABLE tbl_user (
	username VARCHAR(125) PRIMARY KEY,
    nickname VARCHAR(125) NOT NULL,
    tel VARCHAR(20)
);

INSERT INTO tbl_user(username, nickname, tel) 
VALUES ('hong','홍길동','010-1111-1111'), ('lee','이몽룡','010-2222-2222'), ('leem','임꺽정','010-3333-3333');

SELECT*FROM tbl_user;
DESC tbl_user;
UPDATE 	tbl_user SET tel='010-5555-5555' WHERE username='hong';

DESC tbl_user;
DELETE FROM tbl_user WHERE username='leem'; 

SHOW INDEXES IN tbl_user;

SELECT * FROM tbl_user WHERE nickname LIKE '%길%';