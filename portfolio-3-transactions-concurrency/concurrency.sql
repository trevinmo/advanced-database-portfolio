UPDATE Books
SET available_copies = available_copies + 1
WHERE book_id = 5;

PRAGMA busy_timeout = 1000;

UPDATE Books
SET available_copies = available_copies + 1
WHERE book_id = 5;
