-- root 로 접속한 화면
USE bbsDB;
SHOW TABLES;
DESC tbl_bbs;
-- tbl_bbs 테이블에 대표이미지를 저장하는 칼럼 추가
-- tbl_bbs 테이블에 b_image 라는 칼럼을 추가하는데ALTER
-- 데이터 타입은 VARCHAR(125)로 하고 b_count 다음에 (b_update) 앞에 위치하도록
-- ALTER TABLE 사용하여 새로운 칼럼을 추가하는 경우 제약사항(NOT NULL 등)을 동시에 추가할수 없다

ALTER TABLE tbl_bbs
ADD b_image VARCHAR(125)
AFTER b_count;
SELECT * FROM tbl_bbs;
-- Table 을 DROP 하고 다시 같은 구조로  CREATE TABLE
TRUNCATE tbl_bbs;
-- FK 삭제
ALTER TABLE tbl_bbs DROP CONSTRAINT FK이름;

-- 닉네임 칼럼 삭제
ALTER TABLE tbl_bbs
DROP b_nickname;

INSERT INTO tbl_bbs (
	b_pseq, b_date, b_time, b_username,
	b_subject, b_content, b_count, b_image
) VALUES (
	1,1,1,1,1,1,1,1
);

CREATE	TABLE tbl_images (
	i_seq	bigint		PRIMARY KEY	AUTO_INCREMENT,
	i_bseq	bigint	NOT NULL,
	i_originalName	VARCHAR(125),			
	i_uploadName	VARCHAR(255)			
);
SELECT * FROM tbl_images;
