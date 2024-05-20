-- 统计每个班级人数
select class, count(class) as '人数' from student where class is not null group by class;