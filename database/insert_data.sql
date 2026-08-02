USE LibraryDB;


INSERT INTO Members VALUES
(1,'Rahul Sharma','rahul@gmail.com','9876543210'),
(2,'Aman Gupta','aman@gmail.com','9876543211'),
(3,'Priya Singh','priya@gmail.com','9876543212');


INSERT INTO Books VALUES
(101,'Java Programming','Herbert Schildt','Programming',TRUE),
(102,'Database System Concepts','Korth','Database',TRUE),
(103,'Operating System','Galvin','OS',TRUE),
(104,'Computer Networks','Tanenbaum','Networking',TRUE);


INSERT INTO Borrow_Record VALUES
(1,1,101,'2026-07-01','2026-07-10'),
(2,2,102,'2026-07-05',NULL),
(3,3,103,'2026-07-08','2026-07-15');
