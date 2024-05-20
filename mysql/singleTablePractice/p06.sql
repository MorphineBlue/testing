-- 6、求1833班数学分总和
select class, sum(math) from student where class = 1833 group by class;