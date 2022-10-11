-- from 절에서 사용
-- empbasics_t 테이블에서 empbasics_t가 A001인 사람중 EMPNM가 박미자인 사람
select * from
(
    select * from empbasics_t E 
    WHERE E.empcd = 'A001'
)
WHERE EMPNM = '박미자';

-- empschedule 테이블에서 month가 1인 사람중 empcd가 A001인 사람
select * from
(
    select * from empschedule where month = 1
)
where empcd = 'A001';

--WHERE절에서 사용
--PLAYER 테이블에서 평균 키보다 작은 선수 검색
SELECT AVG(HEIGHT) 
FROM PLAYER; -- 평균 값: 179.3 
SELECT * FROM PLAYER
WHERE HEIGHT < (SELECT AVG(HEIGHT)FROM PLAYER);

--select 절에서 사용
-- PLAYER 테이블에서 전체평균 키와 포지션별 평균 키 구하기
SELECT "POSITION", AVG(HEIGHT), 
(SELECT AVG(HEIGHT) FROM PLAYER) 
FROM PLAYER
WHERE "POSITION" IS NOT NULL
GROUP BY "POSITION";

-- 다중 서브쿼리
-- 

--merge문
merge into board_merge bm
using board b
on (bm.cnt = b.bnum)
when matched then
update set bm.content = b.content
when not matched then
insert values(board_seq.nextval, b.title, b.writer, b.content);
/
create table board_merge(
    cnt number primary key,
    title varchar2(100) not null,
    writer varchar2(100) not null,
    content varchar2(2000) not null
);
select * from board_merge;
select * from board;
drop table board_merge;