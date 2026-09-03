
CREATE TABLE natural_language_example (
    id INT PRIMARY KEY,
    content TEXT
);

INSERT INTO natural_language_example (id, content) VALUES
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

create fulltext index natural_language_index on natural_language_example(content)

explain
select * from natural_language_example
where match content against ("Database"  in natural language mode)


