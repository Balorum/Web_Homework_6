SELECT s.student_name, g.groups_number
FROM students s
LEFT JOIN groups g ON s.groupId = g.id
WHERE g.groups_number = 2;