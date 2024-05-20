-- 26.求出财务部门工资最高员工的姓名和员工号
select
	name,
	sid
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务')
	order by incoming desc
	limit 0, 1;