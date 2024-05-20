-- 求数学分最小的班级 ID年龄和姓名
select
	id, age, name, class, math
from
	student
where class = (
	select
		class
	from
		student
	order by math
	limit 0, 1
);