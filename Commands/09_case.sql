CREATE DATABASE case_example;
USE case_example;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO users (user_id, name, age, city, salary) VALUES
(1, 'Kunal', 21, 'Delhi', 45000.00),
(2, 'Rahul', 17, 'Mumbai', 25000.00),
(3, 'Priya', 25, 'Delhi', 60000.00),
(4, 'Ankit', 30, 'Pune', 75000.00),
(5, 'Neha', 19, 'Mumbai', 35000.00),
(6, 'Rohit', 16, 'Delhi', 18000.00),
(7, 'Aman', 28, 'Pune', 55000.00),
(8, 'Sneha', 23, 'Mumbai', 50000.00),
(9, 'Arjun', 35, 'Delhi', 90000.00),
(10, 'Pooja', 20, 'Pune', 30000.00);


select * from users ;

select age , 
case  
when age between  15 and 20 then "do work"
when age between 21 and 30 then "do job" 
when age > 30 then "business"
end  as ageName
from users ;


SELECT 
    city,
    AVG(CASE
        WHEN salary > 5000 THEN salary
        ELSE null
    END) AS avg_salary
FROM
    users
GROUP BY city;

