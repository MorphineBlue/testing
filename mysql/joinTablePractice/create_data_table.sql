-- 学生表
drop table if exists S;
create table S(Sid int(1), SNAME char(20), AGE int(1), SEX int(1));

-- 成绩表
drop table if exists SC;
create table SC(Sid int(1), Cid char(5), GRADE int(20));

-- 课程表
drop table if exists C;
create table C(Cid char(5), CNAME char(20), TEACHER char(20));

insert into S(Sid, SNAME, AGE, SEX) values(1111, 'David', 28, 1);
insert into S(Sid, SNAME, AGE, SEX) values(1112, 'Dany', 23, 0);
insert into S(Sid, SNAME, AGE, SEX) values(1113, 'TOM', 38, 1);
insert into S(Sid, SNAME, AGE, SEX) values(1114, 'Lily', 20, 0);
 
insert into SC(Sid, Cid, GRADE) values(1113, 'C1', '38');
insert into SC(Sid, Cid, GRADE) values(1112, 'C2', '80');
insert into SC(Sid, Cid, GRADE) values(1112, 'C3', '67');
insert into SC(Sid, Cid, GRADE) values(1111, 'C4', '88');
insert into SC(Sid, Cid, GRADE) values(1114, 'C4', '66');

 
insert into C(Cid, CNAME, TEACHER) values('C4', 'Maths', 'zhangsan');
insert into C(Cid, CNAME, TEACHER) values('C3', 'English', 'lisi');
insert into C(Cid, CNAME, TEACHER) values('C2', 'Chinese', 'wangwu');
insert into C(Cid, CNAME, TEACHER) values('C1', 'Computer', 'zhaoliu');
