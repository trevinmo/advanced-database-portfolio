Check original quantity

SELECT available_copies AS before_rollback
FROM Books
WHERE book_id = 3;

Create savepoint

SAVEPOINT rollback_test;

Temporarily reduce available copies

UPDATE Books
SET available_copies = available_copies - 1
WHERE book_id = 3;

Check temporary quantity

SELECT available_copies AS during_transaction
FROM Books
WHERE book_id = 3;

Undo changes

ROLLBACK TO SAVEPOINT rollback_test;

Close savepoint

RELEASE SAVEPOINT rollback_test;

Verify original quantity restored

SELECT available_copies AS after_rollback
FROM Books
WHERE book_id = 3;