create database alterTable_example


use alterTable_example

create table user(
 user_id int,
 name varchar(50) character set utf8mb4 collate utf8mb4_unicode_ci,
 contact varchar(50) , 
 email varchar(322) , 
 registration_date date , 
 age int , 
 created_on timestamp default current_timestamp
 
 )

show columns from user

alter table user 
add column address text

alter table user 
change column contact contact int 


alter table user 
change column contact contact_number int 


alter table user 
add primary key(user_id)



alter table user 
drop column address

alter table user 
add constraint name unique(name)


alter table user 
drop constraint name 

alter table user 
alter column registration_date set default '2026-05-28'

