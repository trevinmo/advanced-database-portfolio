# Portfolio 1: Database Design
Portfolio 1: Database Design and Normalisation


1. Introduction

The Miva Digital Library Management System is designed to manage books, library members, book categories, and borrowing transactions.

The database was developed using SQLite and consists of four relational tables: Members, Books, Categories, and Loans.

Database normalisation was applied to organise the data efficiently, minimise unnecessary duplication, and maintain data integrity.



2. First Normal Form (1NF)

First Normal Form requires each table to have a primary key and each column to contain a single value rather than multiple values in one field.

In the Miva Digital Library database, each table has a unique primary key.

For example, the Members table contains member_id, full_name, email, and phone. Each member has a unique member_id, and each field stores one value.

Similarly, the Books table stores each book's title, author, category_id, and available_copies in separate columns.

Therefore, the database satisfies First Normal Form (1NF).



3. Second Normal Form (2NF)

Second Normal Form requires a database to satisfy 1NF and ensures that all non-key attributes depend on the entire primary key.

In this database, each table uses a single-column primary key.

For example:

Members uses member_id.
Books uses book_id.
Categories uses category_id.
Loans uses loan_id.

Because the primary keys are not composite keys, there are no partial dependencies on part of a primary key.

Therefore, the database satisfies Second Normal Form (2NF).



4. Third Normal Form (3NF)

Third Normal Form requires a database to satisfy 2NF and eliminate transitive dependencies between non-key attributes.

In the Miva Digital Library database, book categories are stored in a separate Categories table.

Instead of storing the category name repeatedly for every book, the Books table stores category_id as a foreign key referencing the Categories table.

For example, multiple books may belong to the Technology category, but the category name is stored only once in the Categories table.

Similarly, member information is stored in the Members table rather than being repeated in every loan record.

This design reduces duplication and helps maintain consistency when records are updated.

Therefore, the database is designed to satisfy Third Normal Form (3NF).



5. Primary Keys and Foreign Keys

Primary keys uniquely identify records in each table.

The primary keys are:

Members: member_id
Books: book_id
Categories: category_id
Loans: loan_id

Foreign keys establish relationships between the tables.

The foreign keys are:

Books.category_id references Categories.category_id.
Loans.member_id references Members.member_id.
Loans.book_id references Books.book_id.

These relationships help maintain referential integrity by preventing loan records from referencing members or books that do not exist.



6. Database Constraints

Several constraints were implemented to improve database reliability.

PRIMARY KEY: Ensures that each record has a unique identifier.

FOREIGN KEY: Maintains valid relationships between related tables.

NOT NULL: Prevents important fields, such as book titles and member names, from being empty.

UNIQUE: Prevents duplicate member email addresses and category names.

CHECK: Ensures that the number of available book copies cannot be negative. Additional CHECK constraints validate loan and return dates.

These constraints help protect the accuracy and consistency of the library database.



7. Conclusion

The Miva Digital Library Management System uses a normalised relational database structure to organise information about members, books, categories, and loans.

The application of 1NF, 2NF, and 3NF reduces unnecessary duplication and improves data integrity.

Primary keys, foreign keys, and database constraints further support the reliability of the system.

The resulting database provides a structured foundation for managing library borrowing operations and performing SQL queries.
