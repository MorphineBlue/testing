-- cross join
select * from S s, SC sc;
select * from S s cross join SC sc;
-- select * from S s, SC sc on s.Sid = sc.Sid; 不能接条件，是两个表的简单组合

-- inner join
select * from S join SC on ;