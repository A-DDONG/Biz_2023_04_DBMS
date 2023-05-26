-- memo 사용자로 로그인한 화면

CREATE TABLE tbl_memo (

    m_seq	NUMBER	PRIMARY KEY,
    m_writer	nVARCHAR2(20)	NOT NULL,
    m_date	VARCHAR2(10)	NOT NULL,	
    m_subject	nVARCHAR2(20)	NOT NULL,	
    m_content	nVARCHAR2(400)		

);