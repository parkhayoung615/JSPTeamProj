create table cake(
cake varchar2(100) not null,
taste varchar2(100) not null,
color varchar2(100) not null,
text varchar2(200),
want varchar2(200)
);


insert into cake values('cake', 'gain', '1', 'test', 'test1', 'red', 'test1', 'test1');
insert into cake values('cake', 'gain2', '2', 'test2', 'test2', 'pink', 'text2', 'text2');


select * from cake;

-- 케이크 정보에 쓰이는 테이블
CREATE TABLE cakeinfor(
id number not null PRIMARY KEY,
cake varchar2(100) not null,
name varchar2(100) not null,
cell NUMBER not null
);

insert into cakeinfor values(1, 'cake', 'Music is My Life...', 17000);
insert into cakeinfor values(2, 'customcake', 'Happy Birth Day Chochlate Cake', 17000);

drop table cakeinfor;