-- 找出Dany的所有考试后成绩中最高的科目的任课老师姓名
select
	C.TEACHER
from
	SC join C
on
	SC.Cid = C.Cid
where
	SC.GRADE = (
select 
	max(SC.GRADE)
from
	S join SC
on
	S.Sid = SC.Sid
where
	SNAME = 'Dany'
)