import sqlite3


def execute_query(sql: str) -> list:
    with sqlite3.connect("create_tables.db") as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


sql = """SELECT t.teacher_name, s.subjects_name, AVG(m.mark) 
FROM teachers t 
INNER JOIN subjects s ON s.id = t.id
INNER JOIN marks m ON m.subjectId = s.id
GROUP BY t.teacher_name;"""

print(execute_query(sql))
