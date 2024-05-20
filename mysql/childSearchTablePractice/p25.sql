-- 25.先按部门号大小排序，再依据入职时间由早到晚排序员工信息表 ；
select
	*
from
	emp
	order by dept2 desc, worktime_start asc;