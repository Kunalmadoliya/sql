CREATE DATABASE prefix_example;

USE prefix_example;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT
);

INSERT INTO products (name, description) VALUES
('Apple', 'Fresh red apple'),
('Application', 'Software application for business'),
('Apply', 'Apply for a new account'),
('Appetite', 'Healthy appetite and food'),
('Approach', 'A new approach to learning'),
('Approve', 'Approve customer requests'),
('Banana', 'Fresh yellow banana'),
('Computer', 'Modern desktop computer');

explain
select * from  products where name like  "bana%";


create index prefix_index on products(name(4));


select * from  products where name like "app%";

