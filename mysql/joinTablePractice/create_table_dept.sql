-- 
drop table if exists dept;
CREATE table dept(
	dept1 VARCHAR(6),
	dept_name VARCHAR(20)
) default charset=utf8;

INSERT into dept VALUES ('101','财务');
INSERT into dept VALUES ('102','销售');
INSERT into dept VALUES ('103','IT技术');
INSERT into dept VALUES ('104','行政');