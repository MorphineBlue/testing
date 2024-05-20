-- tota3
-- select dept_id, sum(incoming) from total3
-- group by dept_id;
--
SELECT
	dept.dept_name,
	sum(incoming)
FROM
	dept
	INNER JOIN emp ON dept.dept1 = emp.dept2
	WHERE
			dept_name = '财务';

