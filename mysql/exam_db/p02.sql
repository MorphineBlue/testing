-- 查询姓名以ny结尾的学生姓名及其任课老师姓名
select
	S.SNAME, 
	C.TEACHER
from
	S join SC join C
on
	S.Sid = SC.Sid and SC.Cid = C.Cid
where 
	SNAME like "%ny"
	