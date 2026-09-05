

CREATE DATABASE user_defined_example;

USE user_defined_example;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary INT,
    city VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO users (user_id, name, age, salary, city, department) VALUES
(1, 'Aarav', 24, 45000, 'Delhi', 'IT'),
(2, 'Riya', 29, 62000, 'Mumbai', 'HR'),
(3, 'Karan', 31, 75000, 'Pune', 'Finance'),
(4, 'Ananya', 26, 51000, 'Jaipur', 'Marketing'),
(5, 'Rahul', 35, 88000, 'Delhi', 'IT'),
(6, 'Neha', 28, 58000, 'Bangalore', 'Sales'),
(7, 'Vikram', 42, 95000, 'Chennai', 'Finance'),
(8, 'Priya', 23, 40000, 'Kolkata', 'HR'),
(9, 'Arjun', 38, 72000, 'Hyderabad', 'IT'),
(10, 'Sneha', 30, 67000, 'Mumbai', 'Marketing'),
(11, 'Rohan', 27, 54000, 'Delhi', 'Sales'),
(12, 'Isha', 33, 81000, 'Pune', 'Finance'),
(13, 'Aditya', 25, 47000, 'Jaipur', 'IT'),
(14, 'Meera', 36, 90000, 'Bangalore', 'HR'),
(15, 'Nikhil', 41, 98000, 'Chennai', 'Sales');



select * from users


select concat("user-" , name ) as user_name from users

DELIMITER //

CREATE FUNCTION concatineName(
    postfix VARCHAR(50)
)
RETURNS VARCHAR(100)
deterministic
BEGIN
    RETURN CONCAT('user-', postfix);
END //

DELIMITER ;


select concatineName(name) as user_nmae FROM users 


select avg(age) from users



DELIMITER //

CREATE FUNCTION concatineAge()
RETURNS FLOAT
NOT DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avgAge FLOAT;

    SELECT AVG(age)
    INTO avgAge
    FROM users;

    RETURN avgAge;
END //

DELIMITER ;



drop function concatineAge

select concatineAge() as avg_age , users.*  from users




DELIMITER //

CREATE FUNCTION isAdult(
    age INT
)
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE minor_adult VARCHAR(20);

    SET minor_adult = CASE
        WHEN age > 20 THEN 'adult'
        ELSE 'child'
    END;

    RETURN minor_adult;
END //

DELIMITER ;


select isAdult(age) as checkAdult from users 

