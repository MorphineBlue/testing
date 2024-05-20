--
select
	c_name
from
	course
where
	c_no in (select c_no from sc
where 
	stu_no in (select stu_no from student
where 
	stu_name = '小明'));