create database referential_order_example;

use referential_order_example;


create table user(
user_id int primary key auto_increment , 
name varchar(50)
) ;


create table orders(
 order_id int primary key auto_increment ,
user_id int , 
name varchar(50) ,

foreign key(user_id) references user(user_id)
)

insert into user(name) value ("kunal")

select * from user

insert into orders(user_id , name) values ("1" , "phone")

select * from orders

select * from orders join user 
where user.user_id = orders.user_id

update  user set user_id = 3 where user_id = 1 



create table user_2(
user_id int primary key auto_increment , 
name varchar(50)
) ;




create table order_2(
 order_id int primary key auto_increment ,
user_id int , 
name varchar(50) ,

foreign key(user_id) references user_2(user_id)
on update cascade 
on delete cascade
)


insert into user_2(name) values ("vcvzvzxvz")

insert into order_2(user_id , name) value (4, "phpne")


update user_2 set user_id=1 where user_id=3

select * from user_2

select * from order_2


select * from order_2 join user_2
where user_2.user_id = order_2.user_id


delete from user_2 where user_id = 4









