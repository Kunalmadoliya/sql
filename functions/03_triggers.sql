CREATE DATABASE triggers_practice;

USE triggers_practice;

DROP TABLE IF EXISTS users;  

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    salary INT,
    city VARCHAR(100),
    department VARCHAR(100),
    created_at TIMESTAMP,
    updated_at TIMESTAMP , 
    average int 
);





INSERT INTO users
(user_id, name, age, salary, city, department, created_at, updated_at)
VALUES
(1, 'Aarav', 24, 45000, 'Delhi', 'IT', '2026-01-05 09:15:22', '2026-02-18 14:32:10'),
(2, 'Riya', 29, 62000, 'Mumbai', 'HR', '2026-01-12 11:42:08', '2026-03-02 16:18:45'),
(3, 'Karan', 31, 75000, 'Pune', 'Finance', '2026-02-03 08:27:51', '2026-02-21 10:05:33'),
(4, 'Ananya', 26, 51000, 'Jaipur', 'Marketing', '2026-02-14 13:19:06', '2026-04-01 17:44:29'),
(5, 'Rahul', 35, 88000, 'Delhi', 'IT', '2026-01-21 15:36:17', '2026-03-15 09:28:52'),
(6, 'Neha', 28, 58000, 'Bangalore', 'Sales', '2026-03-08 10:11:43', '2026-04-12 12:37:18'),
(7, 'Vikram', 42, 95000, 'Chennai', 'Finance', '2026-01-30 07:54:26', '2026-02-25 18:21:07'),
(8, 'Priya', 23, 40000, 'Kolkata', 'HR', '2026-03-17 16:08:35', '2026-04-05 11:49:23'),
(9, 'Arjun', 38, 72000, 'Hyderabad', 'IT', '2026-02-27 12:45:19', '2026-04-18 15:26:41'),
(10, 'Sneha', 30, 67000, 'Mumbai', 'Marketing', '2026-01-08 09:33:57', '2026-03-28 13:17:06'),
(11, 'Rohan', 27, 54000, 'Delhi', 'Sales', '2026-03-02 14:22:31', '2026-04-20 10:41:55'),
(12, 'Isha', 33, 81000, 'Pune', 'Finance', '2026-02-18 08:16:44', '2026-03-31 16:52:12'),
(13, 'Aditya', 25, 47000, 'Jaipur', 'IT', '2026-03-11 17:05:28', '2026-04-07 09:36:47'),
(14, 'Meera', 36, 90000, 'Bangalore', 'HR', '2026-01-26 11:28:39', '2026-03-19 14:08:25'),
(15, 'Nikhil', 41, 98000, 'Chennai', 'Sales', '2026-02-09 10:52:13', '2026-04-22 18:35:09');



select * from  users

delimiter //

create trigger updateTime
before insert on users 
for each row
begin 
  set new.created_at = Now() , New.updated_at = Now() ;
end //

delimiter ;

insert into users(user_id, name, age, salary, city, department) values (16, 'Kunal', 27, 73000, 'Delhi', 'IT')


delimiter //

create trigger checkAge
before insert on users 
for each row
begin 
  if new.age < 18 
  then signal sqlstate '45000' ;
  end if ;
end //

delimiter ;


insert into users(user_id, name, age, salary, city, department) values (26, 'Kunal', 30, 73000, 'Delhi', 'IT');


delimiter //

create trigger avgistory
after insert on users 
for each row
begin 
 declare avg_age int ;
 set avg_age = (select avg(age) from users) ;
 insert into users(user_id, name, age, salary, city, department , average) values (28, 'Kunal', 30, 73000, 'Delhi', 'IT', avg_age) ;
end //

delimiter ;



select * from  users



delimiter //



create trigger updateValues
before update on users 
for each row
begin 
 set new.updated_at = Now() ;
end //

delimiter ;



update users set name = "akhjlhdasjl" where user_id = 1


CREATE TABLE users_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    age INT,
    salary INT,
    city VARCHAR(100),
    department VARCHAR(100),
    action VARCHAR(20),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

drop table  users_history

CREATE TABLE users_history (
    history_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    new_user_name VARCHAR(100),
    old_user_name VARCHAR(100)
);

DELIMITER //

CREATE TRIGGER history_maintain
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    INSERT INTO users_history (user_id, new_user_name, old_user_name)
    VALUES (NEW.user_id, NEW.name, OLD.name);
END //

DELIMITER ;



INSERT INTO users_history
(user_id, new_user_name, old_user_name)
VALUES
(28, 'Kunal Sharma', 'Kunal');


select * from users_history

select * from users
SET SQL_SAFE_UPDATES = 0;
update users set name = "nfsjdfndjskf" where name = "Neha" 