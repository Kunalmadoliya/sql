
CREATE DATABASE transaction_example;

USE transaction_example;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    account_type VARCHAR(50),
    balance DECIMAL(12,2)
);

INSERT INTO accounts (account_id, customer_name, account_type, balance)
VALUES
(1, 'Aarav', 'Savings', 50000.00),
(2, 'Riya', 'Savings', 75000.00),
(3, 'Karan', 'Current', 120000.00),
(4, 'Ananya', 'Savings', 35000.00),
(5, 'Rahul', 'Current', 95000.00),
(6, 'Neha', 'Savings', 60000.00),
(7, 'Vikram', 'Savings', 85000.00),
(8, 'Priya', 'Current', 150000.00),
(9, 'Arjun', 'Savings', 45000.00),
(10, 'Sneha', 'Savings', 70000.00);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    from_account INT,
    to_account INT,
    amount DECIMAL(12,2),
    transaction_type VARCHAR(50),
    transaction_status VARCHAR(50)
);

INSERT INTO transactions
(transaction_id, from_account, to_account, amount, transaction_type, transaction_status)
VALUES
(101, 1, 2, 5000.00, 'Transfer', 'Completed'),
(102, 2, 3, 10000.00, 'Transfer', 'Completed'),
(103, 3, 4, 7500.00, 'Transfer', 'Pending'),
(104, 5, 1, 15000.00, 'Transfer', 'Completed'),
(105, 6, 7, 3000.00, 'Transfer', 'Failed'),
(106, 8, 9, 12000.00, 'Transfer', 'Completed'),
(107, 9, 10, 4500.00, 'Transfer', 'Completed'),
(108, 4, 5, 8000.00, 'Transfer', 'Pending'),
(109, 7, 8, 20000.00, 'Transfer', 'Completed'),
(110, 10, 6, 6500.00, 'Transfer', 'Failed');

update transactions set  amount = amount - 5000 where transaction_id = 109;
signal sqlstate  '45000' set message_text ="failed" ;
update transactions set  amount = amount +  5000 where transaction_id = 102 ;

select * from transactions ;



start transaction  ; 

update transactions set  amount = amount +  5000 where transaction_id = 102 ;
update transactions set  amount = amount +  5000 where transaction_id = 102 ;
commit ;

rollback ; select * from transactions;

start transaction  ; 
update transactions set  amount = amount - 5000 where transaction_id = 109;
signal sqlstate  '45000' set message_text ="failed" ;
update transactions set  amount = amount +  5000 where transaction_id = 102 ;
commit ;

rollback ; select * from transactions