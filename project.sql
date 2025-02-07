CREATE TABLE MEMBERS (
    CNP char(12) PRIMARY KEY,
    membersName varchar(30) NOT NULL,
    birthDate date,
    joinDate date
);
CREATE TABLE AUTHORS (
    authorID varchar2(10),
    authorName varchar2(100),
    authorBirthDate date,
    CONSTRAINT pk1 PRIMARY KEY(authorID)
);
CREATE TABLE PUBLISHER (s
    publisherID varchar2(10),
    publisherName varchar2(30),
    phone char(11),
    email varchar2(30),
    CONSTRAINT pk2 PRIMARY KEY(publisherID)
);
CREATE TABLE MAGAZINES (
    magazineID varchar2(10),
    magazineName varchar2(30),
    pagecount number(5),
    issueNumber number(5)
);
CREATE TABLE BOOKS (
    bookID varchar2(10),
    bookName varchar2(100),
    pagecount number(5),
    bauthorID varchar2(10),
    bpublisherID varchar2(10),
    CONSTRAINT fk_bauthorID FOREIGN KEY (bauthorID) REFERENCES AUTHORS(authorID),
    CONSTRAINT fk_bpublisherID FOREIGN KEY (bpublisherID) REFERENCES PUBLISHER(publisherID),
    CONSTRAINT pk_books PRIMARY KEY (bookID)
);
CREATE TABLE BORROWS (
    borrowID VARCHAR2(10) PRIMARY KEY,
    bCNP CHAR(12),
    borrowDate DATE,
    returnDate DATE,
    bID VARCHAR2(10),
    CONSTRAINT fk_bCNP FOREIGN KEY (bCNP) REFERENCES MEMBERS(CNP),
    CONSTRAINT fk_bID FOREIGN KEY (bID) REFERENCES BOOKS(bookID)
);


-- created all the tables
  ALTER TABLE MAGAZINES ADD issueNumber number(5);
    DROP TABLE MAGAZINES; --just to highlight the delete 
ALTER TABLE BOOKS
ADD CONSTRAINT pk_books PRIMARY KEY (bookID); 
 ALTER TABLE BOOKS 
MODIFY bookName VARCHAR2(100);-- had some trouble when inserting longer titles - so i modified it 


