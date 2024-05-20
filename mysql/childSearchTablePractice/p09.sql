-- 9.求财务部门最低工资的员工姓名；
select
	name
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务')
	order by incoming asc
	limit 0, 1;