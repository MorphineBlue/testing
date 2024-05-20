-- 
-- 老师的实例， 缺少没有收入的部门select avg(incoming), dept_name from dept left join emp on dept.dept1=emp.dept2 group by dept_name;


select
	if (t.dept1 is null, t.dept2, t.dept1) as dept_id,
	dept_name,
	sid,
	name,
	age,
	worktime_start as hiredate,
	avg(incoming)
from (
	select * from dept inner join emp on dept.dept1 = emp.dept2
	union
	select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
	union
	select * from dept right join emp on dept.dept1 = emp.dept2 where dept1 is null) as t
	group by dept_name;