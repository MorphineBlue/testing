-- deptno -> deptno <- emp -> sal <- grade_level
create or replace view
	de_view
as
	select
		*
	from
		dept join emp 
	on 
		dept.deptno = emp.deptno;

select * 