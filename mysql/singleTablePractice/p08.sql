-- 8、求年纪最大的班级并显示班级年龄和姓名分数
select class, age, name, math from student
where class = (
	select class from student
	order by age desc
	limit 0, 1
);

