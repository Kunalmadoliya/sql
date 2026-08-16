create schema blob_types;

use blob_types;

create table tinyblob_example(
  column_1 tinyblob
);

insert into tinyblob_example(column_1)
values ('abc');

select * from tinyblob_example;


create table blob_example(
  column_1 blob
);

insert into blob_example(column_1)
values ('blob data');

select * from blob_example;


create table mediumblob_example(
  column_1 mediumblob
);

insert into mediumblob_example(column_1)
values ('medium blob data');

select * from mediumblob_example;


create table longblob_example(
  column_1 longblob
);

insert into longblob_example(column_1)
values ('long blob data');

select * from longblob_example;
