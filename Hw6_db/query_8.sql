SELECT t.teacher_name, s.subjects_name, AVG(m.mark) 
FROM teachers t 
INNER JOIN subjects s ON s.id = t.id
INNER JOIN marks m ON m.subjectId = s.id
GROUP BY t.teacher_name;