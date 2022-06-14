create table cake(
id VARCHAR2(20) NOT NULL,
taste varchar2(100) not null,
color varchar2(100) not null,
text varchar2(200),
want varchar2(200),
cake number
);


insert into cake values('testID1', 'choco', 'yellow', 'test', 'want', 1);


select * from cake;

drop table cake;

-- 케이크 정보에 쓰이는 테이블
CREATE TABLE cakeinfor(
id number not null PRIMARY KEY,
cake varchar2(100) not null,
name varchar2(100) not null,
cell NUMBER not null,
img varchar2(100) not null
);

insert into cakeinfor values(1, 'Cake', 'Kiss My Cake', 17000, 'cake1.png');
insert into cakeinfor values(2, 'Cake', 'My Life...', 22000, 'cake2.png');
insert into cakeinfor values(3, 'Custom Cake', 'Yummy Cake', 23000, 'cake3.png');
insert into cakeinfor values(4, 'Cake', 'WHAT THE HELL CAKE?!?!', 16000, 'cake16.png');
insert into cakeinfor values(5, 'Custom Cake', 'Music is My Life...', 32000, 'cake17.png');
insert into cakeinfor values(6, 'Custom Cake', 'Stone Cake', 25000, 'cake18.png');
insert into cakeinfor values(7, 'Cake', 'Flower Cake', 22000, 'cake12.png');

select * from cakeinfor;

drop table cakeinfor;

select id, cake, name, TO_CHAR(cell, '999,999,999,999,999') AS price, img from cakeinfor;

SELECT * FROM cake l, cakeinfor c where l.id = '1';

select c.name, u.want, u.text, u.color, u.cake from cakeinfor c, cake u where c.id = 1 AND c.id = u.cake;