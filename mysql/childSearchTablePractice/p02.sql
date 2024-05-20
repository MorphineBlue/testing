-- 子表用于where条件
select
	sum(incoming)
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务');
-- 合并查询
set @pname = '销售';
select
	dept_name,
	sum(incoming)
from
	(select * from dept inner join emp on dept.dept1 = emp.dept2) as _
	where dept_name =  @pname;  