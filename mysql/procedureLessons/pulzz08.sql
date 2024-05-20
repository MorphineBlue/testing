-- 8：撰写一个存储过程，根据用户输入的学号，输出学生性别，成绩两个参数放到新表temp中Create table temp(Sex varchar(255),Degree varchar(255));
delimiter //
drop procedure if exists output_table;
create procedure output_table(in sid int)
begin
	drop table if exists temp;
	-- 方案零
	create table temp as (select Sex, Degree from student where Id = sid);
	-- 方案一
-- 	insert into temp select Sex, Degree from student;
	-- 方案二， 指定字段
-- 	insert into temp (Sex, Degree) select Sex, Degree from student where Id = sid;
	
	-- select Sex, Degree
end
//

call output_table(7);
select * from temp;