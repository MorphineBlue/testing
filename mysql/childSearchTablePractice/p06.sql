-- 6.找出年龄小于平均年龄的员工的姓名，ID和部门名称（所有员工平均年龄）
select
	name,
	sid,
	dept_name
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where
		age < (select avg(age) from emp);