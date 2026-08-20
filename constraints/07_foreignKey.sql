create database foreign_key_example

use foreign_key_example

create table  user (
 user_id int primary key auto_increment , 
 name varchar(50) 
 )

 
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT ,
    name VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);

drop table orders
insert into  orders(user_id ,name) 
value (1 , "pen") 

insert into  user(name) 
value ("kunal") 

select * from user

select * from orders



select * from user join orders 
on user.user_id = orders.user_id



