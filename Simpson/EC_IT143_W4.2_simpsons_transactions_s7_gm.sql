/*****************************************************************************************************************
NAME:    dbo.usp_load_planet_express_by_category
PURPOSE: Step 7 - Turn the ad hoc SQL script into a stored procedure.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this stored procedure to load t_planet_express_by_category.
*****************************************************************************************************************/

USE [Simpsons]
GO

DROP PROCEDURE IF EXISTS [dbo].[usp_load_planet_express_by_category]
GO

CREATE PROCEDURE [dbo].[usp_load_planet_express_by_category]
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE [dbo].[t_planet_express_by_category];

    INSERT INTO [dbo].[t_planet_express_by_category] (Category, TotalAmount)
    SELECT Category, TotalAmount
    FROM [dbo].[v_planet_express_by_category];
END
GO
