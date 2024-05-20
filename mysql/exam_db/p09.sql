-- 请问TOM参加了哪一门科目的考试
select
	C.CNAME
from
	S join SC join C
on
	S.Sid = SC.Sid and SC.Cid = C.Cid
where
	S.SNAME = 'TOM';