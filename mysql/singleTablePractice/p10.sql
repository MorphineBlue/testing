-- 10、求出所有班级年纪平均数
select class, avg(age) from student where class is not null group by class;