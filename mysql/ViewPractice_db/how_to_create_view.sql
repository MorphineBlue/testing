-- 创建视图的语法
/*
create [or replace] [algorithm = {undefined | merge | temptabl}]
view <view_name> [(column_list)]
as select_statement
[with [cascaded | local] check option]

algorithm：视图选择算法
view_name：自定的视图名
column_list：指定视图中各个属性的名词，
select_statment：一条查询语句
[with [cascaded | local] check option]：表示更新视图时要保证在该视图的权限范围内
*/

create or replace view test_view as select * from test;
select * from test_view;

alter view test_view as select * from test;
