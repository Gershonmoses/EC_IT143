/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_simpsons_transactions_s6_gm.sql
PURPOSE: Step 6 - Load the table from the view using an ad hoc SQL script.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [Simpsons]
GO

TRUNCATE TABLE [dbo].[t_planet_express_by_category];

INSERT INTO [dbo].[t_planet_express_by_category] (Category, TotalAmount)
SELECT Category, TotalAmount
FROM [dbo].[v_planet_express_by_category];
GO
