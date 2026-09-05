CREATE DATABASE IF NOT EXISTS explain_example;

USE explain_example;


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
SELECT
    n,
    CONCAT('User_', n),
    CONCAT('user', n, '@gmail.com'),
    FLOOR(18 + RAND() * 43),
    FLOOR(25000 + RAND() * 125000),
    ELT(FLOOR(1 + RAND() * 8),
        'Delhi', 'Mumbai', 'Pune', 'Jaipur',
        'Bangalore', 'Chennai', 'Kolkata', 'Hyderabad'
    ),
    ELT(FLOOR(1 + RAND() * 6),
        'IT', 'HR', 'Finance', 'Marketing', 'Sales', 'Operations'
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
) numbers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_name VARCHAR(100),
    amount INT,
    order_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO orders (order_id, user_id, product_name, amount, order_date, status)
SELECT
    n,
    FLOOR(1 + RAND() * 5000),
    ELT(FLOOR(1 + RAND() * 8),
        'Laptop', 'Mouse', 'Keyboard', 'Monitor',
        'Headphones', 'Webcam', 'Desk', 'USB Hub'
    ),
    FLOOR(500 + RAND() * 100000),
    DATE_ADD('2025-01-01', INTERVAL FLOOR(RAND() * 600) DAY),
    ELT(FLOOR(1 + RAND() * 4),
        'Completed', 'Pending', 'Cancelled', 'Processing'
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
    LIMIT 10000
) numbers;
 
explain
select * from users where user_id = 4900


explain
select * from users where email = 'rahul5@gmail.com'


create index email_index on users(email)


explain
select count(*) from users
select count(*) from orders

explain
select * from users u1 join orders o1
on u1.user_id = o1.user_id
order by order_date asc


Using temporary; Using filesort 