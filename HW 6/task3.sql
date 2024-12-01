-- 1
SELECT 
    Waiters.Name, 
    Waiters.Surname
FROM 
    Bills
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
JOIN 
    Waiters ON Bills.Waiter_No = Waiters.Staff_No
WHERE 
    Customers.Name = 'Tanya' AND Customers.Surname = 'Singh';
-- 2
SELECT 
    Management.Date
FROM 
    Management
JOIN 
    Rooms ON Management.Room_No = Rooms.Room_No
JOIN 
    Staff AS Headwaiters ON Management.Headwaiter = Headwaiters.Staff_No
WHERE 
    Headwaiters.Name = 'Charles' 
    AND Rooms.Room_Name = 'Green' 
    AND Management.Date BETWEEN 160201 AND 160229;
-- 3
SELECT DISTINCT 
    Waiters.Name, 
    Waiters.Surname
FROM 
    Staff AS Waiters
JOIN 
    Staff AS Headwaiters ON Waiters.Headwaiter = Headwaiters.Staff_No
WHERE 
    Waiters.Headwaiter = (
        SELECT 
            Headwaiter
        FROM 
            Staff
        WHERE 
            Name = 'Zoe' AND Surname = 'Ball'
    );
-- 4
SELECT 
    Customers.Name AS CustomerName, 
    Bills.Amount AS AmountSpent, 
    Waiters.Name AS WaiterName
FROM 
    Bills
JOIN 
    Customers ON Bills.Customer_No = Customers.Customer_No
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
ORDER BY 
    Bills.Amount DESC;
-- 5
SELECT DISTINCT 
    Waiters.Name, 
    Waiters.Surname
FROM 
    Bills
JOIN 
    Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
WHERE 
    Waiters.Headwaiter IN (
        SELECT 
            Waiters.Headwaiter
        FROM 
            Bills
        JOIN 
            Staff AS Waiters ON Bills.Waiter_No = Waiters.Staff_No
        WHERE 
            Bills.Bill_No IN ('00014', '00017')
    );
-- 6
SELECT 
    Staff.Name, 
    Staff.Surname
FROM 
    Rooms
JOIN 
    Tables ON Rooms.Room_No = Tables.Room_No
JOIN 
    Bills ON Tables.Table_No = Bills.Table_No
JOIN 
    Staff ON Bills.Waiter_No = Staff.Staff_No
WHERE 
    Rooms.Room_Name = 'Blue' AND Bills.Date = 160312;
