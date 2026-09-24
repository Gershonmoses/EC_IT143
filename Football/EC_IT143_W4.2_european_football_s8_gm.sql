/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_european_football_s8_gm.sql
PURPOSE: Step 8 - Call the stored procedure.
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

EXEC [dbo].[usp_load_players_by_position];
GO

SELECT * FROM [dbo].[t_players_by_position] ORDER BY PlayerCount DESC;
