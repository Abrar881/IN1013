-- 1
SELECT 
    Waiters.Name, 
    Waiters.Surname, 
    Bills.Date, 
    COUNT(Bills.Bill_No) AS NumberOfBills
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
GROUP BY 
    Waiters.Name, Waiters.Surname, Bills.Date
HAVING 
    COUNT(Bills.Bill_No) >= 2;
-- 2
SELECT 
    Rooms.Room_Name, 
    COUNT(Tables.Table_No) AS NumberOfTables
FROM 
    Tables
JOIN 
    Rooms ON Tables.Room_No = Rooms.Room_No
WHERE 
    Tables.Covers > 6
GROUP BY 
    Rooms.Room_Name;
-- 3
SELECT 
    Rooms.Room_Name, 
    COUNT(Bills.Bill_No) AS TotalBills
FROM 
    Bills
JOIN 
    Tables ON Bills.Table_No = Tables.Table_No
JOIN 
    Rooms ON Tables.Room_No = Rooms.Room_No
GROUP BY 
    Rooms.Room_Name;
-- 4
SELECT 
    Headwaiters.Name, 
    Headwaiters.Surname, 
    SUM(Bills.Amount) AS TotalBillAmount
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
JOIN 
    Staff AS Headwaiters ON Waiters.Headwaiter = Headwaiters.Staff_No
GROUP BY 
    Headwaiters.Name, Headwaiters.Surname
ORDER BY 
    TotalBillAmount DESC;
-- 5
SELECT 
    Customers.Name, 
    Customers.Surname, 
    AVG(Bills.Amount) AS AverageSpent
FROM 
    Bills
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
GROUP BY 
    Customers.Name, Customers.Surname
HAVING 
    AVG(Bills.Amount) > 400;
-- 6
SELECT 
    Waiters.Name, 
    Waiters.Surname, 
    Bills.Date, 
    COUNT(Bills.Bill_No) AS NumberOfBills
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
GROUP BY 
    Waiters.Name, Waiters.Surname, Bills.Date
HAVING 
    COUNT(Bills.Bill_No) >= 3;
