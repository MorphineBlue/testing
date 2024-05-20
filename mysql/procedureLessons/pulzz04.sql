-- 4：创建一个存储过程，根据所给的学号查询该学生的考试分数是否超过了85分， 若超过则输出“ 考得好”， 否则输出 “考得不好”。
delimiter //
drop procedure if exists search_degree;
create procedure search_degree(in sid int)
begin
	declare temp int default (select Degree from student where Id = sid);
-- select temp;
	if temp > 85 then
		select '考得好';
	else
		select '考得不好';
	end if;
end
//

call search_degree(4);
call search_degree(1);