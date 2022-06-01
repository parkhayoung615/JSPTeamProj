create table login(
id varchar2(100),
pwd varchar2(100),
name varchar2(100),
email varchar2(100),
address varchar2(100),
phoneNum number(100),
birth date
)


insert into login values('testID1', '123ab', 'Gain', 'testE1', 'Icheon', '01087370637', '051107');
insert into login values('testID2', '1234ab', 'Jaemin', 'testE2', 'Seaul', '01012345678', '000813');

select * from login;