-- 
delimiter //
drop table if exists student;
Create table student
(
	Id varchar(255), 			#学号
	Name varchar(255), 		#姓名
	Roomid varchar(255), 	#班级
	Sex char(1), 					#性别
	Degree varchar(3) 		#成绩
)
//
Insert into student values('1', 'amy', '8', '0', '65');
Insert into student values('2', 'bob', '4', '1', '80');
Insert into student values('3', 'candy', '6', '0', '70');
Insert into student values('4', 'danny', '8', '1', '90');
Insert into student values('5', 'edward', '8', '1', '95');
Insert into student values('6', 'frank', '7', '1', '100');