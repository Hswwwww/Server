--TodoList > script.sql

drop table tblTodo;

create table tblTodo(
    seq number primary key,             -- 번호
    todo varchar2(100) not null,        -- 할일
    state char(1) default 'n' not null,  -- 완료(y),미완료(n)
    regdate date default sysdate not null
    
);

create sequence seqTodo;

select * from tblTodo;

delete from tblTodo;
commit;

update tblTodo set state = 'y' where seq in(37,39);

select a.* from (select * from tblTodo where state = 'n' order by seq desc) a
union
select b.* from (select * from tblTodo where state = 'y' order by seq desc) b;
