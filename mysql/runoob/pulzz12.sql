SELECT
    class,
    COUNT(class)
FROM
    student2
GROUP BY
    class;