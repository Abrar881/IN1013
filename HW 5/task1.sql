-- Task 1: Single Table Queries

-- 1. List the dates and bill totals for customer Bob Crow:
SELECT Date, Bill_Total
FROM Bills
WHERE Customer_Name = 'Bob Crow';

-- 2. List the names of all customers whose last name is Smith, each only once, in reverse lexicographical order:
SELECT DISTINCT First_Name
FROM Customers
WHERE Last_Name = 'Smith'
ORDER BY First_Name DESC;

-- 3. List the names of all customers whose second names begin with 'C', each only once:
SELECT DISTINCT First_Name, Last_Name
FROM Customers
WHERE Middle_Name LIKE 'C%'; 

-- 4. List the names of all the headwaiters:
SELECT Name
FROM Staff
WHERE Headwaiter IS NULL;

-- 5. List all the details of bills dated February 2016:
SELECT *
FROM Bills
WHERE Date BETWEEN 160201 AND 160229;

-- 6. List the dates the restaurant took money in 2015, each date only once in sorted order:
SELECT DISTINCT Date
FROM Bills
WHERE Date BETWEEN 150101 AND 151231
ORDER BY Date;
