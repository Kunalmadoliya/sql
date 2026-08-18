create database bit_example 

use bit_example 

drop table bit_table
create table bit_table(
  column_1 bit(6)
)

insert into bit_table(column_1)
values (b'101')


select bin(column_1) from bit_table
