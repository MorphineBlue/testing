-- 选修课名为Maths的学生学号与姓名
select
	S.Sid,
	S.SNAME
from 
	S inner join SC inner join C
on
	S.Sid = SC.Sid and SC.Cid = C.Cid
where
	CNAME = 'Maths';

	