-- 21.列出每一个部门中年纪最大的员工姓名，部门名称；
-- select
-- 	name,
-- 	dept_name
-- from (
-- 	select * from dept inner join emp on dept.dept1 = emp.dept2
-- 	union
-- 	select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
-- 	union
-- 	select * from dept left join emp on dept.dept1 = emp.dept2 where dept1 is null
-- ) as _
-- 	where
-- 		age in (select max(age) from emp group by dept2)

select
	name,
	dept_name
from 
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where age in (select max(age) from emp group by dept2)
	
	