SHOW DATABASES;

USE sqldb;

SELECT userID AS '사용자', SUM(price*amount) AS '총구매액'
	FROM buyTbl 
	GROUP BY userID;
	


	
	
	
