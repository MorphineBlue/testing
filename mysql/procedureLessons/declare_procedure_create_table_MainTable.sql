-- 
drop procedure if exists create_table;
create procedure create_table(in @table_name varchar(20))
begin
	create table if not exists MainTable(
		id int not null primary key auto_increment,
		name char(20)
	)engine = innodb, default charset = utf8;
end