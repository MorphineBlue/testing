-- 
set @pname = 'it技术';
select 
	sid
from
	dept
inner join emp on dept.dept1 = emp.dept2
where dept_name = @pname;