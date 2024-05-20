-- 请问考试不及格的考生姓名以及科目名称
select
	S.SNAME,
	C.CNAME
from
	S join SC join C
on
	S.Sid = SC.Sid and SC.Cid = C.Cid
where
	SC.GRADE < 60;
