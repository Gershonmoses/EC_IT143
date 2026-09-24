/*****************************************************************************************************************
NAME:    dbo.usp_load_hello_world
PURPOSE: Step 7 - Turn the ad hoc SQL script into a stored procedure.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this stored procedure for the IT143 W4.2 Hello World exercise.

NOTES:
Wraps the Step 6 load logic so it can be called on demand or from a larger ETL process,
rather than re-running the raw script each time.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP PROCEDURE IF EXISTS [dbo].[usp_load_hello_world]
GO

CREATE PROCEDURE [dbo].[usp_load_hello_world]
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE [dbo].[t_hello_world];

    INSERT INTO [dbo].[t_hello_world] (Message)
    SELECT Message
    FROM [dbo].[v_hello_world];
END
GO
