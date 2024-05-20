-- 14.列出每个部门中收入最高的员工姓名，部门名称，收入，并按照收入降序；
select
	name,
	dept_name,
	incoming
from 
	dept inner join emp on dept.dept1 = emp.dept2
where
		incoming in (select max(incoming) from emp group by dept2);