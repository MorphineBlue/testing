-- 19.求入职于20世纪70年代的员工所属部门名称；
select
	dept_name
from
	dept
	where
		dept1 in (select dept2 from emp where worktime_start > '1970-1-1' and worktime_start < '1979-12-31');