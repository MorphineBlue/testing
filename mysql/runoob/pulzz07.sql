SELECT class, AVG(english) FROM student2 GROUP BY class HAVING AVG(english) > 80;
