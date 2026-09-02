CREATE DATABASE subquery_type_example;

USE subquery_type_example;

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT INTO department (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Sales'),
(4, 'Finance'),
(5, 'HR');

INSERT INTO users (user_id, user_name, salary, department_id) VALUES
(1, 'Rahul', 72000, 3),
(2, 'Neha', 45000, 1),
(3, 'Aman', 89000, 5),
(4, 'Priya', 51000, 2),
(5, 'Vikas', 63000, 4),
(6, 'Anjali', 38000, 1),
(7, 'Rohit', 97000, 3),
(8, 'Sneha', 56000, 5),
(9, 'Karan', 44000, 2),
(10, 'Pooja', 78000, 4),
(11, 'Nikhil', 69000, 1),
(12, 'Simran', 35000, 3),
(13, 'Varun', 82000, 2),
(14, 'Meera', 59000, 5),
(15, 'Sahil', 47000, 4),
(16, 'Isha', 93000, 1),
(17, 'Manish', 61000, 3),
(18, 'Tanya', 40000, 2),
(19, 'Akash', 75000, 5),
(20, 'Riya', 52000, 4);





select department_id,  avg(salary) from users 
group by department_id;

SELECT d1.user_name ,   d.department_name , salary
FROM users d1
 JOIN department d
        ON d1.department_id = d.department_id
WHERE salary > (
    SELECT  AVG(d2.salary)
    FROM users d2
    WHERE d1.department_id = d2.department_id
);


SELECT u1.*, d1.department_name
FROM users u1
JOIN department d1
    ON u1.department_id = d1.department_id
WHERE u1.salary > (
    SELECT AVG(salary)
    FROM users
    WHERE department_id IN (
        SELECT department_id
        FROM users
        GROUP BY department_id
        HAVING COUNT(*) > 30000
    )
);
