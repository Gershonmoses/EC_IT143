/**********************************************************************************************
NAME:        EC_IT143_W3.4_GM
PURPOSE:     AdventureWorks Questions and Answers
AUTHOR:      Gershon Moses
DATE:        09/16/2026
DESCRIPTION: Answers to eight selected questions from W3.3 assignment.
**********************************************************************************************/

-- ============================================
-- Q1 (Marginal) - Author: Another Student
-- What are our top ten most expensive products in terms of list price?
-- ============================================
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- ============================================
-- Q2 (Marginal) - Author: Another Student
-- Which customers are located in Canada?
-- ============================================
SELECT c.CustomerID, p.FirstName, p.LastName, a.City, sp.Name AS Province
FROM Sales.Customer c
JOIN Person.Person p ON c.PersonID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
JOIN Person.Address a ON soh.BillToAddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
WHERE sp.CountryRegionCode = 'CA';

-- ============================================
-- Q3 (Moderate) - Author: Another Student
-- Which three road bikes generate the least net revenue per unit sold?
-- ============================================
SELECT TOP 3 p.Name, (p.ListPrice - p.StandardCost) AS NetRevenue
FROM Production.Product p
JOIN Production.ProductSubcategory s ON p.ProductSubcategoryID = s.ProductSubcategoryID
WHERE s.Name LIKE '%Road Bike%'
ORDER BY NetRevenue ASC;

-- ============================================
-- Q4 (Moderate) - Author: Another Student
-- Show total sales amount and number of orders per country.
-- ============================================
SELECT cr.Name AS Country, COUNT(soh.SalesOrderID) AS OrderCount, SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader soh
JOIN Person.Address a ON soh.BillToAddressID = a.AddressID
JOIN Person.StateProvince sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion cr ON sp.CountryRegionCode = cr.CountryRegionCode
GROUP BY cr.Name
ORDER BY TotalSales DESC;

-- ============================================
-- Q5 (Increased) - Author: Me
-- I need to understand mountain bike sales during Q3 2011.
-- Show quantity sold, list price, standard cost, and estimated net revenue by frame color and order month.
-- ============================================
SELECT DATENAME(MONTH, soh.OrderDate) AS OrderMonth, p.Color,
       SUM(sod.OrderQty) AS QuantitySold,
       AVG(p.ListPrice) AS AvgListPrice,
       AVG(p.StandardCost) AS AvgStandardCost,
       SUM((p.ListPrice - p.StandardCost) * sod.OrderQty) AS EstimatedNetRevenue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory s ON p.ProductSubcategoryID = s.ProductSubcategoryID
WHERE s.Name LIKE '%Mountain Bike%' AND YEAR(soh.OrderDate) = 2011 AND DATEPART(QUARTER, soh.OrderDate) = 3
GROUP BY DATENAME(MONTH, soh.OrderDate), p.Color
ORDER BY OrderMonth, p.Color;

-- ============================================
-- Q6 (Increased) - Author: Another Student
-- For online orders placed in 2013, provide a breakdown of sales by product category and subcategory.
-- ============================================
SELECT c.Name AS Category, s.Name AS Subcategory,
       SUM(sod.OrderQty) AS TotalQuantity,
       SUM(sod.LineTotal) AS TotalSales,
       AVG(sod.UnitPrice) AS AvgUnitPrice
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory s ON p.ProductSubcategoryID = s.ProductSubcategoryID
JOIN Production.ProductCategory c ON s.ProductCategoryID = c.ProductCategoryID
WHERE YEAR(soh.OrderDate) = 2013 AND soh.OnlineOrderFlag = 1
GROUP BY c.Name, s.Name
ORDER BY c.Name, s.Name;

-- ============================================
-- Q7 (Metadata) - Author: Me
-- List all tables in AdventureWorks that contain a column named ProductID.
-- ============================================
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME = 'ProductID';

-- ============================================
-- Q8 (Metadata) - Author: Another Student
-- Which views in AdventureWorks include the column CustomerID?
-- ============================================
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.VIEWS
WHERE TABLE_NAME IN (
    SELECT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'CustomerID'
);
