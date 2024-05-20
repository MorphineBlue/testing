-- 6:请撰写一个存储过程，输出各班学生的平均成绩。
delimiter //
drop procedure if exists average_degree;
create procedure average_degree()
begin
	select avg(Degree) from student group by Roomid;
end
//

call average_degree();