-- <고객이 5명이상 사는지역>--
-- select ~ from ~ join on ~ group by ~--
-- select ~ from ~ (group by ~ having )--
SELECT COUNT(customerid), country
FROM customers
GROUP BY country
HAVING COUNT(customerid) > 5
ORDER BY COUNT(customerid) DESC;

SELECT * FROM orders;
SELECT * FROM employees;

SELECT e.LastName, COUNT(o.OrderID) numOrder
FROM orders o 
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
GROUP BY lastName
HAVING COUNT(o.OrderID) > 100;

SELECT e.LastName, COUNT(o.OrderID) cntOrder
FROM orders o
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
WHERE lastname = 'Davolio' OR lastname = 'Fuller'
GROUP BY lastname
HAVING COUNT(o.OrderID) > 100;
