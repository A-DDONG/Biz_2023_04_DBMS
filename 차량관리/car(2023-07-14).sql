use carDB;
DESC tbl_car;
SELECT * FROM tbl_CAR;	
DROP TABLE tbl_car;
DESC tbl_car;
CREATE TABLE tbl_car (
	c_seq	bigint		PRIMARY KEY	AUTO_INCREMENT,
	c_div	varchar(5)	NOT NULL,		
	c_sdate	DATE,			
	c_stime	TIME,
	c_sdist	int	NOT NULL,		
	c_edate	DATE,
	c_etime	TIME,
	c_edist	int,			
	c_location	varchar(125)	NOT NULL,
	c_cost	int			
);
INSERT INTO tbl_car (
c_div, c_sdate, c_stime, c_sdist, c_edate, c_etime, c_edist, c_location, c_cost )
VALUES ('A',CURDATE(),CURTIME(),1,CURDATE(),CURTIME(),1,'A',1);

SELECT * FROM tbl_car;