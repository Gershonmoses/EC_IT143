/*****************************************************************************************************************
NAME:    dbo.v_planet_express_by_category
PURPOSE: Step 4 - Turn the ad hoc SQL query into a view.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this view to answer: total transaction amount per category.

NOTES:
Source table: dbo.Planet_Express (Simpsons database, restored from Simpsons.bak).
*****************************************************************************************************************/

USE [Simpsons]
GO

DROP VIEW IF EXISTS [dbo].[v_planet_express_by_category]
GO

CREATE VIEW [dbo].[v_planet_express_by_category]
AS
SELECT COALESCE(Category, 'Uncategorized') AS Category,
       SUM(Amount) AS TotalAmount
FROM dbo.Planet_Express
GROUP BY COALESCE(Category, 'Uncategorized');
GO
