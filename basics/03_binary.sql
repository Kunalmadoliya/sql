create database binary_database 

use binary_database

create table binary_example(
  column_1 binary(5)
)

insert into binary_example(column_1)
values ('kun')

select * from binary_example



create table varbinary_example(
  column_1 varbinary(5)
)

insert into varbinary_example(column_1)
values ('kun')

select * from varbinary_example
