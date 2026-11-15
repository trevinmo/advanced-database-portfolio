
PRAGMA foreign_keys = ON;

CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY,
    category_name TEXT NOT NULL UNIQUE
);

CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT
);

CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    category_id INTEGER NOT NULL,
    available_copies INTEGER NOT NULL
        CHECK (available_copies >= 0),
    FOREIGN KEY (category_id)
        REFERENCES Categories(category_id)
);

CREATE TABLE Loans (
    loan_id INTEGER PRIMARY KEY,
    member_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    loan_date TEXT NOT NULL,
    due_date TEXT NOT NULL,
    return_date TEXT,
    FOREIGN KEY (member_id)
        REFERENCES Members(member_id),
    FOREIGN KEY (book_id)
        REFERENCES Books(book_id),
    CHECK (due_date >= loan_date),
    CHECK (return_date IS NULL OR return_date >= loan_date)
);
