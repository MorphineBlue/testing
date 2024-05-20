-- 显示出参加考试的学生的学号和姓名
select
	S.Sid,
	S.SNAME
from
	S join SC join C 
on 
	S.Sid = SC.Sid and SC.Cid = C.Cid
where
	GRADE is not null;