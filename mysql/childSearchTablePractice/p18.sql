-- 18.列出部门员工收入不超过7500，且大于3000的员工年纪及部门编号；
select
	age,
	dept_name
from(
	select * from dept inner join emp on dept.dept1 = emp.dept2
	union
	select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
	union
	select * from dept left join emp on dept.dept1 = emp.dept2 where dept1 is null
) as _
	where incoming <= 7500 and incoming > 3000;