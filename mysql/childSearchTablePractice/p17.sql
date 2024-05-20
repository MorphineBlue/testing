-- 17.列出部门员工数大于1个的部门名称；
-- (select dept2, count(dept2) as number from emp group by dept2 having number > 1) as _
select
	dept_name
from
	dept as d
inner join 
	(select dept2, count(dept2) as number from emp group by dept2 having number > 1) as _
on
	d.dept1 = _.dept2;