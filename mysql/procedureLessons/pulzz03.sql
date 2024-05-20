-- 3:创建一个存储过程，根据所给的班级的编号，统计该班人数，并将人数以输出变量返回给用户。
delimiter //
drop procedure if exists total_info;
create procedure total_info(in sid int, out number int)
begin
	set number = (select count(*) from student group by Roomid having Roomid = sid);
end
//

select Roomid from student group by Roomid;
set @res = 0;

call total_info(8, @res);
select @res;