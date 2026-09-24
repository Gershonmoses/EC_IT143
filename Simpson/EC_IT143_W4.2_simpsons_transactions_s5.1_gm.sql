/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_simpsons_transactions_s5.1_gm.sql
PURPOSE: Step 5.1 - Turn the view into a table (simplest method: SELECT INTO).
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [Simpsons]
GO

DROP TABLE IF EXISTS [dbo].[t_planet_express_by_category]
GO

SELECT *
INTO [dbo].[t_planet_express_by_category]
FROM [dbo].[v_planet_express_by_category];
GO
