-- 2023-07-17
use bbsDB;
DESC tbl_images;
SELECT * FROM tbl_bbs;

INSERT INTO tbl_bbs (b_username)
VALUES('addong');

-- AUTO_INCREMENT 로 설정된 칼럼의 가장 마지막 INSERT 된 데이터 가져오기
SELECT last_insert_id();

INSERT INTO tbl_bbs (b_username)
VALUES('addong1'),('addong2'),('addong3'),('addong4'),('addong5');

SELECT * FROM tbl_bbs;

SELECT * FROM tbl_images;

TRUNCATE tbl_bbs;
TRUNCATE tbl_images;
