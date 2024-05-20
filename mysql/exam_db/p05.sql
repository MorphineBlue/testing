-- 请问没有参加考试的学生的姓名及其学号
select
	S.SNAME,
	S.Sid
from
	S join SC join C 
on 
	S.Sid = SC.Sid and SC.Cid = C.Cid
where
	GRADE is null;