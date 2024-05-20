-- 7.列出每个部门收入总和高于9000的部门名称
select
	dept_name
from
	dept
	where
		dept1 in (select dept2 from (select dept2 from emp group by dept2 having sum(incoming) > 9000) as _);