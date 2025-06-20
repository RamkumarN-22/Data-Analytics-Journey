USE AdventureWorks2012
-- 1. Get all details from the Person table including email ID, phone number, and phone number type
SELECT 
    p.BusinessEntityID,
    p.FirstName,
    p.LastName,
    ea.EmailAddress,
    ph.PhoneNumber,
    pht.Name AS PhoneNumberType
FROM Person.Person p
JOIN Person.EmailAddress ea ON p.BusinessEntityID = ea.BusinessEntityID
JOIN Person.PersonPhone ph ON p.BusinessEntityID = ph.BusinessEntityID
JOIN Person.PhoneNumberType pht ON ph.PhoneNumberTypeID = pht.PhoneNumberTypeID;

-- 2. Get the details of the Sales Order Header made in May 2011
SELECT *
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-05-01' AND '2011-05-31';

-- 3. Get the details of the Sales Order Details made in the month of May 2011
SELECT sod.*
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh ON sod.SalesOrderID = soh.SalesOrderID
WHERE soh.OrderDate BETWEEN '2011-05-01' AND '2011-05-31';

-- 4. Get the total sales made in May 2011
SELECT 
    SUM(TotalDue) AS TotalSales_May_2011
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-05-01' AND '2011-05-31';

-- 5. Get the total sales made in the year 2011 by month ordered by increasing sales
SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS Month,
    SUM(TotalDue) AS MonthlySales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY MonthlySales ASC;

-- 6. Get the total sales made to the customer with FirstName = 'Gustavo' and LastName = 'Achong'
SELECT 
    p.FirstName,
    p.LastName,
    SUM(soh.TotalDue) AS TotalSales
FROM Person.Person p
JOIN Sales.Customer c ON p.BusinessEntityID = c.PersonID
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
WHERE p.FirstName = 'Gustavo' AND p.LastName = 'Achong'
GROUP BY p.FirstName, p.LastName;
