create table set_null_orders(
 order_id int primary key auto_increment ,
user_id int , 
name varchar(50) ,

foreign key(user_id) references set_null_user(user_id)
on delete restrict
on update restrict
)


insert into set_null_user(name) values ("ajksdhjdas")

insert into set_null_orders( user_id , name) values (3, "iphobuine")

select * from set_null_user
 


select * from set_null_orders join set_null_user
where set_null_user.user_id = set_null_orders.user_id


delete from set_null_user where user_id= 2

update set_null_user set user_id = 7 where user_id = 3