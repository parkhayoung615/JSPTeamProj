create table customCake(
name varchar2(100) not null,
phoneNum int not null,
address varchar2(100) not null,
refund varchar2(100),
cake varchar2(100) not null,
design varchar2(100) not null,
need varchar2(200)
)


insert into customCake values('gain', 010, 'Ichean', 'test352', 'a', 'design1', 'test1');
insert into customCake values('gain2', 011, 'Seaul', 'test123', 'b', 'design2', 'test2');


select * from customCake;
