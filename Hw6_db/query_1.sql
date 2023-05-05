SELECT s.student_name as "name", AVG(m.mark) as "average mark"
FROM students as s
LEFT JOIN marks m ON s.id = m.studentId
GROUP BY s.student_name
ORDER BY "average mark" DESC
LIMIT 5;