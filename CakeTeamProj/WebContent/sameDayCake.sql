create table sameDayCake(
name varchar2(100) not null,
refund varchar2(100) not null,
sell varchar2(100) not null,
taste varchar2(100) not null,
color varchar2(100) not null,
text varchar2(200),
want varchar2(200)
);


insert into sameDayCake values('gunyoung', '1', 'test', 'test1', 'red', 'test1', 'test1');
insert into sameDayCake values('gunyoung2', '2', 'test2', 'test2', 'pink', 'text2', 'text2');


select * from sameDayCake;

drop table sameDayCake;