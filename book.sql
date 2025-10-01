SHOW DATABASES;

USE exdb;

---------- <<book table>> ----------------

CREATE TABLE Book (
BookID INT PRIMARY KEY AUTO_INCREMENT, --도서번호--
Title VARCHAR(50) NOT NULL, -- 도서명 --
Author VARCHAR(50), -- 저자--
Publisher VARCHAR(50), -- 출판사 --
Price DECIMAL(10) NOT NULL CHECK (Price >= 0), --가격--
PubYear INT CHECK (PubYear BETWEEN 1000 AND 9999) --출판년도--
);
--- <가격 컬럼 삭제> --
ALTER TABLE book
DROP COLUMN Price;
--- <가격 컬럼 다시 추가> --
ALTER TABLE book
ADD Price INT NOT NULL CHECK (Price >= 0);

SELECT * FROM book;
DESCRIBE book;
--- < 컬럼 순서 변경> ---
SELECT BookID, Title, Author, Publisher, Price, PubYear FROM book;

INSERT INTO book (BookID, Title, Author, Publisher, Price, PubYear)
VALUES (1, '경이로운 한국인', '장클로드 드크레센','마음의숲', 16200 , '2025' )
--- < 인서트 값 삭제 후 재추가> ---
DELETE FROM book WHERE BookID = 1;
INSERT INTO book (bookID, title, author, publisher, price, pubyear)
VALUES (1, '경이로운 한국인', '장클로드 드크레센','마음의 숲', 16200, 2025);

---- < 인서트 값 추가>-----


----------- Rental table ----------------

CREATE TABLE Rental (
RentalID INT PRIMARY KEY AUTO_INCREMENT, -- 대출 번호 --

MemberID INT NOT NULL, 
FOREIGN KEY (MemberID) 
REFERENCES Member(MemberID), -- 회원번호--

bookID INT NOT NULL, 
FOREIGN KEY (bookID) 
REFERENCES book(bookID),     -- 도서번호--

RenDate DATE,  -- 대출일자--

ReturnDate DATE NULL -- 반납일자--
);

SELECT * FROM Rental;
DESCRIBE Rental;





--------- member table --------------

CREATE TABLE MEMBER (
MemberID INT PRIMARY KEY, 
NAME VARCHAR(50) NOT NULL,
Phone VARCHAR(50),
Address VARCHAR(50)
);

SELECT * FROM MEMBER;
DESCRIBE MEMBER;



