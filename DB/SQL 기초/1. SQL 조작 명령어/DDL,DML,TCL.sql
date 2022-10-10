--DDL
-- CREATE: ���̺� ����
create table board(
    bnum number primary key,
    title varchar2(100) not null,
    writer varchar2(50) not null,
    content varchar2(2000) not null,
    readCnt int,
    regDate Timestamp default current_timestamp
);

-- drop : ���̺� ����
drop table board;

-- alter : ���̺� ����
	-- ���̺�� ���� : RENAME TO ���ο� ���̺��
    alter table board rename to spring_board;
    -- �÷��߰� :  ADD([���ο� �÷���] [�÷�Ÿ��])
    alter table spring_board add ex_column varchar2(100) not null;    
    -- �÷��� ����: RENAME COLUMN [������ �÷���] TO [���ο� �÷���]
    alter table spring_board modify ex_column varchar2(200);
    -- �÷� ����: DROP COLUMN [������ �÷���]
    alter table spring_board drop column ex_column;
    
-- TRUNCATE: ���̺� ���� ��ü ����
TRUNCATE table spring_board;

-- DML
-- select
-- SELECT �÷���1, �÷���N FROM ���̺�� WHERE ���ǽ�;
select * from board;

-- insert 
-- INSERT INTO ���̺�� (�÷���1, �÷���N) VALUES(��1, ��N)
insert into board(bnum, title, writer, content, readCnt) 
values(BOARD_SEQ.nextval, '�ﱹ��', '����', '�˳���', 1);

-- update
-- UPDATE ���̺�� SET ������ = ���ο WHERE ���ǽ�
update board set bnum = 2 where bnum = 1;

-- delete
-- DELETE FROM ���̺�� WHERE ���ǽ�;
delete from board where bnum = 1;

--TCL
-- commit: ����۾��� Ȯ���ϴ� ��ɾ��̴�
commit;

-- rollback: ���� Ŀ���� �������� �̵�
rollback;