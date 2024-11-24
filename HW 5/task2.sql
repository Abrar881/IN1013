-- Task 2: Aggregate Queries

-- 1. How much money has the restaurant taken? Change the name of the output column to 'Income':
SELECT SUM(Bill_Total) AS Income
FROM Bills;

-- 2. How much money did the restaurant take in February 2016? Change the name of the output column to 'Feb Income':
SELECT SUM(Bill_Total) AS [Feb Income]
FROM Bills
WHERE Date BETWEEN 160201 AND 160229;

-- 3. Calculate the average bill in table 2:
SELECT AVG(Bill_Total) AS Avg_Bill
FROM Bills
WHERE Table_No = 2;

-- 4. Calculate the minimal, maximal, and average amount of seats of tables in Blue room. Name the corresponding columns as Min, Max, Avg:
SELECT MIN(Seats) AS Min, MAX(Seats) AS Max, AVG(Seats) AS Avg
FROM Tables
WHERE Room = 'Blue';

-- 5. Count how many distinct tables are served by waiters 004 and 002:
SELECT COUNT(DISTINCT Table_No) AS Distinct_Tables
FROM Bills
WHERE Waiter_No IN (004, 002);
