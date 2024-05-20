-- 学生表

CREATE TABLE student2(
id int PRIMARY KEY auto_increment,
name char(20),
sex char(10),
age int(3),
mobile char(20),
class CHAR(10),
english int(10),
chinese int(10),
math int(10)
)ENGINE = INNODB DEFAULT charset = utf8;

INSERT INTO student2 VALUES
(1,'小红','女',23,'13813828824','1719',77,88,98),
(2,'小明','男',23,'13713713711','1720',56,66,55),
(3,'小李','男',23,'15915913911','1719',78,64,87),
(4,'小张','男',23,'15915913912','1720',77,76,77),
(5,'小白','女',24,'15915913913','1719',90,89,98),
(6,'小陈','女',19,'15915913914','1719',84,100,81),
(7,'小钱','女',20,'15915913915',null,45,99,93);

SELECT * FROM student2;