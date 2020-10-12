create table semi_notice(
   s_bno number(38) 
  ,s_title varchar2(100)
  ,s_content varchar2(4000)
  ,s_writer varchar2(100)
  ,s_date DATE
  ,primary key (s_bno)
);

drop table semi_notice;

select * from semi_notice;

create sequence semi start with 1 increment by 1;

insert into SEMI_NOTICE 
values(semi.nextval,'오늘의 공지사항입니다.','오늘의 내용입니다.','성은',sysdate);

insert into SEMI_NOTICE 
values(semi.nextval,'내일의 공지사항입니다.','내일의 내용입니다.','재혁',sysdate);

insert into SEMI_NOTICE 
values(semi.nextval,'월요일 공지사항입니다.','다음주 내용입니다.','신영',sysdate);

insert into SEMI_NOTICE 
values(semi.nextval,'화요일 공지사항입니다.','놀자','준언',sysdate);

insert into SEMI_NOTICE 
values(semi.nextval,'화요일 공지사항입니다.','놀자','준언',sysdate);




