create database like_opp_example

use like_opp_example


create table products(
 product_id int primary key , 
 product_name varchar(50) not null , 
 price decimal(10, 2) NOT NULL , 
 quantity int , 
 status varchar(50)
)



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


select * from products where product_name like '%ma%'

select * from products where product_name like '%a%'

select * from products where product_name like '_a%'

select * from products where product_name like '%_a'