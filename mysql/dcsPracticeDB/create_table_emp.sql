-- create table emp
drop table if exists emp;

create table emp (
	empno int not null primary key auto_increment,
	ename char(20),
	job char(10),
	mgr int,
	hiredate date,
	sal int,
	comm int null,
	deptno int,
	foreign key(deptno) references dept(deptno)
)default charset = utf8;
