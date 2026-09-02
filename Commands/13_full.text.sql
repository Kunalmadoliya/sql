CREATE DATABASE IF NOT EXISTS example_full_text;

USE example_full_text;

CREATE TABLE articles (
    id INT PRIMARY KEY,
    content TEXT
);

INSERT INTO articles (id, content) VALUES
(1, 'MySQL is a popular relational database management system used for storing and managing data.'),
(2, 'Full text search allows users to search for words and phrases inside large amounts of text.'),
(3, 'Database indexes improve query performance by making data retrieval faster.'),
(4, 'SQL is used to create, read, update, and delete data from relational databases.'),
(5, 'MySQL supports full text indexes for efficient searching through text columns.'),
(6, 'Web applications often use databases to store user information, products, orders, and messages.'),
(7, 'A full text search can find relevant words inside a long text document much faster than scanning every row.'),
(8, 'Developers use SQL queries to retrieve specific information from large datasets.'),
(9, 'Database optimization helps applications respond quickly even when the amount of data becomes very large.'),
(10, 'Learning MySQL requires understanding tables, relationships, indexes, joins, subqueries, and aggregate functions.');





select * from articles
where  content = "improve query performance"


select * from articles
where content like "%indexes"

create fulltext index articles_index on articles(content)
 
select * from articles
where  match content against("information,")






