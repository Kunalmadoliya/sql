create database unique_example 

use unique_example 

create table unique_constraints(
  first_name varchar(20) unique not null ,
  last_name varchar(20) 
)

insert into unique_constraints(first_name , last_name)
value ("" , "madoliya" ) , ("kunal1" , "madoliya")

select * from unique_constraints
           

CREATE TABLE unique_constraints_1 (
    first_name VARCHAR(20) ,
    last_name VARCHAR(20) , 
    
    unique key first_last_unique( first_name , last_name )
)
           
           
           
           
insert into unique_constraints_1(first_name , last_name)
value  ('')

select * from unique_constraints_1