
CREATE TABLE query_and_natural(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    description TEXT,
    content TEXT
);

INSERT INTO query_and_natural (title, description, content) VALUES
('SQL Basics', 'Introduction to SQL', 'SQL is used to manage and query databases'),
('Database Indexing', 'Learn about indexes', 'Indexes improve database search performance'),
('Full Text Search', 'Search text efficiently', 'MySQL provides full text search using MATCH AGAINST'),
('SQL Queries', 'Learn SQL queries', 'Queries are used to retrieve data from databases');


create fulltext index query_and_natural_index on  query_and_natural(title , content)



select * from  query_and_natural
where match (title, content) against ("SQL USING"  in natural language mode  )





