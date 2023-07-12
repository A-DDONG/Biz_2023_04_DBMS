-- bbsDB DataBase 생성하기
CREATE DATABASE bbsDB;
-- bbsDB DataBase 접속하기
USE bbsdb;
-- bbsDB 에 포함된 Table 리스트 확인하기
SHOW TABLES;
DROP TABLE tbl_bbs;
CREATE TABLE tbl_bbs (
	b_seq	bigint		PRIMARY KEY	AUTO_INCREMENT,
	b_pseq	bigint,
	b_date	varchar(10),			
	b_time	varchar(10),		
	b_username	varchar(125),
	b_subject	varchar(125),			
	b_content	text,			
	b_count	int,			
	b_update	datetime			
);

-- tbl_bbs 테이블과 tbl_user 테이블이 완전참조무결성 관계인지 검증하는 SQL
-- LEFT JOIN 은 참조무결성과 관계없이 JOIN 결괄ㄹ 정상적으로 확인 가능하다
-- 이때 N:1 의 관계에서 NULL 인 데이터가 있으면 테이블간에 참조무결성관계가 성립되지 않는다
-- 이 테이블간에는 FK 설정이 불가능하다
SELECT * FROM tbl_bbs B LEFT JOIN tbl_user U ON B.b_username = U.username
WHERE U.nickname IS NULL;





