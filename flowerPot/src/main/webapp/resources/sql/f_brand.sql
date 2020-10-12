create table f_brand(
	bno number(30) primary key,
	name varchar(100) unique,
	company varchar2(100) unique,
	brandName varchar2(100) unique,
	busNo varchar2(50) null, --unique조건 추가하기
	ceoName varchar2(50),
	tel varchar2(50), --unique조건 추가하기
	email varchar2(50), --unique조건 추가하기
	postcode varchar2(50), 
	roadAddr varchar2(100),
	jibunAddr varchar2(100),
	extraAddr varchar2(100),
	detailAddr varchar2(100),
	introduce varchar2(3000),
	regDate date
);
-- 시퀀스
create sequence bno_seq increment by 1 start with 1;
--추가 제약조건추가 
alter table f_brand ADD UNIQUE (busNo)
alter table f_brand ADD UNIQUE (tel)
alter table f_brand ADD UNIQUE (email)

-- 테스트 데이터
insert into f_brand values (bno_seq.nextval,'이니스프리','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'더샘','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'클리오','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'더페이스샵','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'헤라','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'시드물','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'바닐라코','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'미샤','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'키스미','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'베네피트','000-0000-0000','인천시 부평구 청천동');
insert into f_brand values (bno_seq.nextval,'웨이크메이크','000-0000-0000','인천시 부평구 청천동');






















drop table f_brand;
create sequence bno_seq increment by 1 start with 1;

select * from f_brand;

select count(*) from f_brand;