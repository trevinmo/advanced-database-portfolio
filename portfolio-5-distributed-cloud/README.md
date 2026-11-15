# Portfolio 5: Distributed Cloud
Portfolio 5: Distributed and Cloud Database Exercise


1. Introduction

This portfolio activity presents a proposed cloud database architecture for the Miva Digital Library Management System.

The library database manages information about books, library members, borrowing transactions, and book availability.

The objective is to demonstrate how distributed database technologies can improve system availability, reliability, and scalability.

MongoDB Atlas is selected as the proposed cloud database platform.




2. Proposed Cloud Database Architecture

The proposed architecture consists of a library application connected to a MongoDB Atlas database cluster containing three database nodes:

- Primary Node: The main database server responsible for processing write operations.
- Secondary Node 1: Maintains a replicated copy of the primary database.
- Secondary Node 2: Maintains another replicated copy to improve fault tolerance.

The secondary nodes replicate changes from the primary node. If the primary becomes unavailable, an eligible secondary may be elected as the new primary.




3. Database Replication

Replication involves maintaining copies of database information across multiple servers.

For example, when a librarian registers a new book, the information is written to the primary database and subsequently replicated to the secondary nodes.

This helps improve availability and reduces the risk of service interruption caused by an individual server failure.




4. Database Sharding

Sharding involves distributing data across multiple database servers to support larger datasets and workloads.

If Miva Digital Library expands to support thousands of libraries and millions of records, sharding could help distribute its database workload.

However, sharding is not necessary for the current small-scale library system.




5. Database Availability

The proposed three-node replica set improves availability by allowing another eligible node to become primary if the existing primary fails.

However, temporary interruptions may occur during failover, and the system still depends on network connectivity and correct configuration.




6. Database Consistency

Database consistency is important because borrowing transactions must maintain accurate book availability information.

MongoDB supports transactions and configurable read and write concerns.

Appropriate transaction handling and write concerns would help ensure that important database updates are performed reliably.




7. Database Security

The proposed cloud database should use authentication, encrypted connections, restricted network access, regular backups, and appropriate user permissions.

These measures would help protect library records from unauthorised access or accidental loss.


