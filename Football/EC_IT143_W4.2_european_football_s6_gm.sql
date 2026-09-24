/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_european_football_s6_gm.sql
PURPOSE: Step 6 - Load the table from the view using an ad hoc SQL script.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

TRUNCATE TABLE [dbo].[t_players_by_position];

INSERT INTO [dbo].[t_players_by_position] (Position, PlayerCount)
SELECT Position, PlayerCount
FROM [dbo].[v_players_by_position];
GO
