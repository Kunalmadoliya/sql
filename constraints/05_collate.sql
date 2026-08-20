create database collation_example 

use collation_example 

create table case_senitive(
  name varchar(50) collate utf8mb4_bin
)

insert into case_senitive(name)
value ("kunal") , ("KUNAL") , ("Kunal")


select * from case_senitive where name = "Kunal" 



create table case_Insenitive(
  name varchar(50) collate utf8mb4_general_ci
)



insert into case_Insenitive(name)
value ("kunal") , ("KUNAL") , ("Kunal")


select * from case_Insenitive where name = "Kunal" 


