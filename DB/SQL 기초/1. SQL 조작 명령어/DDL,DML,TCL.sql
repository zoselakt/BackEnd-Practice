--DDL
-- CREATE: 테이블 생성
create table board(
    bnum number primary key,
    title varchar2(100) not null,
    writer varchar2(50) not null,
    content varchar2(2000) not null,
    readCnt int,
    regDate Timestamp default current_timestamp
);

-- drop : 테이블 삭제
drop table board;

-- alter : 테이블 수정
	-- 테이블명 수정 : RENAME TO 새로운 테이블명
    alter table board rename to spring_board;
    -- 컬럼추가 :  ADD([새로운 컬럼명] [컬럼타입])
    alter table spring_board add ex_column varchar2(100) not null;    
    -- 컬럼명 변경: RENAME COLUMN [생성된 컬럼명] TO [새로운 컬럼명]
    alter table spring_board modify ex_column varchar2(200);
    -- 컬럼 삭제: DROP COLUMN [생성된 컬럼명]
    alter table spring_board drop column ex_column;
    
-- TRUNCATE: 테이블 내용 전체 삭제
TRUNCATE table spring_board;

-- DML
-- select
-- SELECT 컬럼명1, 컬럼명N FROM 테이블명 WHERE 조건식;
select * from board;

-- insert 
-- INSERT INTO 테이블명 (컬럼명1, 컬럼명N) VALUES(값1, 값N)
insert into board(bnum, title, writer, content, readCnt) 
values(BOARD_SEQ.nextval, '삼국지', '유비', '촉나라', 1);

-- update
-- UPDATE 테이블명 SET 기존값 = 새로운값 WHERE 조건식
update board set bnum = 2 where bnum = 1;

-- delete
-- DELETE FROM 테이블명 WHERE 조건식;
delete from board where bnum = 1;

--TCL
-- commit: 모든작업을 확정하는 명령어이다
commit;

-- rollback: 이전 커밋한 지점으로 이동
rollback;