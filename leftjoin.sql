SHOW DATABASES;

USE exdb;

SELECT customers.CustomerName, orders.OrderID
FROM customers
LEFT JOIN orders
ON customers.CustomerID=Orders.customerID
ORDER BY customers.CustomerName;
