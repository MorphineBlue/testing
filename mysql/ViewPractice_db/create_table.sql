--
delimiter //
-- 防止存储过程重名
drop procedure if exists create_table;
-- 创建存储过程
create procedure create_table(in table_name varchar(1024))
begin
	declare tname varchar(1024);			-- 表名
	declare prefix varchar(1024);			-- 创建前缀
	declare suffix varchar(1024);			-- 创建后缀
	declare enginefix varchar(1024);	-- 指定引擎
	declare encodding varchar(1024);	-- 指定表编码格式

	set tname = table_name;

	set prefix = 'create table if not exists ';
	set suffix = '(id int primary key auto_increment)';
	set enginefix = 'engine = innodb,';
	set encodding = 'default charset = utf8;';

	set @for_the_stmt_str = concat(prefix, table_name, suffix, enginefix, encodding);
	-- 	select @for_the_stmt_str;
	prepare stmt from @for_the_stmt_str;
	execute stmt;
	deallocate prepare stmt;
end
//

call create_table('test');