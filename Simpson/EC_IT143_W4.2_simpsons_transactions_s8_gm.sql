/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_simpsons_transactions_s8_gm.sql
PURPOSE: Step 8 - Call the stored procedure.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [Simpsons]
GO

EXEC [dbo].[usp_load_planet_express_by_category];
GO

SELECT * FROM [dbo].[t_planet_express_by_category] ORDER BY TotalAmount DESC;
