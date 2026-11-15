# Portfolio 4: NoSQL
Portfolio 4: NoSQL and Advanced Data Models



1. Introduction

This portfolio demonstrates the implementation of a NoSQL database using MongoDB for the Miva Digital Library Management System.

The objective is to demonstrate how book records can be stored, retrieved, and managed using a document-oriented database.



2. Tools Used

- MongoDB Community Server
- MongoDB Compass
- JSON
- GitHub



3. Database Description

Database Name: miva_library_nosql

Collection Name: books

The database stores book information, including:

- Book ID
- Book title
- Author
- Category
- Available copies
- Book tags



4. NoSQL Data Model

MongoDB uses a document-based data model. Unlike relational databases, which store information in tables, MongoDB stores records as BSON documents with a JSON-like structure.

Two sample book documents were created:

Book 1: Database Systems

- Book ID: 1
- Author: Thomas Connolly
- Category: Technology
- Available Copies: 5

Book 2: Computer Networks

- Book ID: 2
- Author: Andrew Tanenbaum
- Category: Technology
- Available Copies: 3

The sample documents are provided in the `books.json` file.



5. Implementation Procedure

The following steps were performed:

1. Installed MongoDB Community Server and MongoDB Compass.
2. Connected MongoDB Compass to the local MongoDB server.
3. Created a database named `miva_library_nosql`.
4. Created a collection named `books`.
5. Inserted two sample book documents.
6. Used MongoDB query filters to retrieve specific book records.
7. Captured screenshots of the implementation and query results.



6. MongoDB Queries

Query 1: Retrieve Technology Books

Filter:

`{"category": "Technology"}`

Expected Result: Both book documents are returned because they belong to the Technology category.


Query 2: Find Books with More Than Three Available Copies

Filter:

`{"available_copies": {"$gt": 3}}`

Expected Result: Database Systems is returned because it has five available copies.


Query 3: Search by Book Title

Filter:

`{"title": "Computer Networks"}`

Expected Result: The Computer Networks document is returned.




7. Advantages of MongoDB

MongoDB provides several advantages for the Library Management System:

- Flexible document structure for storing different book attributes.
- Support for arrays, such as book tags.
- Ability to store related metadata within documents.
- Convenient retrieval of documents using query filters.




8. Comparison with Relational Databases

SQLite stores data in structured tables and supports relationships through foreign keys.

MongoDB stores data as documents, allowing different records to contain different fields.

For this library system, SQLite is suitable for structured borrowing transactions, while MongoDB can be useful for flexible book metadata and catalogue information.




9. Evidence of Implementation

The portfolio includes the following supporting files:

- `books.json`: Sample MongoDB book documents.
- `mongodb-documents.png`: Screenshot showing inserted book documents.
- `mongodb-query1.png`: Screenshot of the category filter.
- `mongodb-query2.png`: Screenshot of the available copies filter.
- `mongodb-query3.png`: Screenshot of the title filter.




