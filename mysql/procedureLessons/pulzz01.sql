-- 1：创建一个存储过程，实现查询表student中的记录信息，并执行存储过程
delimiter //
drop procedure if exists search_student;
create procedure search_student()
begin
	select * from student;
end
//

call search_student();