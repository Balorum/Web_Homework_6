SELECT s.student_name as "name", AVG(m.mark) as "average mark", sub.subjects_name as "subject"
FROM students as s
LEFT JOIN marks m ON s.id = m.studentId
LEFT JOIN subjects sub ON sub.id = m.subjectId 
WHERE m.subjectId = 3
GROUP BY s.student_name
ORDER BY "average mark" DESC
LIMIT 1;