--
select
	avg(incoming),
	dept_name
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	group by dept_name;