Check execution plan before indexing

EXPLAIN QUERY PLAN
SELECT * FROM Books
WHERE title = 'Database Systems';



Create an index on book title

CREATE INDEX idx_books_title
ON Books(title);


Check execution plan after indexing


EXPLAIN QUERY PLAN
SELECT * FROM Books
WHERE title = 'Database Systems';



