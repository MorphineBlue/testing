-- 实验5:创建一个存储过程，对表student增加两条记录。1，已建表，在插入数据
delimiter //
drop procedure if exists insert_into;
create procedure insert_into(
	sid int,
	sname varchar(255),
	sroomid int,
	ssex int,
	sdegree int
)
begin
	insert into student values(sid, sname, sroomid, ssex, sdegree);
end
//

call insert_into(7, 'ISHOWMEET', 8, 55, -100);
call insert_into(8, 'XQC', 1, 1, 0);