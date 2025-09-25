SHOW DATABASES;

USE exdb;

SELECT city FROM customers
UNION
SELECT city FROM suppliers
ORDER BY city;

SELECT city FROM customers
UNION
SELECT city FROM suppliers
ORDER BY city;

SELECT city, country FROM customers
WHERE country='Germany'
UNION
SELECT city, country FROM suppliers
WHERE country='Germany'
ORDER BY city;

SELECT 'Customer' AS TYPE, contactname, city, country
FROM customers
UNION
SELECT 'Supplier', contactname, city, country
FROM suppliers



