-- 9、统计sex1和0个总数
select sum(sex) as '1 的个数', (count(sex) - sum(sex)) as '0 的个数'from student;