/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_simpsons_transactions_s3_gm.sql
PURPOSE: Step 3 - Create an ad hoc SQL query.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [Simpsons]
GO

SELECT COALESCE(Category, 'Uncategorized') AS Category,
       SUM(Amount) AS TotalAmount
FROM dbo.Planet_Express
GROUP BY COALESCE(Category, 'Uncategorized')
ORDER BY TotalAmount DESC;
