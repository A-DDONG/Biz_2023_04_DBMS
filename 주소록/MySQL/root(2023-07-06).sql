-- 여기는 root 화면

/*
MySQL 프로젝트 시작
1. datbase 생성
2. 사용자 등록(DB 서버가 Application 서버와 동일한 운영체제에 있을때는 사용자 등록이 선택사항이다
	root 사용자가 등록되어 있는데, root 사용자는 기본적으로 localhost 에서만 접근이 된다
    
    만약, 네트워크를 통해서 DB 서버에 접근하거나 특별히 보안이 요구되는 경우가 아니면
    root 사용자를 일반 DB 사용자로 사용하는 경우가 많다	
*/

CREATE database todoDB;
USE todoDB;
SHOW DATABASES;

-- 사용자 등록
-- 사용자 등록을 할때 접근할 수 있는 범위를 설정해야 한다
create user 'todo'@'localhost' IDENTIFIED BY '12341234';

