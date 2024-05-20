-- 15.求出财务部门收益最高的俩位员工的姓名，工号，收益
select
	name,
	sid,
	incoming
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务')
	order by incoming desc
	limit 0, 2;