/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_simpsons_transactions_s5.2_gm.sql
PURPOSE: Step 5.2 - Refine the table architecture (primary key, constraints, data types).
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [Simpsons]
GO

DROP TABLE IF EXISTS [dbo].[t_planet_express_by_category]
GO

CREATE TABLE [dbo].[t_planet_express_by_category] (
    CategoryID    INT IDENTITY(1,1) PRIMARY KEY,
    Category      VARCHAR(100) NOT NULL,
    TotalAmount   DECIMAL(12,2) NOT NULL DEFAULT (0)
);
GO
