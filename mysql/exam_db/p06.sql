-- 请问总分在80分以上的学生姓名
select
	S.SNAME,
	S.Sid
from
	S join SC join C
on 
	S.Sid = SC.Sid and SC.Cid = C.Cid
group by 
	S.Sid
having
	sum(SC.GRADE) > 80;