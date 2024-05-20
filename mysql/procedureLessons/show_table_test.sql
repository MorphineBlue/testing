delimiter //
drop procedure if exists show_table;
create procedure show_table(table_name varchar(50))
begin
	set @str = 'show tables';
	EXECUTE('select 9');
end
//delimiter;

call show_table('hello,world');
