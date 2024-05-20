-- 27.求出工资在7500到8500之间，年龄最大的员工的姓名和部门名称。
select
	name,
	dept_name,
	incoming
from
	dept inner join emp on dept.dept1 = emp.dept2
	where incoming in (7500, 8500)
	order by age desc
	limit 0, 1;

-- SELECT name,dept_name FROM dept right JOIN emp on dept.dept1=emp.dept2 WHERE age=(SELECT max(age) from emp WHERE incoming BETWEEN 7500 and 8500) and  incoming BETWEEN 7500 and 8500 ;