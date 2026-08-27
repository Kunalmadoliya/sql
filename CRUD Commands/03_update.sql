create database update_example ; 

use update_example;


create table products(
 product_id int primary key , 
 product_name varchar(50) not null , 
 price decimal(10, 2) NOT NULL , 
 quantity int , 
 status varchar(50)
)

CREATE TABLE quantity (
    product_id INT,
    quantity_id INT PRIMARY KEY,
    quantity INT
)

INSERT INTO quantity (product_id, quantity_id, quantity) VALUES
(1, 101, 10),
(2, 102, 25),
(3, 103, 50),
(4, 104, 30),
(5, 105, 45),
(6, 106, 8),
(7, 107, 100),
(8, 108, 15),
(9, 109, 5),
(10, 110, 0);

INSERT INTO products (product_id, product_name, price, quantity, status) VALUES
(1, 'Laptop', 55000.00, 10, 'Available'),
(2, 'Smartphone', 25000.50, 25, 'Available'),
(3, 'Headphones', 1999.99, 50, 'Available'),
(4, 'Keyboard', 1299.00, 30, 'Available'),
(5, 'Mouse', 799.50, 45, 'Available'),
(6, 'Monitor', 15000.00, 8, 'Available'),
(7, 'USB Cable', 499.00, 100, 'Available'),
(8, 'Webcam', 2999.99, 15, 'Available'),
(9, 'Printer', 12000.00, 5, 'Low Stock'),
(10, 'Tablet', 18000.00, 0, 'Out of Stock');

set sql_safe_updates = 0 ; 

update products set price = 100 where product_id = 5 ; 

update products set price = price + 1 ;

select avg(price)  * 10 / 100 from products ;

UPDATE products 
SET 
    price = (SELECT 
            avg_price * 10 / 100
        FROM
            (SELECT 
                AVG(price) AS avg_price
            FROM
                products) AS temp);

select * from products ;

update products set quantity = 0 where product_id= 7

UPDATE products
SET status = CASE
    WHEN quantity = 0 THEN 'Out of Stock'
    WHEN quantity > 5 THEN 'Available'
    ELSE 'Low Stock'
END;


select * from products join quantity 
where products.product_id = quantity.product_id



update products join quantity 
ON products.product_id = quantity.product_id
set products.quantity = quantity.quantity

update products set quantity = 5
order by quantity desc 
limit 3

