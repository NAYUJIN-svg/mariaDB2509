SELECT * FROM suppliers;
SELECT * FROM products;

SELECT SupplierName
FROM suppliers s
WHERE EXISTS (
	SELECT ProductName
	FROM products p
	WHERE p.SupplierID = s.SupplierID AND price < 20
);

SELECT ProductName, price, SupplierID
	FROM products
	WHERE price < 20;
	
SELECT SupplierName
FROM suppliers s
WHERE EXISTS (
	SELECT ProductName
	FROM products
	WHERE p.SupplierID = s.SupplierID AND price=22
);

SELECT ProductName, price
FROM products p
WHERE price=22;