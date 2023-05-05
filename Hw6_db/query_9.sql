SELECT stud.student_name, s.subjects_name
FROM subjects s 
LEFT JOIN students stud
LEFT JOIN marks m ON m.studentId = stud.id
WHERE stud.student_name = "Christopher Chang"
GROUP BY s.subjects_name;