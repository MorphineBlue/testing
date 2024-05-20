-- 23.列出部门员工收入大于7000的员工号，部门名称；
select
	sid,
	dept_name
from (
	select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where incoming > 7000