-- 22.列出每一个部门的员工总收入及部门名称；
select
	sum(incoming),
	dept_name
from (
	select * from dept inner join emp on dept.dept1 = emp.dept2
)as _
group by dept1