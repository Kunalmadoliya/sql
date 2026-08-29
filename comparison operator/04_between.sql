create database between_opp_example

use between_opp_example

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    dob DATE,
    age TINYINT
);

INSERT INTO students (name, dob, age) VALUES
('Aman', '1980-03-15', 46),
('Rahul', '1985-07-22', 41),
('Priya', '1990-11-05', 35),
('Neha', '1995-01-18', 31),
('Kunal', '2000-06-30', 26),
('Riya', '2005-09-12', 20),
('Arjun', '2008-12-25', 17),
('Vikash', '2010-04-08', 16),
('Anjali', '2015-08-19', 11),
('Rohit', '2020-10-27', 5);


select * from students where age between 15 and 30

select * from students

select name , age from students where dob between  '1995-01-18' and '1980-03-15'

select * from students where age not between 20 and 30