create database amazon ;

use amazon ;

CREATE TABLE user (
    name VARCHAR(100),
    age INT,
    dob DATE,
    email VARCHAR(322)
);

SELECT 
    *
FROM
    USER;

INSERT INTO user(name , age , dob , email)
values ("kunalmadoliya" , 21 , '2000-05-13' , "kunalmadoliya@gmail.com") ,
("kunalmadoliya" , 21 , '2000-05-13' , "kunalmadoliya@gmail.com");



create schema tinyInt_example ;
use tinyInt_example;

CREATE TABLE checktable (
    num TINYINT
);

insert into checktable(num)
value  (127) ;

SELECT 
    *
FROM
    checktable;


create schema smallInt_example;
use smallInt_example;

CREATE TABLE check_example (
    num SMALLINT
);

insert into check_example(num)
values  (32768) ;

SELECT 
    *
FROM 
    check_example;


create schema medium_example;
use medium_example;

CREATE TABLE check_example (
    num MEDIUMINT
);

insert into check_example(num)
values  (-8388609) ;

SELECT 
    *
FROM
    check_example;
    
    
create schema int_example;
use int_example;

CREATE TABLE check_example (
    num int
);

insert into check_example(num)
values  (-8388609) ;

SELECT 
    *
FROM
    check_example