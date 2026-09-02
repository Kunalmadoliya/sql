CREATE DATABASE IF NOT EXISTS index_example;

USE index_example;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(150),
    age INT,
    salary INT,
    city VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO users (user_id, user_name, email, age, salary, city, department)
VALUES
(1, 'Aarav', 'aarav1@gmail.com', 24, 45000, 'Delhi', 'IT'),
(2, 'Riya', 'riya2@gmail.com', 29, 62000, 'Mumbai', 'HR'),
(3, 'Karan', 'karan3@gmail.com', 31, 75000, 'Pune', 'Finance'),
(4, 'Ananya', 'ananya4@gmail.com', 26, 51000, 'Jaipur', 'Marketing'),
(5, 'Rahul', 'rahul5@gmail.com', 35, 88000, 'Delhi', 'IT');

-- Generate 5,000 rows
INSERT INTO users (user_id, user_name, email, age, salary, city, department)
SELECT
    n,
    CONCAT('User_', n),
    CONCAT('user', n, '@gmail.com'),
    FLOOR(18 + RAND() * 43),
    FLOOR(25000 + RAND() * 125000),
    ELT(FLOOR(1 + RAND() * 8),
        'Delhi',
        'Mumbai',
        'Pune',
        'Jaipur',
        'Bangalore',
        'Chennai',
        'Kolkata',
        'Hyderabad'
    ),
    ELT(FLOOR(1 + RAND() * 6),
        'IT',
        'HR',
        'Finance',
        'Marketing',
        'Sales',
        'Operations'
    )
FROM (
    SELECT
        a.n + b.n * 10 + c.n * 100 + d.n * 1000 + 1 AS n
    FROM
        (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) a
    CROSS JOIN
        (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) b
    CROSS JOIN
        (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) c
    CROSS JOIN
        (SELECT 0 n UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
         UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) d
    LIMIT 5000
) numbers
WHERE n > 5;


create index user_index on users(user_id) 


select * from users where user_name= 'User_4990'

create index user_index on users(user_id , user_name) 
