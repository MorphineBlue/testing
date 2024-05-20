-- 
create table student(
stu_no int,
stu_name varchar(10),
sex char(1),
age int(3),
edit varchar(20)
)DEFAULT  charset=utf8;

insert into student values
(1, 'wang', '男', 21, 'hello'),
(2, '小明', '女', 22, 'haha2'),
(3, 'hu', '女', 23, 'haha3'),
(4, 'li', '男', 25, 'haha4');