/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_european_football_s5.1_gm.sql
PURPOSE: Step 5.1 - Turn the view into a table (simplest method: SELECT INTO).
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP TABLE IF EXISTS [dbo].[t_players_by_position]
GO

SELECT *
INTO [dbo].[t_players_by_position]
FROM [dbo].[v_players_by_position];
GO
