--
select 
	if(temp.dept1 is null, dept2, dept1) as dept_id,
	dept_name,
	sid, name,
	age,
	worktime_start as hiredate,
	incoming from (
select * from dept inner join emp on dept.dept1 = emp.dept2
union
select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
union
select * from dept right join emp on dept.dept1 = emp.dept2 where dept1 is null
) as temp;


