-- 
select
	stu_no,
	stu_name
from
	student
where
	stu_no in (select stu_no from sc
where
	c_no in (select c_no from course
where
	c_name = '计算机原理'));
	