DROP COLUMN Adress; -- 
DELETE FROM BOOKS;
--Using DML statements
--inserting members
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('183456789012', 'Rusu Mihnea', TO_DATE('2004-05-26', 'YYYY-MM-DD'), TO_DATE('2021-01-09', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('123456789012', 'Rares Popescu', TO_DATE('1990-01-15', 'YYYY-MM-DD'), TO_DATE('2021-01-10', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('234567890123', 'Maria Dragan', TO_DATE('1985-07-23', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('345678901234', 'Elena Gheorghe', TO_DATE('1992-03-11', 'YYYY-MM-DD'), TO_DATE('2023-05-20', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('456789012345', 'Mihai Dumitrescu', TO_DATE('1988-06-18', 'YYYY-MM-DD'), TO_DATE('2021-09-25', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('567890123456', 'Ana Rusu', TO_DATE('1995-09-30', 'YYYY-MM-DD'), TO_DATE('2022-11-10', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('678901234567', 'Vlad Barbalata', TO_DATE('1980-11-12', 'YYYY-MM-DD'), TO_DATE('2023-06-15', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('789012345678', 'Gabriela Stoica', TO_DATE('1999-04-05', 'YYYY-MM-DD'), TO_DATE('2024-01-05', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('890123456789', 'Constantin Radu', TO_DATE('1975-02-25', 'YYYY-MM-DD'), TO_DATE('2021-08-15', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('901234567890', 'Mihai Druga', TO_DATE('1994-12-13', 'YYYY-MM-DD'), TO_DATE('2022-07-01', 'YYYY-MM-DD'));
INSERT INTO MEMBERS (CNP, membersName, birthDate, joinDate) VALUES
('012345678901', 'Patrick Andrei', TO_DATE('1983-08-21', 'YYYY-MM-DD'), TO_DATE('2024-10-10', 'YYYY-MM-DD'));
-- inserting authors 
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH001', 'J.K. Rowling', TO_DATE('1965-07-31', 'YYYY-MM-DD'));
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH002', 'George Orwell', TO_DATE('1903-06-25', 'YYYY-MM-DD'));
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH003', 'Jane Austen', TO_DATE('1775-12-16', 'YYYY-MM-DD'));
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH004', 'William Shakespeare', TO_DATE('1564-04-23', 'YYYY-MM-DD'));
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH005', 'Mark Twain', TO_DATE('1835-11-30', 'YYYY-MM-DD'));
INSERT INTO AUTHORS (authorID, authorName, authorBirthDate) VALUES
('AUTH006', 'Haruki Murakami', TO_DATE('1949-01-12', 'YYYY-MM-DD'));
--inserting publishers
INSERT INTO PUBLISHER (publisherID, publisherName, phone, email) VALUES
('PUB001', 'Penguin Random House', '12345678901', 'contact@penguinrandomhouse.com');
INSERT INTO PUBLISHER (publisherID, publisherName, phone, email) VALUES
('PUB002', 'HarperCollins', '23456789012', 'info@harpercollins.com');
INSERT INTO PUBLISHER (publisherID, publisherName, phone, email) VALUES
('PUB003', 'Macmillan Publishers', '34567890123', 'support@macmillan.com');
INSERT INTO PUBLISHER (publisherID, publisherName, phone, email) VALUES
('PUB004', 'Editura Humanitas', '40123456789', 'contact@humanitas.ro');
--inserting books
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK001', 'Harry Potter 1: Philosopher\Stone', 309, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK002', 'Harry Potter 2: Chamber of Secrets', 341, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK003', 'Harry Potter 3: Prisoner of Azkaban', 435, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK004', 'Harry Potter 4: Goblet of Fire', 636, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK005', 'Harry Potter 5: Order of the Phoenix', 766, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK006', 'Harry Potter 6: Half-Blood Prince', 607, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK007', 'Harry Potter 7: Deathly Hallows', 607, 'AUTH001', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK008', 'Animal Farm', 112, 'AUTH002', 'PUB002');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK009', 'Down and Out in Paris and London', 213, 'AUTH002', 'PUB002');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK010', 'Sense and Sensibility', 409, 'AUTH003', 'PUB003');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK011', 'Emma', 474, 'AUTH003', 'PUB003');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK012', 'Romeo and Juliet', 134, 'AUTH004', 'PUB004');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK013', 'Macbeth', 128, 'AUTH004', 'PUB004');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK014', 'The Adventures of Tom Sawyer', 274, 'AUTH005', 'PUB001');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK015', 'The Prince and the Pauper', 242, 'AUTH005', 'PUB002');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK016', 'Kafka on the Shore', 505, 'AUTH006', 'PUB002');
INSERT INTO BOOKS (bookID, bookName, pagecount, bauthorID, bpublisherID) VALUES
('BOOK017', '1Q84', 928, 'AUTH006', 'PUB003');
--inserting borrows
-- Borrowed and returned
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR001', '123456789012', TO_DATE('2024-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-20', 'YYYY-MM-DD'), 'BOOK001');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR002', '234567890123', TO_DATE('2024-01-15', 'YYYY-MM-DD'), TO_DATE('2024-01-25', 'YYYY-MM-DD'), 'BOOK002');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR003', '345678901234', TO_DATE('2024-01-20', 'YYYY-MM-DD'), TO_DATE('2024-01-30', 'YYYY-MM-DD'), 'BOOK003');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR004', '456789012345', TO_DATE('2024-01-25', 'YYYY-MM-DD'), TO_DATE('2024-02-05', 'YYYY-MM-DD'), 'BOOK004');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR005', '567890123456', TO_DATE('2023-12-20', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'BOOK005');

-- Borrowed but not returned yet
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR006', '678901234567', TO_DATE('2024-01-05', 'YYYY-MM-DD'), NULL, 'BOOK006');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR007', '789012345678', TO_DATE('2023-12-25', 'YYYY-MM-DD'), NULL, 'BOOK007');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR008', '890123456789', TO_DATE('2024-01-10', 'YYYY-MM-DD'), NULL, 'BOOK008');

-- Mixed borrow-return history
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR009', '901234567890', TO_DATE('2024-01-05', 'YYYY-MM-DD'), TO_DATE('2024-01-15', 'YYYY-MM-DD'), 'BOOK009');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR010', '012345678901', TO_DATE('2024-01-08', 'YYYY-MM-DD'), TO_DATE('2024-01-18', 'YYYY-MM-DD'), 'BOOK010');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR011', '123456789012', TO_DATE('2024-01-12', 'YYYY-MM-DD'), TO_DATE('2024-01-22', 'YYYY-MM-DD'), 'BOOK011');
INSERT INTO BORROWS (borrowID, bCNP, borrowDate, returnDate, bID) VALUES
('BOR012', '234567890123', TO_DATE('2024-01-15', 'YYYY-MM-DD'), NULL, 'BOOK012');



DELETE FROM BORROWS
WHERE bCNP = (SELECT CNP FROM MEMBERS WHERE membersName = 'Elena Gheorghe');
DELETE FROM MEMBERS
WHERE membersName = 'Elena Gheorghe';
UPDATE MEMBERS
SET membersName = 'Ana Draghici'
WHERE membersName = 'Ana Rusu';

SELECT membersName, joinDate
FROM MEMBERS
WHERE joinDate >= TO_DATE('2022-01-01', 'YYYY-MM-DD')
  AND joinDate < SYSDATE;
  
  SELECT bookName, pagecount FROM BOOKS WHERE pagecount >300  AND bpublisherID IS NOT NULL;


SELECT B.bookName, A.authorName
FROM BOOKS B
JOIN AUTHORS A ON B.bauthorID = A.authorID
WHERE B.bookName LIKE '%Harry%';

SELECT membersName, birthDate FROM MEMBERS WHERE EXTRACT(YEAR FROM birthDate) IN (1985, 1992, 1995) 

SELECT bookName, pagecount FROM BOOKS WHERE pagecount BETWEEN 100 AND 250;


SELECT A.authorName, B.bauthorID, COUNT(*) AS books_count, AVG(B.pagecount) AS avg_pages
FROM BOOKS B
JOIN AUTHORS A ON B.bauthorID = A.authorID
GROUP BY A.authorName, B.bauthorID
HAVING COUNT(*) > 1;


SELECT M.membersName FROM MEMBERS M WHERE EXISTS (SELECT 1 FROM BORROWS BR WHERE BR.bCNP = M.CNP AND BR.returnDate IS NULL);
SELECT authorName AS name FROM AUTHORS 
UNION SELECT publisherName AS name FROM PUBLISHER;


SELECT membersName FROM MEMBERS INTERSECT SELECT M.membersName FROM MEMBERS M INNER JOIN BORROWS BR ON M.CNP = BR.bCNP;

SELECT membersName, birthDate,
  CASE
    WHEN EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM birthDate) > 40 THEN 'Adult'
    WHEN EXTRACT(YEAR FROM SYSDATE) - EXTRACT(YEAR FROM birthDate) BETWEEN 18 AND 40 THEN 'Young-Adult'
    ELSE 'Minor'
  END AS age_group
FROM MEMBERS;

CREATE VIEW ActiveBorrowers AS
SELECT M.membersName, B.bookName
FROM MEMBERS M
JOIN BORROWS BR ON M.CNP = BR.bCNP
JOIN BOOKS B ON BR.bID = B.bookID
WHERE BR.returnDate IS NULL;
SELECT publisherName, email FROM PUBLISHER WHERE email LIKE '%@contact';

SELECT m.membersName, COUNT(*) AS borrow_count
FROM MEMBERS m
JOIN BORROWS br ON m.CNP = br.bCNP
GROUP BY m.membersName
ORDER BY borrow_count DESC;



SELECT p.publisherName, COUNT(b.bookID) AS book_count
FROM PUBLISHER p
JOIN BOOKS b ON p.publisherID = b.bpublisherID
GROUP BY p.publisherName
HAVING COUNT(b.bookID) >= 3;



SELECT b.bookID, b.bookName
FROM BOOKS b
LEFT JOIN BORROWS br ON b.bookID = br.bID
WHERE br.borrowID IS NULL;


SELECT AVG(b.pagecount) AS avg_page_count
FROM BOOKS b
JOIN PUBLISHER p ON b.bpublisherID = p.publisherID
WHERE p.publisherName = 'Penguin Random House';