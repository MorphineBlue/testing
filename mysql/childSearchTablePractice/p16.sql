-- 16.查询财务部低于平均收入的员工号与员工姓名：（全部员工平均收入）
set @average = 0;
select avg(incoming) into @average from emp;
select @average;

select
	sid,
	name
from
	emp
	where
		dept2 = (select dept1 from dept where dept_name = '财务')
		and 
		incoming < @average;