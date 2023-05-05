SELECT s.student_name, t.teacher_name, AVG(m.mark)
FROM students s 
LEFT JOIN marks m ON m.studentId = s.id
LEFT JOIN teachers t
LEFT JOIN subjects sub ON t.id = sub.teacherId
WHERE t.teacher_name = "Allison Glenn" AND s.student_name = "Matthew Castro"
GROUP BY s.student_name;