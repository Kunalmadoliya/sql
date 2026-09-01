CREATE DATABASE subquery_example;
USE subquery_example;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(10,2)
);

INSERT INTO employees (employee_id, name, department, age, salary) VALUES
(1, 'Kunal', 'IT', 21, 45000.00),
(2, 'Rahul', 'HR', 25, 35000.00),
(3, 'Priya', 'IT', 28, 60000.00),
(4, 'Ankit', 'Sales', 30, 50000.00),
(5, 'Neha', 'HR', 24, 35000.00),
(6, 'Rohit', 'IT', 26, 55000.00),
(7, 'Aman', 'Sales', 22, 40000.00),
(8, 'Sneha', 'IT', 29, 60000.00),
(9, 'Arjun', 'Sales', 35, 70000.00),
(10, 'Pooja', 'HR', 27, 45000.00);




 select employees.* , 
 (select avg(age) from employees) as average_age , 
 age - (select avg(salary) from employees) as average_sal
 from employees;



 select employees.* , 
 (select avg(age) from employees) as average_age , 
 age - (select avg(salary) from employees) as average_sal
 from employees
 where age >  ( select avg(age) from employees)  
