-- 合并后查询部门平均收入
drop table if exists total;
create table total
select * from dept inner join emp on dept.dept1 = emp.dept2
union
select * from dept left join emp on dept.dept1 = emp.dept2 where name is null
union
select * from dept right join emp on dept.dept1 = emp.dept2 where dept1 is null;

