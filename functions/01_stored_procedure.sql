CREATE DATABASE stored_procedure_demo;

USE stored_procedure_demo;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150),
    city VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product VARCHAR(100),
    amount INT,
    status VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (user_id, name, email, city) VALUES
(1, 'Aarav', 'aarav@gmail.com', 'Delhi'),
(2, 'Riya', 'riya@gmail.com', 'Mumbai'),
(3, 'Karan', 'karan@gmail.com', 'Pune'),
(4, 'Ananya', 'ananya@gmail.com', 'Jaipur'),
(5, 'Rahul', 'rahul@gmail.com', 'Delhi'),
(6, 'Neha', 'neha@gmail.com', 'Bangalore'),
(7, 'Vikram', 'vikram@gmail.com', 'Chennai'),
(8, 'Priya', 'priya@gmail.com', 'Kolkata'),
(9, 'Arjun', 'arjun@gmail.com', 'Hyderabad'),
(10, 'Sneha', 'sneha@gmail.com', 'Mumbai');

INSERT INTO orders (order_id, user_id, product, amount, status) VALUES
(101, 1, 'Laptop', 65000, 'Completed'),
(102, 2, 'Mouse', 1200, 'Pending'),
(103, 3, 'Keyboard', 2500, 'Completed'),
(104, 4, 'Monitor', 18000, 'Processing'),
(105, 5, 'Headphones', 5000, 'Completed'),
(106, 6, 'Webcam', 4500, 'Cancelled'),
(107, 7, 'Keyboard', 3000, 'Completed'),
(108, 8, 'Tablet', 25000, 'Pending'),
(109, 9, 'Mouse', 1500, 'Completed'),
(110, 10, 'Laptop Stand', 3500, 'Processing');


DELIMITER //

CREATE PROCEDURE selectUser()
BEGIN
    SELECT * FROM users;
    SELECT * FROM orders;
END //

DELIMITER ;

call selectUser()

DELIMITER //

create procedure Insertuser(
   in p_user_id int, 
   in p_name varchar(100) , 
    in p_email varchar(150) ,
   in p_city varchar(100) 
)

begin 
 insert into users(user_id, name, email, city) values (p_user_id , p_name , p_email , p_city) ;

end //

DELIMITER ;

call Insertuser(21 , "kunal" , "kmsdaks" , "hii" )

drop procedure InsertUserAndCount

DELIMITER //

CREATE PROCEDURE InsertUserAndCount(
    IN p_user_id INT,
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(150),
    IN p_city VARCHAR(100),
    OUT user_count INT
)
BEGIN
    INSERT INTO users(user_id, name, email, city)
    VALUES (p_user_id, p_name, p_email, p_city);

    SELECT COUNT(*) INTO user_count
    FROM users;
END //

DELIMITER ;

CALL InsertUserAndCount(
    22,
    'kunal',
    'kmsdaks',
    'hii',
    @user_count
);

SELECT @user_count AS new_count;


DELIMITER //

CREATE PROCEDURE checkPerson(
    IN p_name VARCHAR(100),
    OUT u_name VARCHAR(100)
)
BEGIN
    IF p_name = 'kunal' THEN
        SET u_name = 'madoliya';
    ELSE
        SET u_name = 'unknown';
    END IF;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE loopin(
)
BEGIN
   declare count int default 1 ;
   declare maxCount int default 2;
   
   repeat
   
    select concat("task-" , count) ;
    set count = count + 1 ;
    until count > maxCount
   end repeat ;

END //

DELIMITER ;


call loopin