CREATE TABLE tbl_product(

    pCode	VARCHAR2(13)	NOT NULL	PRIMARY KEY,
    pName	nVARCHAR2(50)	NOT NULL,
    pItem	VARCHAR2(10),		
    pIPrice	NUMBER,		
    pOPrice	NUMBER
    
    );
    
CREATE TABLE tbl_buyer(

    buId	VARCHAR2(10)	NOT NULL	PRIMARY KEY,
    buName	nVARCHAR2(20),		
    buTel	VARCHAR2(20),		
    buAddr	VARCHAR2(125)		
    
    );
    
CREATE TABLE tbl_iolist(

    ioSEQ	NUMBER	NOT NULL	PRIMARY KEY,
    ioDate	VARCHAR2(10),		
    ioTime	VARCHAR2(10),		
    ioBuid	VARCHAR2(10)	NOT NULL,
    ioPCode	NUMBER	NOT NULL,	
    ioQuan	NUMBER,		
    ioPrice	NUMBER		

    );
    
INSERT INTO tbl_product(pcode, pname, pitem, piprice, poprice)
VALUES('123123123123', '홍길동', '크래커', 200, 300);

SELECT * FROM tbl_product;
SELECT * FROM tbl_buyer;
SELECT * FROM tbl_iolist;

COMMIT;

SELECT pCode, pName, pItem, pIPrice, pOPrice
FROM tbl_product
ORDER by pCode;

DROP TABLE tbl_product;
DROP TABLE tbl_buyer;

INSERT INTO tbl_buyer(buid,buname,butel,buaddr)
VALUES('0000000001','홍길동','010-1111-1111','광주');
INSERT INTO tbl_buyer(buid,buname,butel,buaddr)
VALUES('0000000002','성춘향','010-2222-2222','전주');
INSERT INTO tbl_buyer(buid,buname,butel,buaddr)
VALUES('0000000003','이몽룡','010-3333-3333','서울');

CREATE SEQUENCE seq_iolist
START WITH 1 INCREMENT BY 1;