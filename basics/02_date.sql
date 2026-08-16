create schema dateandtime;

use dateandtime;

create table date_example(
   column_1 date
);

INSERT INTO date_example (column_1)
values ('2000-05-13') , ('9999-12-31') ;


SELECT 
    *
FROM
    date_example;
    
create table time_example(
   column_1 time
);



INSERT INTO time_example(column_1)
values ('10:10:3') ;

SELECT 
    *
FROM
     time_example;
	

     
create table datetime_example(
   column_1 datetime
); 

INSERT INTO datetime_example(column_1)
value ('2000-10-02 10:56:12') ;

SELECT 
    *
FROM
     datetime_example;
     
     
     
	CREATE TABLE year_example (
    column_2 YEAR
);

INSERT INTO year_example ( column_2 ) 
values ('2004') , ('26');

            
           
   select * from  year_example ;
   

           
create table timestamps_example(

column_1 TIMESTAMP default current_timestamp ,
column_2 DATETIME 
);

INSERT INTO timestamps_example(column_2)
values ('2000-10-02 10:56:12') ;

set sql_safe_updates = 0 ;

update timestamps_example set column_2 = '2005-05-13 10:56:12' where column_2= '2000-10-02 10:56:12'

           
select * from timestamps_example
           