-- 2:创建一个存储过程，根据给定的学生学号返回该学生的姓名
delimiter //
drop procedure if exists return_name;
create procedure return_name(in sid int, out res varchar(1024))
begin
	set res = (select Name from student where Id = sid);
end
//
-- select Id from student;
set @sid = 4;
set @res = '';

call return_name(@sid, @res);
select @res;
