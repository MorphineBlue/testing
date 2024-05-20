-- 
drop table if exists total3;
create table total3
select 
	if(temp.dept1 is null, dept2, dept1) as dept_id,
	dept_name,	-- 不需要只是用来鉴别变得合并是否成功
	sid,
	name,	-- 不需要只是用来鉴别变得合并是否成功
	age,	-- 不需要只是用来鉴别变得合并是否成功
	worktime_start as hiredate,
	incoming from 
(select * from dept inner join emp on dept.dept1 = emp.dept2
union
select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
union
select * from dept right join emp on dept.dept1 = emp.dept2 where dept1 is null) as temp;