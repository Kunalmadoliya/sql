create  database null_example 

use null_example 


create table null_example(
   first_name varchar(100)  ,
   middle_name varchar(100) null
)

insert into null_example(first_name , middle_name ) 
value (null , "kunal")

select * from null_example  where middle_name IS NULL
select * from null_example  where middle_name = NULL // not work






create  database not_null_example 

use not_null_example 


create table not_null_example(
   first_name varchar(100) not null  ,
   middle_name varchar(100) null
)

insert into not_null_example(first_name , middle_name ) 
value ("" , null )

select * from not_null_example where first_name is not null


