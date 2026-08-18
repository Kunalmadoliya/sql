create database default_example 

use default_example 

create table default_example_constraints(
  name varchar(50) ,
  age tinyint not null default 10
)

insert into default_example_constraints(name)
value ("kunal")

select * from default_example_constraints



           
create table default_example_constraints_1(
  name varchar(50) ,
  age tinyint not null default 10 , 
  dob datetime default current_timestamp
)


insert into default_example_constraints_1(name)
value ("kunal")



select * from default_example_constraints_1

