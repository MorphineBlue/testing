-- 11.求收入最低的员工姓名及所属部门名称：
select
	name,
	dept_name
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	order by incoming asc
	limit 0, 1;