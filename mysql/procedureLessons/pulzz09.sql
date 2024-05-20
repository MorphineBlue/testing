-- 9:请撰写一个存储过程，求1+2+3+…x的值。
-- 请撰写一个存储过程，求0+2+4+…x的值。
-- 请撰写一个存储过程，求1+3+5+…x的值。
delimiter //
drop procedure if exists calculation;
create procedure calculation(in x int, inout res int, in started int, in step int)
begin
	-- 方法一 循环
-- 	declare i int;
-- 	set i = started;
-- 	while i <= x do
-- 		-- select i;
-- 		set res = res + i;
-- 		set i = i + step;
-- 	end while;

	-- 方法二 直接计算
-- 	-- 公式: 1 2 3 4  n = 4 step = 1 started = 0 
	declare num int default (select ceil(x / step));
	set res = num * (started + step) + num * step * (num - 1) / 2;
end
//

set @num = 5;
-- 
set @res = 0;
call calculation(@num, @res, 1, 1);
select @res as result;

set @res = 0;
call calculation(@num, @res, 1, 2);
select @res as result;

set @res = 0;
call calculation(@num, @res, 0, 2);
select @res as result;