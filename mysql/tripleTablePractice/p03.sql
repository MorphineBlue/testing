-- 
select
	stu_no,
	stu_name
from
	student
where
	stu_no = (select stu_no from sc
group by
	stu_no
having
	5 = count(stu_no));