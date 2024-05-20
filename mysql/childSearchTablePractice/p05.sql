-- 5.找出销售部收入最低的员工的入职时间；
-- 非精确定位
-- select
-- 	worktime_start
-- from
-- 	emp
-- 	where
-- 		dept2 = (select dept1 from dept where dept_name = '财务')
-- 	order by incoming asc
-- 	limit 0, 1;

-- 精确定位了
select
	name
from
	emp
	where incoming = (
		select min(incoming) from
		(select * from emp where dept2 = (select dept1 from dept where dept_name = '财务')) as t);

