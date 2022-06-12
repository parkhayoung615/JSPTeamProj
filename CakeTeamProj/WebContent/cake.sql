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
