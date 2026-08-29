
create database groupby_example

use groupby_example


CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    country VARCHAR(50),
    city VARCHAR(50),
    age TINYINT,
    purchase_amount INT
);

INSERT INTO customers (name, country, city, age, purchase_amount) VALUES
('Aman', 'India', 'Delhi', 22, 5000),
('Rahul', 'India', 'Mumbai', 28, 7500),
('Priya', 'India', 'Delhi', 25, 3000),
('Neha', 'India', 'Jaipur', 31, 6000),
('John', 'USA', 'New York', 35, 9000),
('Mike', 'USA', 'Chicago', 29, 4500),
('Sarah', 'USA', 'New York', 24, 7000),
('Emma', 'UK', 'London', 27, 5500),
('Oliver', 'UK', 'Manchester', 32, 8000),
('Sophia', 'UK', 'London', 23, 4000),
('Lucas', 'Canada', 'Toronto', 30, 6500),
('James', 'Canada', 'Vancouver', 26, 3500),
('Olivia', 'Canada', 'Toronto', 21, 5000),
('Daniel', 'Australia', 'Sydney', 34, 10000),
('Emily', 'Australia', 'Melbourne', 28, 6000);



select country , count(*) , sum(purchase_amount)  , avg(purchase_amount) from customers
group by country
having SUM(purchase_amount) > 5000
order by SUM(purchase_amount) asc


