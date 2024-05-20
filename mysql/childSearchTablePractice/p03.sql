-- 3.It技术部入职员工的员工号
-- 合并法
select
	sid
from
	(select * from dept as d inner join emp as e on d.dept1 = e.dept2) as _
	where dept_name = 'it技术';

-- 子查询法
select
	sid
from
	emp
	where
		dept_name = (select dept_name from dept where dept_name = 'it技术';