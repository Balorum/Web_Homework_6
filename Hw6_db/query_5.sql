SELECT teacher_name, s.subjects_name
FROM teachers t 
LEFT JOIN subjects s ON s.teacherId = t.id
WHERE t.teacher_name = "David Thomas";