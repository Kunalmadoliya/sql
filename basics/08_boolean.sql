create database bool_example 

use bool_example


create table bool_example (
   column_1 boolean
)

insert into bool_example (column_1) 
value (true) , (false) , (0) , (1) , (127)

select * from  bool_example