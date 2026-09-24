/*****************************************************************************************************************
NAME:    EC_IT143_W4.2_european_football_s5.2_gm.sql
PURPOSE: Step 5.2 - Refine the table architecture (primary key, constraints, data types).
AUTHOR:  Gershon Pam Moses
*****************************************************************************************************************/

USE [EC_IT143_DA]
GO

DROP TABLE IF EXISTS [dbo].[t_players_by_position]
GO

CREATE TABLE [dbo].[t_players_by_position] (
    PositionID   INT IDENTITY(1,1) PRIMARY KEY,
    Position     VARCHAR(50) NOT NULL,
    PlayerCount  INT NOT NULL DEFAULT (0)
);
GO
