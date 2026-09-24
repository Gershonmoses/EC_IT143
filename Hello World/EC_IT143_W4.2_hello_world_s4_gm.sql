/*****************************************************************************************************************
NAME:    dbo.v_hello_world
PURPOSE: Step 4 - Turn the ad hoc SQL query into a view.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this view for the IT143 W4.2 Hello World exercise.

NOTES:
This view saves my Step 3 query so it can be reused by later steps (table load, stored procedure)
without retyping the logic.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP VIEW IF EXISTS [dbo].[v_hello_world]
GO

CREATE VIEW [dbo].[v_hello_world]
AS
SELECT 'Hello World' AS Message;
GO
