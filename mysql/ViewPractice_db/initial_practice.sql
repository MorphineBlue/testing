-- 创建表
drop table if exists dept;
drop table if exists emp;
call create_table('dept');
call create_table('emp');
-- call create_table('dept');
select * from dept;
select * from emp;

-- 添加字段
alter table dept change id deptno int;
alter table dept add dname varchar(20);
alter table dept add loc varchar(20);

alter table emp change id empno int;
alter table emp add ename varchar(20);
alter table emp add job varchar(20);
alter table emp add mgr int;
alter table emp add hiredate date;
alter table emp add	sal float;
alter table emp add COMM float;
alter table emp add deptno int;

-- alter table ?? change id 

-- 添加数据
insert into dept values ();

insert into emp values(1001, '甘宁',  '文员',  1013, '2000-12-12', 8000.00,null,20);
insert into emp values(1002, '黛绮丝',  '销售员',  1006, '2001-02-20', 16000.00,3000.00,30);
insert into emp values(1003, '殷天正',  '销售员',  1006, '2001-02-22', 12500.00,5000.00,30);
insert into emp values(1004, '刘备',  '经理',  1009, '2001-04-02', 29750.00,null,20);
insert into emp values(1005, '谢逊',  '销售员',  106, '2001-09-28', 12500.00,14000,30);
insert into emp values(1006, '关羽',  '经理',  1009, '2001-05-01', 28500.00,null,30);
insert into emp values(1007, '张飞',  '经理',  1009, '2001-09-01', 24500.00,null,10);
insert into emp values(1008, '诸葛亮',  '分析师',  1004, '2007-04-19', 30000.00,null,20);
insert into emp values(1009, '曹阿牛',  '董事长',  NULL, '2001-11-17', 50000.00,null,10);
insert into emp values(1010, '韦一笑',  '销售员',  1006, '2001-09-08', 15000.00,0.00,30);
insert into emp values(1011, '周泰',  '文员',  1008, '2007-05-23', 11000.00,null,20);
insert into emp values(1012, '程普',  '文员',  1006, '2001-12-03', 9500.00,null,30);
insert into emp values(1013, '庞统',  '分析师',  1004, '2001-12-03', 30000.00,null,20);
insert into emp values(1014, '黄盖',  '文员',  1007, '2002-01-23', 13000.00,null,10);