-- select sid from emp where dept1 = @res;
-- set @res = 1;
-- select @res;
-- set @res = (select count(dept1) from dept);
-- select @res;

-- set @arr int[5];

drop table if exists testTable;
create table testTable select * from emp;

select
	incoming * 2
from
	testTable;

drop table if exists testTable;


