-- 选修课号为C2和C4的学生学号
select
	SC.Sid
from
	SC
where
	SC.Cid = 'C2' or SC.Cid = 'C4';