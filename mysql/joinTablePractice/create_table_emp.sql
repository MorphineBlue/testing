--
drop table if exists emp;
CREATE table emp (
	sid VARCHAR(6),
	name VARCHAR(20),
	age TINYINT(2),
	worktime_start VARCHAR(10),
	incoming SMALLINT(10),
	dept2 VARCHAR(6)
)default charset=utf8;

insert into emp VALUES ('1789','张三',35,'1980/1/1',4000,'101');
insert into emp VALUES ('1674','李四',32,'1983/4/1',3500,'101');
insert into emp VALUES ('1776','王五',24,'1990/7/1',2000,'101');
insert into emp VALUES ('1568','赵六',57,'1970/10/11',7500,'102');
insert into emp VALUES ('1564','荣七',64,'1963/10/11',8500,'102');
insert into emp VALUES ('1879','牛八',55,'1971/10/20',7300,'103');
insert into emp VALUES ('1880','刘九',64,'1971/10/20',9000,'105');