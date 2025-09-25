SHOW DATABASES;

USE sqlDB;
--- <sum 구문 > ------
SELECT userID AS '사용자', SUM(price*amount) AS '총구매액'
	FROM buyTbl
	GROUP BY userID;

-- <select ~ from ~ group by ~ having> --
--- < having 은 group by 반드시 뒤에>---
SELECT userID AS '사용자', SUM(price*amount) AS '총구매액'
	FROM buyTbl
	GROUP BY userID
	HAVING SUM(price*amount) > 1000;	
	
-- 오름차순 정렬 --
SELECT userID '사용자', SUM(price*amount) '총구매액'
	FROM buyTbl
	GROUP BY userID
	HAVING SUM(price*amount) > 1000
	ORDER BY SUM(price*amount);

-- < select ~ from ~ group by ~ with rollup> --	
SELECT num, groupName, SUM(price * amount) '비용'
	FROM buyTbl
	GROUP BY groupName, num
	WITH ROLLUP;
-- < 소합계 총합계만 보이게> --
SELECT groupName, SUM(price * amount) '비용'
	FROM buyTbl
	GROUP BY groupName
	WITH ROLLUP;

	