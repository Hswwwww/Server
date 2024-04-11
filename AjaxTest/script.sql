-- 설문조사

create table tblSurvey(
    seq number primary key,                     --번호(PK)
    question varchar2(300) not null,            --항목
    item1 varchar2(300) not null,
    item2 varchar2(300) not null,
    item3 varchar2(300) not null,
    item4 varchar2(300) not null,
    cnt1 number default 0 not null,             --선택
    cnt2 number default 0 not null,
    cnt3 number default 0 not null,
    cnt4 number default 0 not null
);

insert into tblSurvey values (1,'가장 자신있는 프로그래밍 언어는?', 'JAVA', 'Pyhon', 'C#', 'C++', default,default,default,default);

select * from tblSurvey;


update tblSurvey set
    cnt1 = 5,
    cnt2 = 8,
    cnt3 = 5,
    cnt4 = 7
        where seq = 1;
commit;



select * from tblUser;


create table zipcode  (
   seq                  NUMBER(10)  not null,
   zipcode              VARCHAR2(50),
   sido                 VARCHAR2(50),
   gugun                VARCHAR2(50),
   dong                 VARCHAR2(50),
   bunji                VARCHAR2(50),
   constraint PK_ZIPCODE primary key (seq)
);


select * from zipcode;

--고양이 좌표

create table tblCat(
    catid varchar(50) primary key,
    x number not null,
    y number not null
);

select * from tblCat;

select max(to_number(substr(catid,4))) as m from tblCat;

select * from tblAddress;

drop table tblAddress;

create table tblAddress(
    seq number primary key,
    name varchar2(30) not null,
    age number(3) not null,
    gender char(1) not null,
    address varchar2(300) not null

);