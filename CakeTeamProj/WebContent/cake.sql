create table cake(
name varchar2(100) not null,
phoneNum int not null,
address varchar2(100) not null,
refund varchar2(100),
cake varchar2(100) not null
);


insert into cake values('gain', 010, 'Ichean', 'test352', 'a');
insert into cake values('gain2', 011, 'Seaul', 'test123', 'b');


select * from cake;