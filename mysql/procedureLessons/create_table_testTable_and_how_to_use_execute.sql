--
delimiter //
drop procedure if exists create_table_testTable; 
create procedure create_table_testTable()
begin
	drop table if exists testTable; 
	create table testTable(
		id int primary key auto_increment,
		name varchar(10),
		t_date int,
		t_grade int
	)engine = innodb, default charset = utf8; 
	
	insert into testTable VALUES (132154, '盲僧', 20210401, 1);
	insert into testTable VALUES (231654, '盲僧', 20210403, 2); 
	insert into testTable VALUES (236587, '盲僧', 20210405, 3); 
	insert into testTable VALUES (365219, '亚索', 20210401, 1); 
	insert into testTable VALUES (365214, '亚索', 20210403, 2); 
	insert into testTable VALUES (325412, '亚索', 20210405, 3); 
	insert into testTable VALUES (365584, '盖伦', 20210401, 1); 
	insert into testTable VALUES (236588, '盖伦', 20210403, 2); 
	insert into testTable VALUES (326985, '盖伦', 20210408, 3); 
end
//

call create_table_testTable();

delimiter //
drop procedure if exists prepare_example;
create procedure prepare_example(in input_name varchar(100))
begin
	declare table_name varchar(100) default '';
	set table_name = input_name;
	set @str = concat('select * from ', table_name);
	prepare stm from @str;
	execute stm;
	deallocate prepare stm;
	
end
//

set @name = 'testTable';
call prepare_example(@name);