-- test
delimiter//
drop procedure if exists test;
create procedure test(in x varchar(1000), out y int, inout z float)
begin
-- 指定为out的参数是无法在函数内部被读取使用的，只能被赋值
	select x, y, z;
-- 这里的y是输出参数y
	set y = LENGTH(x); 
	set z = LENGTH(x);
-- 这里的@y是过程内部声明的全局变量
	declare @y int;
	set @y = y + y; 
end
//delimiter;

set @str = 'hello,world';
set @num = 10;
set @digital = 1.1;


select @num, @str;
call test(@str, @num, @digital);
select @str, @num, @digital, @y;
show test variables;