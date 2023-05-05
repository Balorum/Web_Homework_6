SELECT g.groups_number, s.student_name, sub.subjects_name, m.mark, m.date_of
FROM students s
LEFT JOIN groups g ON s.groupId = g.id
LEFT JOIN marks m ON s.id = m.studentId 
LEFT JOIN subjects sub ON sub.id = m.subjectId
WHERE g.groups_number = 2 AND sub.subjects_name = "Algebra";