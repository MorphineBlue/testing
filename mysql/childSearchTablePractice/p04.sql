-- 4.财务部门收入超过2000元的员工姓名
-- 子表查询 作用与 where
-- select
-- 	name
-- from
-- 	emp
-- 	where dept2 = (select dept1 from dept where dept_name = '财务')
-- 	and incoming > 2000;

-- 合并法
select
	name,
	incoming
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where
		dept_name = '财务' and incoming > 2000;
	