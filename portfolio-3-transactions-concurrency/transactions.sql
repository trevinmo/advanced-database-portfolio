Check available copies before transaction

SELECT book_id, title, available_copies
FROM Books
WHERE book_id = 4;

Start transaction

BEGIN TRANSACTION;

Reduce available copies by one

UPDATE Books
SET available_copies = available_copies - 1
WHERE book_id = 4
AND available_copies > 0;

Create a loan only if a copy was available

INSERT INTO Loans
(member_id, book_id, loan_date, due_date)
SELECT 1, 4, '2026-11-15', '2026-11-29'
WHERE changes() = 1;

Save the transaction permanently

COMMIT;

Verify updated book quantity

SELECT book_id, title, available_copies
FROM Books
WHERE book_id = 4;

Verify loan record

SELECT *
FROM Loans
WHERE book_id = 4
ORDER BY loan_id DESC
LIMIT 1;