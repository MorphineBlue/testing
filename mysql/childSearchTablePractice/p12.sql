-- 12.求李四的收入及部门名称
select
	incoming,
	dept_name
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where
		name = '李四';