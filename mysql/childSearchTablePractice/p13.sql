-- 13.求员工收入小于4000元的员工部门编号及其部门名称
select
	if (dept1 is null, dept2, dept1) as detp_id,
	dept_name
from (
	select * from dept inner join emp on dept.dept1 = emp.dept2
	union
	select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
	union
	select * from dept left join emp on dept.dept1 = emp.dept2 where dept1 is null
) as _
	where incoming < 4000;
	