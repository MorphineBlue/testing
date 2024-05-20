-- 1833班数学成绩最大的ID年龄和姓名
select id, age, name, math as '最高分' from student 
where class = 1833 
order by math asc
LIMIT 0, 1;

-- select id, age, name, math as '最高分', class from student 
-- where class = 1833;