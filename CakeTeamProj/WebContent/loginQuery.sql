CREATE TABLE login (
id VARCHAR2(20) NOT NULL, password VARCHAR(50) NOT NULL, passwordOK VARCHAR(50) NOT NULL,
name VARCHAR2(20) NOT NULL, email VARCHAR(100) NOT NULL, phone VARCHAR2(100) NOT NULL,
addr VARCHAR(100) NOT NULL, m_addr VARCHAR2(100) NOT NULL, d_addr VARCHAR2(100) NOT NULL, 
birth VARCHAR2(100), PRIMARY KEY(id)
)


insert into login values('testID1', '1234','1234', 'Gain', 'testE1', '01087370637', 'Icheon', 'ddd', 'dddde', '051107');
insert into login values('testID2', '1234','1234', 'Gain', 'testE1', '01087370637', 'Icheon', 'ddd', 'dddde', '051107');

select * from login;

drop table login;
