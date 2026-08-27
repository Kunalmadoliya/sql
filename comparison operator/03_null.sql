create database null_select_example

use null_select_example



CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    age INT
);

INSERT INTO users (id, name, email, age) VALUES
(1, 'Aman', 'aman@gmail.com', 21),
(2, 'Rahul', NULL, 22),
(3, 'Kunal', 'kunal@gmail.com', NULL),
(4, 'Priya', NULL, NULL);

select * from users where name is not null 

select * from users where email is not null 

select * from users where email is not null  and name  is not null 