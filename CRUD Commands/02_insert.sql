
create database insert_example

use insert_example


create table user(
 user_id int primary key auto_increment , 
 name varchar(100) not null unique , 
 password varchar(100) , 
 contact varchar(10) unique not null , 
 registration_data timestamp default current_timestamp
)

insert ignore into user(name, password, contact)
values ('Aman', 'aman123', '9876543215'),
('cccdcsd', 'amandsvsd123', '98gdb43215')


create table user_1(
 user_id int primary key auto_increment , 
 name varchar(100) not null unique , 
 password varchar(100) , 
 contact varchar(10) unique not null , 
 registration_data timestamp default current_timestamp
)

insert into user_1(name, password, contact) 
select name, password, contact from user where user_id > 20

select * from user

SELECT user_id, name, password, contact
FROM user
WHERE user_id > 20;
select * from user

INSERT INTO user(name, password, contact)
VALUES ('Aman', 'aman123', '9876543215')
ON DUPLICATE KEY UPDATE password = VALUES(password);


