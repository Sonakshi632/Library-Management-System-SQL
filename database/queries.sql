USE LibraryDB;

-- =====================================
-- 1. Display all books
-- =====================================

SELECT * FROM Books;


-- =====================================
-- 2. Display all members
-- =====================================

SELECT * FROM Members;


-- =====================================
-- 3. Display all borrow records
-- =====================================

SELECT * FROM Borrow_Record;


-- =====================================
-- 4. Find currently borrowed books
-- =====================================

SELECT
    Books.title,
    Members.name,
    Borrow_Record.borrow_date
FROM Borrow_Record
JOIN Books
ON Borrow_Record.book_id = Books.book_id
JOIN Members
ON Borrow_Record.member_id = Members.member_id
WHERE Borrow_Record.return_date IS NULL;


-- =====================================
-- 5. Count books in each category
-- =====================================

SELECT
    category,
    COUNT(*) AS total_books
FROM Books
GROUP BY category;


-- =====================================
-- 6. Find members who borrowed books
-- =====================================

SELECT DISTINCT
    Members.name
FROM Members
JOIN Borrow_Record
ON Members.member_id = Borrow_Record.member_id;


-- =====================================
-- 7. Most borrowed book
-- =====================================

SELECT
    Books.title,
    COUNT(*) AS borrow_count
FROM Borrow_Record
JOIN Books
ON Borrow_Record.book_id = Books.book_id
GROUP BY Books.title
ORDER BY borrow_count DESC
LIMIT 1;


-- =====================================
-- 8. Books currently available
-- =====================================

SELECT *
FROM Books
WHERE available = TRUE;


-- =====================================
-- 9. Create View
-- =====================================

CREATE VIEW Active_Borrowers AS
SELECT
    Members.name,
    Books.title,
    Borrow_Record.borrow_date
FROM Borrow_Record
JOIN Members
ON Borrow_Record.member_id = Members.member_id
JOIN Books
ON Borrow_Record.book_id = Books.book_id
WHERE Borrow_Record.return_date IS NULL;


-- =====================================
-- 10. View Result
-- =====================================

SELECT * FROM Active_Borrowers;
