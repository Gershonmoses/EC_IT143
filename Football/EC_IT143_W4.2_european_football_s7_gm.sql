/*****************************************************************************************************************
NAME:    dbo.usp_load_players_by_position
PURPOSE: Step 7 - Turn the ad hoc SQL script into a stored procedure.
AUTHOR:  Gershon Pam Moses

MODIFICATION LOG:
Ver      Date        Author              Description
-----   ----------   -----------------   -------------------------------------------------------------------------
1.0     09/22/2026   Gershon Pam Moses   1. Built this stored procedure to load t_players_by_position.
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP PROCEDURE IF EXISTS [dbo].[usp_load_players_by_position]
GO

CREATE PROCEDURE [dbo].[usp_load_players_by_position]
AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE [dbo].[t_players_by_position];

    INSERT INTO [dbo].[t_players_by_position] (Position, PlayerCount)
    SELECT Position, PlayerCount
    FROM [dbo].[v_players_by_position];
END
GO
