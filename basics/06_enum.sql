create schema enum_types;

use enum_types;

create table enum_example(
  status enum('pending' , 'approved' , 'rejected')
);

insert into enum_example(status)
values ('pending') , ('approved') , ('rejected');

select * from enum_example;
