-- 查询出学习成绩及格以上的学生姓名与成绩 
select 
	SNAME, GRADE
from
	SC join S on SC.sid = S.sid
where
	GRADE > 60;
	