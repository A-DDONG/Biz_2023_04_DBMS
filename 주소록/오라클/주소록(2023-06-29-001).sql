-- 여기는 addr USER 화면입니다
/*
tbl_address table 에 대하여 다음 결과를 확인하는 SQL 을 작성
1. TABLE 에 저장된 전체 데이터의 개수는 몇개인가
2. TABLE 에 저장된 전체 리스트를 전화번호 순으로 정렬하여 확인하기
3. TABLE 에 저장된 전체 리스트를 이름 순으로 정렬하여 확인하기
4. TABLE 에 저장된 전체 리스트 중에 성씨가 "김" 으로 시작되는 리스트 확인하기
5. TABLE 에 저장된 전체 리스트 중에 전화번호의 국번이 3으로 시작되는 리스트의 개수는 몇개인가
*/

-- 1.
SELECT COUNT(*) FROM tbl_address; 

-- 2. 기본값인 ASC(오름차순) 정렬은 생략가능
-- DESC(내림차순) 정렬

SELECT * FROM TBL_ADDRESS ORDER BY A_TEL;
SELECT * FROM TBL_ADDRESS ORDER BY A_TEL DESC;

-- TABLE 구조 확인
-- ORDER BY DESC 키워드와는 다른 키워드
DESCRIBE TBL_ADDRESS;
DESC TBL_ADDRESS;

-- 3.
SELECT * FROM TBL_ADDRESS ORDER BY A_NAME;

-- ID 순으로 정렬하고 같은 ID 가 있으면 그 그룹에서 이름순으로 정렬
SELECT * FROM TBL_aDDRESS ORDER BY A_ID, A_NAME;
-- ID 순으로 정렬하고 같은 ID 가 있으면 그 그룹에서 이름순으로 내림차순 정렬
SELECT * FROM TBL_aDDRESS ORDER BY A_ID, A_NAME DESC;

-- 4.
SELECT * FROM TBL_ADDRESS WHERE A_NAME LIKE '이%';
SELECT * FROM TBL_ADDRESS WHERE SUBSTR(A_NAME,1,1) LIKE '이';

-- 5.
-- 중간 문자열 검색, 전화번호 중에 3이 포함된 모든 전화번호
SELECT * FROM TBL_ADDRESS WHERE A_TEL LIKE '%3%';

SELECT * FROM TBL_ADDRESS WHERE A_TEL LIKE '____3%' ORDER BY A_TEL;

SELECT COUNT(*) FROM TBL_ADDRESS WHERE SUBSTR(A_TEL,5,1) = 3;

-- 전화번호 국번이 3으로 시작되는 전화번호 중에서 ID가 가장 큰 데이터와, 작은 데이터를 찾으시오
SELECT MAX(A_ID) AS 최대값, MIN(A_ID) AS 최소값 FROM TBL_ADDRESS WHERE SUBSTR(A_TEL,5,1) = 3;

