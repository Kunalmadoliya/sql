
create database drop_example 

use drop_example 


create table products(
 product_id int primary key , 
 product_name varchar(50) not null 
)

create index idx_product on products(product_name)

INSERT INTO products (product_id, product_name) VALUES
(1, 'Laptop'),
(2, 'Mouse'),
(3, 'Keyboard'),
(4, 'Monitor'),
(5, 'Headphones'),
(6, 'Webcam'),
(7, 'Printer'),
(8, 'USB Cable'),
(9, 'Power Bank'),
(10, 'Smartphone');

select * from products

show index from products

SHOW COLUMNS FROM products;


drop index idx_product  on products
