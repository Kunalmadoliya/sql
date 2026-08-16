create schema string_types;

use string_types;

create table char_example(
  column_1 char(10)
);

insert into char_example(column_1)
values ('kunal') , ('abc');

select * from char_example;


create table varchar_example(
  column_1 varchar(100)
);

insert into varchar_example(column_1)
values ('this is varchar text') , ('hello world');

select * from varchar_example;


create table tinytext_example(
  column_1 tinytext
);

insert into tinytext_example(column_1)
values ('short tiny text value');

select * from tinytext_example;


create table text_example(
  column_1 text
);

insert into text_example(column_1)
values ('this is a normal text column example for mysql data type practice');

select * from text_example;


create table mediumtext_example(
  column_1 mediumtext
);

insert into mediumtext_example(column_1)
values ('this row is for mediumtext data type demonstration');

select * from mediumtext_example;


create table longtext_example(
  column_1 longtext
);

insert into longtext_example(column_1)
values ('this row is for longtext data type demonstration');

select * from longtext_example;
