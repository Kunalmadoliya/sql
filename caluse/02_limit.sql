
CREATE DATABASE limit_example;

USE limit_example;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age TINYINT,
    city VARCHAR(50),
    marks INT
);

INSERT INTO students (name, age, city, marks) VALUES
('Aman', 21, 'Delhi', 85),
('Rahul', 23, 'Mumbai', 72),
('Priya', 20, 'Jaipur', 91),
('Neha', 22, 'Delhi', 78),
('Kunal', 21, 'Indore', 88),
('Riya', 24, 'Pune', 69),
('Arjun', 22, 'Mumbai', 95),
('Anjali', 20, 'Delhi', 81),
('Rohit', 23, 'Bhopal', 76),
('Sneha', 21, 'Pune', 89);



select * from students
where age > 17 
order by marks asc
limit 3
 