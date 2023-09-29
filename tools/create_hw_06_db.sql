DROP TABLE IF EXISTS study_groups;
CREATE TABLE study_groups (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name STRING UNIQUE
    );

DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    fullname STRING UNIQUE
    );

DROP TABLE IF EXISTS students;
CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    fullname STRING,
    group_id REFERENCES study_groups (id)
    );

DROP TABLE IF EXISTS disciplines;
CREATE TABLE disciplines (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name STRING,
    teacher_id REFERENCES teachers (id)
    );

DROP TABLE IF EXISTS grades;        
CREATE TABLE grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    discipline_id REFERENCES disciplines (id),
    student_id REFERENCES students (id),
    grade INTEGER,
    date_of DATE
    );