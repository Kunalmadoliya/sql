CREATE DATABASE distinct_example;
USE distinct_example;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO students (student_id, name, city, course) VALUES
(1, 'Kunal', 'Delhi', 'Java'),
(2, 'Rahul', 'Mumbai', 'Python'),
(3, 'Priya', 'Delhi', 'Java'),
(4, 'Ankit', 'Pune', 'Python'),
(5, 'Neha', 'Mumbai', 'Java'),
(6, 'Rohit', 'Delhi', 'Python'),
(7, 'Aman', 'Pune', 'Java'),
(8, 'Sneha', 'Mumbai', 'Python'),
(9, 'Arjun', 'Delhi', 'Java'),
(10, 'Pooja', 'Pune', 'Python');


select distinct city  , name from  students



select distinct city  , name from  students where student_id > 2

select count( distinct city) from students


select city from students 
group by city
