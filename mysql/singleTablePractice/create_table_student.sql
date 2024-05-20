-- create table student
drop table if exists student;

create table student(
	id int(4) not null primary key auto_increment,
	age int(8) null,
	sex int(4) null,
	name varchar(20) null,
	class int(4) null,
	math int(4) null
)default charset = utf8;
