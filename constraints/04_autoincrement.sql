create database autoInc_example

use autoInc_example


create table autoInc_table_example(
  id int primary key auto_increment,
  user_name varchar(100)
)

create table autoInc_table_tinyInt(
  id int primary key auto_increment,
  user_name varchar(100)
)

insert into autoInc_table_example(user_name)
values ("ramu") , ("shamu")

insert into  autoInc_table_tinyInt(user_name)
values ("ramu") , ("shamu")


select * from autoInc_table_example