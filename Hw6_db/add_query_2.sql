SELECT g.groups_number, s.student_name, sub.subjects_name, m.mark, MAX(m.date_of)
FROM students s
LEFT JOIN marks m ON m.studentId = s.id 
LEFT JOIN groups g ON g.id = s.groupId
LEFT JOIN subjects sub ON sub.id = m.subjectId
WHERE sub.subjects_name = "Geometry" AND g.groups_number = 2;
