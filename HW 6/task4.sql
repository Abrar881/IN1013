-- 1
SELECT DISTINCT 
    Customers.Name, 
    Customers.Surname
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
JOIN 
    Staff AS Headwaiters ON Waiters.Headwaiter = Headwaiters.Staff_No
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
WHERE 
    Bills.Amount > 450 
    AND Headwaiters.Name = 'Charles';
-- 2
SELECT 
    Headwaiters.Name, 
    Headwaiters.Surname
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
JOIN 
    Staff AS Headwaiters ON Waiters.Headwaiter = Headwaiters.Staff_No
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
WHERE 
    Customers.Name = 'Nerida' 
    AND Bills.Date = 160111;
-- 3
SELECT 
    Customers.Name, 
    Customers.Surname
FROM 
    Bills
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
WHERE 
    Bills.Amount = (SELECT MIN(Amount) FROM Bills);
-- 4
SELECT 
    Name, 
    Surname
FROM 
    Staff
WHERE 
    Staff_No NOT IN (SELECT Waiter_No FROM Bills);
-- 5
SELECT 
    Customers.Name AS CustomerName, 
    Headwaiters.Name AS HeadwaiterName, 
    Headwaiters.Surname AS HeadwaiterSurname, 
    Rooms.Room_Name
FROM 
    Bills
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
JOIN 
    Staff AS Headwaiters ON Waiters.Headwaiter = Headwaiters.Staff_No
JOIN 
    Tables ON Bills.Table_No = Tables.Table_No
JOIN 
    Rooms ON Tables.Room_No = Rooms.Room_No
WHERE 
    Bills.Amount = (SELECT MAX(Amount) FROM Bills);
