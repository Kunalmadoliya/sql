
create database set_database;

use set_database;

create table set_database(
 communication set('email' , 'sms' , 'phone' )
 );
 
 insert into set_database(communication)
 values ( 'sms,email,phone' ) , (1) , (2) , (3) 



select * from set_database


select  communication ,  FIND_IN_SET('email',  communication) from set_database



select  communication ,  FIND_IN_SET('phone',  communication) from set_database where FIND_IN_SET('phone',  communication) > 0
