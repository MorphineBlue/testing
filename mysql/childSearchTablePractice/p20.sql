-- 20.查找张三所在的部门名称；
select
	dept_name
from
	dept
	where
		dept1 = (select dept2 from emp where name = '张三');