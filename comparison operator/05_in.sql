create database in_operator_example

use in_operator_example

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dob DATE,
    age TINYINT
);

INSERT INTO students (name, dob, age) VALUES
('Aman', '1980-03-15', 46),
('Rahul', '1990-07-22', 36),
('Priya', '2000-11-05', 26),
('Neha', '2010-01-18', 16);

CREATE TABLE courses (
    student_id INT,
    course VARCHAR(100),
    marks INT
);

INSERT INTO courses (student_id, course, marks) VALUES
(1, 'Java', 85),
(2, 'SQL', 90),
(3, 'Python', 78),
(4, 'JavaScript', 88);

select * from students where age = 36 or age = 46

select * from students where age not in (36 , 46)

select * from students where age in (36 , 46)

select * from students where student_id in (select student_id from courses  )