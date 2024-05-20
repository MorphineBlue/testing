-- CREATE TABLE dept
drop table if exists dept;
create table dept(
	deptno int not null primary key auto_increment,
	dname char(20),
	loc char(20)
)default charset = utf8;