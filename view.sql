---- view -----------------
SHOW DATABASES;
USE exdb;
SELECT * FROM customers;

CREATE VIEW `Brazil Customers` AS
SELECT CustomerName, ContactName
FROM customers
WHERE Country = 'Brazil';

SELECT * FROM `Brazil Customers`;

-- 서브 쿼리
SELECT AVG(Price) FROM Products;
--
CREATE VIEW `Products Above Average Price` AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

SELECT * FROM `Products Above Average Price`;

-- 뷰를 생성create하거나 새로고침 replace
CREATE OR REPLACE VIEW `Brazil Customers` AS
SELECT CustomerName, ContactName, City, Country
FROM Customers
WHERE Country = 'Brazil';

SELECT * FROM `Brazil Customers`;
----뷰 삭제 -------
DROP VIEW `Brazil Customers`;
SELECT * FROM `Brazil Customers`;