-- 7:请撰写一个存储过程,能根据用户输入的学号，输出学生的姓名、性别到两个参数变量中，以供其它程序使用。
delimiter //
drop procedure if exists output_info;
create procedure output_info(in sid int, out out_name varchar(255), out out_sex int)
begin
	set out_name = (select Name from student where Id = sid);
	set out_sex = (select Sex from student where Id = sid);
end
//
set @sid = 1;
set @sname = '';
set @ssex = 0;
call output_info(@sid, @sname, @ssex);
select @sname, @ssex;