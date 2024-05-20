-- 10.找出销售部门中年纪最大的员工的姓名
select
	name
from 
	emp
where
	(dept2, incoming) in (select dept2, max(incoming) from
	dept as d
inner join
	emp as e
on
	d.dept1 = e.dept2
where dept_name = '销售');