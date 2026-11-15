Query 1: Display available books

SELECT title, author, available_copies
FROM Books
WHERE available_copies > 0;



Query 2: Display borrowed books

SELECT
    Members.full_name,
    Books.title,
    Loans.loan_date,
    Loans.due_date
FROM Loans
JOIN Members
    ON Loans.member_id = Members.member_id
JOIN Books
    ON Loans.book_id = Books.book_id;



Query 3: Count books by category

SELECT
    Categories.category_name,
    COUNT(Books.book_id) AS total_books
FROM Categories
LEFT JOIN Books
    ON Categories.category_id = Books.category_id
GROUP BY Categories.category_id,
         Categories.category_name;



Query 4: Find overdue books

SELECT
    Members.full_name,
    Books.title,
    Loans.due_date
FROM Loans
JOIN Members
    ON Loans.member_id = Members.member_id
JOIN Books
    ON Loans.book_id = Books.book_id
WHERE Loans.return_date IS NULL
  AND Loans.due_date < DATE('now');

