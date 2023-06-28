-- memo 사용자로 로그인한 화면

CREATE TABLE tbl_memo (

    m_seq	NUMBER	PRIMARY KEY,
    m_writer	nVARCHAR2(20)	NOT NULL,
    m_date	VARCHAR2(10)	NOT NULL,	
    m_subject	nVARCHAR2(20)	NOT NULL,	
    m_content	nVARCHAR2(400)		

);

-- 자동 일련번호 생성

CREATE SEQUENCE seq_memo
START WITH 1 INCREMENT BY 1;

SELECT seq_memo.NEXTVAL
FROM DUAL;
DROP SEQUENCE seq_memo;

INSERT INTO tbl_memo(m_seq, m_writer, m_date, m_subject, m_content)
VALUES(seq_memo.NEXTVAL,'홍길동','2023-05-26','안녕하세요','홍길동입니다');
SELECT * FROM tbl_memo;
DROP TABLE tbl_memo;
COMMIT;