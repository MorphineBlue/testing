drop table if exists sc;
create table sc(
sc_no int,
stu_no int,
c_no int,
score int(3)
)DEFAULT  charset=utf8;

insert into sc values
	(1, 1, 1, 80),
	(2, 2, 2, 90),
	(3, 2, 1, 85),
	(4, 2, 3, 70),
	(5, 2, 4, 95),
	(6, 2, 5, 89);