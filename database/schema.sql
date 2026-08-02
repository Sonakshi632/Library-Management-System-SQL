CREATE DATABASE LibraryDB;

USE LibraryDB;


CREATE TABLE Members
(
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);


CREATE TABLE Books
(
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(50),
    available BOOLEAN DEFAULT TRUE
);


CREATE TABLE Borrow_Record
(
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,

    FOREIGN KEY(member_id)
    REFERENCES Members(member_id),

    FOREIGN KEY(book_id)
    REFERENCES Books(book_id)
);
