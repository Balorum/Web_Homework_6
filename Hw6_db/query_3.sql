SELECT g.groups_number as "group", sub.subjects_name as "subject", AVG(m.mark) as "average mark"
FROM groups g 
INNER JOIN students s 
LEFT JOIN marks m ON m.studentId = s.id 
LEFT JOIN subjects sub ON m.subjectId  = sub.id 
WHERE s.groupId = 1 AND sub.subjects_name = "Algebra";