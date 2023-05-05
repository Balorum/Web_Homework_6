SELECT stud.student_name, t.teacher_name, s.subjects_name
FROM students stud 
LEFT JOIN subjects s
LEFT JOIN teachers t ON t.id = s.teacherId 
WHERE t.teacher_name = "Sue Lucas" AND stud.student_name = "Mrs. Elizabeth Lewis"
ORDER BY s.subjects_name;