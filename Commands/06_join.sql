CREATE DATABASE join_example;
USE join_example;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2)
);

INSERT INTO users (user_id, name, email) VALUES
(1, 'Kunal', 'kunal@gmail.com'),
(2, 'Rahul', 'rahul@gmail.com'),
(3, 'Priya', 'priya@gmail.com'),
(4, 'Ankit', 'ankit@gmail.com'),
(5, 'Neha', 'neha@gmail.com');

INSERT INTO orders (order_id, user_id, product, amount) VALUES
(1, 1, 'Laptop', 55000.00),
(2, 1, 'Mouse', 1200.00),
(3, 2, 'Keyboard', 2500.00),
(4, 3, 'Monitor', 15000.00),
(5, 3, 'Headphones', 3000.00),
(23, 6, 'USB Cable', 500.00);

select * from users  join orders
on users.user_id = orders.user_id;

select * from users left join orders
on users.user_id = orders.user_id
union
select * from users right join orders
on users.user_id = orders.user_id;