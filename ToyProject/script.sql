show user; 
--system

alter session set "_oracle_script" = true;
create user toy identified by java1234;
grant connect, resource, dba to toy;


create table tblUser(
    id varchar2(50) primary key,                                --아이디
    pw varchar2(50) not null,                                       
    name varchar2(50) not null,
    email varchar2(100) not null,
    lv number(1) not null,                   -- 등급(1-회원, 2-관리자)
    pic varchar2(100) default 'pic.png' not null,
    intro varchar2(500) null,
    regdate date default sysdate not null,
    ing number(1) default 1 not null                            -- 탈퇴(1-활동,0-탈퇴)
);

alter table tblUser add( ing number(1) default 1 not null);
insert into tblUser(id,pw,name,email,lv,pic,intro,regdate)
values('hong','1111','홍길동','hong@gmail.com',1,default,'반갑습니다.',default);

insert into tblUser(id,pw,name,email,lv,pic,intro,regdate)
values('tiger','1111','호랑이','tiger@gmail.com',2,default,'반갑습니다.',default);

select * from tblUser;


-- 게시판
create table tblBoard(

    seq number primary key,
    subject varchar2(300) not null,
    content varchar2(4000) not null,
    id varchar2(50) not null references tblUser(id),
    regdate date default sysdate not null,
    readcount number default 0 not null
);


create sequence seqBoard;


commit;

select * from tblBoard;
-- 날짜 조정은 db가 더 펀함!!! 그래서 여기서 조절
create or replace view vwBoard
as
select 
    seq,subject,id,readcount ,(select name from tblUser where id = tblBoard.id) as name,
    case
        when to_char(sysdate, 'yyyy-mm-dd') = to_char(regdate, 'yyyy-mm-dd')
            then to_char(regdate,'hh24:mi:ss')
        else
            to_char(regdate, 'yyyy-mm-dd')
    end regdate,
    (sysdate-regdate)as isnew
from tblBoard 
    order by seq desc;

select * from vwBoard;

update tblBoard set regdate = regdate-3
    where seq = 7;
update tblBoard set regdate = regdate-2
    where seq=8;
 update tblBoard set regdate = regdate-1
    where seq=9;
    
    
    