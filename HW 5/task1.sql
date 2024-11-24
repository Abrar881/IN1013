-- 1
SELECT Date, Bill_Total
FROM Bills
WHERE Customer_Name = 'Bob Crow';

-- 2
SELECT DISTINCT First_Name
FROM Customers
WHERE Last_Name = 'Smith'
ORDER BY First_Name DESC;

-- 3
SELECT DISTINCT First_Name, Last_Name
FROM Customers
WHERE Middle_Name LIKE 'C%';

-- 4
SELECT Name
FROM Staff
WHERE Headwaiter IS NULL;

-- 5
SELECT *
FROM Bills
WHERE Date BETWEEN 160201 AND 160229;

-- 6
SELECT DISTINCT Date
FROM Bills
WHERE Date BETWEEN 150101 AND 151231
ORDER BY Date;
