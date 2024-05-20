-- 24.找出哪个部门还没有员工入职；
select
	dept_name
from
	dept
	where
		dept1 not in (select dept2 from emp)