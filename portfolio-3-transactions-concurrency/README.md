# Portfolio 3: Transactions Concurrency
Portfolio 3: Transactions and Concurrency Control


1. Objective

The objective of this portfolio is to demonstrate transaction management and concurrency control using SQLite in the Miva Digital Library Management System.



2. Tools Used

- DB Browser for SQLite
- SQLite Database
- GitHub



3. COMMIT Demonstration

A transaction was used to simulate borrowing a book from the library.


The operation involved updating the number of available copies and inserting a corresponding loan record.


COMMIT was used to make the successful transaction permanent.


Evidence: `before-commit.png` and `transaction-commit.png`



4. ROLLBACK Demonstration

A rollback operation was demonstrated using a SQLite SAVEPOINT.


Book ID 3 initially had 4 available copies. During the transaction, the quantity was temporarily reduced to 3.


The ROLLBACK TO SAVEPOINT statement reversed the update, restoring the available copies to 4.


This demonstrates how changes within a transaction can be undone without permanently affecting the database.


Evidence: `rollback-during.png` and `rollback-after.png`



5. Concurrency Control Demonstration

Two separate DB Browser for SQLite windows were connected to the same database.


Window A executed an UPDATE statement and held an uncommitted write transaction.


Window B attempted another UPDATE operation but received the error:

`database is locked`


This demonstrates SQLite's concurrency control mechanism, which prevents simultaneous conflicting database writes.


Evidence: `concurrency-lock.png`



6. Conclusion

This portfolio demonstrates three important database concepts: COMMIT, ROLLBACK using SAVEPOINT, and concurrency control.


These mechanisms help maintain database consistency, protect data integrity, and manage concurrent database operations.
