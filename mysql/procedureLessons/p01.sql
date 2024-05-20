-- 面试题：根据student学生表去写
-- 1.当传入的参数（大于0）小于等于表里面数据的条数时，则根据分组显示班级的总成绩
-- 2.当传入的参数大于表里面数据的条数时，则统计表里面的数据有多少条
-- 3.当传入其他，则查询表里面的所有数据
delimiter //
drop procedure if exists jugment;
create procedure jugment(in num int)
begin
	declare idnum int;
	set idnum = (select count(id) from student);
	if num > 0 and num < idnum then
		select
			class,
			sum(math) as math,
			sum(english) as english,
			sum(chinese) as chinese, 
			sum(math + chinese + english) as total from student group by class;
	elseif num > idnum then
		select idnum as total_number;
	else
		select * from student;
	end if;
end
//

call jugment(6);