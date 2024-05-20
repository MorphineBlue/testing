-- 8.查出财务部门工资少于3800元的员工姓名
select
	name
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务')
		and incoming < 3000;