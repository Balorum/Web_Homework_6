-- Table: groups
DROP TABLE IF EXISTS groups;
CREATE TABLE groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    groups_number INTEGER UNIQUE NOT NULL
);


-- Table: teachers
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    teacher_name VARCHAR(255) UNIQUE NOT NULL
);

-- Table: subjects
DROP TABLE IF EXISTS subjects;
CREATE TABLE subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subjects_name VARCHAR(255) UNIQUE NOT NULL,
    teacherId INTEGER NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES teachers (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: students
DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    student_name VARCHAR(255) UNIQUE NOT NULL,
    groupId INTEGER NOT NULL,
    FOREIGN KEY (groupId) REFERENCES groups (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);

-- Table: marks
DROP TABLE IF EXISTS marks;
CREATE TABLE marks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studentId INTEGER NOT NULL,
    subjectId INTEGER NOT NULL,
    mark INTEGER NOT NULL,
    date_of DATE NOT NULL,
    FOREIGN KEY (studentId) REFERENCES students (id),
    FOREIGN KEY (subjectId) REFERENCES subjects (id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
);