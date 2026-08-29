create database logical_opp_example 

use logical_opp_example


CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dob DATE,
    age TINYINT,
    marks INT,
    city VARCHAR(50)
);

INSERT INTO students (name, dob, age, marks, city) VALUES
('Aman', '1980-03-15', 46, 85, 'Delhi'),
('Rahul', '1990-07-22', 36, 72, 'Mumbai'),
('Priya', '2000-11-05', 26, 91, 'Delhi'),
('Neha', '2010-01-18', 16, 65, 'Jaipur');



select * from students where student_id = 2 or name = "aman"

select * from students where name = "aman" and age = 46 and student_id = 1

select * from students where not student_id = 4


select * from students where name = "aman" and (age = 46 or age = 76)