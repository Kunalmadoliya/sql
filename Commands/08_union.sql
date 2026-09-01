
CREATE DATABASE union_example;
USE union_example;

CREATE TABLE students_2025 (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    course VARCHAR(50)
);

CREATE TABLE students_2026 (
    student_id INT,
    name VARCHAR(50),
    city VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO students_2025 (student_id, name, city, course) VALUES
(1, 'Kunal', 'Delhi', 'Java'),
(2, 'Rahul', 'Mumbai', 'Python'),
(3, 'Priya', 'Delhi', 'Java'),
(4, 'Ankit', 'Pune', 'Python'),
(5, 'Neha', 'Mumbai', 'Java'),
(6, 'Rohit', 'Delhi', 'Python');

INSERT INTO students_2026 (student_id, name, city, course) VALUES
(3, 'Priya', 'Delhi', 'Java'),
(4, 'Ankit', 'Pune', 'Python'),
(7, 'Aman', 'Delhi', 'Java'),
(8, 'Sneha', 'Mumbai', 'Python'),
(9, 'Arjun', 'Pune', 'Java'),
(5, 'Neha', 'Mumbai', 'Java');



select name, city, course from students_2025
union
select name, city, course from students_2026





select * from students_2025
union all
select * from students_2026






