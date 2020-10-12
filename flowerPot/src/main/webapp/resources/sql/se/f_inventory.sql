create table f_inventory(
	cno number(38),   --화장품 번호
	name varchar2(1000),  -- 화장품 이름
	proOption varchar2(100), --상품 색상, 사이즈
	stockNumber number(38),-- 기존 상품 수량 
	primary key(cno) 
	);

drop table f_inventory;

select * from f_inventory ;

insert into f_inventory values (111,'보라스킨','blue/s',3);
insert into f_inventory values (222,'초록스킨','green/M',4);
insert into f_inventory values (333,'노란스킨','yellow/L',1);
insert into f_inventory values (444,'빨간스킨','Red/M',2);

